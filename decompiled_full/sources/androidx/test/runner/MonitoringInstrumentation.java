package androidx.test.runner;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.multidex.MultiDex;
import androidx.test.internal.platform.app.ActivityLifecycleTimeout;
import androidx.test.internal.runner.InstrumentationConnection;
import androidx.test.internal.runner.hidden.ExposedInstrumentationApi;
import androidx.test.internal.runner.intent.IntentMonitorImpl;
import androidx.test.internal.runner.intercepting.DefaultInterceptingActivityFactory;
import androidx.test.internal.runner.lifecycle.ActivityLifecycleMonitorImpl;
import androidx.test.internal.runner.lifecycle.ApplicationLifecycleMonitorImpl;
import androidx.test.internal.util.Checks;
import androidx.test.internal.util.ProcSummary;
import androidx.test.platform.app.AppComponentFactoryRegistry;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.runner.intent.IntentMonitorRegistry;
import androidx.test.runner.intent.IntentStubberRegistry;
import androidx.test.runner.intercepting.InterceptingActivityFactory;
import androidx.test.runner.lifecycle.ActivityLifecycleMonitorRegistry;
import androidx.test.runner.lifecycle.ApplicationLifecycleMonitorRegistry;
import androidx.test.runner.lifecycle.ApplicationStage;
import androidx.test.runner.lifecycle.Stage;
import androidx.tracing.Trace;
import java.lang.Thread;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class MonitoringInstrumentation extends ExposedInstrumentationApi {
    private static final long MILLIS_TO_POLL_FOR_ACTIVITY_STOP;
    private static final long MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP;
    private static final String TAG = "MonitoringInstr";
    private ExecutorService executorService;
    private Handler handlerForMainLooper;
    private volatile InterceptingActivityFactory interceptingActivityFactory;
    private String jsBridgeClassName;
    private Thread.UncaughtExceptionHandler oldDefaultExceptionHandler;
    private ActivityLifecycleMonitorImpl lifecycleMonitor = new ActivityLifecycleMonitorImpl();
    private ApplicationLifecycleMonitorImpl applicationMonitor = new ApplicationLifecycleMonitorImpl();
    private IntentMonitorImpl intentMonitor = new IntentMonitorImpl();
    private AtomicBoolean anActivityHasBeenLaunched = new AtomicBoolean(false);
    private AtomicLong lastIdleTime = new AtomicLong(0);
    private AtomicInteger startedActivityCounter = new AtomicInteger(0);
    private AtomicBoolean isJsBridgeLoaded = new AtomicBoolean(false);
    private volatile Boolean isOriginalInstr = null;
    private ThreadLocal<Boolean> isDexmakerClassLoaderInitialized = new ThreadLocal<>();
    private MessageQueue.IdleHandler idleHandler = new MessageQueue.IdleHandler() { // from class: androidx.test.runner.MonitoringInstrumentation.1
        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            MonitoringInstrumentation.this.lastIdleTime.set(System.currentTimeMillis());
            return true;
        }
    };
    private volatile boolean finished = false;

    /* loaded from: classes.dex */
    public class ActivityFinisher implements Runnable {
        public ActivityFinisher() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            Iterator it = EnumSet.range(Stage.CREATED, Stage.STOPPED).iterator();
            while (it.hasNext()) {
                arrayList.addAll(MonitoringInstrumentation.this.lifecycleMonitor.getActivitiesInStage((Stage) it.next()));
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Activity activity = (Activity) it2.next();
                if (!activity.isFinishing()) {
                    try {
                        activity.toString();
                        activity.finish();
                    } catch (RuntimeException unused) {
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class StubResultCallable implements Callable<Instrumentation.ActivityResult> {
        private final Intent intent;

        public StubResultCallable(Intent intent) {
            this.intent = intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Instrumentation.ActivityResult call() {
            return IntentStubberRegistry.getInstance().getActivityResultForIntent(this.intent);
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(2L);
        MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP = millis;
        MILLIS_TO_POLL_FOR_ACTIVITY_STOP = millis / 40;
    }

    private static Class<?> getMultiDexClass() {
        try {
            int i = MultiDex.f370xfbe0c504;
            return MultiDex.class;
        } catch (ClassNotFoundException unused) {
            return Class.forName("android.support.multidex.MultiDex");
        }
    }

    private List<String> getTargetProcessValues() {
        String str;
        if (Build.VERSION.SDK_INT < 26) {
            return Collections.emptyList();
        }
        try {
            str = getContext().getPackageManager().getInstrumentationInfo(getComponentName(), 0).targetProcesses;
            if (str == null) {
                str = "";
            }
            String trim = str.trim();
            if (trim.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str2 : trim.split(",", -1)) {
                String trim2 = str2.trim();
                if (trim2.length() > 0) {
                    arrayList.add(trim2);
                }
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf(TAG, "Cannot locate ourselves: " + getComponentName(), e);
            throw new IllegalStateException("Cannot locate ourselves: " + getComponentName(), e);
        }
    }

    private void installMultidexAndExceptionHandler() {
        installMultidex();
        registerUncaughtExceptionHandler();
    }

    private boolean isHostingProcess(String str, ProcSummary procSummary) {
        int length = str.length();
        int length2 = procSummary.cmdline.length();
        if (length == length2) {
            return str.equals(procSummary.cmdline);
        }
        if (length < length2 || !str.startsWith(procSummary.cmdline) || !str.endsWith(procSummary.name)) {
            return false;
        }
        procSummary.toString();
        return true;
    }

    private boolean isOriginalInstrumentationProcess() {
        Boolean bool = this.isOriginalInstr;
        if (bool == null) {
            bool = Boolean.valueOf(isOriginalUncached());
            this.isOriginalInstr = bool;
        }
        return bool.booleanValue();
    }

    private boolean isOriginalUncached() {
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        List<String> targetProcessValues = getTargetProcessValues();
        if (targetProcessValues.isEmpty()) {
            return true;
        }
        boolean equals = "*".equals(targetProcessValues.get(0));
        if (targetProcessValues.size() == 1 && !equals) {
            return true;
        }
        try {
            ProcSummary summarize = ProcSummary.summarize("self");
            if (equals) {
                String str = getTargetContext().getApplicationInfo().processName;
                if (str == null) {
                    str = getTargetContext().getPackageName();
                }
                return isHostingProcess(str, summarize);
            }
            return isHostingProcess(targetProcessValues.get(0), summarize);
        } catch (ProcSummary.SummaryException unused) {
            return false;
        }
    }

    private void registerUncaughtExceptionHandler() {
        this.oldDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.test.runner.MonitoringInstrumentation.3
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                String name = thread.getName();
                StringBuilder sb = new StringBuilder("Handling an uncaught exception thrown on the thread ");
                sb.append(name);
                sb.append(".");
                MonitoringInstrumentation.this.onException(thread, th);
                if (MonitoringInstrumentation.this.oldDefaultExceptionHandler != null) {
                    String.format("Invoking default uncaught exception handler %s (a %s)", MonitoringInstrumentation.this.oldDefaultExceptionHandler, MonitoringInstrumentation.this.oldDefaultExceptionHandler.getClass());
                    MonitoringInstrumentation.this.oldDefaultExceptionHandler.uncaughtException(thread, th);
                }
                if (!"robolectric".equals(Build.FINGERPRINT) && Looper.getMainLooper().getThread().equals(thread)) {
                    System.exit(-10);
                }
            }
        });
    }

    private void setupDexmakerClassloader() {
        Boolean bool = Boolean.TRUE;
        if (bool.equals(this.isDexmakerClassLoaderInitialized.get())) {
            return;
        }
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        ClassLoader classLoader = getTargetContext().getClassLoader();
        if (contextClassLoader != classLoader) {
            String.format("Setting context classloader to '%s', Original: '%s'", classLoader, contextClassLoader);
            Thread.currentThread().setContextClassLoader(classLoader);
        }
        this.isDexmakerClassLoaderInitialized.set(bool);
    }

    private Instrumentation.ActivityResult stubResultFor(Intent intent) {
        if (IntentStubberRegistry.isLoaded()) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                FutureTask futureTask = new FutureTask(new StubResultCallable(intent));
                runOnMainSync(futureTask);
                try {
                    return (Instrumentation.ActivityResult) futureTask.get();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException(e);
                } catch (ExecutionException e2) {
                    String format = String.format("Could not retrieve stub result for intent %s", intent);
                    if (!(e2.getCause() instanceof RuntimeException)) {
                        if (e2.getCause() != null) {
                            throw new RuntimeException(format, e2.getCause());
                        }
                        throw new RuntimeException(format, e2);
                    }
                    throw ((RuntimeException) e2.getCause());
                }
            }
            return IntentStubberRegistry.getInstance().getActivityResultForIntent(intent);
        }
        return null;
    }

    private void tryLoadingJsBridge(final String str) {
        if (str != null) {
            runOnMainSync(new Runnable() { // from class: androidx.test.runner.MonitoringInstrumentation.5
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Class.forName(str).getDeclaredMethod("installBridge", null).invoke(null, null);
                        MonitoringInstrumentation.this.isJsBridgeLoaded.set(true);
                    } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException("JSbridge is available at runtime, but calling it failed.", e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException("JSbridge is available at runtime, but calling it failed.", e2);
                    }
                }
            });
            return;
        }
        throw new NullPointerException("JsBridge class name cannot be null!");
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        this.lifecycleMonitor.signalLifecycleChange(Stage.PRE_ON_CREATE, activity);
        super.callActivityOnCreate(activity, bundle);
        this.lifecycleMonitor.signalLifecycleChange(Stage.CREATED, activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnDestroy(Activity activity) {
        super.callActivityOnDestroy(activity);
        this.lifecycleMonitor.signalLifecycleChange(Stage.DESTROYED, activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnPause(Activity activity) {
        super.callActivityOnPause(activity);
        this.lifecycleMonitor.signalLifecycleChange(Stage.PAUSED, activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnRestart(Activity activity) {
        super.callActivityOnRestart(activity);
        this.lifecycleMonitor.signalLifecycleChange(Stage.RESTARTED, activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnResume(Activity activity) {
        super.callActivityOnResume(activity);
        this.lifecycleMonitor.signalLifecycleChange(Stage.RESUMED, activity);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStart(Activity activity) {
        this.startedActivityCounter.incrementAndGet();
        try {
            super.callActivityOnStart(activity);
            this.lifecycleMonitor.signalLifecycleChange(Stage.STARTED, activity);
        } catch (RuntimeException e) {
            this.startedActivityCounter.decrementAndGet();
            throw e;
        }
    }

    @Override // android.app.Instrumentation
    public void callActivityOnStop(Activity activity) {
        try {
            super.callActivityOnStop(activity);
            this.lifecycleMonitor.signalLifecycleChange(Stage.STOPPED, activity);
        } finally {
            this.startedActivityCounter.decrementAndGet();
        }
    }

    @Override // android.app.Instrumentation
    public void callApplicationOnCreate(Application application) {
        this.applicationMonitor.signalLifecycleChange(application, ApplicationStage.PRE_ON_CREATE);
        super.callApplicationOnCreate(application);
        this.applicationMonitor.signalLifecycleChange(application, ApplicationStage.CREATED);
    }

    public void dumpThreadStateToOutputs(String str) {
        getThreadState();
    }

    public void execStartActivities(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent[] intentArr, Bundle bundle) {
        for (Intent intent : intentArr) {
            execStartActivity(context, iBinder, iBinder2, activity, intent, -1, bundle);
        }
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i) {
        this.intentMonitor.signalIntent(intent);
        Instrumentation.ActivityResult stubResultFor = stubResultFor(intent);
        if (stubResultFor != null) {
            String.format("Stubbing intent %s", intent);
            return stubResultFor;
        }
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i);
    }

    @Override // android.app.Instrumentation
    public void finish(int i, Bundle bundle) {
        if (this.finished) {
            return;
        }
        this.finished = true;
        Trace.beginSection("MonitoringInstrumentation#finish");
        if (shouldWaitForActivitiesToComplete()) {
            this.handlerForMainLooper.post(new ActivityFinisher());
            waitForActivitiesToComplete();
        }
        ActivityLifecycleMonitorRegistry.registerInstance(null);
        restoreUncaughtExceptionHandler();
        Trace.endSection();
        super.finish(i, bundle);
    }

    public String getThreadState() {
        Set<Map.Entry<Thread, StackTraceElement[]>> entrySet = Thread.getAllStackTraces().entrySet();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Thread, StackTraceElement[]> entry : entrySet) {
            StringBuilder sb2 = new StringBuilder("  ");
            sb2.append(entry.getKey());
            sb2.append("\n");
            for (StackTraceElement stackTraceElement : entry.getValue()) {
                sb2.append("    ");
                sb2.append(stackTraceElement.toString());
                sb2.append("\n");
            }
            sb2.append("\n");
            sb.append(sb2.toString());
        }
        return sb.toString();
    }

    public void installMultidex() {
    }

    public void installOldMultiDex(Class<?> cls) {
        cls.getDeclaredMethod("install", Context.class).invoke(null, getTargetContext());
    }

    public void interceptActivityUsing(InterceptingActivityFactory interceptingActivityFactory) {
        Checks.checkNotNull(interceptingActivityFactory);
        this.interceptingActivityFactory = interceptingActivityFactory;
    }

    @Deprecated
    public boolean isPrimaryInstrProcess(@Nullable String str) {
        return isPrimaryInstrProcess();
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(Class<?> cls, Context context, IBinder iBinder, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, Object obj) {
        String name = cls.getPackage().getName();
        String packageName = context.getPackageName();
        ComponentName component = intent.getComponent();
        if (!packageName.equals(component.getPackageName()) && name.equals(component.getPackageName())) {
            intent.setComponent(new ComponentName(packageName, component.getClassName()));
        }
        return super.newActivity(cls, context, iBinder, application, intent, activityInfo, charSequence, activity, str, obj);
    }

    @Override // android.app.Instrumentation
    public Application newApplication(ClassLoader classLoader, String str, Context context) {
        installMultidexAndExceptionHandler();
        Application instantiateApplication = AppComponentFactoryRegistry.instantiateApplication(classLoader, str);
        if (instantiateApplication != null) {
            return instantiateApplication;
        }
        return super.newApplication(classLoader, str, context);
    }

    @Override // android.app.Instrumentation
    public void onCreate(Bundle bundle) {
        InstrumentationRegistry.registerInstance(this, bundle);
        androidx.test.InstrumentationRegistry.registerInstance(this, bundle);
        ActivityLifecycleMonitorRegistry.registerInstance(this.lifecycleMonitor);
        ApplicationLifecycleMonitorRegistry.registerInstance(this.applicationMonitor);
        IntentMonitorRegistry.registerInstance(this.intentMonitor);
        this.handlerForMainLooper = new Handler(Looper.getMainLooper());
        this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 0L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: androidx.test.runner.MonitoringInstrumentation.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                newThread.setName("MonitoringInstrumentation");
                return newThread;
            }
        });
        Looper.myQueue().addIdleHandler(this.idleHandler);
        super.onCreate(bundle);
        specifyDexMakerCacheProperty();
        setupDexmakerClassloader();
        useDefaultInterceptingActivityFactory();
    }

    @Override // android.app.Instrumentation
    public void onDestroy() {
        Looper.myQueue().removeIdleHandler(this.idleHandler);
        InstrumentationConnection.getInstance().terminate();
        super.onDestroy();
    }

    @Override // android.app.Instrumentation
    public boolean onException(Object obj, Throwable th) {
        String.format("Exception encountered by: %s. Dumping thread state to outputs and pining for the fjords.", obj);
        dumpThreadStateToOutputs("ThreadState-onException.txt");
        return super.onException(obj, th);
    }

    @Override // android.app.Instrumentation
    public void onStart() {
        super.onStart();
        String str = this.jsBridgeClassName;
        if (str != null) {
            tryLoadingJsBridge(str);
        }
        waitForIdleSync();
        setupDexmakerClassloader();
        InstrumentationConnection.getInstance().init(this, new ActivityFinisher());
    }

    public void restoreUncaughtExceptionHandler() {
        Thread.setDefaultUncaughtExceptionHandler(this.oldDefaultExceptionHandler);
    }

    @Override // android.app.Instrumentation
    public void runOnMainSync(Runnable runnable) {
        FutureTask futureTask = new FutureTask(runnable, null);
        super.runOnMainSync(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public final void setJsBridgeClassName(String str) {
        if (str != null) {
            if (!this.isJsBridgeLoaded.get()) {
                this.jsBridgeClassName = str;
                return;
            }
            throw new IllegalStateException("JsBridge is already loaded!");
        }
        throw new NullPointerException("JsBridge class name cannot be null!");
    }

    public boolean shouldWaitForActivitiesToComplete() {
        return Boolean.parseBoolean(InstrumentationRegistry.getArguments().getString("waitForActivitiesToComplete", "true"));
    }

    public void specifyDexMakerCacheProperty() {
        System.getProperties().put("dexmaker.dexcache", getTargetContext().getDir("dxmaker_cache", 0).getAbsolutePath());
    }

    @Override // android.app.Instrumentation
    public Activity startActivitySync(final Intent intent) {
        Checks.checkNotMainThread();
        long j = this.lastIdleTime.get();
        if (this.anActivityHasBeenLaunched.compareAndSet(false, true)) {
            intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        }
        Future submit = this.executorService.submit(new Callable<Activity>() { // from class: androidx.test.runner.MonitoringInstrumentation.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Activity call() {
                return MonitoringInstrumentation.super.startActivitySync(intent);
            }
        });
        try {
            return (Activity) submit.get(ActivityLifecycleTimeout.getMillis(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("interrupted", e);
        } catch (ExecutionException e2) {
            throw new RuntimeException("Could not launch activity", e2.getCause());
        } catch (TimeoutException unused) {
            dumpThreadStateToOutputs("ThreadState-startActivityTimeout.txt");
            submit.cancel(true);
            throw new RuntimeException(String.format("Could not launch intent %s within %s milliseconds. Perhaps the main thread has not gone idle within a reasonable amount of time? There could be an animation or something constantly repainting the screen. Or the activity is doing network calls on creation? See the threaddump logs. For your reference the last time the event queue was idle before your activity launch request was %s and now the last time the queue went idle was: %s. If these numbers are the same your activity might be hogging the event queue.", intent, Long.valueOf(ActivityLifecycleTimeout.getMillis()), Long.valueOf(j), Long.valueOf(this.lastIdleTime.get())));
        }
    }

    public Throwable unwrapException(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null) {
            return th;
        }
        if (th.getClass().equals(RuntimeException.class)) {
            return unwrapException(cause);
        }
        return th;
    }

    public void useDefaultInterceptingActivityFactory() {
        this.interceptingActivityFactory = new DefaultInterceptingActivityFactory();
    }

    public void waitForActivitiesToComplete() {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            long currentTimeMillis = System.currentTimeMillis() + MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP;
            int i = this.startedActivityCounter.get();
            while (i > 0 && System.currentTimeMillis() < currentTimeMillis) {
                try {
                    Thread.sleep(MILLIS_TO_POLL_FOR_ACTIVITY_STOP);
                    i = this.startedActivityCounter.get();
                } catch (InterruptedException unused) {
                }
            }
            if (i > 0) {
                dumpThreadStateToOutputs("ThreadState-unstopped.txt");
                long j = MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP;
                StringBuilder sb = new StringBuilder("Still ");
                sb.append(i);
                sb.append(" activities active after waiting ");
                sb.append(j);
                sb.append(" ms.");
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot be called from main thread!");
    }

    public final boolean isPrimaryInstrProcess() {
        return isOriginalInstrumentationProcess();
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i, Bundle bundle) {
        this.intentMonitor.signalIntent(intent);
        Instrumentation.ActivityResult stubResultFor = stubResultFor(intent);
        if (stubResultFor != null) {
            String.format("Stubbing intent %s", intent);
            return stubResultFor;
        }
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i, bundle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i, Bundle bundle) {
        this.intentMonitor.signalIntent(intent);
        Instrumentation.ActivityResult stubResultFor = stubResultFor(intent);
        if (stubResultFor != null) {
            String.format("Stubbing intent %s", intent);
            return stubResultFor;
        }
        return super.execStartActivity(context, iBinder, iBinder2, str, intent, i, bundle);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) {
        if (this.interceptingActivityFactory.shouldIntercept(classLoader, str, intent)) {
            return this.interceptingActivityFactory.create(classLoader, str, intent);
        }
        Activity instantiateActivity = AppComponentFactoryRegistry.instantiateActivity(classLoader, str, intent);
        return instantiateActivity != null ? instantiateActivity : super.newActivity(classLoader, str, intent);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i, Bundle bundle, UserHandle userHandle) {
        return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i, bundle, userHandle);
    }

    public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.intentMonitor.signalIntent(intent);
        Instrumentation.ActivityResult stubResultFor = stubResultFor(intent);
        if (stubResultFor != null) {
            String.format("Stubbing intent %s", intent);
            return stubResultFor;
        }
        return super.execStartActivity(context, iBinder, iBinder2, fragment, intent, i, bundle);
    }
}
