.class public final Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/encoder/AudioEncoderConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIO_BITRATE_BASE:I = 0x26160

.field private static final AUDIO_CHANNEL_COUNT_BASE:I = 0x2

.field private static final AUDIO_SAMPLE_RATE_BASE:I = 0xbb80

.field private static final TAG:Ljava/lang/String; = "AudioEncCfgDefaultRslvr"


# instance fields
.field private final mAudioProfile:I

.field private final mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

.field private final mAudioSpec:Landroidx/camera/video/AudioSpec;

.field private final mInputTimeBase:Landroidx/camera/core/impl/Timebase;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/camera/video/internal/audio/AudioSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioProfile:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mInputTimeBase:Landroidx/camera/core/impl/Timebase;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->getBitrate()Landroid/util/Range;

    move-result-object v6

    .line 3
    const-string v0, "AudioEncCfgDefaultRslvr"

    const-string v1, "Using fallback AUDIO bitrate"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    .line 5
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v2

    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    .line 6
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings;->getSampleRate()I

    move-result v4

    const v5, 0xbb80

    const v1, 0x26160

    const/4 v3, 0x2

    .line 7
    invoke-static/range {v1 .. v6}, Landroidx/camera/video/internal/config/AudioConfigUtil;->scaleAndClampBitrate(IIIIILandroid/util/Range;)I

    move-result v0

    .line 8
    invoke-static {}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->builder()Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mMimeType:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioProfile:I

    .line 10
    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mInputTimeBase:Landroidx/camera/core/impl/Timebase;

    .line 11
    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    .line 12
    invoke-virtual {v2}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setChannelCount(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mAudioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    .line 13
    invoke-virtual {v2}, Landroidx/camera/video/internal/audio/AudioSettings;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setBitrate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->build()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->get()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    move-result-object v0

    return-object v0
.end method
