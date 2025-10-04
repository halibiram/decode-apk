.class public Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRIORITY_MEDIA_CODEC_SURFACE:I = 0x2

.field private static final PRIORITY_OTHERS:I = 0x1

.field private static final PRIORITY_PREVIEW_SURFACE:I


# instance fields
.field private final mHasQuirk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroidx/camera/core/internal/compat/quirk/SurfaceOrderQuirk;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->mHasQuirk:Z

    .line 16
    .line 17
    return-void
.end method

.method private getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I
    .locals 2
    .param p1    # Landroidx/camera/core/impl/DeferrableSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/media/MediaCodec;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface;->getContainerClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-class v0, Landroidx/camera/core/Preview;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method private synthetic lambda$sort$0(Landroidx/camera/core/impl/SessionConfig$OutputConfig;Landroidx/camera/core/impl/SessionConfig$OutputConfig;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2}, Landroidx/camera/core/impl/SessionConfig$OutputConfig;->getSurface()Landroidx/camera/core/impl/DeferrableSurface;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0, p2}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->getSurfacePriority(Landroidx/camera/core/impl/DeferrableSurface;)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    sub-int/2addr p1, p2

    .line 18
    return p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;Landroidx/camera/core/impl/SessionConfig$OutputConfig;Landroidx/camera/core/impl/SessionConfig$OutputConfig;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->lambda$sort$0(Landroidx/camera/core/impl/SessionConfig$OutputConfig;Landroidx/camera/core/impl/SessionConfig$OutputConfig;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/SessionConfig$OutputConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/internal/compat/workaround/SurfaceSorter;->mHasQuirk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, L둘듟돰땃땠땳땹땅돛도둬딀돷돸뎬듌돝됩돼딠돶돼땮돠뎸둘될땋들됴땭돝딹듬뒾두땸돤듻딞돸돝땟땜되듐둥뒉두땳딁뒋듐듽딽듸뎸땹듰땩땅뒀땪돤됫뎠돳돶땔딄뒬뎡뒐딨땣딀딨땳땰땥되뒈디뎠딁뒻땍됨돵땡뒈땟둡뒾땁뒉딁뒛뎻뎸뒘딁될둡딠딽땬땰됩뒋땭땣뒙땦딀딌땲딨땅딜듸뒻땜뎰뎬땀땨딝돛돴;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, L둘듟돰땃땠땳땹땅돛도둬딀돷돸뎬듌돝됩돼딠돶돼땮돠뎸둘될땋들됴땭돝딹듬뒾두땸돤듻딞돸돝땟땜되듐둥뒉두땳딁뒋듐듽딽듸뎸땹듰땩땅뒀땪돤됫뎠돳돶땔딄뒬뎡뒐딨땣딀딨땳땰땥되뒈디뎠딁뒻땍됨돵땡뒈땟둡뒾땁뒉딁뒛뎻뎸뒘딁될둡딠딽땬땰됩뒋땭땣뒙땦딀딌땲딨땅딜듸뒻땜뎰뎬땀땨딝돛돴;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
