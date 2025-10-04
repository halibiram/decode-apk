.class final Landroidx/camera/core/imagecapture/Image2JpegBytes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/imagecapture/Image2JpegBytes$In;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Operation<",
        "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
        "Landroidx/camera/core/processing/Packet<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field private final mJpegMetadataCorrector:Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/Quirks;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Quirks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;-><init>(Landroidx/camera/core/impl/Quirks;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/imagecapture/Image2JpegBytes;->mJpegMetadataCorrector:Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;

    .line 10
    .line 11
    return-void
.end method

.method private static extractExif([B)Landroidx/camera/core/impl/utils/Exif;
    .locals 3
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/camera/core/impl/utils/Exif;->createFromInputStream(Ljava/io/InputStream;)Landroidx/camera/core/impl/utils/Exif;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "Failed to extract Exif from YUV-generated JPEG"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, p0}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private processJpegImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;I)Landroidx/camera/core/processing/Packet;
    .locals 10
    .param p1    # Landroidx/camera/core/imagecapture/Image2JpegBytes$In;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            "I)",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/camera/core/imagecapture/Image2JpegBytes;->mJpegMetadataCorrector:Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/compat/workaround/JpegMetadataCorrector;->jpegImageToJpegByteArray(Landroidx/camera/core/ImageProxy;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getExif()Landroidx/camera/core/impl/utils/Exif;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSize()Landroid/util/Size;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    move v4, p2

    .line 45
    invoke-static/range {v2 .. v9}, Landroidx/camera/core/processing/Packet;->of([BLandroidx/camera/core/impl/utils/Exif;ILandroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method private processYuvImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;
    .locals 12
    .param p1    # Landroidx/camera/core/imagecapture/Image2JpegBytes$In;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/camera/core/ImageProxy;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getJpegQuality()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v1, v2, p1, v3}, Landroidx/camera/core/internal/utils/ImageUtil;->yuvImageToJpegByteArray(Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;II)[B

    .line 24
    .line 25
    .line 26
    move-result-object v4
    :try_end_0
    .catch Landroidx/camera/core/internal/utils/ImageUtil$CodecFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-static {v4}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->extractExif([B)Landroidx/camera/core/impl/utils/Exif;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v7, Landroid/util/Size;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {v7, p1, v1}, Landroid/util/Size;-><init>(II)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v8, v3, v3, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1, v2}, Landroidx/camera/core/impl/utils/TransformUtils;->updateSensorToBufferTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v0}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    const/16 v6, 0x100

    .line 75
    .line 76
    invoke-static/range {v4 .. v11}, Landroidx/camera/core/processing/Packet;->of([BLandroidx/camera/core/impl/utils/Exif;ILandroid/util/Size;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    const-string v2, "Failed to encode the image to JPEG."

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method


# virtual methods
.method public apply(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;
    .locals 4
    .param p1    # Landroidx/camera/core/imagecapture/Image2JpegBytes$In;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/imagecapture/Image2JpegBytes$In;",
            ")",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation

    .line 2
    const-string v0, "Unexpected format: "

    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/processing/Packet;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1005

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->processJpegImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;I)Landroidx/camera/core/processing/Packet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-object v0

    .line 6
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->processYuvImage(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7
    :goto_2
    invoke-virtual {p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;->getPacket()Landroidx/camera/core/processing/Packet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/ImageProxy;

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    .line 8
    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Landroidx/camera/core/imagecapture/Image2JpegBytes$In;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/Image2JpegBytes;->apply(Landroidx/camera/core/imagecapture/Image2JpegBytes$In;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method
