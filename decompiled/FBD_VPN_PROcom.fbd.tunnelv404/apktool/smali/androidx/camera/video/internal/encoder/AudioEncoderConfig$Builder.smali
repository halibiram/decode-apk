.class public abstract Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
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


# virtual methods
.method public abstract autoBuild()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public build()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->autoBuild()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getMimeType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "audio/mp4a-latm"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getProfile()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Encoder mime set to AAC, but no AAC profile was provided."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract setBitrate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setChannelCount(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .param p1    # Landroidx/camera/core/impl/Timebase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
