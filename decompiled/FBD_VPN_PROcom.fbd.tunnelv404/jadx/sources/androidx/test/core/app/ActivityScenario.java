package androidx.test.core.app;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.test.internal.platform.ServiceLoaderWrapper;
import androidx.test.internal.platform.app.ActivityInvoker;
import androidx.test.internal.platform.os.ControlledLooper;
import androidx.test.internal.util.Checks;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.runner.lifecycle.ActivityLifecycleCallback;
import androidx.test.runner.lifecycle.ActivityLifecycleMonitorRegistry;
import androidx.test.runner.lifecycle.Stage;
import androidx.tracing.Trace;
import defpackage.C0370x5ac5058d;
import defpackage.RunnableC0371x742e2fda;
import java.io.Closeable;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class ActivityScenario<A extends Activity> implements AutoCloseable, Closeable {
    private static final Map<Stage, Lifecycle.State> STEADY_STATES;
    private static final String TAG = "ActivityScenario";
    private static final long TIMEOUT_MILLISECONDS = 45000;
    private final ActivityInvoker activityInvoker;
    private final ActivityLifecycleCallback activityLifecycleObserver;
    private final ControlledLooper controlledLooper;

    @Nullable
    @GuardedBy("lock")
    private A currentActivity;

    @GuardedBy("lock")
    private Stage currentActivityStage;
    private final ReentrantLock lock;
    private final Intent startActivityIntent;
    private final Condition stateChangedCondition;

    /* renamed from: androidx.test.core.app.ActivityScenario$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ActivityLifecycleCallback {
        public AnonymousClass1() {
        }

        @Override // androidx.test.runner.lifecycle.ActivityLifecycleCallback
        public void onActivityLifecycleChanged(Activity activity, Stage stage) {
            if (!ActivityScenario.activityMatchesIntent(ActivityScenario.this.startActivityIntent, activity)) {
                String unused = ActivityScenario.TAG;
                String.format("Activity lifecycle changed event received but ignored because the intent does not match. startActivityIntent=%s, activity.getIntent()=%s, activity=%s", ActivityScenario.this.startActivityIntent, activity.getIntent(), activity);
                return;
            }
            ActivityScenario.this.lock.lock();
            try {
                int i = AnonymousClass2.$SwitchMap$androidx$test$runner$lifecycle$Stage[ActivityScenario.this.currentActivityStage.ordinal()];
                if (i != 1 && i != 2) {
                    if (ActivityScenario.this.currentActivity != activity) {
                        String unused2 = ActivityScenario.TAG;
                        String.format("Activity lifecycle changed event received but ignored because the activity instance does not match. currentActivity=%s, receivedActivity=%s", ActivityScenario.this.currentActivity, activity);
                        return;
                    }
                } else if (stage != Stage.CREATED) {
                    String unused3 = ActivityScenario.TAG;
                    new StringBuilder("Activity lifecycle changed event received but ignored because the reported transition was not ON_CREATE while the last known transition was ").append(ActivityScenario.this.currentActivityStage);
                    return;
                }
                ActivityScenario.this.currentActivityStage = stage;
                ActivityScenario activityScenario = ActivityScenario.this;
                if (stage == Stage.DESTROYED) {
                    activity = null;
                }
                activityScenario.currentActivity = activity;
                String unused4 = ActivityScenario.TAG;
                String.format("Update currentActivityStage to %s, currentActivity=%s", ActivityScenario.this.currentActivityStage, ActivityScenario.this.currentActivity);
                ActivityScenario.this.stateChangedCondition.signal();
            } finally {
                ActivityScenario.this.lock.unlock();
            }
        }
    }

    /* renamed from: androidx.test.core.app.ActivityScenario$2 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;
        static final /* synthetic */ int[] $SwitchMap$androidx$test$runner$lifecycle$Stage;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Stage.values().length];
            $SwitchMap$androidx$test$runner$lifecycle$Stage = iArr2;
            try {
                iArr2[Stage.PRE_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$test$runner$lifecycle$Stage[Stage.DESTROYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ActivityAction<A extends Activity> {
        void perform(A a);
    }

    /* loaded from: classes.dex */
    public static class ActivityState<A extends Activity> {

        @Nullable
        final A activity;
        final Stage stage;

        @Nullable
        final Lifecycle.State state;

        public ActivityState(@Nullable A a, @Nullable Lifecycle.State state, Stage stage) {
            this.activity = a;
            this.state = state;
            this.stage = stage;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(Stage.class);
        STEADY_STATES = enumMap;
        enumMap.put((EnumMap) Stage.RESUMED, (Stage) Lifecycle.State.RESUMED);
        enumMap.put((EnumMap) Stage.PAUSED, (Stage) Lifecycle.State.STARTED);
        enumMap.put((EnumMap) Stage.STOPPED, (Stage) Lifecycle.State.CREATED);
        enumMap.put((EnumMap) Stage.DESTROYED, (Stage) Lifecycle.State.DESTROYED);
    }

    private ActivityScenario(Intent intent) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stateChangedCondition = reentrantLock.newCondition();
        this.activityInvoker = (ActivityInvoker) ServiceLoaderWrapper.loadSingleService(ActivityInvoker.class, new C0370x5ac5058d(0));
        this.controlledLooper = (ControlledLooper) ServiceLoaderWrapper.loadSingleService(ControlledLooper.class, new C0370x5ac5058d(1));
        this.currentActivityStage = Stage.PRE_ON_CREATE;
        this.activityLifecycleObserver = new ActivityLifecycleCallback() { // from class: androidx.test.core.app.ActivityScenario.1
            public AnonymousClass1() {
            }

            @Override // androidx.test.runner.lifecycle.ActivityLifecycleCallback
            public void onActivityLifecycleChanged(Activity activity, Stage stage) {
                if (!ActivityScenario.activityMatchesIntent(ActivityScenario.this.startActivityIntent, activity)) {
                    String unused = ActivityScenario.TAG;
                    String.format("Activity lifecycle changed event received but ignored because the intent does not match. startActivityIntent=%s, activity.getIntent()=%s, activity=%s", ActivityScenario.this.startActivityIntent, activity.getIntent(), activity);
                    return;
                }
                ActivityScenario.this.lock.lock();
                try {
                    int i = AnonymousClass2.$SwitchMap$androidx$test$runner$lifecycle$Stage[ActivityScenario.this.currentActivityStage.ordinal()];
                    if (i != 1 && i != 2) {
                        if (ActivityScenario.this.currentActivity != activity) {
                            String unused2 = ActivityScenario.TAG;
                            String.format("Activity lifecycle changed event received but ignored because the activity instance does not match. currentActivity=%s, receivedActivity=%s", ActivityScenario.this.currentActivity, activity);
                            return;
                        }
                    } else if (stage != Stage.CREATED) {
                        String unused3 = ActivityScenario.TAG;
                        new StringBuilder("Activity lifecycle changed event received but ignored because the reported transition was not ON_CREATE while the last known transition was ").append(ActivityScenario.this.currentActivityStage);
                        return;
                    }
                    ActivityScenario.this.currentActivityStage = stage;
                    ActivityScenario activityScenario = ActivityScenario.this;
                    if (stage == Stage.DESTROYED) {
                        activity = null;
                    }
                    activityScenario.currentActivity = activity;
                    String unused4 = ActivityScenario.TAG;
                    String.format("Update currentActivityStage to %s, currentActivity=%s", ActivityScenario.this.currentActivityStage, ActivityScenario.this.currentActivity);
                    ActivityScenario.this.stateChangedCondition.signal();
                } finally {
                    ActivityScenario.this.lock.unlock();
                }
            }
        };
        this.startActivityIntent = (Intent) Checks.checkNotNull(intent);
    }

    public static boolean activityMatchesIntent(Intent intent, Activity activity) {
        String identifier;
        String identifier2;
        Intent intent2 = activity.getIntent();
        if (!equals(intent.getAction(), intent2.getAction()) || !equals(intent.getData(), intent2.getData()) || !equals(intent.getType(), intent2.getType())) {
            return false;
        }
        if ((!hasPackageEquivalentComponent(intent) || !hasPackageEquivalentComponent(intent2)) && !equals(intent.getPackage(), intent2.getPackage())) {
            return false;
        }
        if ((intent.getComponent() != null && !equals(intent.getComponent(), intent2.getComponent())) || !equals(intent.getCategories(), intent2.getCategories())) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            identifier = intent.getIdentifier();
            identifier2 = intent2.getIdentifier();
            if (!equals(identifier, identifier2)) {
                return false;
            }
            return true;
        }
        return true;
    }

    private static boolean equals(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    private ActivityState<A> getCurrentActivityState() {
        InstrumentationRegistry.getInstrumentation().waitForIdleSync();
        this.lock.lock();
        try {
            return new ActivityState<>(this.currentActivity, STEADY_STATES.get(this.currentActivityStage), this.currentActivityStage);
        } finally {
            this.lock.unlock();
        }
    }

    private static boolean hasPackageEquivalentComponent(Intent intent) {
        ComponentName component = intent.getComponent();
        String str = intent.getPackage();
        if (component != null && (str == null || str.equals(component.getPackageName()))) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ ActivityInvoker lambda$new$0() {
        return new InstrumentationActivityInvoker();
    }

    public /* synthetic */ void lambda$onActivity$2(ActivityAction activityAction) {
        Checks.checkMainThread();
        this.lock.lock();
        try {
            Checks.checkNotNull(this.currentActivity, "Cannot run onActivity since Activity has been destroyed already");
            activityAction.perform(this.currentActivity);
        } finally {
            this.lock.unlock();
        }
    }

    public static <A extends Activity> ActivityScenario<A> launch(Class<A> cls) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Class) Checks.checkNotNull(cls));
        activityScenario.launchInternal(null, false);
        return activityScenario;
    }

    @NonNull
    public static <A extends Activity> ActivityScenario<A> launchActivityForResult(@NonNull Class<A> cls) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Class) Checks.checkNotNull(cls));
        activityScenario.launchInternal(null, true);
        return activityScenario;
    }

    private void launchInternal(@Nullable Bundle bundle, boolean z) {
        boolean z2;
        if (Settings.System.getInt(InstrumentationRegistry.getInstrumentation().getTargetContext().getContentResolver(), "always_finish_activities", 0) == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Checks.checkState(z2, "\"Don't keep activities\" developer options must be disabled for ActivityScenario");
        Checks.checkNotMainThread();
        Trace.beginSection("ActivityScenario launch");
        try {
            InstrumentationRegistry.getInstrumentation().waitForIdleSync();
            ActivityLifecycleMonitorRegistry.getInstance().addLifecycleCallback(this.activityLifecycleObserver);
            if (bundle == null) {
                if (z) {
                    this.activityInvoker.startActivityForResult(this.startActivityIntent);
                } else {
                    this.activityInvoker.startActivity(this.startActivityIntent);
                }
            } else if (z) {
                this.activityInvoker.startActivityForResult(this.startActivityIntent, bundle);
            } else {
                this.activityInvoker.startActivity(this.startActivityIntent, bundle);
            }
            waitForActivityToBecomeAnyOf((Lifecycle.State[]) STEADY_STATES.values().toArray(new Lifecycle.State[0]));
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    private void waitForActivityToBecomeAnyOf(Lifecycle.State... stateArr) {
        InstrumentationRegistry.getInstrumentation().waitForIdleSync();
        HashSet hashSet = new HashSet(Arrays.asList(stateArr));
        this.lock.lock();
        try {
            try {
                if (hashSet.contains(STEADY_STATES.get(this.currentActivityStage))) {
                    this.lock.unlock();
                    return;
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = TIMEOUT_MILLISECONDS + elapsedRealtime;
                while (elapsedRealtime < j && !hashSet.contains(STEADY_STATES.get(this.currentActivityStage))) {
                    this.stateChangedCondition.await(j - elapsedRealtime, TimeUnit.MILLISECONDS);
                    elapsedRealtime = SystemClock.elapsedRealtime();
                }
                if (hashSet.contains(STEADY_STATES.get(this.currentActivityStage))) {
                    this.lock.unlock();
                    return;
                }
                throw new AssertionError(String.format("Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")", hashSet, this.currentActivityStage));
            } catch (InterruptedException e) {
                throw new AssertionError(String.format("Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")", hashSet, this.currentActivityStage), e);
            }
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ ControlledLooper m820xfbe0c504() {
        return ControlledLooper.NO_OP_CONTROLLED_LOOPER;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ ActivityInvoker m821x3271d0aa() {
        return lambda$new$0();
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ void m822x1378447b(ActivityScenario activityScenario, ActivityAction activityAction) {
        activityScenario.lambda$onActivity$2(activityAction);
    }

    @Override // java.lang.AutoCloseable, java.io.Closeable
    public void close() {
        Trace.beginSection("ActivityScenario close");
        try {
            moveToState(Lifecycle.State.DESTROYED);
            ActivityLifecycleMonitorRegistry.getInstance().removeLifecycleCallback(this.activityLifecycleObserver);
        } finally {
            Trace.endSection();
        }
    }

    public Instrumentation.ActivityResult getResult() {
        return this.activityInvoker.getActivityResult();
    }

    public Lifecycle.State getState() {
        ActivityState<A> currentActivityState = getCurrentActivityState();
        return (Lifecycle.State) Checks.checkNotNull(currentActivityState.state, "Could not get current state of activity %s due to the transition is incomplete. Current stage = %s", currentActivityState.activity, currentActivityState.stage);
    }

    public ActivityScenario<A> moveToState(Lifecycle.State state) {
        boolean z;
        Checks.checkNotMainThread();
        InstrumentationRegistry.getInstrumentation().waitForIdleSync();
        ActivityState<A> currentActivityState = getCurrentActivityState();
        Checks.checkNotNull(currentActivityState.state, "Current state was null unexpectedly. Last stage = " + currentActivityState.stage);
        Lifecycle.State state2 = currentActivityState.state;
        if (state2 == state) {
            return this;
        }
        if (state2 != Lifecycle.State.DESTROYED && currentActivityState.activity != null) {
            z = true;
        } else {
            z = false;
        }
        Checks.checkState(z, "Cannot move to state \"" + state + "\" since the Activity has been destroyed already");
        int i = AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[state.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        this.activityInvoker.finishActivity(currentActivityState.activity);
                    } else {
                        throw new IllegalArgumentException("A requested state \"" + state + "\" is not supported");
                    }
                } else {
                    this.activityInvoker.resumeActivity(currentActivityState.activity);
                }
            } else {
                moveToState(Lifecycle.State.RESUMED);
                this.activityInvoker.pauseActivity(currentActivityState.activity);
            }
        } else {
            this.activityInvoker.stopActivity(currentActivityState.activity);
        }
        waitForActivityToBecomeAnyOf(state);
        return this;
    }

    public ActivityScenario<A> onActivity(ActivityAction<A> activityAction) {
        RunnableC0371x742e2fda runnableC0371x742e2fda = new RunnableC0371x742e2fda(this, activityAction, 0);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.controlledLooper.drainMainThreadUntilIdle();
            runnableC0371x742e2fda.run();
        } else {
            InstrumentationRegistry.getInstrumentation().waitForIdleSync();
            InstrumentationRegistry.getInstrumentation().runOnMainSync(runnableC0371x742e2fda);
        }
        return this;
    }

    public ActivityScenario<A> recreate() {
        ActivityState<A> currentActivityState;
        Checks.checkNotMainThread();
        InstrumentationRegistry.getInstrumentation().waitForIdleSync();
        ActivityState<A> currentActivityState2 = getCurrentActivityState();
        Checks.checkNotNull(currentActivityState2.activity);
        Checks.checkNotNull(currentActivityState2.state);
        moveToState(Lifecycle.State.RESUMED);
        this.activityInvoker.recreateActivity(currentActivityState2.activity);
        long elapsedRealtime = SystemClock.elapsedRealtime() + TIMEOUT_MILLISECONDS;
        do {
            waitForActivityToBecomeAnyOf(Lifecycle.State.RESUMED);
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            currentActivityState = getCurrentActivityState();
            if (elapsedRealtime2 >= elapsedRealtime) {
                break;
            }
        } while (currentActivityState.activity == currentActivityState2.activity);
        if (currentActivityState.activity != currentActivityState2.activity) {
            moveToState(currentActivityState2.state);
            return this;
        }
        throw new IllegalStateException("Requested a re-creation of Activity but didn't happen");
    }

    public static <A extends Activity> ActivityScenario<A> launch(Class<A> cls, @Nullable Bundle bundle) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Class) Checks.checkNotNull(cls));
        activityScenario.launchInternal(bundle, false);
        return activityScenario;
    }

    @NonNull
    public static <A extends Activity> ActivityScenario<A> launchActivityForResult(@NonNull Class<A> cls, @Nullable Bundle bundle) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Class) Checks.checkNotNull(cls));
        activityScenario.launchInternal(bundle, true);
        return activityScenario;
    }

    public static <A extends Activity> ActivityScenario<A> launch(Intent intent) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Intent) Checks.checkNotNull(intent));
        activityScenario.launchInternal(null, false);
        return activityScenario;
    }

    @NonNull
    public static <A extends Activity> ActivityScenario<A> launchActivityForResult(@NonNull Intent intent) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Intent) Checks.checkNotNull(intent));
        activityScenario.launchInternal(null, true);
        return activityScenario;
    }

    public static <A extends Activity> ActivityScenario<A> launch(Intent intent, @Nullable Bundle bundle) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Intent) Checks.checkNotNull(intent));
        activityScenario.launchInternal(bundle, false);
        return activityScenario;
    }

    @NonNull
    public static <A extends Activity> ActivityScenario<A> launchActivityForResult(@NonNull Intent intent, @Nullable Bundle bundle) {
        ActivityScenario<A> activityScenario = new ActivityScenario<>((Intent) Checks.checkNotNull(intent));
        activityScenario.launchInternal(bundle, true);
        return activityScenario;
    }

    private ActivityScenario(Class<A> cls) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.stateChangedCondition = reentrantLock.newCondition();
        ActivityInvoker activityInvoker = (ActivityInvoker) ServiceLoaderWrapper.loadSingleService(ActivityInvoker.class, new C0370x5ac5058d(0));
        this.activityInvoker = activityInvoker;
        this.controlledLooper = (ControlledLooper) ServiceLoaderWrapper.loadSingleService(ControlledLooper.class, new C0370x5ac5058d(1));
        this.currentActivityStage = Stage.PRE_ON_CREATE;
        this.activityLifecycleObserver = new ActivityLifecycleCallback() { // from class: androidx.test.core.app.ActivityScenario.1
            public AnonymousClass1() {
            }

            @Override // androidx.test.runner.lifecycle.ActivityLifecycleCallback
            public void onActivityLifecycleChanged(Activity activity, Stage stage) {
                if (!ActivityScenario.activityMatchesIntent(ActivityScenario.this.startActivityIntent, activity)) {
                    String unused = ActivityScenario.TAG;
                    String.format("Activity lifecycle changed event received but ignored because the intent does not match. startActivityIntent=%s, activity.getIntent()=%s, activity=%s", ActivityScenario.this.startActivityIntent, activity.getIntent(), activity);
                    return;
                }
                ActivityScenario.this.lock.lock();
                try {
                    int i = AnonymousClass2.$SwitchMap$androidx$test$runner$lifecycle$Stage[ActivityScenario.this.currentActivityStage.ordinal()];
                    if (i != 1 && i != 2) {
                        if (ActivityScenario.this.currentActivity != activity) {
                            String unused2 = ActivityScenario.TAG;
                            String.format("Activity lifecycle changed event received but ignored because the activity instance does not match. currentActivity=%s, receivedActivity=%s", ActivityScenario.this.currentActivity, activity);
                            return;
                        }
                    } else if (stage != Stage.CREATED) {
                        String unused3 = ActivityScenario.TAG;
                        new StringBuilder("Activity lifecycle changed event received but ignored because the reported transition was not ON_CREATE while the last known transition was ").append(ActivityScenario.this.currentActivityStage);
                        return;
                    }
                    ActivityScenario.this.currentActivityStage = stage;
                    ActivityScenario activityScenario = ActivityScenario.this;
                    if (stage == Stage.DESTROYED) {
                        activity = null;
                    }
                    activityScenario.currentActivity = activity;
                    String unused4 = ActivityScenario.TAG;
                    String.format("Update currentActivityStage to %s, currentActivity=%s", ActivityScenario.this.currentActivityStage, ActivityScenario.this.currentActivity);
                    ActivityScenario.this.stateChangedCondition.signal();
                } finally {
                    ActivityScenario.this.lock.unlock();
                }
            }
        };
        this.startActivityIntent = (Intent) Checks.checkNotNull(activityInvoker.getIntentForActivity((Class) Checks.checkNotNull(cls)));
    }
}
