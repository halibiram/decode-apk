package androidx.camera.core;

import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.util.Function;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.RetryPolicy;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraProviderExecutionState;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraThreadConfig;
import androidx.camera.core.impl.CameraValidator;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MetadataHolderService;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.QuirkSettingsLoader;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.os.HandlerCompat;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC1064x6e5ec593;
import defpackage.C0379x9172909e;
import defpackage.C0419x35cc9f53;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0511x79501710;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.Executor;

@OptIn(markerClass = {ExperimentalRetryPolicy.class})
@MainThread
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CameraX {
    private static final String RETRY_TOKEN = "retry_token";
    private static final String TAG = "CameraX";
    private final Executor mCameraExecutor;
    private CameraFactory mCameraFactory;
    final CameraRepository mCameraRepository;
    private final CameraXConfig mCameraXConfig;
    private UseCaseConfigFactory mDefaultConfigFactory;
    private final ListenableFuture<Void> mInitInternalFuture;

    @GuardedBy("mInitializeLock")
    private InternalInitState mInitState;
    private final Object mInitializeLock;
    private final Integer mMinLogLevel;
    private final RetryPolicy mRetryPolicy;
    private final Handler mSchedulerHandler;

    @Nullable
    private final HandlerThread mSchedulerThread;

    @GuardedBy("mInitializeLock")
    private ListenableFuture<Void> mShutdownInternalFuture;
    private CameraDeviceSurfaceManager mSurfaceManager;
    private static final Object MIN_LOG_LEVEL_LOCK = new Object();

    @GuardedBy("MIN_LOG_LEVEL_LOCK")
    private static final SparseArray<Integer> sMinLogLevelReferenceCountMap = new SparseArray<>();

    /* loaded from: classes.dex */
    public enum InternalInitState {
        UNINITIALIZED,
        INITIALIZING,
        INITIALIZING_ERROR,
        INITIALIZED,
        SHUTDOWN
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CameraX(@NonNull Context context, @Nullable CameraXConfig.Provider provider) {
        this(context, provider, new QuirkSettingsLoader());
    }

    private static void decreaseMinLogLevelReference(@Nullable Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
                int intValue = sparseArray.get(num.intValue()).intValue() - 1;
                if (intValue == 0) {
                    sparseArray.remove(num.intValue());
                } else {
                    sparseArray.put(num.intValue(), Integer.valueOf(intValue));
                }
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    private static CameraXConfig.Provider getConfigProvider(@NonNull Context context) {
        String str;
        ComponentCallbacks2 applicationFromContext = ContextUtil.getApplicationFromContext(context);
        if (applicationFromContext instanceof CameraXConfig.Provider) {
            return (CameraXConfig.Provider) applicationFromContext;
        }
        try {
            Context applicationContext = ContextUtil.getApplicationContext(context);
            Bundle bundle = applicationContext.getPackageManager().getServiceInfo(new ComponentName(applicationContext, (Class<?>) MetadataHolderService.class), 640).metaData;
            if (bundle != null) {
                str = bundle.getString("androidx.camera.core.impl.MetadataHolderService.DEFAULT_CONFIG_PROVIDER");
            } else {
                str = null;
            }
            if (str == null) {
                Logger.e(TAG, "No default CameraXConfig.Provider specified in meta-data. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
                return null;
            }
            return (CameraXConfig.Provider) Class.forName(str).getDeclaredConstructor(null).newInstance(null);
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (ClassNotFoundException e2) {
            e = e2;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (IllegalAccessException e3) {
            e = e3;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (InstantiationException e4) {
            e = e4;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (NoSuchMethodException e5) {
            e = e5;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (NullPointerException e6) {
            e = e6;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        } catch (InvocationTargetException e7) {
            e = e7;
            Logger.e(TAG, "Failed to retrieve default CameraXConfig.Provider from meta-data", e);
            return null;
        }
    }

    private static void increaseMinLogLevelReference(@Nullable Integer num) {
        synchronized (MIN_LOG_LEVEL_LOCK) {
            try {
                if (num == null) {
                    return;
                }
                Preconditions.checkArgumentInRange(num.intValue(), 3, 6, "minLogLevel");
                SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
                int i = 1;
                if (sparseArray.get(num.intValue()) != null) {
                    i = 1 + sparseArray.get(num.intValue()).intValue();
                }
                sparseArray.put(num.intValue(), Integer.valueOf(i));
                updateOrResetMinLogLevel();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void initAndRetryRecursively(@NonNull Executor executor, long j, int i, @NonNull Context context, @NonNull CallbackToFutureAdapter.Completer<Void> completer) {
        executor.execute(new RunnableC0511x79501710(this, context, executor, i, completer, j));
    }

    private ListenableFuture<Void> initInternal(@NonNull Context context) {
        boolean z;
        ListenableFuture<Void> future;
        synchronized (this.mInitializeLock) {
            if (this.mInitState == InternalInitState.UNINITIALIZED) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "CameraX.initInternal() should only be called once per instance");
            this.mInitState = InternalInitState.INITIALIZING;
            future = CallbackToFutureAdapter.getFuture(new C0379x9172909e(this, context, 2));
        }
        return future;
    }

    public /* synthetic */ void lambda$initAndRetryRecursively$1(Executor executor, long j, int i, Context context, CallbackToFutureAdapter.Completer completer) {
        initAndRetryRecursively(executor, j, i + 1, context, completer);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0124 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$initAndRetryRecursively$2(Context context, Executor executor, int i, CallbackToFutureAdapter.Completer completer, long j) {
        RetryPolicy.RetryConfig onRetryDecisionRequested;
        CameraFactory.Provider cameraFactoryProvider;
        String str = "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: ";
        Trace.beginSection("CX:initAndRetryRecursively");
        Context applicationContext = ContextUtil.getApplicationContext(context);
        try {
            try {
                cameraFactoryProvider = this.mCameraXConfig.getCameraFactoryProvider(null);
                try {
                } catch (InitializationException e) {
                    e = e;
                    CameraProviderExecutionState cameraProviderExecutionState = new CameraProviderExecutionState(j, i, e);
                    onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState);
                    traceExecutionState(cameraProviderExecutionState);
                    if (!onRetryDecisionRequested.shouldRetry() && i < Integer.MAX_VALUE) {
                        Logger.w(TAG, "Retry init. Start time " + j + " current time " + SystemClock.elapsedRealtime(), e);
                        HandlerCompat.postDelayed(this.mSchedulerHandler, new RunnableC0511x79501710(this, executor, j, i, applicationContext, completer), RETRY_TOKEN, onRetryDecisionRequested.getRetryDelayInMillis());
                    } else {
                        synchronized (this.mInitializeLock) {
                            this.mInitState = InternalInitState.INITIALIZING_ERROR;
                        }
                        if (onRetryDecisionRequested.shouldCompleteWithoutFailure()) {
                            setStateToInitialized();
                            completer.set(str);
                        } else if (e instanceof CameraValidator.CameraIdListIncorrectException) {
                            String str2 = "Device reporting less cameras than anticipated. On real devices: Retrying initialization might resolve temporary camera errors. On emulators: Ensure virtual camera configuration matches supported camera features as reported by PackageManager#hasSystemFeature. Available cameras: " + ((CameraValidator.CameraIdListIncorrectException) e).getAvailableCameraCount();
                            Logger.e(TAG, str2, e);
                            completer.setException(new InitializationException(new CameraUnavailableException(3, str2)));
                        } else if (e instanceof InitializationException) {
                            completer.setException(e);
                        } else {
                            completer.setException(new InitializationException(e));
                        }
                    }
                    Trace.endSection();
                    return;
                } catch (CameraValidator.CameraIdListIncorrectException e2) {
                    e = e2;
                    CameraProviderExecutionState cameraProviderExecutionState2 = new CameraProviderExecutionState(j, i, e);
                    onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState2);
                    traceExecutionState(cameraProviderExecutionState2);
                    if (!onRetryDecisionRequested.shouldRetry()) {
                    }
                    synchronized (this.mInitializeLock) {
                    }
                } catch (RuntimeException e3) {
                    e = e3;
                    CameraProviderExecutionState cameraProviderExecutionState22 = new CameraProviderExecutionState(j, i, e);
                    onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState22);
                    traceExecutionState(cameraProviderExecutionState22);
                    if (!onRetryDecisionRequested.shouldRetry()) {
                    }
                    synchronized (this.mInitializeLock) {
                    }
                }
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } catch (InitializationException e4) {
            e = e4;
            str = null;
            CameraProviderExecutionState cameraProviderExecutionState222 = new CameraProviderExecutionState(j, i, e);
            onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState222);
            traceExecutionState(cameraProviderExecutionState222);
            if (!onRetryDecisionRequested.shouldRetry()) {
            }
            synchronized (this.mInitializeLock) {
            }
        } catch (CameraValidator.CameraIdListIncorrectException e5) {
            e = e5;
            str = null;
            CameraProviderExecutionState cameraProviderExecutionState2222 = new CameraProviderExecutionState(j, i, e);
            onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState2222);
            traceExecutionState(cameraProviderExecutionState2222);
            if (!onRetryDecisionRequested.shouldRetry()) {
            }
            synchronized (this.mInitializeLock) {
            }
        } catch (RuntimeException e6) {
            e = e6;
            str = null;
            CameraProviderExecutionState cameraProviderExecutionState22222 = new CameraProviderExecutionState(j, i, e);
            onRetryDecisionRequested = this.mRetryPolicy.onRetryDecisionRequested(cameraProviderExecutionState22222);
            traceExecutionState(cameraProviderExecutionState22222);
            if (!onRetryDecisionRequested.shouldRetry()) {
            }
            synchronized (this.mInitializeLock) {
            }
        }
        if (cameraFactoryProvider != null) {
            CameraThreadConfig create = CameraThreadConfig.create(this.mCameraExecutor, this.mSchedulerHandler);
            CameraSelector availableCamerasLimiter = this.mCameraXConfig.getAvailableCamerasLimiter(null);
            this.mCameraFactory = cameraFactoryProvider.newInstance(applicationContext, create, availableCamerasLimiter, this.mCameraXConfig.getCameraOpenRetryMaxTimeoutInMillisWhileResuming());
            CameraDeviceSurfaceManager.Provider deviceSurfaceManagerProvider = this.mCameraXConfig.getDeviceSurfaceManagerProvider(null);
            if (deviceSurfaceManagerProvider != null) {
                this.mSurfaceManager = deviceSurfaceManagerProvider.newInstance(applicationContext, this.mCameraFactory.getCameraManager(), this.mCameraFactory.getAvailableCameraIds());
                UseCaseConfigFactory.Provider useCaseConfigFactoryProvider = this.mCameraXConfig.getUseCaseConfigFactoryProvider(null);
                if (useCaseConfigFactoryProvider != null) {
                    this.mDefaultConfigFactory = useCaseConfigFactoryProvider.newInstance(applicationContext);
                    if (executor instanceof CameraExecutor) {
                        ((CameraExecutor) executor).init(this.mCameraFactory);
                    }
                    this.mCameraRepository.init(this.mCameraFactory);
                    CameraValidator.validateCameras(applicationContext, this.mCameraRepository, availableCamerasLimiter);
                    if (i > 1) {
                        traceExecutionState(null);
                    }
                    setStateToInitialized();
                    completer.set(null);
                    Trace.endSection();
                    return;
                }
                throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing UseCaseConfigFactory."));
            }
            throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraDeviceSurfaceManager."));
        }
        throw new InitializationException(new IllegalArgumentException("Invalid app configuration provided. Missing CameraFactory."));
    }

    public /* synthetic */ Object lambda$initInternal$0(Context context, CallbackToFutureAdapter.Completer completer) {
        initAndRetryRecursively(this.mCameraExecutor, SystemClock.elapsedRealtime(), 1, context, completer);
        return "CameraX initInternal";
    }

    public /* synthetic */ void lambda$shutdownInternal$3(CallbackToFutureAdapter.Completer completer) {
        if (this.mSchedulerThread != null) {
            Executor executor = this.mCameraExecutor;
            if (executor instanceof CameraExecutor) {
                ((CameraExecutor) executor).deinit();
            }
            this.mSchedulerThread.quit();
        }
        completer.set(null);
    }

    public /* synthetic */ Object lambda$shutdownInternal$4(CallbackToFutureAdapter.Completer completer) {
        this.mCameraRepository.deinit().addListener(new RunnableC0371x742e2fda(this, completer, 14), this.mCameraExecutor);
        return "CameraX shutdownInternal";
    }

    private void setStateToInitialized() {
        synchronized (this.mInitializeLock) {
            this.mInitState = InternalInitState.INITIALIZED;
        }
    }

    @NonNull
    private ListenableFuture<Void> shutdownInternal() {
        synchronized (this.mInitializeLock) {
            try {
                this.mSchedulerHandler.removeCallbacksAndMessages(RETRY_TOKEN);
                int ordinal = this.mInitState.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal == 2 || ordinal == 3) {
                            this.mInitState = InternalInitState.SHUTDOWN;
                            decreaseMinLogLevelReference(this.mMinLogLevel);
                            this.mShutdownInternalFuture = CallbackToFutureAdapter.getFuture(new C0419x35cc9f53(this, 7));
                        }
                        return this.mShutdownInternalFuture;
                    }
                    throw new IllegalStateException("CameraX could not be shutdown when it is initializing.");
                }
                this.mInitState = InternalInitState.SHUTDOWN;
                return Futures.immediateFuture(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void traceExecutionState(@Nullable RetryPolicy.ExecutionState executionState) {
        int i;
        if (Trace.isEnabled()) {
            if (executionState != null) {
                i = executionState.getStatus();
            } else {
                i = -1;
            }
            Trace.setCounter("CX:CameraProvider-RetryStatus", i);
        }
    }

    @GuardedBy("MIN_LOG_LEVEL_LOCK")
    private static void updateOrResetMinLogLevel() {
        SparseArray<Integer> sparseArray = sMinLogLevelReferenceCountMap;
        if (sparseArray.size() == 0) {
            Logger.resetMinLogLevel();
            return;
        }
        if (sparseArray.get(3) != null) {
            Logger.setMinLogLevel(3);
            return;
        }
        if (sparseArray.get(4) != null) {
            Logger.setMinLogLevel(4);
        } else if (sparseArray.get(5) != null) {
            Logger.setMinLogLevel(5);
        } else if (sparseArray.get(6) != null) {
            Logger.setMinLogLevel(6);
        }
    }

    private static void updateQuirkSettings(@NonNull Context context, @Nullable QuirkSettings quirkSettings, @NonNull Function<Context, QuirkSettings> function) {
        if (quirkSettings != null) {
            Logger.d(TAG, "QuirkSettings from CameraXConfig: " + quirkSettings);
        } else {
            quirkSettings = function.apply(context);
            Logger.d(TAG, "QuirkSettings from app metadata: " + quirkSettings);
        }
        if (quirkSettings == null) {
            quirkSettings = QuirkSettingsHolder.DEFAULT;
            Logger.d(TAG, "QuirkSettings by default: " + quirkSettings);
        }
        QuirkSettingsHolder.instance().set(quirkSettings);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CameraDeviceSurfaceManager getCameraDeviceSurfaceManager() {
        CameraDeviceSurfaceManager cameraDeviceSurfaceManager = this.mSurfaceManager;
        if (cameraDeviceSurfaceManager != null) {
            return cameraDeviceSurfaceManager;
        }
        throw new IllegalStateException("CameraX not initialized yet.");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CameraFactory getCameraFactory() {
        CameraFactory cameraFactory = this.mCameraFactory;
        if (cameraFactory != null) {
            return cameraFactory;
        }
        throw new IllegalStateException("CameraX not initialized yet.");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CameraRepository getCameraRepository() {
        return this.mCameraRepository;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public UseCaseConfigFactory getDefaultConfigFactory() {
        UseCaseConfigFactory useCaseConfigFactory = this.mDefaultConfigFactory;
        if (useCaseConfigFactory != null) {
            return useCaseConfigFactory;
        }
        throw new IllegalStateException("CameraX not initialized yet.");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ListenableFuture<Void> getInitializeFuture() {
        return this.mInitInternalFuture;
    }

    public boolean isInitialized() {
        boolean z;
        synchronized (this.mInitializeLock) {
            if (this.mInitState == InternalInitState.INITIALIZED) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ListenableFuture<Void> shutdown() {
        return shutdownInternal();
    }

    @VisibleForTesting
    public CameraX(@NonNull Context context, @Nullable CameraXConfig.Provider provider, @NonNull Function<Context, QuirkSettings> function) {
        this.mCameraRepository = new CameraRepository();
        this.mInitializeLock = new Object();
        this.mInitState = InternalInitState.UNINITIALIZED;
        this.mShutdownInternalFuture = Futures.immediateFuture(null);
        if (provider != null) {
            this.mCameraXConfig = provider.getCameraXConfig();
        } else {
            CameraXConfig.Provider configProvider = getConfigProvider(context);
            if (configProvider != null) {
                this.mCameraXConfig = configProvider.getCameraXConfig();
            } else {
                throw new IllegalStateException("CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as 'camera-camera2'.");
            }
        }
        updateQuirkSettings(context, this.mCameraXConfig.getQuirkSettings(), function);
        Executor cameraExecutor = this.mCameraXConfig.getCameraExecutor(null);
        Handler schedulerHandler = this.mCameraXConfig.getSchedulerHandler(null);
        this.mCameraExecutor = cameraExecutor == null ? new CameraExecutor() : cameraExecutor;
        if (schedulerHandler == null) {
            HandlerThread handlerThread = new HandlerThread("CameraX-scheduler", 10);
            this.mSchedulerThread = handlerThread;
            handlerThread.start();
            this.mSchedulerHandler = HandlerCompat.createAsync(handlerThread.getLooper());
        } else {
            this.mSchedulerThread = null;
            this.mSchedulerHandler = schedulerHandler;
        }
        CameraXConfig cameraXConfig = this.mCameraXConfig;
        Config.Option<Integer> option = CameraXConfig.OPTION_MIN_LOGGING_LEVEL;
        cameraXConfig.getClass();
        Integer num = (Integer) AbstractC1064x6e5ec593.m3780x34271fae(cameraXConfig, option, null);
        this.mMinLogLevel = num;
        increaseMinLogLevelReference(num);
        this.mRetryPolicy = new RetryPolicy.Builder(this.mCameraXConfig.getCameraProviderInitRetryPolicy()).build();
        this.mInitInternalFuture = initInternal(context);
    }
}
