.class final Landroidx/camera/video/AutoValue_RecordingStats;
.super Landroidx/camera/video/RecordingStats;
.source "SourceFile"


# instance fields
.field private final audioStats:Landroidx/camera/video/AudioStats;

.field private final numBytesRecorded:J

.field private final recordedDurationNanos:J


# direct methods
.method public constructor <init>(JJLandroidx/camera/video/AudioStats;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/RecordingStats;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string p2, "Null audioStats"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
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
    instance-of v1, p1, Landroidx/camera/video/RecordingStats;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/RecordingStats;

    .line 11
    .line 12
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getRecordedDurationNanos()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    cmp-long v1, v3, v5

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getNumBytesRecorded()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getAudioStats()Landroidx/camera/video/AudioStats;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 47
    :cond_2
    return v2
.end method

.method public getAudioStats()Landroidx/camera/video/AudioStats;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumBytesRecorded()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRecordedDurationNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v1, v0

    .line 9
    const v0, 0xf4243

    .line 10
    .line 11
    .line 12
    xor-int/2addr v1, v0

    .line 13
    mul-int v1, v1, v0

    .line 14
    .line 15
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 16
    .line 17
    ushr-long v5, v3, v2

    .line 18
    .line 19
    xor-long v2, v5, v3

    .line 20
    .line 21
    long-to-int v3, v2

    .line 22
    xor-int/2addr v1, v3

    .line 23
    mul-int v1, v1, v0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RecordingStats{recordedDurationNanos="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", numBytesRecorded="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", audioStats="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

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
