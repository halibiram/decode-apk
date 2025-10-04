.class public Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;
.super Landroidx/camera/video/internal/encoder/EncoderInfoImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/AudioEncoderInfo;


# instance fields
.field private final mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;


# direct methods
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
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;->mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 14
    .line 15
    return-void
.end method

.method public static from(Landroidx/camera/video/internal/encoder/AudioEncoderConfig;)Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;
    .locals 2
    .param p0    # Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->findCodecAndGetCodecInfo(Landroidx/camera/video/internal/encoder/EncoderConfig;)Landroid/media/MediaCodecInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getMimeType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public getBitrateRange()Landroid/util/Range;
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
    iget-object v0, p0, Landroidx/camera/video/internal/encoder/AudioEncoderInfoImpl;->mAudioCapabilities:Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
