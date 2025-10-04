.class public Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraCaptureResult;


# static fields
.field private static final TAG:Ljava/lang/String; = "C2CameraCaptureResult"


# instance fields
.field private final mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private final mTagBundle:Landroidx/camera/core/impl/TagBundle;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Landroidx/camera/core/impl/TagBundle;->emptyBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;-><init>(Landroidx/camera/core/impl/TagBundle;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/TagBundle;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroidx/camera/core/impl/TagBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public getAeMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_6

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-eq v0, v1, :cond_5

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v1, 0x1c

    .line 43
    .line 44
    if-lt v0, v1, :cond_2

    .line 45
    .line 46
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_EXTERNAL_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH_REDEYE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_4
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_ALWAYS_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_5
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON_AUTO_FLASH:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_6
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->ON:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_7
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;

    .line 65
    .line 66
    return-object v0
.end method

.method public getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    if-eq v1, v2, :cond_4

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Undefined ae state: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "C2CameraCaptureResult"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->LOCKED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->SEARCHING:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_5
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 72
    .line 73
    return-object v0
.end method

.method public getAfMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Undefined af mode: "

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "C2CameraCaptureResult"

    .line 52
    .line 53
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_CONTINUOUS_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_MANUAL_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 66
    .line 67
    return-object v0
.end method

.method public getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Undefined af state: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "C2CameraCaptureResult"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->PASSIVE_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->PASSIVE_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_4
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->SCANNING:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_5
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAwbMode()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->SHADE:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->TWILIGHT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->CLOUDY_DAYLIGHT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->DAYLIGHT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_4
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->WARM_FLUORESCENT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_5
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->FLUORESCENT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_6
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->INCANDESCENT:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_7
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_8
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "Undefined awb state: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "C2CameraCaptureResult"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->LOCKED:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->METERING:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 63
    .line 64
    return-object v0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Undefined flash state: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "C2CameraCaptureResult"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 63
    .line 64
    return-object v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mTagBundle:Landroidx/camera/core/impl/TagBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Long;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 3
    .param p1    # Landroidx/camera/core/impl/utils/ExifData$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, L돵듼듐뒼땲뒻땨땍돶땹뒋돼땐땔딟돰돤딐둘뒀뒘땸들뎸듽드둑땄뒙둣돸뒋뒉디땜뒨드땝된뒤딨들둥듐딠뒨땻뒷듽뒐뎨됐둑땣땜뒈땀뒉듟돵땳딨뒷땍뒈둬돠뎰딞땅뒵돠땣딽듰듽듟돛뒝돳딁뒉됨땦딄듨둣딞드돴딻뒋될땐됐됴돸땃듸뒾따듔딜땵뒘될뒋따딤땭딻되돝됫뒀듌뎹돝됨뒼뎰뒋뎬돵땩딌뒛뎸돸땲;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 5
    .line 6
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const-string v0, "C2CameraCaptureResult"

    .line 25
    .line 26
    const-string v1, "Failed to get JPEG orientation."

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 32
    .line 33
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Long;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setExposureTimeNanos(J)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 51
    .line 52
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Float;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setLensFNumber(F)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 70
    .line 71
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Integer;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v2, 0x18

    .line 84
    .line 85
    if-lt v1, v2, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 88
    .line 89
    invoke-static {}, L뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋()Landroid/hardware/camera2/CaptureResult$Key;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/Integer;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    int-to-float v1, v1

    .line 110
    const/high16 v2, 0x42c80000    # 100.0f

    .line 111
    .line 112
    div-float/2addr v1, v2

    .line 113
    float-to-int v1, v1

    .line 114
    mul-int v0, v0, v1

    .line 115
    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setIso(I)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 128
    .line 129
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Float;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setFocalLength(F)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraCaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 147
    .line 148
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->AUTO:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->MANUAL:Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;

    .line 167
    .line 168
    :cond_6
    invoke-virtual {p1, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setWhiteBalanceMode(Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 169
    .line 170
    .line 171
    :cond_7
    return-void
.end method
