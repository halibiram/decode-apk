.class Landroidx/camera/core/imagecapture/RgbaImageProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/imagecapture/RgbaImageProxy;->createImageInfo(JILandroid/graphics/Matrix;)Landroidx/camera/core/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$rotationDegrees:I

.field final synthetic val$sensorToBuffer:Landroid/graphics/Matrix;

.field final synthetic val$timestamp:J


# direct methods
.method public constructor <init>(JILandroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$timestamp:J

    .line 2
    .line 3
    iput p3, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$rotationDegrees:I

    .line 4
    .line 5
    iput-object p4, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$sensorToBuffer:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getRotationDegrees()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$rotationDegrees:I

    .line 2
    .line 3
    return v0
.end method

.method public getSensorToBufferTransformMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$sensorToBuffer:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Custom ImageProxy does not contain TagBundle"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/camera/core/imagecapture/RgbaImageProxy$2;->val$timestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/utils/ExifData$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Custom ImageProxy does not contain Exif data."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
