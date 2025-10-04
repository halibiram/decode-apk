.class final Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/processing/Operation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/processing/Operation<",
        "Landroidx/camera/core/processing/Packet<",
        "[B>;",
        "Landroidx/camera/core/processing/Packet<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
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

.method private createCroppedBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Landroidx/camera/core/ImageCaptureException;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    const-string v1, "Failed to decode JPEG."

    .line 22
    .line 23
    invoke-direct {p2, v0, v1, p1}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p2
.end method


# virtual methods
.method public apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/processing/Packet;
    .locals 8
    .param p1    # Landroidx/camera/core/processing/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;)",
            "Landroidx/camera/core/processing/Packet<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1, v0}, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;->createCroppedBitmap([BLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getExif()Landroidx/camera/core/impl/utils/Exif;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getRotationDegrees()I

    move-result v5

    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getSensorToBufferTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/TransformUtils;->updateSensorToBufferTransform(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 8
    invoke-virtual {p1}, Landroidx/camera/core/processing/Packet;->getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v7

    .line 9
    invoke-static/range {v2 .. v7}, Landroidx/camera/core/processing/Packet;->of(Landroid/graphics/Bitmap;Landroidx/camera/core/impl/utils/Exif;Landroid/graphics/Rect;ILandroid/graphics/Matrix;Landroidx/camera/core/impl/CameraCaptureResult;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
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
    check-cast p1, Landroidx/camera/core/processing/Packet;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/JpegBytes2CroppedBitmap;->apply(Landroidx/camera/core/processing/Packet;)Landroidx/camera/core/processing/Packet;

    move-result-object p1

    return-object p1
.end method
