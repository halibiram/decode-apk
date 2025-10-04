.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private autoFocusEnabled:Z

.field private autoTorchEnabled:Z

.field private barcodeSceneModeEnabled:Z

.field private continuousFocusEnabled:Z

.field private exposureEnabled:Z

.field private focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field private meteringEnabled:Z

.field private requestedCameraId:I

.field private scanInverted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 22
    .line 23
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestedCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    .line 2
    .line 3
    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoTorchEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isBarcodeSceneModeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isExposureEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMeteringEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScanInverted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public setAutoTorchEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBarcodeSceneModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setContinuousFocusEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public setExposureEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFocusMode(Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    .line 2
    .line 3
    return-void
.end method

.method public setMeteringEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestedCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    .line 2
    .line 3
    return-void
.end method

.method public setScanInverted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    .line 2
    .line 3
    return-void
.end method
