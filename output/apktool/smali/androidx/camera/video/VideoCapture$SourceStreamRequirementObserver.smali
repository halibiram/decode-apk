.class Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceStreamRequirementObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCameraControl:Landroidx/camera/core/impl/CameraControlInternal;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIsSourceStreamRequired:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraControlInternal;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/CameraControlInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mIsSourceStreamRequired:Z

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mCameraControl:Landroidx/camera/core/impl/CameraControlInternal;

    .line 8
    .line 9
    return-void
.end method

.method private updateVideoUsageInCamera(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mIsSourceStreamRequired:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mIsSourceStreamRequired:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mCameraControl:Landroidx/camera/core/impl/CameraControlInternal;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraControlInternal;->incrementVideoUsage()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraControlInternal;->decrementVideoUsage()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p1, "VideoCapture"

    .line 23
    .line 24
    const-string v0, "SourceStreamRequirementObserver#isSourceStreamRequired: Received new data despite being closed already"

    .line 25
    .line 26
    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SourceStreamRequirementObserver can be closed from main thread only"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "SourceStreamRequirementObserver#close: mIsSourceStreamRequired = "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mIsSourceStreamRequired:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VideoCapture"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mCameraControl:Landroidx/camera/core/impl/CameraControlInternal;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string v0, "SourceStreamRequirementObserver#close: Already closed!"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->updateVideoUsageInCamera(Z)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->mCameraControl:Landroidx/camera/core/impl/CameraControlInternal;

    .line 47
    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "VideoCapture"

    .line 2
    .line 3
    const-string v1, "SourceStreamRequirementObserver#onError"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNewData(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 2
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->isMainThread()Z

    move-result v0

    const-string v1, "SourceStreamRequirementObserver can be updated from main thread only"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->updateVideoUsageInCamera(Z)V

    return-void
.end method

.method public bridge synthetic onNewData(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/camera/video/VideoCapture$SourceStreamRequirementObserver;->onNewData(Ljava/lang/Boolean;)V

    return-void
.end method
