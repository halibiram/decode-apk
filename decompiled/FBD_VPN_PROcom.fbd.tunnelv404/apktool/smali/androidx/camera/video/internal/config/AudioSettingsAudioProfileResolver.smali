.class public final Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/audio/AudioSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSrcAdPrflRslvr"


# instance fields
.field private final mAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field private final mAudioSpec:Landroidx/camera/video/AudioSpec;


# direct methods
.method public constructor <init>(Landroidx/camera/video/AudioSpec;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V
    .locals 0
    .param p1    # Landroidx/camera/video/AudioSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    invoke-static {v0}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioSource(Landroidx/camera/video/AudioSpec;)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    invoke-static {v1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioSourceFormat(Landroidx/camera/video/AudioSpec;)I

    move-result v1

    .line 4
    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v2}, Landroidx/camera/video/AudioSpec;->getChannelCount()I

    move-result v2

    .line 5
    iget-object v3, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v3}, Landroidx/camera/video/AudioSpec;->getSampleRate()Landroid/util/Range;

    move-result-object v3

    .line 6
    iget-object v4, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v4}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getChannels()I

    move-result v4

    const/4 v5, -0x1

    .line 7
    const-string v6, "AudioSrcAdPrflRslvr"

    if-ne v2, v5, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Resolved AUDIO channel count from AudioProfile: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto :goto_0

    .line 9
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Media spec AUDIO channel count overrides AudioProfile [AudioProfile channel count: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Resolved Channel Count: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v4, p0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->mAudioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v4}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getSampleRate()I

    move-result v4

    .line 11
    invoke-static {v3, v2, v1, v4}, Landroidx/camera/video/internal/config/AudioConfigUtil;->selectSampleRateOrNearestSupported(Landroid/util/Range;III)I

    move-result v3

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Using resolved AUDIO sample rate or nearest supported from AudioProfile: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "Hz. [AudioProfile sample rate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Hz]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSettings;->builder()Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setAudioSource(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setAudioFormat(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setChannelCount(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->build()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;->get()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object v0

    return-object v0
.end method
