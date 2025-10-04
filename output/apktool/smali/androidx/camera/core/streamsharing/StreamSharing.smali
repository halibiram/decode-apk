.class public Landroidx/camera/core/streamsharing/StreamSharing;
.super Landroidx/camera/core/UseCase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/streamsharing/StreamSharing$Control;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamSharing"


# instance fields
.field private mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDualSharingNode:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field private mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfigFactory;)V
    .locals 7
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/impl/CameraInternal;",
            "Landroidx/camera/core/LayoutSettings;",
            "Landroidx/camera/core/LayoutSettings;",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->getDefaultConfig(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->getDefaultConfig(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 17
    .line 18
    new-instance p3, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 19
    .line 20
    new-instance v6, Landroidx/camera/core/streamsharing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 21
    .line 22
    invoke-direct {v6, p0}, Landroidx/camera/core/streamsharing/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;)V

    .line 23
    .line 24
    .line 25
    move-object v1, p3

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v4, p5

    .line 29
    move-object v5, p6

    .line 30
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Ljava/util/Set;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/streamsharing/StreamSharing$Control;)V

    .line 31
    .line 32
    .line 33
    iput-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 34
    .line 35
    return-void
.end method

.method private addCameraErrorListener(Landroidx/camera/core/impl/SessionConfig$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 9
    .param p1    # Landroidx/camera/core/impl/SessionConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/SessionConfig$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 9
    .line 10
    new-instance v8, L땥돳땱딄딽뒀뒀돼됨됩딃딨뎬됐땮땃땯된땋듼땝듸땱돴들딝득땭땨돳듬듬둥땪땹뒨뎰듐되땫딤딃땄땋듔땀될땲두딸딁땰됩돠듐뎽돶땤딻딄돤드따듰돝뒘둡딤딻땰듽될땳뒙뒈돼돳딄뎽뒵든딞땥딜땀땝뒬땥디듨딸뒛땵뎻뒾뎸딸듰땥돷땸듟뎻땳둘뒙됨뎽된돼딸돸딃둣딝딽뒷돝땹땔둡듨땯뒼땐따뎨땨됨돼;

    .line 11
    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p0

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object v7, p6

    .line 19
    invoke-direct/range {v1 .. v7}, L땥돳땱딄딽뒀뒀돼됨됩딃딨뎬됐땮땃땯된땋듼땝듸땱돴들딝득땭땨돳듬듬둥땪땹뒨뎰듐되땫딤딃땄땋듔땀될땲두딸딁땰됩돠듐뎽돶땤딻딄돤드따듰돝뒘둡딤딻땰듽될땳뒙뒈돼돳딄뎽뒵든딞땥딜땀땝뒬땥디듨딸뒛땵뎻뒾뎸딸듰땥돷땸듟뎻땳둘뒙됨뎽된돼딸돸딃둣딝딽뒷돝땹땔둡듨땯뒼땐따뎨땨됨돼;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v8}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->setErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private clearPipeline()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->release()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->release()V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 64
    .line 65
    :cond_6
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->release()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 73
    .line 74
    :cond_7
    return-void
.end method

