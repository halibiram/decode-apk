.class public Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/encoder/VideoEncoderConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VidEncCfgDefaultRslvr"

.field private static final VALID_FRAME_RATE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_BITRATE_BASE:I = 0xd59f80

.field private static final VIDEO_BIT_DEPTH_BASE:I = 0x8

.field private static final VIDEO_FRAME_RATE_BASE:I = 0x1e

.field static final VIDEO_FRAME_RATE_FIXED_DEFAULT:I = 0x1e

.field private static final VIDEO_SIZE_BASE:Landroid/util/Size;


# instance fields
.field private final mDynamicRange:Landroidx/camera/core/DynamicRange;

.field private final mExpectedFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputTimebase:Landroidx/camera/core/impl/Timebase;

.field private final mMimeType:Ljava/lang/String;

.field private final mSurfaceSize:Landroid/util/Size;

.field private final mVideoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    .line 2
    .line 3
    const/16 v1, 0x500

    .line 4
    .line 5
    const/16 v2, 0x2d0

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->VIDEO_SIZE_BASE:Landroid/util/Size;

    .line 11
    .line 12
    new-instance v0, Landroid/util/Range;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0x3c

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->VALID_FRAME_RATE_RANGE:Landroid/util/Range;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/VideoSpec;Landroid/util/Size;Landroidx/camera/core/DynamicRange;Landroid/util/Range;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/video/VideoSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/core/DynamicRange;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/util/Range;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/Timebase;",
            "Landroidx/camera/video/VideoSpec;",
            "Landroid/util/Size;",
            "Landroidx/camera/core/DynamicRange;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mVideoSpec:Landroidx/camera/video/VideoSpec;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mSurfaceSize:Landroid/util/Size;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 15
    .line 16
    return-void
.end method

.method private resolveFrameRate()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 2
    .line 3
    sget-object v1, Landroidx/camera/core/SurfaceRequest;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->VALID_FRAME_RATE_RANGE:Landroid/util/Range;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v0, 0x1e

    .line 33
    .line 34
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 39
    .line 40
    invoke-static {v3, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mExpectedFrameRateRange:Landroid/util/Range;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v1, "<UNSPECIFIED>"

    .line 50
    .line 51
    :goto_1
    const/4 v3, 0x2

    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v2, v3, v4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v1, v3, v2

    .line 59
    .line 60
    const-string v1, "Default resolved frame rate: %dfps. [Expected operating range: %s]"

    .line 61
    .line 62
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "VidEncCfgDefaultRslvr"

    .line 67
    .line 68
    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v0
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->resolveFrameRate()I

    move-result v10

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolved VIDEO frame rate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VidEncCfgDefaultRslvr"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mVideoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getBitrate()Landroid/util/Range;

    move-result-object v9

    .line 5
    const-string v0, "Using fallback VIDEO bitrate"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mDynamicRange:Landroidx/camera/core/DynamicRange;

    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v1

    iget-object v0, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mSurfaceSize:Landroid/util/Size;

    .line 8
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    sget-object v0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->VIDEO_SIZE_BASE:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mSurfaceSize:Landroid/util/Size;

    .line 9
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    const v0, 0xd59f80

    const/16 v2, 0x8

    const/16 v4, 0x1e

    move v3, v10

    .line 10
    invoke-static/range {v0 .. v9}, Landroidx/camera/video/internal/config/VideoConfigUtil;->scaleAndClampBitrate(IIIIIIIIILandroid/util/Range;)I

    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mDynamicRange:Landroidx/camera/core/DynamicRange;

    invoke-static {v1, v2}, Landroidx/camera/video/internal/utils/DynamicRangeUtil;->dynamicRangeToCodecProfileLevelForMime(Ljava/lang/String;Landroidx/camera/core/DynamicRange;)I

    move-result v1

    .line 12
    iget-object v2, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    .line 13
    invoke-static {v2, v1}, Landroidx/camera/video/internal/config/VideoConfigUtil;->mimeAndProfileToEncoderDataSpace(Ljava/lang/String;I)Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;

    move-result-object v2

    .line 14
    invoke-static {}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig;->builder()Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mInputTimebase:Landroidx/camera/core/impl/Timebase;

    .line 16
    invoke-virtual {v3, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->mSurfaceSize:Landroid/util/Size;

    .line 17
    invoke-virtual {v3, v4}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setResolution(Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setBitrate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v10}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setFrameRate(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->setDataSpace(Landroidx/camera/video/internal/encoder/VideoEncoderDataSpace;)Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/VideoEncoderConfig$Builder;->build()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/VideoEncoderConfigDefaultResolver;->get()Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    move-result-object v0

    return-object v0
.end method
