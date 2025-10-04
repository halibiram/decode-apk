.class public final Landroidx/camera/lifecycle/ProcessCameraProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/lifecycle/LifecycleCameraProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 Z2\u00020\u0001:\u0001ZB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jk\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002012\u0008\u00103\u001a\u0004\u0018\u0001042\u000e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001060\u00042\u0016\u00107\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0001\u00a2\u0006\u0004\u0008:\u0010;J \u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010<\u001a\u00020.2\u0006\u0010=\u001a\u00020>H\u0007J5\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010<\u001a\u00020.2\u0016\u00107\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0007\u00a2\u0006\u0002\u0010?J\u0018\u0010)\u001a\u00020@2\u000e\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010B0\u0004H\u0007J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0002J\u000e\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0018\u0010H\u001a\u00020I2\u0006\u0010<\u001a\u00020.2\u0006\u0010J\u001a\u00020\u0005H\u0002J\u0010\u0010K\u001a\u00020\u00052\u0006\u0010<\u001a\u00020.H\u0017J\u0016\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010M\u001a\u00020$H\u0002J\u0010\u0010N\u001a\u00020\u00142\u0006\u0010<\u001a\u00020.H\u0016J\u0010\u0010O\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0016J\u0010\u0010Q\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0002J\u0010\u0010R\u001a\u00020\u00142\u0006\u0010P\u001a\u000209H\u0002J\u0010\u0010S\u001a\u00020D2\u0006\u0010T\u001a\u00020\u001bH\u0002J\u0010\u0010U\u001a\u00020D2\u0006\u0010M\u001a\u00020$H\u0002J\u000e\u0010V\u001a\u0008\u0012\u0004\u0012\u00020!0\u001fH\u0007J%\u0010W\u001a\u00020D2\u0016\u00107\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010908\"\u0004\u0018\u000109H\u0017\u00a2\u0006\u0002\u0010XJ\u0008\u0010Y\u001a\u00020DH\u0017R0\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00048G\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R$\u0010\r\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u00178\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001f8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R \u0010 \u001a\u0010\u0012\u000c\u0012\n \"*\u0004\u0018\u00010!0!0\u001f8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Landroidx/camera/lifecycle/ProcessCameraProvider;",
        "Landroidx/camera/lifecycle/LifecycleCameraProvider;",
        "()V",
        "cameraInfos",
        "",
        "Landroidx/camera/core/CameraInfo;",
        "activeConcurrentCameraInfos",
        "getActiveConcurrentCameraInfos",
        "()Ljava/util/List;",
        "setActiveConcurrentCameraInfos",
        "(Ljava/util/List;)V",
        "availableConcurrentCameraInfos",
        "getAvailableConcurrentCameraInfos",
        "cameraOperatingMode",
        "",
        "getCameraOperatingMode",
        "()I",
        "setCameraOperatingMode",
        "(I)V",
        "isConcurrentCameraModeOn",
        "",
        "()Z",
        "mCameraInfoMap",
        "",
        "Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;",
        "Landroidx/camera/core/impl/RestrictedCameraInfo;",
        "mCameraX",
        "Landroidx/camera/core/CameraX;",
        "mCameraXConfigProvider",
        "Landroidx/camera/core/CameraXConfig$Provider;",
        "mCameraXInitializeFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "mCameraXShutdownFuture",
        "Ljava/lang/Void;",
        "kotlin.jvm.PlatformType",
        "mContext",
        "Landroid/content/Context;",
        "mLifecycleCameraRepository",
        "Landroidx/camera/lifecycle/LifecycleCameraRepository;",
        "mLock",
        "",
        "bindToLifecycle",
        "Landroidx/camera/core/Camera;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "primaryCameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "secondaryCameraSelector",
        "primaryLayoutSettings",
        "Landroidx/camera/core/LayoutSettings;",
        "secondaryLayoutSettings",
        "viewPort",
        "Landroidx/camera/core/ViewPort;",
        "effects",
        "Landroidx/camera/core/CameraEffect;",
        "useCases",
        "",
        "Landroidx/camera/core/UseCase;",
        "bindToLifecycle$camera_lifecycle_release",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;",
        "cameraSelector",
        "useCaseGroup",
        "Landroidx/camera/core/UseCaseGroup;",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;",
        "Landroidx/camera/core/ConcurrentCamera;",
        "singleCameraConfigs",
        "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;",
        "configureInstanceInternal",
        "",
        "cameraXConfig",
        "Landroidx/camera/core/CameraXConfig;",
        "getAvailableCameraInfos",
        "getCameraConfig",
        "Landroidx/camera/core/impl/CameraConfig;",
        "cameraInfo",
        "getCameraInfo",
        "getOrCreateCameraXInstance",
        "context",
        "hasCamera",
        "isBound",
        "useCase",
        "isPreview",
        "isVideoCapture",
        "setCameraX",
        "cameraX",
        "setContext",
        "shutdownAsync",
        "unbind",
        "([Landroidx/camera/core/UseCase;)V",
        "unbindAll",
        "Companion",
        "camera-lifecycle_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProcessCameraProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider\n+ 2 Trace.kt\nandroidx/tracing/TraceKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,995:1\n27#2,5:996\n27#2,3:1001\n31#2:1006\n27#2,3:1007\n31#2:1016\n27#2,3:1017\n31#2:1022\n27#2,5:1023\n27#2,5:1028\n27#2,5:1033\n27#2,5:1038\n27#2,5:1043\n27#2,5:1048\n27#2,5:1053\n37#3,2:1004\n37#3,2:1010\n37#3,2:1012\n37#3,2:1014\n1855#4,2:1020\n*S KotlinDebug\n*F\n+ 1 ProcessCameraProvider.kt\nandroidx/camera/lifecycle/ProcessCameraProvider\n*L\n204#1:996,5\n244#1:1001,3\n244#1:1006\n327#1:1007,3\n327#1:1016\n557#1:1017,3\n557#1:1022\n665#1:1023,5\n679#1:1028,5\n687#1:1033,5\n711#1:1038,5\n736#1:1043,5\n761#1:1048,5\n830#1:1053,5\n261#1:1004,2\n388#1:1010,2\n453#1:1012,2\n467#1:1014,2\n589#1:1020,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mCameraInfoMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;",
            "Landroidx/camera/core/impl/RestrictedCameraInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCameraX:Landroidx/camera/core/CameraX;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/CameraX;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "immediateFuture<Void>(null)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 22
    .line 23
    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 24
    .line 25
    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraInfoMap:Ljava/util/Map;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic access$configureInstanceInternal(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->configureInstanceInternal(Landroidx/camera/core/CameraXConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getActiveConcurrentCameraInfos()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCameraConfig(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraConfig(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraOperatingMode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getMCameraInfoMap$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMCameraXConfigProvider$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraXConfig$Provider;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMLock$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOrCreateCameraXInstance(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getOrCreateCameraXInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSAppInstance$cp()Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->sAppInstance:Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$isPreview(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isPreview(Landroidx/camera/core/UseCase;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isVideoCapture(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isVideoCapture(Landroidx/camera/core/UseCase;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/ProcessCameraProvider;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->setActiveConcurrentCameraInfos(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->setCameraOperatingMode(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCameraX(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraX;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->setCameraX(Landroidx/camera/core/CameraX;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setContext(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->setContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setMCameraXConfigProvider$p(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraXConfig$Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 2
    .line 3
    return-void
.end method

.method public static final configureInstance(Landroidx/camera/core/CameraXConfig;)V
    .locals 1
    .param p0    # Landroidx/camera/core/CameraXConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/camera/lifecycle/ExperimentalCameraProviderConfiguration;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->configureInstance(Landroidx/camera/core/CameraXConfig;)V

    return-void
.end method

.method private final configureInstanceInternal(Landroidx/camera/core/CameraXConfig;)V
    .locals 3

    .line 1
    const-string v0, "CX:configureInstanceInternal"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLock$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraXConfigProvider$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraXConfig$Provider;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    const-string v2, "CameraX has already been configured. To use a different configuration, shutdown() must be called."

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroidx/camera/lifecycle/ProcessCameraProvider$configureInstanceInternal$1$1$1;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$configureInstanceInternal$1$1$1;-><init>(Landroidx/camera/core/CameraXConfig;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setMCameraXConfigProvider$p(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraXConfig$Provider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    :try_start_3
    monitor-exit v0

    .line 45
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method private final getActiveConcurrentCameraInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getActiveConcurrentCameraInfos()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "mCameraX!!.cameraFactory\u2026tiveConcurrentCameraInfos"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private final getCameraConfig(Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->getCameraFilterSet()Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "cameraSelector.cameraFilterSet"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Landroidx/camera/core/CameraFilter;

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/camera/core/CameraFilter;->getIdentifier()Landroidx/camera/core/impl/Identifier;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/camera/core/CameraFilter;->DEFAULT_ID:Landroidx/camera/core/impl/Identifier;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Landroidx/camera/core/CameraFilter;->getIdentifier()Landroidx/camera/core/impl/Identifier;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroidx/camera/core/impl/ExtendedCameraConfigProviderStore;->getConfigProvider(Ljava/lang/Object;)Landroidx/camera/core/impl/CameraConfigProvider;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, p2, v2}, Landroidx/camera/core/impl/CameraConfigProvider;->getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-nez v0, :cond_2

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p2, "Cannot apply multiple extended camera configs at the same time."

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_4
    return-object v0
.end method

.method private final getCameraOperatingMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getCameraOperatingMode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/lifecycle/ProcessCameraProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Landroidx/camera/lifecycle/ProcessCameraProvider;->Companion:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private final getOrCreateCameraXInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/camera/core/CameraX;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string p1, "null cannot be cast to non-null type com.google.common.util.concurrent.ListenableFuture<androidx.camera.core.CameraX>"

    .line 9
    .line 10
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance v1, Landroidx/camera/core/CameraX;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 20
    .line 21
    invoke-direct {v1, p1, v2}, Landroidx/camera/core/CameraX;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraXConfig$Provider;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    invoke-direct {p1, p0, v1, v2}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 35
    .line 36
    const-string v1, "null cannot be cast to non-null type com.google.common.util.concurrent.ListenableFuture<androidx.camera.core.CameraX>"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object p1

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    throw p1
.end method

.method private static final getOrCreateCameraXInstance$lambda$18$lambda$17(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$cameraX"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "completer"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v1, Landroidx/camera/lifecycle/ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$future$1;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$future$1;-><init>(Landroidx/camera/core/CameraX;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, L땱땬둥둬뒙땀둑뒋땭둑돤뒝딃뒵땣드듟땐뒉딠땰뒛돷딠듽땲땰뎠딐땣땨뎽딻뒈땜땯뒤뒛뒻땪딹뒋돤땦돼뒹땅땸드땭딃들둠땻땝딝되됐듼뒝득두뎸돵땐듟뒋듟땋땡듼딨됴둬둔땠뒾듟둘됴딠뒙든뒀됩딀땹땻딻딨딌돷딃땣딨돨뒝땲뒻듟돸뒷땁딟땠땐됫땤뒤땨뎽뒼둡둣땯땧딀땅뒷돴드땤드두딽딞딁땪땥듸;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v2, v1, v3}, L땱땬둥둬뒙땀둑뒋땭둑돤뒝딃뒵땣드듟땐뒉딠땰뒛돷딠듽땲땰뎠딐땣땨뎽딻뒈땜땯뒤뒛뒻땪딹뒋돤땦돼뒹땅땸드땭딃들둠땻땝딝되됐듼뒝득두뎸돵땐듟뒋듟땋땡듼딨됴둬둔땠뒾듟둘됴딠뒙든뒀됩딀땹땻딻딨딌돷딃땣딨돨뒝땲뒻듟돸뒷땁딟땠땐됫땤뒤땨뎽뒼둡둣땯땧딀땅뒷돴드땤드두딽딞딁땪땥듸;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v2, v1}, Landroidx/camera/core/impl/utils/futures/FutureChain;->transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "cameraX = CameraX(contex\u2026                        )"

    .line 45
    .line 46
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/camera/lifecycle/ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$1;

    .line 50
    .line 51
    invoke-direct {v1, p2, p1}, Landroidx/camera/lifecycle/ProcessCameraProvider$getOrCreateCameraXInstance$1$1$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/CameraX;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p0, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/FutureCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    const-string p0, "ProcessCameraProvider-initializeCameraX"

    .line 63
    .line 64
    return-object p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0

    .line 67
    throw p0
.end method

.method private static final getOrCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 11
    .line 12
    return-object p0
.end method

.method private final isPreview(Landroidx/camera/core/UseCase;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/camera/core/Preview;

    .line 2
    .line 3
    return p1
.end method

.method private final isVideoCapture(Landroidx/camera/core/UseCase;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;->VIDEO_CAPTURE:Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method private final setActiveConcurrentCameraInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Landroidx/camera/core/concurrent/CameraCoordinator;->setActiveConcurrentCameraInfos(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final setCameraOperatingMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Landroidx/camera/core/concurrent/CameraCoordinator;->setCameraOperatingMode(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final setCameraX(Landroidx/camera/core/CameraX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 2
    .line 3
    return-void
.end method

.method private final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method private static final shutdownAsync$lambda$0(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getOrCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/lifecycle/ProcessCameraProvider;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->shutdownAsync$lambda$0(Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getOrCreateCameraXInstance$lambda$18$lambda$17(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/UseCaseGroup;)Landroidx/camera/core/Camera;
    .locals 11
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/UseCaseGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "DEFAULT"

    const-string v1, "lifecycleOwner"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cameraSelector"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "useCaseGroup"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-string v1, "CX:bindToLifecycle-UseCaseGroup"

    .line 16
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 18
    invoke-static {p0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V

    .line 19
    sget-object v7, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v8

    .line 22
    invoke-virtual {p3}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v9

    const-string v0, "useCaseGroup.effects"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p3}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object p3

    const-string v0, "useCaseGroup.useCases"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Landroidx/camera/core/UseCase;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 25
    check-cast p3, [Landroidx/camera/core/UseCase;

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v10, p3

    check-cast v10, [Landroidx/camera/core/UseCase;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v7

    .line 26
    invoke-virtual/range {v2 .. v10}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 29
    const-string p2, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first."

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final varargs bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 11
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Landroidx/camera/core/UseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "DEFAULT"

    const-string v1, "lifecycleOwner"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cameraSelector"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "useCases"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "CX:bindToLifecycle"

    .line 2
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V

    .line 5
    sget-object v7, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 8
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    move-object v10, p3

    check-cast v10, [Landroidx/camera/core/UseCase;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v7

    .line 9
    invoke-virtual/range {v2 .. v10}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    const-string p2, "bindToLifecycle for single camera is not supported in concurrent camera mode, call unbindAll() first"

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw p1
.end method

.method public final bindToLifecycle(Ljava/util/List;)Landroidx/camera/core/ConcurrentCamera;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalCameraInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;",
            ">;)",
            "Landroidx/camera/core/ConcurrentCamera;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v1, "singleCameraConfigs"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v1, "CX:bindToLifecycle-Concurrent"

    .line 33
    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 34
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_f

    .line 35
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_e

    const/4 v11, 0x0

    .line 36
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    const/4 v3, 0x1

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    .line 38
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v5

    .line 40
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/core/CameraSelector;->getLensFacing()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "config.useCaseGroup.useCases"

    const-string v6, "firstCameraConfig.useCaseGroup.effects"

    const-string v7, "firstCameraConfig.lifecycleOwner"

    const-string v8, "Camera is already running, call unbindAll() before binding more cameras."

    const-string v9, "firstCameraConfig.cameraSelector"

    const-string v14, "DEFAULT"

    if-eqz v5, :cond_5

    .line 41
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I

    move-result v5

    if-eq v5, v2, :cond_4

    .line 42
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v2

    .line 44
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v7

    .line 50
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    .line 53
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const-string v15, "config!!.useCaseGroup.useCases"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/camera/core/UseCase;

    .line 54
    invoke-virtual {v5}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/camera/core/CameraSelector;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 55
    invoke-virtual {v9, v15}, Landroidx/camera/core/UseCase;->setPhysicalCameraId(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 56
    :cond_1
    invoke-virtual {v5}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v10, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V

    .line 58
    sget-object v6, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-array v0, v11, [Landroidx/camera/core/UseCase;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, [Landroidx/camera/core/UseCase;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Landroidx/camera/core/UseCase;

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v0

    move-object v5, v6

    .line 62
    invoke-virtual/range {v1 .. v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v0

    .line 63
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v1, "Two camera configs need to have the same lifecycle owner, view port and effects."

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_5
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMContext$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v15, "android.hardware.camera.concurrent"

    invoke-virtual {v5, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 69
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I

    move-result v5

    if-eq v5, v3, :cond_c

    .line 70
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v5

    .line 72
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v8

    const-string v3, "secondCameraConfig.cameraSelector"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 76
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/List;

    move-result-object v3

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 78
    const-string v1, "Cameras are already running, call unbindAll() before binding more cameras."

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_7
    :goto_2
    invoke-static {v10, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V

    .line 81
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v3

    .line 82
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v5

    .line 83
    invoke-static {v3, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 84
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 85
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    .line 86
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/UseCase;

    .line 87
    const-string v5, "useCase0"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$isVideoCapture(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "useCase1"

    if-eqz v5, :cond_8

    :try_start_4
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$isPreview(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 88
    :cond_8
    invoke-static {v10, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$isPreview(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$isVideoCapture(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 89
    :cond_9
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    .line 92
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLayoutSettings()Landroidx/camera/core/LayoutSettings;

    move-result-object v5

    const-string v7, "firstCameraConfig.layoutSettings"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLayoutSettings()Landroidx/camera/core/LayoutSettings;

    move-result-object v7

    const-string v4, "secondCameraConfig.layoutSettings"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v8

    .line 95
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v1

    const-string v4, "firstCameraConfig.useCaseGroup.useCases"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    .line 97
    new-array v4, v11, [Landroidx/camera/core/UseCase;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 98
    check-cast v1, [Landroidx/camera/core/UseCase;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Landroidx/camera/core/UseCase;

    move-object/from16 v1, p0

    move-object v4, v0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    .line 99
    invoke-virtual/range {v1 .. v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v0

    .line 100
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;

    .line 102
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const-string v3, "config!!.lifecycleOwner"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getCameraSelector()Landroidx/camera/core/CameraSelector;

    move-result-object v3

    const-string v4, "config.cameraSelector"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v6, Landroidx/camera/core/LayoutSettings;->DEFAULT:Landroidx/camera/core/LayoutSettings;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getViewPort()Landroidx/camera/core/ViewPort;

    move-result-object v7

    .line 107
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/camera/core/UseCaseGroup;->getEffects()Ljava/util/List;

    move-result-object v8

    const-string v4, "config.useCaseGroup.effects"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Landroidx/camera/core/ConcurrentCamera$SingleCameraConfig;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/UseCaseGroup;->getUseCases()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    .line 109
    new-array v4, v11, [Landroidx/camera/core/UseCase;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 110
    check-cast v1, [Landroidx/camera/core/UseCase;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroidx/camera/core/UseCase;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v6

    .line 111
    invoke-virtual/range {v1 .. v9}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    move-result-object v1

    .line 112
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 113
    :cond_b
    :goto_4
    invoke-static {v10, v15}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setActiveConcurrentCameraInfos(Landroidx/camera/lifecycle/ProcessCameraProvider;Ljava/util/List;)V

    .line 114
    :goto_5
    new-instance v0, Landroidx/camera/core/ConcurrentCamera;

    invoke-direct {v0, v12}, Landroidx/camera/core/ConcurrentCamera;-><init>(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    .line 116
    :catch_0
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid camera selectors in camera configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 119
    const-string v1, "Concurrent camera is not supported on the device."

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 122
    const-string v1, "Concurrent camera is only supporting two cameras at maximum."

    .line 123
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Concurrent camera needs two camera configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    :goto_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final varargs bindToLifecycle$camera_lifecycle_release(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/ViewPort;Ljava/util/List;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;
    .locals 19
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/LayoutSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/LayoutSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/ViewPort;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # [Landroidx/camera/core/UseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalCameraInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/CameraSelector;",
            "Landroidx/camera/core/LayoutSettings;",
            "Landroidx/camera/core/LayoutSettings;",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraEffect;",
            ">;[",
            "Landroidx/camera/core/UseCase;",
            ")",
            "Landroidx/camera/core/Camera;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p8

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "null cannot be cast to non-null type androidx.camera.core.impl.RestrictedCameraInfo"

    .line 14
    .line 15
    const-string v8, "lifecycleOwner"

    .line 16
    .line 17
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v8, "primaryCameraSelector"

    .line 21
    .line 22
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v8, "primaryLayoutSettings"

    .line 26
    .line 27
    move-object/from16 v14, p4

    .line 28
    .line 29
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v8, "secondaryLayoutSettings"

    .line 33
    .line 34
    move-object/from16 v15, p5

    .line 35
    .line 36
    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v8, "effects"

    .line 40
    .line 41
    move-object/from16 v13, p7

    .line 42
    .line 43
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v8, "useCases"

    .line 47
    .line 48
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v8, "CX:bindToLifecycle-internal"

    .line 52
    .line 53
    invoke-static {v8}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 57
    .line 58
    .line 59
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v2, v8}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    const-string v8, "primaryCameraSelector.se\u2026cameraRepository.cameras)"

    .line 79
    .line 80
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v10, v6}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object v12, v2

    .line 94
    check-cast v12, Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 95
    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v3, v2}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v2, v5}, Landroidx/camera/core/impl/CameraInternal;->setPrimary(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v3, Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 128
    .line 129
    move-object v11, v2

    .line 130
    move-object v2, v3

    .line 131
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 136
    move-object v11, v2

    .line 137
    :goto_0
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v12, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->generateCameraId(Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v3, v0, v7}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;)Landroidx/camera/lifecycle/LifecycleCamera;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v7}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static/range {p8 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    check-cast v8, Ljava/lang/Iterable;

    .line 162
    .line 163
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eqz v9, :cond_4

    .line 172
    .line 173
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Landroidx/camera/core/UseCase;

    .line 178
    .line 179
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v16

    .line 183
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v17

    .line 187
    if-eqz v17, :cond_3

    .line 188
    .line 189
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const-string v6, "lifecycleCameras"

    .line 194
    .line 195
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    check-cast v5, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 199
    .line 200
    invoke-virtual {v5, v9}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_1

    .line 205
    .line 206
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_2

    .line 211
    .line 212
    :cond_1
    const/4 v5, 0x0

    .line 213
    const/4 v6, 0x1

    .line 214
    goto :goto_2

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    const-string v2, "Use case %s already bound to a different lifecycle."

    .line 218
    .line 219
    const/4 v5, 0x1

    .line 220
    new-array v3, v5, [Ljava/lang/Object;

    .line 221
    .line 222
    const/4 v6, 0x0

    .line 223
    aput-object v9, v3, v6

    .line 224
    .line 225
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v3, "format(format, *args)"

    .line 234
    .line 235
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :cond_3
    const/4 v5, 0x1

    .line 243
    const/4 v6, 0x0

    .line 244
    const/4 v5, 0x0

    .line 245
    const/4 v6, 0x1

    .line 246
    goto :goto_1

    .line 247
    :cond_4
    if-nez v3, :cond_5

    .line 248
    .line 249
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    new-instance v5, Landroidx/camera/core/internal/CameraUseCaseAdapter;

    .line 254
    .line 255
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-interface {v6}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Landroidx/camera/core/CameraX;->getCameraDeviceSurfaceManager()Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    .line 278
    .line 279
    .line 280
    move-result-object v17

    .line 281
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Landroidx/camera/core/CameraX;->getDefaultConfigFactory()Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 289
    .line 290
    .line 291
    move-result-object v18

    .line 292
    move-object v9, v5

    .line 293
    move-object v13, v2

    .line 294
    move-object/from16 v14, p4

    .line 295
    .line 296
    move-object/from16 v15, p5

    .line 297
    .line 298
    invoke-direct/range {v9 .. v18}, Landroidx/camera/core/internal/CameraUseCaseAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/impl/RestrictedCameraInfo;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/core/impl/CameraDeviceSurfaceManager;Landroidx/camera/core/impl/UseCaseConfigFactory;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v0, v5}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->createLifecycleCamera(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/internal/CameraUseCaseAdapter;)Landroidx/camera/lifecycle/LifecycleCamera;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    :cond_5
    array-length v0, v4

    .line 306
    if-nez v0, :cond_6

    .line 307
    .line 308
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_6
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    array-length v0, v4

    .line 320
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    move-object v13, v0

    .line 329
    check-cast v13, Ljava/util/Collection;

    .line 330
    .line 331
    invoke-static/range {p0 .. p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 343
    .line 344
    .line 345
    move-result-object v14

    .line 346
    move-object v10, v3

    .line 347
    move-object/from16 v11, p6

    .line 348
    .line 349
    move-object/from16 v12, p7

    .line 350
    .line 351
    invoke-virtual/range {v9 .. v14}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->bindToLifecycleCamera(Landroidx/camera/lifecycle/LifecycleCamera;Landroidx/camera/core/ViewPort;Ljava/util/List;Ljava/util/Collection;Landroidx/camera/core/concurrent/CameraCoordinator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .line 353
    .line 354
    :goto_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 355
    .line 356
    .line 357
    return-object v3

    .line 358
    :goto_4
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 359
    .line 360
    .line 361
    throw v0
.end method

.method public getAvailableCameraInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CX:getAvailableCameraInfos"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "mCameraX!!.cameraRepository.cameras"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    .line 46
    .line 47
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "camera.cameraInfo"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :goto_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    throw v0
.end method

.method public final getAvailableConcurrentCameraInfos()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Landroidx/camera/core/ExperimentalCameraInfo;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CX:getAvailableConcurrentCameraInfos"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroidx/camera/core/concurrent/CameraCoordinator;->getConcurrentCameraSelectors()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "mCameraX!!.cameraFactory\u2026concurrentCameraSelectors"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/util/List;

    .line 75
    .line 76
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_0

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroidx/camera/core/CameraSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    :try_start_1
    const-string v5, "cameraSelector"

    .line 98
    .line 99
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_2

    .line 112
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public getCameraInfo(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraInfo;
    .locals 4
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/camera/core/ExperimentalCameraInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cameraSelector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CX:getCameraInfo"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "cameraSelector.select(mC\u2026meras).cameraInfoInternal"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraConfig(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/CameraConfig;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraConfig;->getCompatibilityId()Landroidx/camera/core/impl/Identifier;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;->create(Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraId;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "create(\n                \u2026ilityId\n                )"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLock$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    :try_start_1
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraInfoMap$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_0

    .line 74
    .line 75
    new-instance v3, Landroidx/camera/core/impl/RestrictedCameraInfo;

    .line 76
    .line 77
    invoke-direct {v3, v0, p1}, Landroidx/camera/core/impl/RestrictedCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraInfoMap$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 91
    check-cast v3, Landroidx/camera/core/impl/RestrictedCameraInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 94
    .line 95
    .line 96
    return-object v3

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    :try_start_3
    monitor-exit v2

    .line 100
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :goto_2
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public hasCamera(Landroidx/camera/core/CameraSelector;)Z
    .locals 1
    .param p1    # Landroidx/camera/core/CameraSelector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cameraSelector"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CX:hasCamera"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMCameraX$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/core/CameraX;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraRepository()Landroidx/camera/core/impl/CameraRepository;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Landroidx/camera/core/CameraSelector;->select(Ljava/util/LinkedHashSet;)Landroidx/camera/core/impl/CameraInternal;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :catch_0
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 38
    .line 39
    .line 40
    return p1
.end method

.method public isBound(Landroidx/camera/core/UseCase;)Z
    .locals 3
    .param p1    # Landroidx/camera/core/UseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "useCase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLifecycleCameraRepository:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->getLifecycleCameras()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "mLifecycleCameraRepository.lifecycleCameras"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Landroidx/camera/lifecycle/LifecycleCamera;->isBound(Landroidx/camera/core/UseCase;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final isConcurrentCameraModeOn()Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getCameraOperatingMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final shutdownAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/camera/core/impl/utils/Threads;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->getCameraFactory()Landroidx/camera/core/impl/CameraFactory;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraFactory;->getCameraCoordinator()Landroidx/camera/core/concurrent/CameraCoordinator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroidx/camera/core/concurrent/CameraCoordinator;->shutdown()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/camera/core/CameraX;->shutdown()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    const-string v2, "if (mCameraX != null) mC\u2026mediateFuture<Void>(null)"

    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v2

    .line 53
    :try_start_0
    iput-object v1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXConfigProvider:Landroidx/camera/core/CameraXConfig$Provider;

    .line 54
    .line 55
    iput-object v1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXInitializeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraXShutdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraInfoMap:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v2

    .line 65
    iput-object v1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mCameraX:Landroidx/camera/core/CameraX;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/camera/lifecycle/ProcessCameraProvider;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit v2

    .line 72
    throw v0
.end method

.method public varargs unbind([Landroidx/camera/core/UseCase;)V
    .locals 2
    .param p1    # [Landroidx/camera/core/UseCase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "useCases"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CX:unbind"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    array-length v1, p1

    .line 26
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbind(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 46
    .line 47
    const-string v0, "Unbind usecase is not supported in concurrent camera mode, call unbindAll() first."

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public unbindAll()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "CX:unbindAll"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$setCameraOperatingMode(Landroidx/camera/lifecycle/ProcessCameraProvider;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->access$getMLifecycleCameraRepository$p(Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->unbindAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
