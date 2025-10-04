.class Landroidx/camera/view/CameraController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageCapture$ScreenFlash;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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


# virtual methods
.method public apply(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V
    .locals 0
    .param p3    # Landroidx/camera/core/ImageCapture$ScreenFlashListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p3}, Landroidx/camera/core/ImageCapture$ScreenFlashListener;->onCompleted()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method
