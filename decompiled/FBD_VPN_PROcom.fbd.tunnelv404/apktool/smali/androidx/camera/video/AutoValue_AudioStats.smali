.class final Landroidx/camera/video/AutoValue_AudioStats;
.super Landroidx/camera/video/AudioStats;
.source "SourceFile"


# instance fields
.field private final audioAmplitudeInternal:D

.field private final audioState:I

.field private final errorCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(IDLjava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/AudioStats;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioState:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/camera/video/AutoValue_AudioStats;->errorCause:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/video/AudioStats;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/AudioStats;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioState:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/AudioStats;->getAudioState()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_2

    .line 19
    .line 20
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 21
    .line 22
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {p1}, Landroidx/camera/video/AudioStats;->getAudioAmplitudeInternal()D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->errorCause:Ljava/lang/Throwable;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/camera/video/AudioStats;->getErrorCause()Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/AudioStats;->getErrorCause()Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 62
    :cond_3
    return v2
.end method

.method public getAudioAmplitudeInternal()D
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAudioState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioState:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_AudioStats;->errorCause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioState:I

    .line 2
    .line 3
    const v1, 0xf4243

    .line 4
    .line 5
    .line 6
    xor-int/2addr v0, v1

    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const/16 v4, 0x20

    .line 16
    .line 17
    ushr-long/2addr v2, v4

    .line 18
    iget-wide v4, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    xor-long/2addr v2, v4

    .line 25
    long-to-int v3, v2

    .line 26
    xor-int/2addr v0, v3

    .line 27
    mul-int v0, v0, v1

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->errorCause:Ljava/lang/Throwable;

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_0
    xor-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AudioStats{audioState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", audioAmplitudeInternal="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->audioAmplitudeInternal:D

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", errorCause="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/AutoValue_AudioStats;->errorCause:Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
