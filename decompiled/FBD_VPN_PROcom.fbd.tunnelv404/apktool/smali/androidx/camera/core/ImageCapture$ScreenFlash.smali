.class public interface abstract Landroidx/camera/core/ImageCapture$ScreenFlash;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenFlash"
.end annotation


# virtual methods
.method public abstract apply(JLandroidx/camera/core/ImageCapture$ScreenFlashListener;)V
    .param p3    # Landroidx/camera/core/ImageCapture$ScreenFlashListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract clear()V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
