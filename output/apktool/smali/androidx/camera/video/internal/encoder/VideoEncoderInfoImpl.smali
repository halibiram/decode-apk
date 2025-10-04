.class public Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
.super Landroidx/camera/video/internal/encoder/EncoderInfoImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# static fields
.field public static final FINDER:Landroidx/arch/core/util/Function;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
            "Landroidx/camera/video/internal/encoder/VideoEncoderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VideoEncoderInfoImpl"


# instance fields
.field private final mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, L뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/arch/core/util/Function;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodecInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;->mCodecCapabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 14
    .line 15
    return-void
.end method

.method public static from(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
    .locals 2
    .param p0    # Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->findCodecAndGetCodecInfo(Landroidx/camera/video/internal/encoder/EncoderConfig;)Landroid/media/MediaCodecInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->getMimeType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static synthetic lambda$static$0(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->from(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0, v0}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string v1, "VideoEncoderInfoImpl"

    .line 13
    .line 14
    const-string v2, "Unable to find a VideoEncoderInfoImpl"

    .line 15
    .line 16
    invoke-static {v1, v2, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method private static toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->lambda$static$0(Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

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
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

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
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
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
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

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
    :try_start_0
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidthsFor(I)Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    invoke-static {p1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->toIllegalArgumentException(Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    throw p1
.end method

.method public getWidthAlignment()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

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
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->mVideoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

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
