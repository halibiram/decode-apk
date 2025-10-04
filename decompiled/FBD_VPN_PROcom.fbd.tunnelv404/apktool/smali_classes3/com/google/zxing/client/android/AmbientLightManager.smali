.class public final Lcom/google/zxing/client/android/AmbientLightManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final BRIGHT_ENOUGH_LUX:F = 450.0f

.field private static final TOO_DARK_LUX:F = 45.0f


# instance fields
.field private cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private lightSensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->handler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method private synthetic lambda$setTorch$0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setTorch(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setTorch(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p0, p1}, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;-><init>(ILjava/lang/Object;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/google/zxing/client/android/AmbientLightManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/AmbientLightManager;->lambda$setTorch$0(Z)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/high16 v1, 0x42340000    # 45.0f

    .line 11
    .line 12
    cmpg-float v1, p1, v1

    .line 13
    .line 14
    if-gtz v1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/AmbientLightManager;->setTorch(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 v1, 0x43e10000    # 450.0f

    .line 22
    .line 23
    cmpl-float p1, p1, v1

    .line 24
    .line 25
    if-ltz p1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/google/zxing/client/android/AmbientLightManager;->setTorch(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isAutoTorchEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/hardware/SensorManager;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x3f4ab543659b4727L    # -5450.736730857018
        -0x722f948547b48dc4L
    .end array-data
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/hardware/SensorManager;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/zxing/client/android/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    .line 33
    .line 34
    :cond_0
    return-void

    :array_0
    .array-data 8
        0x552fa8767b4a18b4L    # 2.2158115217853188E102
        0x2141dd73f7765473L
    .end array-data
.end method
