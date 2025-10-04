.class abstract Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/imagecapture/JpegBytes2Disk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "In"
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

.method public static of(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;
    .locals 1
    .param p0    # Landroidx/camera/core/processing/Packet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/camera/core/ImageCapture$OutputFileOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;",
            "Landroidx/camera/core/ImageCapture$OutputFileOptions;",
            ")",
            "Landroidx/camera/core/imagecapture/JpegBytes2Disk$In;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/core/imagecapture/AutoValue_JpegBytes2Disk_In;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/camera/core/imagecapture/AutoValue_JpegBytes2Disk_In;-><init>(Landroidx/camera/core/processing/Packet;Landroidx/camera/core/ImageCapture$OutputFileOptions;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPacket()Landroidx/camera/core/processing/Packet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/core/processing/Packet<",
            "[B>;"
        }
    .end annotation
.end method
