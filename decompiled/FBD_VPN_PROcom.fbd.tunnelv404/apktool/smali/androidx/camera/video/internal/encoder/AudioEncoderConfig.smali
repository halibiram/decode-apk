.class public abstract Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/EncoderConfig;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/encoder/AutoValue_AudioEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public abstract getBitrate()I
.end method

.method public abstract getChannelCount()I
.end method

.method public abstract getInputTimebase()Landroidx/camera/core/impl/Timebase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getProfile()I
.end method

.method public abstract getSampleRate()I
.end method

.method public toMediaFormat()Landroid/media/MediaFormat;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getSampleRate()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getChannelCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "bitrate"

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getBitrate()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getProfile()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getMimeType()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "audio/mp4a-latm"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const-string v1, "aac-profile"

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getProfile()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v1, "profile"

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getProfile()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-object v0
.end method
