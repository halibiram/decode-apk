.class Landroidx/camera/camera2/internal/compat/CameraCharacteristicsApi28Impl;
.super Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCharacteristicsImpl"


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCharacteristics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getPhysicalCameraIds()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsBaseImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string v1, "CameraCharacteristicsImpl"

    .line 10
    .line 11
    const-string v2, "CameraCharacteristics.getPhysicalCameraIds throws an exception."

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
