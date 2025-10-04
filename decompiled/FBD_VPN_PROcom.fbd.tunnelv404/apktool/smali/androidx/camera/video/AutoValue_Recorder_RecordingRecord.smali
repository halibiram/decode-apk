.class final Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;
.super Landroidx/camera/video/Recorder$RecordingRecord;
.source "SourceFile"


# instance fields
.field private final getCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final getEventListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final getOutputOptions:Landroidx/camera/video/OutputOptions;

.field private final getRecordingId:J

.field private final hasAudioEnabled:Z

.field private final isPersistent:Z


# direct methods
.method public constructor <init>(Landroidx/camera/video/OutputOptions;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;ZZJ)V
    .locals 0
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/video/OutputOptions;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;ZZJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/Recorder$RecordingRecord;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getEventListener:Landroidx/core/util/Consumer;

    .line 11
    .line 12
    iput-boolean p4, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->hasAudioEnabled:Z

    .line 13
    .line 14
    iput-boolean p5, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->isPersistent:Z

    .line 15
    .line 16
    iput-wide p6, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getRecordingId:J

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string p2, "Null getOutputOptions"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
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
    instance-of v1, p1, Landroidx/camera/video/Recorder$RecordingRecord;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/Recorder$RecordingRecord;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getOutputOptions()Landroidx/camera/video/OutputOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getCallbackExecutor()Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    :goto_0
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getEventListener:Landroidx/core/util/Consumer;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getEventListener()Landroidx/core/util/Consumer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getEventListener()Landroidx/core/util/Consumer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    :goto_1
    iget-boolean v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->hasAudioEnabled:Z

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->hasAudioEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-ne v1, v3, :cond_3

    .line 73
    .line 74
    iget-boolean v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->isPersistent:Z

    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->isPersistent()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ne v1, v3, :cond_3

    .line 81
    .line 82
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getRecordingId:J

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/camera/video/Recorder$RecordingRecord;->getRecordingId()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    cmp-long p1, v3, v5

    .line 89
    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    :goto_2
    return v0

    .line 95
    :cond_4
    return v2
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventListener()Landroidx/core/util/Consumer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Landroidx/camera/video/VideoRecordEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getEventListener:Landroidx/core/util/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutputOptions()Landroidx/camera/video/OutputOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecordingId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getRecordingId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasAudioEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->hasAudioEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 8
    .line 9
    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int v0, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_0
    xor-int/2addr v0, v2

    .line 25
    mul-int v0, v0, v1

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getEventListener:Landroidx/core/util/Consumer;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_1
    xor-int/2addr v0, v3

    .line 37
    mul-int v0, v0, v1

    .line 38
    .line 39
    iget-boolean v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->hasAudioEnabled:Z

    .line 40
    .line 41
    const/16 v3, 0x4d5

    .line 42
    .line 43
    const/16 v4, 0x4cf

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const/16 v2, 0x4cf

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/16 v2, 0x4d5

    .line 51
    .line 52
    :goto_2
    xor-int/2addr v0, v2

    .line 53
    mul-int v0, v0, v1

    .line 54
    .line 55
    iget-boolean v2, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->isPersistent:Z

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    const/16 v3, 0x4cf

    .line 60
    .line 61
    :cond_3
    xor-int/2addr v0, v3

    .line 62
    mul-int v0, v0, v1

    .line 63
    .line 64
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getRecordingId:J

    .line 65
    .line 66
    const/16 v3, 0x20

    .line 67
    .line 68
    ushr-long v3, v1, v3

    .line 69
    .line 70
    xor-long/2addr v1, v3

    .line 71
    long-to-int v2, v1

    .line 72
    xor-int/2addr v0, v2

    .line 73
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->isPersistent:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RecordingRecord{getOutputOptions="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getOutputOptions:Landroidx/camera/video/OutputOptions;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", getCallbackExecutor="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", getEventListener="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getEventListener:Landroidx/core/util/Consumer;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", hasAudioEnabled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->hasAudioEnabled:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isPersistent="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->isPersistent:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", getRecordingId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Landroidx/camera/video/AutoValue_Recorder_RecordingRecord;->getRecordingId:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "}"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
