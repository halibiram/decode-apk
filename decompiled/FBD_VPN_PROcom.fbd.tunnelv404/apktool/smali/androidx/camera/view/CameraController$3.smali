.class Landroidx/camera/view/CameraController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/CameraController;->onTapToFocus(Landroidx/camera/core/MeteringPointFactory;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Landroidx/camera/core/FocusMeteringResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/view/CameraController;


# direct methods
.method public constructor <init>(Landroidx/camera/view/CameraController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/view/CameraController$3;->this$0:Landroidx/camera/view/CameraController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/camera/core/CameraControl$OperationCanceledException;

    .line 2
    .line 3
    const-string v1, "CameraController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Tap-to-focus is canceled by new action."

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "Tap to focus failed."

    .line 14
    .line 15
    invoke-static {v1, v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroidx/camera/view/CameraController$3;->this$0:Landroidx/camera/view/CameraController;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/camera/view/CameraController;->mTapToFocusState:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onSuccess(Landroidx/camera/core/FocusMeteringResult;)V
    .locals 2
    .param p1    # Landroidx/camera/core/FocusMeteringResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tap to focus onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringResult;->isFocusSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/camera/view/CameraController$3;->this$0:Landroidx/camera/view/CameraController;

    iget-object v0, v0, Landroidx/camera/view/CameraController;->mTapToFocusState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/camera/core/FocusMeteringResult;->isFocusSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/camera/core/FocusMeteringResult;

    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController$3;->onSuccess(Landroidx/camera/core/FocusMeteringResult;)V

    return-void
.end method
