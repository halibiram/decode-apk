.class public final Landroidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/impl/ZoomGestureDetector;-><init>(Landroid/content/Context;IILandroidx/camera/view/impl/ZoomGestureDetector$OnZoomGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onDoubleTap",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "camera-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/impl/ZoomGestureDetector;


# direct methods
.method public constructor <init>(Landroidx/camera/view/impl/ZoomGestureDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/view/impl/ZoomGestureDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/view/impl/ZoomGestureDetector;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Landroidx/camera/view/impl/ZoomGestureDetector;->access$setAnchoredZoomStartX$p(Landroidx/camera/view/impl/ZoomGestureDetector;F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/view/impl/ZoomGestureDetector;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v0, p1}, Landroidx/camera/view/impl/ZoomGestureDetector;->access$setAnchoredZoomStartY$p(Landroidx/camera/view/impl/ZoomGestureDetector;F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/camera/view/impl/ZoomGestureDetector$gestureDetector$1;->this$0:Landroidx/camera/view/impl/ZoomGestureDetector;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Landroidx/camera/view/impl/ZoomGestureDetector;->access$setAnchoredZoomMode$p(Landroidx/camera/view/impl/ZoomGestureDetector;I)V

    .line 28
    .line 29
    .line 30
    return v0
.end method
