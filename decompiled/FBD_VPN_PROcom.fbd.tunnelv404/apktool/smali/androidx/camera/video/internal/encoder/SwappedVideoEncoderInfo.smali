.class public Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# instance fields
.field private final mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;)V
    .locals 1
    .param p1    # Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->canSwapWidthHeight()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getWidthAlignment()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/EncoderInfo;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedBitrateRange()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidths()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedWidthsFor(I)Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeights()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getSupportedHeightsFor(I)Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->getHeightAlignment()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSizeSupported(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/SwappedVideoEncoderInfo;->mVideoEncoderInfo:Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 2
    .line 3
    invoke-interface {v0, p2, p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfo;->isSizeSupported(II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic isSizeSupportedAllowSwapping(II)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, L땰딠딻된돰뎡땩땮돰듼드땧둥듻돨든듻땄뒬뒤돷듸땹둘땹듐둔둥둑딤뒤땠뒻돛딝딄됴땄땦딃둔됩뒼됴딃뒈딸든둑딁뎹뎻돶듨됫땬듼뒻둣딸돝됫딸들뒵땁돳땐듐땝뒤듟땠뒹돰딐듔든둡두땰둣땭땥뒼뒝뒝뎡딐듼땟뒘딟둥되땫땸땥땩딜뒙뎠됨됩뎽땣뒨땦땦둣딌돤뒋둑듻됐땹뒋땥땀뎹땪땵두뒛둣됐땝땋돵;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;II)Z

    move-result p1

    return p1
.end method
