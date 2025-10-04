.class Lcom/journeyapps/barcodescanner/ViewfinderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/ViewfinderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .locals 0

    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public previewSized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->refreshSizes()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public previewStarted()V
    .locals 0

    return-void
.end method

.method public previewStopped()V
    .locals 0

    return-void
.end method
