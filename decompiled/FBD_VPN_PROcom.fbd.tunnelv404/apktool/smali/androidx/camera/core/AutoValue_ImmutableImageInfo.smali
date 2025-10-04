.class final Landroidx/camera/core/AutoValue_ImmutableImageInfo;
.super Landroidx/camera/core/ImmutableImageInfo;
.source "SourceFile"


# instance fields
.field private final rotationDegrees:I

.field private final sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

.field private final tagBundle:Landroidx/camera/core/impl/TagBundle;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/TagBundle;JILandroid/graphics/Matrix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/ImmutableImageInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 7
    .line 8
    iput-wide p2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 9
    .line 10
    iput p4, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 11
    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    iput-object p5, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string p2, "Null sensorToBufferTransformMatrix"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string p2, "Null tagBundle"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
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
    instance-of v1, p1, Landroidx/camera/core/ImmutableImageInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/ImmutableImageInfo;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

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
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-wide v3, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getTimestamp()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    cmp-long v1, v3, v5

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getRotationDegrees()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v1, v3, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/camera/core/ImmutableImageInfo;->getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 57
    :cond_2
    return v2
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tagBundle:Landroidx/camera/core/impl/TagBundle;

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
    iget-wide v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 14
    .line 15
    const/16 v4, 0x20

    .line 16
    .line 17
    ushr-long v4, v2, v4

    .line 18
    .line 19
    xor-long/2addr v2, v4

    .line 20
    long-to-int v3, v2

    .line 21
    xor-int/2addr v0, v3

    .line 22
    mul-int v0, v0, v1

    .line 23
    .line 24
    iget v2, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 25
    .line 26
    xor-int/2addr v0, v2

    .line 27
    mul-int v0, v0, v1

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Matrix;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/2addr v0, v1

    .line 36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImmutableImageInfo{tagBundle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->tagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", timestamp="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->timestamp:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", rotationDegrees="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->rotationDegrees:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sensorToBufferTransformMatrix="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/camera/core/AutoValue_ImmutableImageInfo;->sensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "}"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
