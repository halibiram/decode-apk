package androidx.camera.lifecycle;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.OptIn;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.ConcurrentCamera;
import androidx.camera.core.ExperimentalCameraInfo;
import androidx.camera.core.LayoutSettings;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.core.ViewPort;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigProvider;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.RestrictedCameraInfo;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LifecycleOwner;
import androidx.tracing.Trace;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0379x9172909e;
import defpackage.C0500xcc2dd6c2;
import defpackage.C1293xadddf3fb;
import defpackage.RunnableC1044x8c43c726;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u0000 Z2\u00020\u0001:\u0001ZB\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jk\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002012\b\u00103\u001a\u0004\u0018\u0001042\u000e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001060\u00042\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0001¢\u0006\u0004\b:\u0010;J \u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010<\u001a\u00020.2\u0006\u0010=\u001a\u00020>H\u0007J5\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010<\u001a\u00020.2\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0007¢\u0006\u0002\u0010?J\u0018\u0010)\u001a\u00020@2\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010B0\u0004H\u0007J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0002J\u000e\u0010G\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0018\u0010H\u001a\u00020I2\u0006\u0010<\u001a\u00020.2\u0006\u0010J\u001a\u00020\u0005H\u0002J\u0010\u0010K\u001a\u00020\u00052\u0006\u0010<\u001a\u00020.H\u0017J\u0016\u0010L\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010M\u001a\u00020$H\u0002J\u0010\u0010N\u001a\u00020\u00142\u0006\u0010<\u001a\u00020.H\u0016J\u0010\u0010O\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0016J\u0010\u0010Q\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0002J\u0010\u0010R\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0002J\u0010\u0010S\u001a\u00020D2\u0006\u0010T\u001a\u00020\u001bH\u0002J\u0010\u0010U\u001a\u00020D2\u0006\u0010M\u001a\u00020$H\u0002J\u000e\u0010V\u001a\b\u0012\u0004\u0012\u00020!0\u001fH\u0007J%\u0010W\u001a\u00020D2\u0016\u00107\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0017¢\u0006\u0002\u0010XJ\b\u0010Y\u001a\u00020DH\u0017R0\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00048G¢\u0006\u0006\u001a\u0004\b\f\u0010\bR$\u0010\r\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148G¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00178\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R \u0010 \u001a\u0010\u0012\f\u0012\n \"*\u0004\u0018\u00010!0!0\u001f8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006["}, d2 = {"Landroidx/camera/lifecycle/ProcessCameraProvider;", "Landroidx/camera/lifecycle/LifecycleCameraProvider;", "()V", "cameraInfos", "", "Landroidx/camera/core/CameraInfo;", "activeConcurrentCameraInfos", "getActiveConcurrentCameraInfos", "()Ljava/util/List;", "setActiveConcurrentCameraInfos", "(Ljava/util/List;)V", "availableConcurrentCameraInfos", "getAvailableConcurrentCameraInfos", "cameraOperatingMode", "", "getCameraOperatingMode", "()I", "setCameraOperatingMode", "(I)V", "isConcurrentCameraModeOn", "", "()Z", "mCameraInfoMap", "", "Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;", "Landroidx/camera/core/impl/RestrictedCameraInfo;", "mCameraX", "Landroidx/camera/core/CameraX;", "mCameraXConfigProvider", "Landroidx/camera/core/CameraXConfig$Provider;", "mCameraXInitializeFuture", "Lcom/google/common/util/concurrent/ListenableFuture;", "mCameraXShutdownFuture", "Ljava/lang/Void;", "kotlin.jvm.PlatformType", "mContext", "Landroid/content/Context;", "mLifecycleCameraRepository", "Landroidx/camera/lifecycle/LifecycleCameraRepository;", "mLock", "", "bindToLifecycle", "Landroidx/camera/core/Camera;", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "primaryCameraSelector", "Landroidx/camera/core/CameraSelector;", "secondaryCameraSelector", "primaryLayoutSettings", "Landroidx/camera/core/LayoutSettings;", "secondaryLayoutSettings", "viewPort", "Landroidx/camera/core/ViewPort;", "effects", "Landroidx/camera/core/CameraEffect;", "useCases", "", "Landroidx/camera/core/UseCase;", "bindToLifecycle$camera_lifecycle_release", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;", "cameraSelector", "useCaseGroup", "Landroidx/camera/core/UseCaseGroup;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;", "Landroidx/camera/core/ConcurrentCamera;", "singleCameraConfigs", "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;", "configureInstanceInternal", "", "cameraXConfig", "Landroidx/camera/core/CameraXConfig;", "getAvailableCameraInfos", "getCameraConfig", "Landroidx/camera/core/impl/CameraConfig;", "cameraInfo", "getCameraInfo", "getOrCreateCameraXInstance", "context", "hasCamera", "isBound", "useCase", "isPreview", "isVideoCapture", "setCameraX", "cameraX", "setContext", "shutdownAsync", "unbind", "([Landroidx/camera/core/UseCase;)V", "unbindAll", "Companion", "camera-lifecycle_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nProcessCameraProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider\n+ 2 Trace.kt\nandroidx/tracing/TraceKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,995:1\n27#2,5:996\n27#2,3:1001\n31#2:1006\n27#2,3:1007\n31#2:1016\n27#2,3:1017\n31#2:1022\n27#2,5:1023\n27#2,5:1028\n27#2,5:1033\n27#2,5:1038\n27#2,5:1043\n27#2,5:1048\n27#2,5:1053\n37#3,2:1004\n37#3,2:1010\n37#3,2:1012\n37#3,2:1014\n1855#4,2:1020\n*S KotlinDebug\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider\n*L\n204#1:996,5\n244#1:1001,3\n244#1:1006\n327#1:1007,3\n327#1:1016\n557#1:1017,3\n557#1:1022\n665#1:1023,5\n679#1:1028,5\n687#1:1033,5\n711#1:1038,5\n736#1:1043,5\n761#1:1048,5\n830#1:1053,5\n261#1:1004,2\n388#1:1010,2\n453#1:1012,2\n467#1:1014,2\n589#1:1020,2\n*E\n"})
/* loaded from: classes.dex */
public final class ProcessCameraProvider implements LifecycleCameraProvider {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final ProcessCameraProvider sAppInstance = new ProcessCameraProvider();

    @GuardedBy("mLock")
    @NotNull
    private final Map<CameraUseCaseAdapter.CameraId, RestrictedCameraInfo> mCameraInfoMap;

    @Nullable
    private CameraX mCameraX;

    @GuardedBy("mLock")
    @Nullable
    private CameraXConfig.Provider mCameraXConfigProvider;

    @GuardedBy("mLock")
    @Nullable
    private ListenableFuture<CameraX> mCameraXInitializeFuture;

    @GuardedBy("mLock")
    @NotNull
    private ListenableFuture<Void> mCameraXShutdownFuture;

    @Nullable
    private Context mContext;

    @NotNull
    private final LifecycleCameraRepository mLifecycleCameraRepository;

    @NotNull
    private final Object mLock = new Object();

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u000b\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;", "", "()V", "sAppInstance", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "configureInstance", "", "cameraXConfig", "Landroidx/camera/core/CameraXConfig;", "getInstance", "Lcom/google/common/util/concurrent/ListenableFuture;", "context", "Landroid/content/Context;", "camera-lifecycle_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nProcessCameraProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider$Companion\n+ 2 Trace.kt\nandroidx/tracing/TraceKt\n*L\n1#1,995:1\n27#2,5:996\n*S KotlinDebug\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider$Companion\n*L\n992#1:996,5\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final ProcessCameraProvider getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (ProcessCameraProvider) tmp0.invoke(obj);
        }

        @ExperimentalCameraProviderConfiguration
        @JvmStatic
        public final void configureInstance(@NotNull CameraXConfig cameraXConfig) {
            Intrinsics.checkNotNullParameter(cameraXConfig, "cameraXConfig");
            Trace.beginSection("CX:configureInstance");
            try {
                ProcessCameraProvider.sAppInstance.configureInstanceInternal(cameraXConfig);
            } finally {
                Trace.endSection();
            }
        }

        @JvmStatic
        @NotNull
        public final ListenableFuture<ProcessCameraProvider> getInstance(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Preconditions.checkNotNull(context);
            ListenableFuture<ProcessCameraProvider> transform = Futures.transform(ProcessCameraProvider.sAppInstance.getOrCreateCameraXInstance(context), new C0500xcc2dd6c2(new Function1<CameraX, ProcessCameraProvider>() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$Companion$getInstance$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ProcessCameraProvider invoke(CameraX cameraX) {
                    ProcessCameraProvider processCameraProvider = ProcessCameraProvider.sAppInstance;
                    Intrinsics.checkNotNullExpressionValue(cameraX, "cameraX");
                    processCameraProvider.setCameraX(cameraX);
                    ProcessCameraProvider processCameraProvider2 = ProcessCameraProvider.sAppInstance;
                    Context applicationContext = ContextUtil.getApplicationContext(context);
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(context)");
                    processCameraProvider2.setContext(applicationContext);
                    return ProcessCameraProvider.sAppInstance;
                }
            }, 3), CameraXExecutors.directExecutor());
            Intrinsics.checkNotNullExpressionValue(transform, "context: Context): Liste…tExecutor()\n            )");
            return transform;
        }

        private Companion() {
        }
    }

    private ProcessCameraProvider() {
        ListenableFuture<Void> immediateFuture = Futures.immediateFuture(null);
        Intrinsics.checkNotNullExpressionValue(immediateFuture, "immediateFuture<Void>(null)");
        this.mCameraXShutdownFuture = immediateFuture;
        this.mLifecycleCameraRepository = new LifecycleCameraRepository();
        this.mCameraInfoMap = new HashMap();
    }

    @ExperimentalCameraProviderConfiguration
    @JvmStatic
    public static final void configureInstance(@NotNull CameraXConfig cameraXConfig) {
        INSTANCE.configureInstance(cameraXConfig);
    }

    public final void configureInstanceInternal(final CameraXConfig cameraXConfig) {
        boolean z;
        Trace.beginSection("CX:configureInstanceInternal");
        try {
            synchronized (this.mLock) {
                Preconditions.checkNotNull(cameraXConfig);
                if (this.mCameraXConfigProvider == null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, "CameraX has already been configured. To use a different configuration, shutdown() must be called.");
                this.mCameraXConfigProvider = new CameraXConfig.Provider() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$configureInstanceInternal$1$1$1
                    @Override // androidx.camera.core.CameraXConfig.Provider
                    @NotNull
                    public final CameraXConfig getCameraXConfig() {
                        return CameraXConfig.this;
                    }
                };
            }
        } finally {
            Trace.endSection();
        }
    }

    public final List<CameraInfo> getActiveConcurrentCameraInfos() {
        CameraX cameraX = this.mCameraX;
        if (cameraX == null) {
            return new ArrayList();
        }
        Intrinsics.checkNotNull(cameraX);
        List<CameraInfo> activeConcurrentCameraInfos = cameraX.getCameraFactory().getCameraCoordinator().getActiveConcurrentCameraInfos();
        Intrinsics.checkNotNullExpressionValue(activeConcurrentCameraInfos, "mCameraX!!.cameraFactory…tiveConcurrentCameraInfos");
        return activeConcurrentCameraInfos;
    }

    public final CameraConfig getCameraConfig(CameraSelector cameraSelector, CameraInfo cameraInfo) {
        Iterator<CameraFilter> it = cameraSelector.getCameraFilterSet().iterator();
        CameraConfig cameraConfig = null;
        while (it.hasNext()) {
            CameraFilter next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "cameraSelector.cameraFilterSet");
            CameraFilter cameraFilter = next;
            if (!Intrinsics.areEqual(cameraFilter.getIdentifier(), CameraFilter.DEFAULT_ID)) {
                CameraConfigProvider configProvider = ExtendedCameraConfigProviderStore.getConfigProvider(cameraFilter.getIdentifier());
                Context context = this.mContext;
                Intrinsics.checkNotNull(context);
                CameraConfig config2 = configProvider.getConfig(cameraInfo, context);
                if (config2 == null) {
                    continue;
                } else if (cameraConfig == null) {
                    cameraConfig = config2;
                } else {
                    throw new IllegalArgumentException("Cannot apply multiple extended camera configs at the same time.");
                }
            }
        }
        if (cameraConfig == null) {
            return CameraConfigs.defaultConfig();
        }
        return cameraConfig;
    }

    public final int getCameraOperatingMode() {
        CameraX cameraX = this.mCameraX;
        if (cameraX == null) {
            return 0;
        }
        Intrinsics.checkNotNull(cameraX);
        return cameraX.getCameraFactory().getCameraCoordinator().getCameraOperatingMode();
    }

    @JvmStatic
    @NotNull
    public static final ListenableFuture<ProcessCameraProvider> getInstance(@NotNull Context context) {
        return INSTANCE.getInstance(context);
    }

    public final ListenableFuture<CameraX> getOrCreateCameraXInstance(Context context) {
        synchronized (this.mLock) {
            ListenableFuture<CameraX> listenableFuture = this.mCameraXInitializeFuture;
            if (listenableFuture != null) {
                Intrinsics.checkNotNull(listenableFuture, "null cannot be cast to non-null type com.google.common.util.concurrent.ListenableFuture<androidx.camera.core.CameraX>");
                return listenableFuture;
            }
            ListenableFuture<CameraX> future = CallbackToFutureAdapter.getFuture(new C0379x9172909e(this, new CameraX(context, this.mCameraXConfigProvider), 7));
            this.mCameraXInitializeFuture = future;
            Intrinsics.checkNotNull(future, "null cannot be cast to non-null type com.google.common.util.concurrent.ListenableFuture<androidx.camera.core.CameraX>");
            return future;
        }
    }

    public static final Object getOrCreateCameraXInstance$lambda$18$lambda$17(ProcessCameraProvider this$0, final CameraX cameraX, final CallbackToFutureAdapter.Completer completer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(cameraX, "$cameraX");
        Intrinsics.checkNotNullParameter(completer, "completer");
        synchronized (this$0.mLock) {
            FutureChain transformAsync = FutureChain.from(this$0.mCameraXShutdownFuture).transformAsync(new C1293xadddf3fb(new Function1<Void, ListenableFuture<Void>>() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$future$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final ListenableFuture<Void> invoke(@Nullable Void r1) {
                    return CameraX.this.getInitializeFuture();
                }
            }, 2), CameraXExecutors.directExecutor());
            Intrinsics.checkNotNullExpressionValue(transformAsync, "cameraX = CameraX(contex…                        )");
            Futures.addCallback(transformAsync, new FutureCallback<Void>() { // from class: androidx.camera.lifecycle.ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NotNull Throwable t) {
                    Intrinsics.checkNotNullParameter(t, "t");
                    completer.setException(t);
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void result) {
                    completer.set(cameraX);
                }
            }, CameraXExecutors.directExecutor());
        }
        return "ProcessCameraProvider-initializeCameraX";
    }

    public static final ListenableFuture getOrCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ListenableFuture) tmp0.invoke(obj);
    }

    public final boolean isPreview(UseCase useCase) {
        return useCase instanceof Preview;
    }

    public final boolean isVideoCapture(UseCase useCase) {
        if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE) && useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE) {
            return true;
        }
        return false;
    }

    public final void setActiveConcurrentCameraInfos(List<? extends CameraInfo> list) {
        CameraX cameraX = this.mCameraX;
        if (cameraX == null) {
            return;
        }
        Intrinsics.checkNotNull(cameraX);
        cameraX.getCameraFactory().getCameraCoordinator().setActiveConcurrentCameraInfos(list);
    }

    public final void setCameraOperatingMode(int i) {
        CameraX cameraX = this.mCameraX;
        if (cameraX == null) {
            return;
        }
        Intrinsics.checkNotNull(cameraX);
        cameraX.getCameraFactory().getCameraCoordinator().setCameraOperatingMode(i);
    }

    public final void setCameraX(CameraX cameraX) {
        this.mCameraX = cameraX;
    }

    public final void setContext(Context context) {
        this.mContext = context;
    }

    public static final void shutdownAsync$lambda$0(ProcessCameraProvider this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.unbindAll();
        this$0.mLifecycleCameraRepository.clear();
    }

    @MainThread
    @NotNull
    public final Camera bindToLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull CameraSelector cameraSelector, @NotNull UseCase... useCases) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        Trace.beginSection("CX:bindToLifecycle");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                LayoutSettings DEFAULT = LayoutSettings.DEFAULT;
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                return bindToLifecycle$camera_lifecycle_release(lifecycleOwner, cameraSelector, null, DEFAULT, DEFAULT, null, CollectionsKt__CollectionsKt.emptyList(), (UseCase[]) Arrays.copyOf(useCases, useCases.length));
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first");
        } finally {
            Trace.endSection();
        }
    }

    @OptIn(markerClass = {ExperimentalCameraInfo.class})
    @NotNull
    public final Camera bindToLifecycle$camera_lifecycle_release(@NotNull LifecycleOwner lifecycleOwner, @NotNull CameraSelector primaryCameraSelector, @Nullable CameraSelector secondaryCameraSelector, @NotNull LayoutSettings primaryLayoutSettings, @NotNull LayoutSettings secondaryLayoutSettings, @Nullable ViewPort viewPort, @NotNull List<? extends CameraEffect> effects, @NotNull UseCase... useCases) {
        RestrictedCameraInfo restrictedCameraInfo;
        CameraInternal cameraInternal;
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(primaryCameraSelector, "primaryCameraSelector");
        Intrinsics.checkNotNullParameter(primaryLayoutSettings, "primaryLayoutSettings");
        Intrinsics.checkNotNullParameter(secondaryLayoutSettings, "secondaryLayoutSettings");
        Intrinsics.checkNotNullParameter(effects, "effects");
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        Trace.beginSection("CX:bindToLifecycle-internal");
        try {
            Threads.checkMainThread();
            CameraX cameraX = this.mCameraX;
            Intrinsics.checkNotNull(cameraX);
            CameraInternal select = primaryCameraSelector.select(cameraX.getCameraRepository().getCameras());
            Intrinsics.checkNotNullExpressionValue(select, "primaryCameraSelector.se…cameraRepository.cameras)");
            select.setPrimary(true);
            CameraInfo cameraInfo = getCameraInfo(primaryCameraSelector);
            Intrinsics.checkNotNull(cameraInfo, "null cannot be cast to non-null type androidx.camera.core.impl.RestrictedCameraInfo");
            RestrictedCameraInfo restrictedCameraInfo2 = (RestrictedCameraInfo) cameraInfo;
            if (secondaryCameraSelector != null) {
                CameraX cameraX2 = this.mCameraX;
                Intrinsics.checkNotNull(cameraX2);
                CameraInternal select2 = secondaryCameraSelector.select(cameraX2.getCameraRepository().getCameras());
                select2.setPrimary(false);
                CameraInfo cameraInfo2 = getCameraInfo(secondaryCameraSelector);
                Intrinsics.checkNotNull(cameraInfo2, "null cannot be cast to non-null type androidx.camera.core.impl.RestrictedCameraInfo");
                cameraInternal = select2;
                restrictedCameraInfo = (RestrictedCameraInfo) cameraInfo2;
            } else {
                restrictedCameraInfo = null;
                cameraInternal = null;
            }
            LifecycleCamera lifecycleCamera = this.mLifecycleCameraRepository.getLifecycleCamera(lifecycleOwner, CameraUseCaseAdapter.generateCameraId(restrictedCameraInfo2, restrictedCameraInfo));
            Collection<LifecycleCamera> lifecycleCameras = this.mLifecycleCameraRepository.getLifecycleCameras();
            for (UseCase useCase : ArraysKt___ArraysKt.filterNotNull(useCases)) {
                for (LifecycleCamera lifecycleCameras2 : lifecycleCameras) {
                    Intrinsics.checkNotNullExpressionValue(lifecycleCameras2, "lifecycleCameras");
                    LifecycleCamera lifecycleCamera2 = lifecycleCameras2;
                    if (lifecycleCamera2.isBound(useCase) && !Intrinsics.areEqual(lifecycleCamera2, lifecycleCamera)) {
                        String format = String.format("Use case %s already bound to a different lifecycle.", Arrays.copyOf(new Object[]{useCase}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        throw new IllegalStateException(format);
                    }
                }
            }
            if (lifecycleCamera == null) {
                LifecycleCameraRepository lifecycleCameraRepository = this.mLifecycleCameraRepository;
                CameraX cameraX3 = this.mCameraX;
                Intrinsics.checkNotNull(cameraX3);
                CameraCoordinator cameraCoordinator = cameraX3.getCameraFactory().getCameraCoordinator();
                CameraX cameraX4 = this.mCameraX;
                Intrinsics.checkNotNull(cameraX4);
                CameraDeviceSurfaceManager cameraDeviceSurfaceManager = cameraX4.getCameraDeviceSurfaceManager();
                CameraX cameraX5 = this.mCameraX;
                Intrinsics.checkNotNull(cameraX5);
                lifecycleCamera = lifecycleCameraRepository.createLifecycleCamera(lifecycleOwner, new CameraUseCaseAdapter(select, cameraInternal, restrictedCameraInfo2, restrictedCameraInfo, primaryLayoutSettings, secondaryLayoutSettings, cameraCoordinator, cameraDeviceSurfaceManager, cameraX5.getDefaultConfigFactory()));
            }
            if (useCases.length != 0) {
                LifecycleCameraRepository lifecycleCameraRepository2 = this.mLifecycleCameraRepository;
                Intrinsics.checkNotNull(lifecycleCamera);
                List listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(useCases, useCases.length));
                CameraX cameraX6 = this.mCameraX;
                Intrinsics.checkNotNull(cameraX6);
                lifecycleCameraRepository2.bindToLifecycleCamera(lifecycleCamera, viewPort, effects, listOf, cameraX6.getCameraFactory().getCameraCoordinator());
            } else {
                Intrinsics.checkNotNull(lifecycleCamera);
            }
            Trace.endSection();
            return lifecycleCamera;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.core.CameraProvider
    @NotNull
    public List<CameraInfo> getAvailableCameraInfos() {
        Trace.beginSection("CX:getAvailableCameraInfos");
        try {
            ArrayList arrayList = new ArrayList();
            CameraX cameraX = this.mCameraX;
            Intrinsics.checkNotNull(cameraX);
            LinkedHashSet<CameraInternal> cameras = cameraX.getCameraRepository().getCameras();
            Intrinsics.checkNotNullExpressionValue(cameras, "mCameraX!!.cameraRepository.cameras");
            Iterator<CameraInternal> it = cameras.iterator();
            while (it.hasNext()) {
                CameraInfo cameraInfo = it.next().getCameraInfo();
                Intrinsics.checkNotNullExpressionValue(cameraInfo, "camera.cameraInfo");
                arrayList.add(cameraInfo);
            }
            return arrayList;
        } finally {
            Trace.endSection();
        }
    }

    @OptIn(markerClass = {ExperimentalCameraInfo.class})
    @NotNull
    public final List<List<CameraInfo>> getAvailableConcurrentCameraInfos() {
        Trace.beginSection("CX:getAvailableConcurrentCameraInfos");
        try {
            Objects.requireNonNull(this.mCameraX);
            CameraX cameraX = this.mCameraX;
            Intrinsics.checkNotNull(cameraX);
            Objects.requireNonNull(cameraX.getCameraFactory().getCameraCoordinator());
            CameraX cameraX2 = this.mCameraX;
            Intrinsics.checkNotNull(cameraX2);
            List<List<CameraSelector>> concurrentCameraSelectors = cameraX2.getCameraFactory().getCameraCoordinator().getConcurrentCameraSelectors();
            Intrinsics.checkNotNullExpressionValue(concurrentCameraSelectors, "mCameraX!!.cameraFactory…concurrentCameraSelectors");
            ArrayList arrayList = new ArrayList();
            for (List<CameraSelector> list : concurrentCameraSelectors) {
                ArrayList arrayList2 = new ArrayList();
                for (CameraSelector cameraSelector : list) {
                    try {
                        Intrinsics.checkNotNullExpressionValue(cameraSelector, "cameraSelector");
                        arrayList2.add(getCameraInfo(cameraSelector));
                    } catch (IllegalArgumentException unused) {
                    }
                }
                arrayList.add(arrayList2);
            }
            Trace.endSection();
            return arrayList;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.core.CameraProvider
    @ExperimentalCameraInfo
    @NotNull
    public CameraInfo getCameraInfo(@NotNull CameraSelector cameraSelector) {
        Object obj;
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        Trace.beginSection("CX:getCameraInfo");
        try {
            CameraX cameraX = this.mCameraX;
            Intrinsics.checkNotNull(cameraX);
            CameraInfoInternal cameraInfoInternal = cameraSelector.select(cameraX.getCameraRepository().getCameras()).getCameraInfoInternal();
            Intrinsics.checkNotNullExpressionValue(cameraInfoInternal, "cameraSelector.select(mC…meras).cameraInfoInternal");
            CameraConfig cameraConfig = getCameraConfig(cameraSelector, cameraInfoInternal);
            CameraUseCaseAdapter.CameraId create = CameraUseCaseAdapter.CameraId.create(cameraInfoInternal.getCameraId(), cameraConfig.getCompatibilityId());
            Intrinsics.checkNotNullExpressionValue(create, "create(\n                …ilityId\n                )");
            synchronized (this.mLock) {
                obj = this.mCameraInfoMap.get(create);
                if (obj == null) {
                    obj = new RestrictedCameraInfo(cameraInfoInternal, cameraConfig);
                    this.mCameraInfoMap.put(create, obj);
                }
            }
            return (RestrictedCameraInfo) obj;
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.core.CameraProvider
    public boolean hasCamera(@NotNull CameraSelector cameraSelector) {
        boolean z;
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        Trace.beginSection("CX:hasCamera");
        try {
            CameraX cameraX = this.mCameraX;
            Intrinsics.checkNotNull(cameraX);
            cameraSelector.select(cameraX.getCameraRepository().getCameras());
            z = true;
        } catch (IllegalArgumentException unused) {
            z = false;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
        Trace.endSection();
        return z;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    public boolean isBound(@NotNull UseCase useCase) {
        Intrinsics.checkNotNullParameter(useCase, "useCase");
        for (LifecycleCamera lifecycleCamera : this.mLifecycleCameraRepository.getLifecycleCameras()) {
            Intrinsics.checkNotNullExpressionValue(lifecycleCamera, "mLifecycleCameraRepository.lifecycleCameras");
            if (lifecycleCamera.isBound(useCase)) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public final boolean isConcurrentCameraModeOn() {
        if (getCameraOperatingMode() == 2) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    @NotNull
    public final ListenableFuture<Void> shutdownAsync() {
        ListenableFuture<Void> immediateFuture;
        Threads.runOnMainSync(new RunnableC1044x8c43c726(this, 0));
        CameraX cameraX = this.mCameraX;
        if (cameraX != null) {
            Intrinsics.checkNotNull(cameraX);
            cameraX.getCameraFactory().getCameraCoordinator().shutdown();
        }
        CameraX cameraX2 = this.mCameraX;
        if (cameraX2 != null) {
            Intrinsics.checkNotNull(cameraX2);
            immediateFuture = cameraX2.shutdown();
        } else {
            immediateFuture = Futures.immediateFuture(null);
        }
        Intrinsics.checkNotNullExpressionValue(immediateFuture, "if (mCameraX != null) mC…mediateFuture<Void>(null)");
        synchronized (this.mLock) {
            this.mCameraXConfigProvider = null;
            this.mCameraXInitializeFuture = null;
            this.mCameraXShutdownFuture = immediateFuture;
            this.mCameraInfoMap.clear();
        }
        this.mCameraX = null;
        this.mContext = null;
        return immediateFuture;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    @MainThread
    public void unbind(@NotNull UseCase... useCases) {
        Intrinsics.checkNotNullParameter(useCases, "useCases");
        Trace.beginSection("CX:unbind");
        try {
            Threads.checkMainThread();
            if (getCameraOperatingMode() != 2) {
                this.mLifecycleCameraRepository.unbind(CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(useCases, useCases.length)));
                return;
            }
            throw new UnsupportedOperationException("Unbind usecase is not supported in concurrent camera mode, call unbindAll() first.");
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraProvider
    @MainThread
    public void unbindAll() {
        Trace.beginSection("CX:unbindAll");
        try {
            Threads.checkMainThread();
            setCameraOperatingMode(0);
            this.mLifecycleCameraRepository.unbindAll();
        } finally {
            Trace.endSection();
        }
    }

    @MainThread
    @NotNull
    public final Camera bindToLifecycle(@NotNull LifecycleOwner lifecycleOwner, @NotNull CameraSelector cameraSelector, @NotNull UseCaseGroup useCaseGroup) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(cameraSelector, "cameraSelector");
        Intrinsics.checkNotNullParameter(useCaseGroup, "useCaseGroup");
        Trace.beginSection("CX:bindToLifecycle-UseCaseGroup");
        try {
            if (getCameraOperatingMode() != 2) {
                setCameraOperatingMode(1);
                LayoutSettings DEFAULT = LayoutSettings.DEFAULT;
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                ViewPort viewPort = useCaseGroup.getViewPort();
                List<CameraEffect> effects = useCaseGroup.getEffects();
                Intrinsics.checkNotNullExpressionValue(effects, "useCaseGroup.effects");
                List<UseCase> useCases = useCaseGroup.getUseCases();
                Intrinsics.checkNotNullExpressionValue(useCases, "useCaseGroup.useCases");
                UseCase[] useCaseArr = (UseCase[]) useCases.toArray(new UseCase[0]);
                return bindToLifecycle$camera_lifecycle_release(lifecycleOwner, cameraSelector, null, DEFAULT, DEFAULT, viewPort, effects, (UseCase[]) Arrays.copyOf(useCaseArr, useCaseArr.length));
            }
            throw new UnsupportedOperationException("bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first.");
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x01f9, code lost:
    
        if (isPreview(r3) == false) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x020a, code lost:
    
        r2 = r1.getLifecycleOwner();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "firstCameraConfig.lifecycleOwner");
        r3 = r1.getCameraSelector();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, "firstCameraConfig.cameraSelector");
        r0 = r4.getCameraSelector();
        r5 = r1.getLayoutSettings();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, "firstCameraConfig.layoutSettings");
        r7 = r4.getLayoutSettings();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, "secondCameraConfig.layoutSettings");
        r8 = r1.getUseCaseGroup().getViewPort();
        r9 = r1.getUseCaseGroup().getEffects();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, "firstCameraConfig.useCaseGroup.effects");
        r1 = r1.getUseCaseGroup().getUseCases();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "firstCameraConfig.useCaseGroup.useCases");
        r1 = (androidx.camera.core.UseCase[]) r1.toArray(new androidx.camera.core.UseCase[0]);
        r12.add(bindToLifecycle$camera_lifecycle_release(r2, r3, r0, r5, r7, r8, r9, (androidx.camera.core.UseCase[]) java.util.Arrays.copyOf(r1, r1.length)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0208, code lost:
    
        if (isVideoCapture(r3) != false) goto L153;
     */
    @OptIn(markerClass = {ExperimentalCameraInfo.class})
    @MainThread
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ConcurrentCamera bindToLifecycle(@NotNull List<ConcurrentCamera.SingleCameraConfig> singleCameraConfigs) {
        Intrinsics.checkNotNullParameter(singleCameraConfigs, "singleCameraConfigs");
        Trace.beginSection("CX:bindToLifecycle-Concurrent");
        try {
            if (singleCameraConfigs.size() >= 2) {
                if (singleCameraConfigs.size() <= 2) {
                    ConcurrentCamera.SingleCameraConfig singleCameraConfig = singleCameraConfigs.get(0);
                    Intrinsics.checkNotNull(singleCameraConfig);
                    ConcurrentCamera.SingleCameraConfig singleCameraConfig2 = singleCameraConfig;
                    ConcurrentCamera.SingleCameraConfig singleCameraConfig3 = singleCameraConfigs.get(1);
                    Intrinsics.checkNotNull(singleCameraConfig3);
                    ConcurrentCamera.SingleCameraConfig singleCameraConfig4 = singleCameraConfig3;
                    ArrayList arrayList = new ArrayList();
                    if (Intrinsics.areEqual(singleCameraConfig2.getCameraSelector().getLensFacing(), singleCameraConfig4.getCameraSelector().getLensFacing())) {
                        if (getCameraOperatingMode() != 2) {
                            if (Intrinsics.areEqual(singleCameraConfig2.getLifecycleOwner(), singleCameraConfig4.getLifecycleOwner()) && Intrinsics.areEqual(singleCameraConfig2.getUseCaseGroup().getViewPort(), singleCameraConfig4.getUseCaseGroup().getViewPort()) && Intrinsics.areEqual(singleCameraConfig2.getUseCaseGroup().getEffects(), singleCameraConfig4.getUseCaseGroup().getEffects())) {
                                LifecycleOwner lifecycleOwner = singleCameraConfig2.getLifecycleOwner();
                                Intrinsics.checkNotNullExpressionValue(lifecycleOwner, "firstCameraConfig.lifecycleOwner");
                                CameraSelector cameraSelector = singleCameraConfig2.getCameraSelector();
                                Intrinsics.checkNotNullExpressionValue(cameraSelector, "firstCameraConfig.cameraSelector");
                                ViewPort viewPort = singleCameraConfig2.getUseCaseGroup().getViewPort();
                                List<CameraEffect> effects = singleCameraConfig2.getUseCaseGroup().getEffects();
                                Intrinsics.checkNotNullExpressionValue(effects, "firstCameraConfig.useCaseGroup.effects");
                                ArrayList arrayList2 = new ArrayList();
                                for (ConcurrentCamera.SingleCameraConfig singleCameraConfig5 : singleCameraConfigs) {
                                    Intrinsics.checkNotNull(singleCameraConfig5);
                                    for (UseCase useCase : singleCameraConfig5.getUseCaseGroup().getUseCases()) {
                                        Intrinsics.checkNotNullExpressionValue(useCase, "config!!.useCaseGroup.useCases");
                                        UseCase useCase2 = useCase;
                                        String physicalCameraId = singleCameraConfig5.getCameraSelector().getPhysicalCameraId();
                                        if (physicalCameraId != null) {
                                            useCase2.setPhysicalCameraId(physicalCameraId);
                                        }
                                    }
                                    List<UseCase> useCases = singleCameraConfig5.getUseCaseGroup().getUseCases();
                                    Intrinsics.checkNotNullExpressionValue(useCases, "config.useCaseGroup.useCases");
                                    arrayList2.addAll(useCases);
                                }
                                setCameraOperatingMode(1);
                                LayoutSettings DEFAULT = LayoutSettings.DEFAULT;
                                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                                UseCase[] useCaseArr = (UseCase[]) arrayList2.toArray(new UseCase[0]);
                                arrayList.add(bindToLifecycle$camera_lifecycle_release(lifecycleOwner, cameraSelector, null, DEFAULT, DEFAULT, viewPort, effects, (UseCase[]) Arrays.copyOf(useCaseArr, useCaseArr.length)));
                            } else {
                                throw new IllegalArgumentException("Two camera configs need to have the same lifecycle owner, view port and effects.");
                            }
                        } else {
                            throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                        }
                    } else {
                        Context context = this.mContext;
                        Intrinsics.checkNotNull(context);
                        if (context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent")) {
                            if (getCameraOperatingMode() != 1) {
                                ArrayList arrayList3 = new ArrayList();
                                try {
                                    CameraSelector cameraSelector2 = singleCameraConfig2.getCameraSelector();
                                    Intrinsics.checkNotNullExpressionValue(cameraSelector2, "firstCameraConfig.cameraSelector");
                                    CameraInfo cameraInfo = getCameraInfo(cameraSelector2);
                                    CameraSelector cameraSelector3 = singleCameraConfig4.getCameraSelector();
                                    Intrinsics.checkNotNullExpressionValue(cameraSelector3, "secondCameraConfig.cameraSelector");
                                    CameraInfo cameraInfo2 = getCameraInfo(cameraSelector3);
                                    arrayList3.add(cameraInfo);
                                    arrayList3.add(cameraInfo2);
                                    if (!getActiveConcurrentCameraInfos().isEmpty() && !Intrinsics.areEqual(arrayList3, getActiveConcurrentCameraInfos())) {
                                        throw new UnsupportedOperationException("Cameras are already running, call unbindAll() before binding more cameras.");
                                    }
                                    setCameraOperatingMode(2);
                                    if (Objects.equals(singleCameraConfig2.getUseCaseGroup().getUseCases(), singleCameraConfig4.getUseCaseGroup().getUseCases()) && singleCameraConfig2.getUseCaseGroup().getUseCases().size() == 2) {
                                        UseCase useCase0 = singleCameraConfig2.getUseCaseGroup().getUseCases().get(0);
                                        UseCase useCase1 = singleCameraConfig2.getUseCaseGroup().getUseCases().get(1);
                                        Intrinsics.checkNotNullExpressionValue(useCase0, "useCase0");
                                        if (isVideoCapture(useCase0)) {
                                            Intrinsics.checkNotNullExpressionValue(useCase1, "useCase1");
                                        }
                                        if (isPreview(useCase0)) {
                                            Intrinsics.checkNotNullExpressionValue(useCase1, "useCase1");
                                        }
                                    }
                                    for (ConcurrentCamera.SingleCameraConfig singleCameraConfig6 : singleCameraConfigs) {
                                        Intrinsics.checkNotNull(singleCameraConfig6);
                                        LifecycleOwner lifecycleOwner2 = singleCameraConfig6.getLifecycleOwner();
                                        Intrinsics.checkNotNullExpressionValue(lifecycleOwner2, "config!!.lifecycleOwner");
                                        CameraSelector cameraSelector4 = singleCameraConfig6.getCameraSelector();
                                        Intrinsics.checkNotNullExpressionValue(cameraSelector4, "config.cameraSelector");
                                        LayoutSettings DEFAULT2 = LayoutSettings.DEFAULT;
                                        Intrinsics.checkNotNullExpressionValue(DEFAULT2, "DEFAULT");
                                        Intrinsics.checkNotNullExpressionValue(DEFAULT2, "DEFAULT");
                                        ViewPort viewPort2 = singleCameraConfig6.getUseCaseGroup().getViewPort();
                                        List<CameraEffect> effects2 = singleCameraConfig6.getUseCaseGroup().getEffects();
                                        Intrinsics.checkNotNullExpressionValue(effects2, "config.useCaseGroup.effects");
                                        List<UseCase> useCases2 = singleCameraConfig6.getUseCaseGroup().getUseCases();
                                        Intrinsics.checkNotNullExpressionValue(useCases2, "config.useCaseGroup.useCases");
                                        UseCase[] useCaseArr2 = (UseCase[]) useCases2.toArray(new UseCase[0]);
                                        arrayList.add(bindToLifecycle$camera_lifecycle_release(lifecycleOwner2, cameraSelector4, null, DEFAULT2, DEFAULT2, viewPort2, effects2, (UseCase[]) Arrays.copyOf(useCaseArr2, useCaseArr2.length)));
                                    }
                                    setActiveConcurrentCameraInfos(arrayList3);
                                } catch (IllegalArgumentException unused) {
                                    throw new IllegalArgumentException("Invalid camera selectors in camera configs.");
                                }
                            } else {
                                throw new UnsupportedOperationException("Camera is already running, call unbindAll() before binding more cameras.");
                            }
                        } else {
                            throw new UnsupportedOperationException("Concurrent camera is not supported on the device.");
                        }
                    }
                    ConcurrentCamera concurrentCamera = new ConcurrentCamera(arrayList);
                    Trace.endSection();
                    return concurrentCamera;
                }
                throw new IllegalArgumentException("Concurrent camera is only supporting two cameras at maximum.");
            }
            throw new IllegalArgumentException("Concurrent camera needs two camera configs.");
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }
}