.method private createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SessionConfig;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p5, :cond_2

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    move-object v3, p0

    .line 11
    move-object v4, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    move-object v7, p4

    .line 15
    invoke-direct/range {v3 .. v8}, Landroidx/camera/core/streamsharing/StreamSharing;->createPrimaryCamera(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    check-cast p1, Landroidx/camera/core/impl/CameraInternal;

    .line 26
    .line 27
    invoke-direct {p0, p1, p4}, Landroidx/camera/core/streamsharing/StreamSharing;->getSharingNode(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iget-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 43
    .line 44
    iget-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    invoke-virtual {p2, p3, p4, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getChildrenOutConfigs(Landroidx/camera/core/processing/SurfaceEdge;IZ)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 55
    .line 56
    iget-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 57
    .line 58
    new-instance p4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p3, p4}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->of(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p2, p3}, Landroidx/camera/core/processing/SurfaceProcessorNode;->transform(Landroidx/camera/core/processing/SurfaceProcessorNode$In;)Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-instance p3, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p4

    .line 92
    if-eqz p4, :cond_1

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p4

    .line 98
    check-cast p4, Ljava/util/Map$Entry;

    .line 99
    .line 100
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p5

    .line 104
    check-cast p5, Landroidx/camera/core/UseCase;

    .line 105
    .line 106
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-virtual {p2, p4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    check-cast p4, Landroidx/camera/core/processing/SurfaceEdge;

    .line 115
    .line 116
    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 121
    .line 122
    invoke-virtual {p1, p3}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->setChildrenEdges(Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array p2, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object p1, p2, v1

    .line 134
    .line 135
    new-instance p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .line 139
    .line 140
    aget-object p2, p2, v1

    .line 141
    .line 142
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :cond_2
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPrimaryCamera(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 154
    .line 155
    .line 156
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/streamsharing/StreamSharing;->createSecondaryCamera(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget-object v7, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 168
    .line 169
    iget-object v8, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryLayoutSettings:Landroidx/camera/core/LayoutSettings;

    .line 170
    .line 171
    move-object v3, p0

    .line 172
    move-object v6, p4

    .line 173
    invoke-direct/range {v3 .. v8}, Landroidx/camera/core/streamsharing/StreamSharing;->getDualSharingNode(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    const/4 p1, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const/4 p1, 0x0

    .line 188
    :goto_2
    iget-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 189
    .line 190
    iget-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 191
    .line 192
    iget-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getTargetRotationInternal()I

    .line 195
    .line 196
    .line 197
    move-result p5

    .line 198
    invoke-virtual {p2, p3, p4, p5, p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getChildrenOutConfigs(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;IZ)Ljava/util/Map;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 203
    .line 204
    iget-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 205
    .line 206
    iget-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 207
    .line 208
    new-instance p5, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-direct {p5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p3, p4, p5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->of(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-virtual {p2, p3}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;->transform(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$Out;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    new-instance p3, Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result p4

    .line 242
    if-eqz p4, :cond_4

    .line 243
    .line 244
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p4

    .line 248
    check-cast p4, Ljava/util/Map$Entry;

    .line 249
    .line 250
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p5

    .line 254
    check-cast p5, Landroidx/camera/core/UseCase;

    .line 255
    .line 256
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p4

    .line 260
    invoke-virtual {p2, p4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    check-cast p4, Landroidx/camera/core/processing/SurfaceEdge;

    .line 265
    .line 266
    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_4
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 271
    .line 272
    invoke-virtual {p1, p3}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->setChildrenEdges(Ljava/util/Map;)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    iget-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 282
    .line 283
    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    new-array p3, v0, [Ljava/lang/Object;

    .line 288
    .line 289
    aput-object p1, p3, v1

    .line 290
    .line 291
    aput-object p2, p3, v2

    .line 292
    .line 293
    new-instance p1, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .line 297
    .line 298
    :goto_4
    if-ge v1, v0, :cond_5

    .line 299
    .line 300
    aget-object p2, p3, v1

    .line 301
    .line 302
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    add-int/2addr v1, v2

    .line 309
    goto :goto_4

    .line 310
    :cond_5
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    return-object p1
.end method

.method private createPrimaryCamera(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    move-result-object v12

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    invoke-virtual/range {p4 .. p4}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v7, v1}, Landroidx/camera/core/streamsharing/StreamSharing;->getCropRect(Landroid/util/Size;)Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v14

    .line 30
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 41
    .line 42
    invoke-virtual {v7, v1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 56
    .line 57
    .line 58
    move-result v17

    .line 59
    const/4 v9, 0x3

    .line 60
    const/16 v10, 0x22

    .line 61
    .line 62
    const/16 v16, -0x1

    .line 63
    .line 64
    move-object v8, v0

    .line 65
    move-object/from16 v11, p4

    .line 66
    .line 67
    invoke-direct/range {v8 .. v17}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 68
    .line 69
    .line 70
    iput-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 80
    .line 81
    invoke-direct {v7, v0, v1}, Landroidx/camera/core/streamsharing/StreamSharing;->getSharingInputEdge(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/processing/SurfaceEdge;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 86
    .line 87
    iget-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 88
    .line 89
    move-object/from16 v4, p3

    .line 90
    .line 91
    move-object/from16 v5, p4

    .line 92
    .line 93
    invoke-direct {v7, v0, v4, v5}, Landroidx/camera/core/streamsharing/StreamSharing;->createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 98
    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v2, p1

    .line 102
    .line 103
    move-object/from16 v3, p2

    .line 104
    .line 105
    move-object/from16 v6, p5

    .line 106
    .line 107
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/StreamSharing;->addCameraErrorListener(Landroidx/camera/core/impl/SessionConfig$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private createSecondaryCamera(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    move-result-object v12

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    invoke-virtual/range {p5 .. p5}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v7, v1}, Landroidx/camera/core/streamsharing/StreamSharing;->getCropRect(Landroid/util/Size;)Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v14

    .line 30
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 41
    .line 42
    invoke-virtual {v7, v1}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 43
    .line 44
    .line 45
    move-result v15

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 54
    .line 55
    invoke-virtual {v7, v1}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 56
    .line 57
    .line 58
    move-result v17

    .line 59
    const/4 v9, 0x3

    .line 60
    const/16 v10, 0x22

    .line 61
    .line 62
    const/16 v16, -0x1

    .line 63
    .line 64
    move-object v8, v0

    .line 65
    move-object/from16 v11, p5

    .line 66
    .line 67
    invoke-direct/range {v8 .. v17}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 68
    .line 69
    .line 70
    iput-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 80
    .line 81
    invoke-direct {v7, v0, v1}, Landroidx/camera/core/streamsharing/StreamSharing;->getSharingInputEdge(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/processing/SurfaceEdge;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 86
    .line 87
    iget-object v0, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 88
    .line 89
    move-object/from16 v4, p3

    .line 90
    .line 91
    move-object/from16 v6, p5

    .line 92
    .line 93
    invoke-direct {v7, v0, v4, v6}, Landroidx/camera/core/streamsharing/StreamSharing;->createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v7, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 98
    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-object/from16 v2, p1

    .line 102
    .line 103
    move-object/from16 v3, p2

    .line 104
    .line 105
    move-object/from16 v5, p4

    .line 106
    .line 107
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/StreamSharing;->addCameraErrorListener(Landroidx/camera/core/impl/SessionConfig$Builder;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 3
    .param p1    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ")",
            "Landroidx/camera/core/impl/SessionConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p0, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->propagateChildrenTemplate(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->propagateChildrenCamera2Interop(Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig$Builder;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p2, p1, v0, v1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;Ljava/lang/String;I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getParentMetadataCallback()Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addRepeatingCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object p2
.end method

.method public static getCaptureTypes(Landroidx/camera/core/UseCase;)Ljava/util/List;
    .locals 2
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/UseCase;",
            ")",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->isStreamSharing(Landroidx/camera/core/UseCase;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p0, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object v0
.end method

.method private static getChildTemplate(Landroidx/camera/core/UseCase;)I
    .locals 0
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroidx/camera/core/impl/UseCaseConfig;->getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/impl/SessionConfig;->getTemplateType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private getCropRect(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getViewPortCropRect()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private getCropRectAppliedByEffect(Landroidx/camera/core/processing/SurfaceEdge;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/camera/core/CameraEffect;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getTransformation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec;->getResolution()Landroid/util/Size;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRect(Landroid/util/Size;)Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getCropRect()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private static getDefaultConfig(Ljava/util/Set;)Landroidx/camera/core/streamsharing/StreamSharingConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;)",
            "Landroidx/camera/core/streamsharing/StreamSharingConfig;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharingBuilder;

    invoke-direct {v0}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;-><init>()V

    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/Config$Option;

    const/16 v2, 0x22

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/UseCase;

    .line 7
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v3

    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v3, v4}, Landroidx/camera/core/impl/ReadableConfig;->containsOption(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v2

    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;->OPTION_CAPTURE_TYPES:Landroidx/camera/core/impl/Config$Option;

    invoke-interface {v0, p0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 10
    sget-object p0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MIRROR_MODE:Landroidx/camera/core/impl/Config$Option;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroidx/camera/core/impl/MutableConfig;->insertOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)V

    .line 11
    new-instance p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-static {v0}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/core/streamsharing/StreamSharingConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    return-object p0
.end method

.method private getDualSharingNode(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;)Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/LayoutSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p3, p4, p5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor$Factory;->newInstance(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/LayoutSettings;Landroidx/camera/core/LayoutSettings;)Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-direct {v0, p1, p2, p3}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private getMirroringAppliedByEffect()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/camera/core/CameraEffect;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getTransformation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    .line 28
    .line 29
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->isFrontFacing()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    :cond_0
    return v1
.end method

.method private getRotationAppliedByEffect()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/camera/core/CameraEffect;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getTransformation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private getSharingInputEdge(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/processing/SurfaceEdge;
    .locals 9
    .param p1    # Landroidx/camera/core/processing/SurfaceEdge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getTransformation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getOutputOption()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/CameraEffect;->createSurfaceProcessorInternal()Landroidx/camera/core/processing/SurfaceProcessorInternal;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 6
    invoke-direct {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getRotationAppliedByEffect()I

    move-result v6

    .line 7
    invoke-direct {p0, p1}, Landroidx/camera/core/streamsharing/StreamSharing;->getCropRectAppliedByEffect(Landroidx/camera/core/processing/SurfaceEdge;)Landroid/graphics/Rect;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getTargets()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getFormat()I

    move-result v3

    .line 10
    invoke-static {v4, v6}, Landroidx/camera/core/impl/utils/TransformUtils;->getRotatedSize(Landroid/graphics/Rect;I)Landroid/util/Size;

    move-result-object v5

    .line 11
    invoke-direct {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getMirroringAppliedByEffect()Z

    move-result v7

    const/4 v8, 0x1

    .line 12
    invoke-static/range {v2 .. v8}, Landroidx/camera/core/processing/util/OutConfig;->of(IILandroid/graphics/Rect;Landroid/util/Size;IZZ)Landroidx/camera/core/processing/util/OutConfig;

    move-result-object p2

    .line 13
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode$In;->of(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)Landroidx/camera/core/processing/SurfaceProcessorNode$In;

    move-result-object p1

    .line 15
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    invoke-virtual {v0, p1}, Landroidx/camera/core/processing/SurfaceProcessorNode;->transform(Landroidx/camera/core/processing/SurfaceProcessorNode$In;)Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getSharingNode(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/processing/SurfaceProcessorNode;
    .locals 2
    .param p1    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->getOutputOption()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p2, Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 4
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getEffect()Landroidx/camera/core/CameraEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/CameraEffect;->createSurfaceProcessorInternal()Landroidx/camera/core/processing/SurfaceProcessorInternal;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    iput-object p2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mEffectNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    return-object p2

    .line 5
    :cond_0
    new-instance v0, Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 6
    invoke-virtual {p2}, Landroidx/camera/core/impl/StreamSpec;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor$Factory;->newInstance(Landroidx/camera/core/DynamicRange;)Landroidx/camera/core/processing/SurfaceProcessorInternal;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroidx/camera/core/processing/SurfaceProcessorNode;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    return-object v0
.end method

.method public static isStreamSharing(Landroidx/camera/core/UseCase;)Z
    .locals 0
    .param p0    # Landroidx/camera/core/UseCase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    instance-of p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 2
    .line 3
    return p0
.end method

.method private synthetic lambda$addCameraErrorListener$1(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p6

    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->clearPipeline()V

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyReset()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->resetChildren()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private synthetic lambda$new$0(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceProcessorNode;->getSurfaceProcessor()Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->snapshot(II)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 15
    .line 16
    const-string p2, "Failed to take picture: pipeline is not ready."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private propagateChildrenCamera2Interop(Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 3
    .param p1    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/SessionConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getRepeatingCameraCaptureCallbacks()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllRepeatingCameraCaptureCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSingleCameraCaptureCallbacks()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getSessionStateCallbacks()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllSessionStateCallbacks(Ljava/util/List;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getDeviceStateCallbacks()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->addAllDeviceStateCallbacks(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method private propagateChildrenTemplate(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 4
    .param p1    # Landroidx/camera/core/impl/SessionConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildren()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 22
    .line 23
    invoke-static {v3}, Landroidx/camera/core/streamsharing/StreamSharing;->getChildTemplate(Landroidx/camera/core/UseCase;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v3}, Landroidx/camera/core/impl/SessionConfig;->getHigherPriorityTemplateType(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eq v2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->setTemplateType(I)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/camera/core/streamsharing/StreamSharing;->lambda$addCameraErrorListener$1(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/streamsharing/StreamSharing;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->lambda$new$0(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCameraEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChildren()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getChildren()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 2
    .param p2    # Landroidx/camera/core/impl/UseCaseConfigFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/camera/core/impl/UseCaseConfigFactory;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, L땰돨듽들땹땩됫돤땧돷딌뒵됫뎬듸뒈뒹돰딝따뎻뒾두돷돨든돴딅뒀땠땩둔땣땹뒼듽딝땻드드딠딹땧딻뒈딄듻딅딜뒾뎡땠땃듌듽뎹둘뒛딐돷됩땱딸돤뒹땝땄둣뒙둣뒤돰됫듌뎽땲뎻듔뎹된땡땳땸두딠땮뎸딀땭땵뎹땄듨돠뒵딁땹뎨땪땜뒉딎둬둬땟딃땰딁뒋듔됨됩뒀돝땁든뒼딅땁땄땬뎬듨둠뎹뒤돷뎽딞뒉;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-interface {p2, v0, v1}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-virtual {p1}, Landroidx/camera/core/streamsharing/StreamSharingConfig;->getConfig()Landroidx/camera/core/impl/Config;

    move-result-object p1

    invoke-static {p2, p1}, L둣땜뒹땲딠뒉됐듨딻땩둔됐뎬땻든뎠따돵땔둠뒀따땩뒹딃땔뒬뒀둔땨뎰땠땨든디땅뒷딄뒤땰된딤땦디딨듬딸드딹돠뒤뒬딸땟딨땳뒘돳돴됴도뒈딝뒀됐둥뒷뎰딃돠돳됫딸돴돼땟뒵딄든돝뒘두된돠뒤딠돶두땟땟땱땀땡되땟따땨딠뎹딸뎰딠됩듽됨뒛딄땄딟땮딨뎽딻땀땍뒝딅뒀돠둬뎠땳듨뒉딐된듽됐듰돛;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/Config;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSharingInputEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 17
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object v0
.end method

.method public getSharingNode()Landroidx/camera/core/processing/SurfaceProcessorNode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/camera/core/processing/SurfaceProcessorNode;

    return-object v0
.end method

.method public getSupportedEffectTargets()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharingBuilder;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Landroidx/camera/core/streamsharing/StreamSharingBuilder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getVirtualCameraAdapter()Landroidx/camera/core/streamsharing/VirtualCameraAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBind()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/core/UseCase;->onBind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->bindChildren()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraInfoInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/UseCaseConfig$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/CameraInfoInternal;",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;)",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    invoke-interface {p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mergeChildrenConfigs(Landroidx/camera/core/impl/MutableConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onStateAttached()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/core/UseCase;->onStateAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->notifyStateAttached()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStateDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/core/UseCase;->onStateDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->notifyStateDetached()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSuggestedStreamSpecImplementationOptionsUpdated(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec;
    .locals 4
    .param p1    # Landroidx/camera/core/impl/Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object v2, v3, v0

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    aget-object v0, v3, v0

    .line 24
    .line 25
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getAttachedStreamSpec()Landroidx/camera/core/impl/StreamSpec;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroidx/camera/core/impl/StreamSpec;->toBuilder()Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/StreamSpec$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/camera/core/impl/StreamSpec$Builder;->build()Landroidx/camera/core/impl/StreamSpec;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Landroidx/camera/core/impl/StreamSpec;
    .locals 6
    .param p1    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/StreamSpec;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSecondaryCameraId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCurrentConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object v0, p0

    .line 14
    move-object v4, p1

    .line 15
    move-object v5, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/StreamSpec;Landroidx/camera/core/impl/StreamSpec;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->notifyActive()V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public onUnbind()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/camera/core/UseCase;->onUnbind()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->clearPipeline()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->unbindChildren()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
