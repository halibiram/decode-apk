.class final Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;
.super Landroidx/camera/core/SurfaceOutput$CameraInputInfo;
.source "SourceFile"


# instance fields
.field private final cameraInternal:Landroidx/camera/core/impl/CameraInternal;

.field private final inputCropRect:Landroid/graphics/Rect;

.field private final inputSize:Landroid/util/Size;

.field private final mirroring:Z

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)V
    .locals 0
    .param p3    # Landroidx/camera/core/impl/CameraInternal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputSize:Landroid/util/Size;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputCropRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    iput-object p3, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->cameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 13
    .line 14
    iput p4, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->rotationDegrees:I

    .line 15
    .line 16
    iput-boolean p5, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->mirroring:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string p2, "Null inputCropRect"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p2, "Null inputSize"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    check-cast p1, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputSize:Landroid/util/Size;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputSize()Landroid/util/Size;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputCropRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getInputCropRect()Landroid/graphics/Rect;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->cameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getCameraInternal()Landroidx/camera/core/impl/CameraInternal;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    :goto_0
    iget v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->rotationDegrees:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getRotationDegrees()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ne v1, v3, :cond_2

    .line 64
    .line 65
    iget-boolean v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->mirroring:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceOutput$CameraInputInfo;->getMirroring()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne v1, p1, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_1
    return v0

    .line 76
    :cond_3
    return v2
.end method

.method public getCameraInternal()Landroidx/camera/core/impl/CameraInternal;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->cameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInputCropRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputCropRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInputSize()Landroid/util/Size;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputSize:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMirroring()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->mirroring:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->rotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputSize:Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

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
    iget-object v2, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputCropRect:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v0, v2

    .line 20
    mul-int v0, v0, v1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->cameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_0
    xor-int/2addr v0, v2

    .line 33
    mul-int v0, v0, v1

    .line 34
    .line 35
    iget v2, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->rotationDegrees:I

    .line 36
    .line 37
    xor-int/2addr v0, v2

    .line 38
    mul-int v0, v0, v1

    .line 39
    .line 40
    iget-boolean v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->mirroring:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x4cf

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v1, 0x4d5

    .line 48
    .line 49
    :goto_1
    xor-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CameraInputInfo{inputSize="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputSize:Landroid/util/Size;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", inputCropRect="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->inputCropRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", cameraInternal="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->cameraInternal:Landroidx/camera/core/impl/CameraInternal;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", rotationDegrees="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->rotationDegrees:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mirroring="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;->mirroring:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "}"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
