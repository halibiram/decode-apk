.class final Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;
.super Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
.source "SourceFile"


# instance fields
.field private final sizeInBytes:I

.field private final timestampNs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->sizeInBytes:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->timestampNs:J

    .line 7
    .line 8
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
    instance-of v1, p1, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    .line 11
    .line 12
    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->sizeInBytes:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v1, v3, :cond_1

    .line 19
    .line 20
    iget-wide v3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->timestampNs:J

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    cmp-long p1, v3, v5

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 33
    :cond_2
    return v2
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->sizeInBytes:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->timestampNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->sizeInBytes:I

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
    iget-wide v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->timestampNs:J

    .line 10
    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    ushr-long v3, v1, v3

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int v2, v1

    .line 17
    xor-int/2addr v0, v2

    .line 18
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PacketInfo{sizeInBytes="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->sizeInBytes:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", timestampNs="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioStream_PacketInfo;->timestampNs:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "}"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
