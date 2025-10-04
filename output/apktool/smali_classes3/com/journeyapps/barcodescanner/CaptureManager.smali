.class public Lcom/journeyapps/barcodescanner/CaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SAVED_ORIENTATION_LOCK:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static cameraPermissionReqCode:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private askedPermission:Z

.field private barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private destroyed:Z

.field private finishWhenClosed:Z

.field private handler:Landroid/os/Handler;

.field private inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

.field private missingCameraPermissionDialogMessage:Ljava/lang/String;

.field private orientationLock:I

.field private returnBarcodeImagePath:Z

.field private showDialogIfMissingCameraPermission:Z

.field private final stateListener:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->SAVED_ORIENTATION_LOCK:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "CaptureManager"

    .line 19
    .line 20
    sput-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v0, 0xfa

    .line 23
    .line 24
    sput v0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x54ed97b3aa7c6fbeL    # -3.28741296601455E-101
        -0x510f974cd30bc390L    # -1.3514590422179308E-82
        -0x595a3ad37ca786aeL    # -1.64662384830794E-122
        -0x16cf282a923633e1L    # -5.03615622115955E198
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->showDialogIfMissingCameraPermission:Z

    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    const-wide v3, -0x414b34e7087076a3L    # -1.2393802235546394E-6

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    aput-wide v3, v1, v0

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->missingCameraPermissionDialogMessage:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 36
    .line 37
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$1;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 43
    .line 44
    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$2;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/CaptureManager$2;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->stateListener:Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    .line 52
    .line 53
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->addStateListener(Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance p2, Lcom/google/zxing/client/android/InactivityTimer;

    .line 72
    .line 73
    new-instance v1, L돷듼듬땣땡뒻땁된뒨땪딎딹뒹듰뒘뒙땥득땦딤딄돳땀둣땤땦땥딟땠뎡뎻뒘땱듌됴땦딀돶듟듔됴땩듼딞딞둣땲땅뒛땄됨뒵뒛두득듟듰땥뒻땬돠땵될돶돝둠딜땲됐땐도땟뎬됐딀뒼뒘디돰뒷뒋땜돛땧듌뒐땹딐듨땹땪땸땮딜들땬됫돵딁뒐뒘돶딐뒉땳땧듐듟뒋땋듟될됫돠땭딎뎠딨돷땤두뒻득따뒵땸돳딨둔듸;

    .line 74
    .line 75
    invoke-direct {v1, p0, v0}, L돷듼듬땣땡뒻땁된뒨땪딎딹뒹듰뒘뒙땥득땦딤딄돳땀둣땤땦땥딟땠뎡뎻뒘땱듌됴땦딀돶듟듔됴땩듼딞딞둣땲땅뒛땄됨뒵뒛두득듟듰땥뒻땬돠땵될돶돝둠딜땲됐땐도땟뎬됐딀뒼뒘디돰뒷뒋땜돛땧듌뒐땹딐듨땹땪땸땮딜들땬됫돵딁뒐뒘돶딐뒉땳땧듐듟뒋땋듟될됫돠땭딎뎠딨돷땤두뒻득따뒵땸돳딨둔듸;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;I)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p1, v1}, Lcom/google/zxing/client/android/InactivityTimer;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 82
    .line 83
    new-instance p2, Lcom/google/zxing/client/android/BeepManager;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 89
    .line 90
    return-void
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/google/zxing/client/android/BeepManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/journeyapps/barcodescanner/CaptureManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/CaptureManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$600(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getBarcodeImagePath(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBitmap()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/io/FileOutputStream;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 55
    .line 56
    const/16 v3, 0x64

    .line 57
    .line 58
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    new-array v1, v1, [J

    .line 75
    .line 76
    fill-array-data v1, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    return-object p1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x8c6aea24c97a4f1L    # -2.040904892693194E266
        -0x4c15ed92e6710559L    # -1.2979705010810898E-58
        0x233823fa8dec77d9L    # 5.067911553059985E-139
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        -0x2af969458e9c5c61L    # -3.952586452935061E101
        -0x2431300ff06c04bdL    # -1.7496516731551078E134
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_2
    .array-data 8
        0x389a621d542cc4e4L    # 4.962139697960007E-36
        0x70fb324cd4532be0L    # 1.729455502765826E236
        0xfe26794194eb58cL    # 3.704587174075438E-232
        0x7b5240ec276d70c2L    # 1.0857366773021516E286
        -0x7d7023c8f0e1713L    # -6.601373902322835E270
        -0x3a22d70bb3a2c6c3L    # -3.6098303934781717E28
        -0x25982060ccd2652bL    # -3.232099295389871E127
        0x1fbff0c7965933c2L
    .end array-data
.end method

.method public static getCameraPermissionReqCode()I
    .locals 1

    .line 1
    sget v0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    .line 2
    .line 3
    return v0
.end method

.method private synthetic lambda$displayFrameworkBugMessageAndExit$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$displayFrameworkBugMessageAndExit$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 8
        0x20bb40cd8fe32ebL
        -0x460437f0bfff2eceL    # -2.191572558851915E-29
        -0x18689a0a00807773L    # -1.042512552043334E191
        0x7be6b68719de6fb2L    # 6.917040849543854E288
        -0x33576f291c973bf4L    # -1.97378423791607E61
    .end array-data
.end method

.method private openCameraWithPermission()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 35
    .line 36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    filled-new-array {v1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget v2, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->askedPermission:Z

    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void

    .line 63
    :array_0
    .array-data 8
        0x5ac5ec723950c495L    # 1.899592218354416E129
        -0xe4069b5ef04e72cL    # -8.227461838519114E239
        0x7636dfa15f1e97adL    # 2.813519581016335E261
        -0x619ab54dba4f437eL
        0xb73bdf6c6132aL
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x49f31675a1c249c2L    # -2.472822031258315E-48
        0x187684a3ff197c2aL    # 7.896870740896063E-191
        0x60f267603e7d74cdL    # 1.0107075819293198E159
        -0x874a738d5749481L    # -7.054276900023314E267
        0x3d4f5141deb80939L    # 2.2252359134973737E-13
    .end array-data
.end method

.method public static resultIntent(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x80000

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    fill-array-data v4, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    new-array v5, v4, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getRawBytes()[B

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    array-length v5, v2

    .line 82
    if-lez v5, :cond_0

    .line 83
    .line 84
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v4, [J

    .line 87
    .line 88
    fill-array-data v6, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getResultMetadata()Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 108
    .line 109
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_1

    .line 114
    .line 115
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v6, v0, [J

    .line 118
    .line 119
    fill-array-data v6, :array_4

    .line 120
    .line 121
    .line 122
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    :cond_1
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 141
    .line 142
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Ljava/lang/Number;

    .line 147
    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v6, v4, [J

    .line 153
    .line 154
    fill-array-data v6, :array_5

    .line 155
    .line 156
    .line 157
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    :cond_2
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 172
    .line 173
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v2, :cond_3

    .line 180
    .line 181
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v3, v3, [J

    .line 184
    .line 185
    fill-array-data v3, :array_6

    .line 186
    .line 187
    .line 188
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    :cond_3
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 199
    .line 200
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    check-cast p0, Ljava/lang/Iterable;

    .line 205
    .line 206
    if-eqz p0, :cond_4

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    const/4 v2, 0x0

    .line 213
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_4

    .line 218
    .line 219
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, [B

    .line 224
    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v7, v0, [J

    .line 233
    .line 234
    fill-array-data v7, :array_7

    .line 235
    .line 236
    .line 237
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_4
    if-eqz p1, :cond_5

    .line 261
    .line 262
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 263
    .line 264
    new-array v0, v4, [J

    .line 265
    .line 266
    fill-array-data v0, :array_8

    .line 267
    .line 268
    .line 269
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    :cond_5
    return-object v1

    .line 280
    nop

    .line 281
    :array_0
    .array-data 8
        -0x4381f4c7e3c2982eL    # -2.6058864203126967E-17
        0x71d904be0eb1f1aeL
        -0x5c4d18bc9a94a23cL
        0x6de38ca3afdc067L    # 1.363907199980013E-275
        -0x1b23cfaed1de7354L    # -7.139258432046492E177
        0x6b8920a7820022d5L    # 1.0326121816958882E210
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_1
    .array-data 8
        -0x65bd0274e8e4701eL    # -3.57541803746567E-182
        0x5fefcb5ea3d47534L
        0x48bf3fa28dd706a7L    # 2.722134724411006E42
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_2
    .array-data 8
        -0x3f5659acfe1cfda5L    # -3283.162123769796
        -0x13badb34d87a8071L    # -3.5590037243368574E213
        -0x61ab4dd9998dcf61L
        -0x9903adc35b2d89dL
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_3
    .array-data 8
        -0x218c5129cad6fe2fL    # -9.831238322130255E146
        0x564889a97485ab4L
        -0x3ad9c342c4b2769eL    # -1.3441600364173314E25
        -0x1dba5b819293a803L    # -2.492620424258504E165
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_4
    .array-data 8
        -0x42e558b0537ea930L
        0x7ed04be6f809b5a1L    # 6.984733030452205E302
        0x66a0f7dbe675b14aL    # 2.3071885425241535E186
        -0x363aa88b51daf3f4L    # -2.436782706062334E47
        -0x3ac7a9cdbb9bbf65L    # -2.94212704536165E25
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_5
    .array-data 8
        0x3776eb493c1a52aL
        0x700c4c74106565acL    # 5.491769987208332E231
        0x7cfbcad81f88bca4L    # 1.1093822587995989E294
        -0x27098c4f6195d222L    # -3.6235282197304925E120
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_6
    .array-data 8
        -0x2f639789b7324a60L    # -2.1052339362065987E80
        0x113bb62901d346acL
        0x2e64cf4c1b2d3005L    # 3.3474816399961325E-85
        -0x60d8087601d78560L
        -0x4024a113d7d47740L    # -0.4276686088834474
        0x12a18ee8a8fdc642L    # 6.217475504179489E-219
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_7
    .array-data 8
        0x2ac68daa86bf64bbL
        0x10e6863d34efda99L    # 2.971296305066991E-227
        0x3c7888a2d11609f0L    # 2.1279622496673217E-17
        -0x1fd3906a4289b2a3L    # -1.9063139931002194E155
        -0x1c888e191b4af824L    # -1.4156845219420134E171
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_8
    .array-data 8
        -0x2cf12148969a4315L    # -1.2576654471459183E92
        0x25fe6609a2e0201eL
        -0x26f50a42524fc62aL    # -8.702158046394671E120
        -0x3ab7f10af8b78affL    # -5.8169705557214676E25
    .end array-data
.end method

.method public static setCameraPermissionReqCode(I)V
    .locals 0

    .line 1
    sput p0, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    .line 2
    .line 3
    return-void
.end method

.method private setMissingCameraPermissionResult()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x35b96f73ff83f576L    # -6.595650567763063E49
        -0x7ca73f18b3db591dL    # -1.550320008100422E-292
        0x172f1b545f23796eL    # 5.201727216078301E-197
        -0x4acc8c0be676391aL    # -2.030982057486161E-52
        0x1cd9f11153adc0aeL
        -0x6900ea43203de484L
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x1674c4ae52d58fL
        -0x3a343f822e9e9412L    # -1.7177606361484324E28
        -0x5fd41d9d14dfc40eL
        -0x2a2d8907fc7d4134L    # -2.646800881058264E105
        0x9dcfedd10ec7da9L
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/journeyapps/barcodescanner/CaptureManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CaptureManager;->lambda$displayFrameworkBugMessageAndExit$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/journeyapps/barcodescanner/CaptureManager;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->lambda$displayFrameworkBugMessageAndExit$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->lambda$new$0()V

    return-void
.end method


# virtual methods
.method public closeAndFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->isCameraClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->finish()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public decode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->callback:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeSingle(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public displayFrameworkBugMessageAndExit(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->finishWhenClosed:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 25
    .line 26
    sget v0, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 40
    .line 41
    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_app_name:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/google/zxing/client/android/R$string;->zxing_button_ok:I

    .line 54
    .line 55
    new-instance v1, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, p0, v2}, L돷땀땃듟딁둬땅듰땯듬뒙땬뒐땜뒘땝딄땡땟딜뎰듬돠땋뒛딄땻땟돳땦됨뎹듻뒬땯딀득뎻딌뒘딀뎻뒐듌돰땃둔듬듌둑땲땍딜돛딐땄땤뒤땩돠땦돼듐드땀둔딃둘뒈뎡땧땲둠땦됫딽뒘딟뒤듰뒘땍땭딨땀둠뎸땡딌뒹둘땬딌땹둡둔돵땪뒹땍땧딐뒛딎땵땵땧뒹뎽땫딽땄듨딻딨둔땅둑딄뒹둑돠뒘든딨땠뎽뒬뒤둡;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    new-instance p1, L돷땅딹뒝땳딻돵돼뒹딹땫돸딄땨땹뒬뒾돛딎된디뒻딹딸땸뒉뒀돨딃들돷돳딝됐둘땟땀듨땦돠돸뒾듌두둔뎡든땩땀돛땲듟돝뒨땪득딃땣듻돶딸뒀된땦딁땍돶땅됐뎨딻둠둑땱땧딤땃땵딹딀땧딀땦둬딟돼뒘땲뒹땪땁땋딀땦듬딄뒝땃딸땍돸돛뒝돸땀듟딁든될딸땭뒉땹둑되뒨듼듨땜듼땯됨땀땻뒬듬듨돳드될;

    .line 65
    .line 66
    invoke-direct {p1, p0}, L돷땅딹뒝땳딻돵돼뒹딹땫돸딄땨땹뒬뒾돛딎된디뒻딹딸땸뒉뒀돨딃들돷돳딝됐둘땟땀듨땦돠돸뒾듌두둔뎡든땩땀돛땲듟돝뒨땪득딃땣듻돶딸뒀된땦딁땍돶땅됐뎨딻둠둑땱땧딤땃땵딹딀땧딀땦둬딟돼뒘땲뒹땪땁땋딀땦듬딄뒝땃딸땍돸돛뒝돸땀듟딁든될딸땭뒉땹둑되뒨듼듨땜듼땯됨땀땻뒬듬듨돳드될;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x6

    .line 5
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/16 v5, 0x80

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v5, v2, [J

    .line 21
    .line 22
    fill-array-data v5, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, -0x1

    .line 33
    invoke-virtual {p2, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 38
    .line 39
    :cond_0
    if-eqz p1, :cond_6

    .line 40
    .line 41
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v2, [J

    .line 44
    .line 45
    fill-array-data v4, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->lockOrientation()V

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v4, v3, [J

    .line 67
    .line 68
    fill-array-data v4, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v4, 0x3

    .line 96
    new-array v4, v4, [J

    .line 97
    .line 98
    fill-array-data v4, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    const/4 v4, 0x0

    .line 113
    if-nez p2, :cond_3

    .line 114
    .line 115
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 116
    .line 117
    invoke-virtual {p2, v4}, Lcom/google/zxing/client/android/BeepManager;->setBeepEnabled(Z)V

    .line 118
    .line 119
    .line 120
    :cond_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v5, v3, [J

    .line 123
    .line 124
    fill-array-data v5, :array_4

    .line 125
    .line 126
    .line 127
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_4

    .line 139
    .line 140
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v5, v3, [J

    .line 143
    .line 144
    fill-array-data v5, :array_5

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v3, v3, [J

    .line 161
    .line 162
    fill-array-data v3, :array_6

    .line 163
    .line 164
    .line 165
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {p0, p2, v3}, Lcom/journeyapps/barcodescanner/CaptureManager;->setShowMissingCameraPermissionDialog(ZLjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v3, v0, [J

    .line 182
    .line 183
    fill-array-data v3, :array_7

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-eqz p2, :cond_5

    .line 198
    .line 199
    iget-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    .line 200
    .line 201
    new-instance v3, L돷듼듬땣땡뒻땁된뒨땪딎딹뒹듰뒘뒙땥득땦딤딄돳땀둣땤땦땥딟땠뎡뎻뒘땱듌됴땦딀돶듟듔됴땩듼딞딞둣땲땅뒛땄됨뒵뒛두득듟듰땥뒻땬돠땵될돶돝둠딜땲됐땐도땟뎬됐딀뒼뒘디돰뒷뒋땜돛땧듌뒐땹딐듨땹땪땸땮딜들땬됫돵딁뒐뒘돶딐뒉땳땧듐듟뒋땋듟될됫돠땭딎뎠딨돷땤두뒻득따뒵땸돳딨둔듸;

    .line 202
    .line 203
    invoke-direct {v3, p0, v1}, L돷듼듬땣땡뒻땁된뒨땪딎딹뒹듰뒘뒙땥득땦딤딄돳땀둣땤땦땥딟땠뎡뎻뒘땱듌됴땦딀돶듟듔됴땩듼딞딞둣땲땅뒛땄됨뒵뒛두득듟듰땥뒻땬돠땵될돶돝둠딜땲됐땐도땟뎬됐딀뒼뒘디돰뒷뒋땜돛땧듌뒐땹딐듨땹땪땸땮딜들땬됫돵딁뒐뒘돶딐뒉땳땧듐듟뒋땋듟될됫돠땭딎뎠딨돷땤두뒻득따뒵땸돳딨둔듸;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager;I)V

    .line 204
    .line 205
    .line 206
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    new-array v0, v0, [J

    .line 209
    .line 210
    fill-array-data v0, :array_8

    .line 211
    .line 212
    .line 213
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const-wide/16 v5, 0x0

    .line 221
    .line 222
    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 223
    .line 224
    .line 225
    move-result-wide v5

    .line 226
    invoke-virtual {p2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    .line 228
    .line 229
    :cond_5
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array v0, v2, [J

    .line 232
    .line 233
    fill-array-data v0, :array_9

    .line 234
    .line 235
    .line 236
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_6

    .line 248
    .line 249
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->returnBarcodeImagePath:Z

    .line 250
    .line 251
    :cond_6
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 8
        -0x723f89677dd985b7L
        0x7f0eecff9bf92bb2L    # 1.0603915009581412E304
        0x52cfe8c0a5c01a13L    # 8.125020890455372E90
        -0x2ecd47ae41348029L    # -1.4205764251427784E83
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :array_1
    .array-data 8
        -0x5d56840d6961536cL
        0x19ccdcce0575b00fL    # 2.122691559378958E-184
        -0x402e67968b33ff41L    # -0.2749274864763826
        0x54d4d31f06b41b23L    # 4.554882304664043E100
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_2
    .array-data 8
        0x674119b7c63eb3fdL    # 2.3809764166800266E189
        -0x7f9bdbb445dcdf57L    # -8.963389852569043E-307
        -0x47e604a12b8f56b0L    # -1.9088496983906495E-38
        0xe4758625d7542f0L    # 7.002159688421536E-240
        0x625ebeeaf64086cdL    # 7.082116151230144E165
        0x3a41c0d3d4588cd9L    # 4.481545879117861E-28
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_3
    .array-data 8
        -0x729e7d23433936deL    # -3.205744858602367E-244
        0x447b9414117183b6L    # 8.139716201384707E21
        0x7afe346f9b9d36f6L    # 2.8071931221885484E284
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_4
    .array-data 8
        -0xedc70d174a9947dL    # -9.95038765707307E236
        0x2a671a0504afd02eL
        -0x51efbb8945dcd018L    # -8.17749676709346E-87
        0x8727a4122467315L
        0x25b8406887cfd67dL    # 5.597861454151003E-127
        -0x6c7d92c322020c5eL
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_5
    .array-data 8
        -0x4001fac6c369ea99L    # -1.876275288262457
        0x46fad0b4c01f398aL    # 8.702048752974246E33
        -0x22f8cb13f8293f7cL
        -0x5125465616bacedfL    # -5.502790310030546E-83
        0x638a9060b6957a90L    # 3.208046279873746E171
        0x47e58f08bc575acbL    # 2.2925170834768043E38
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :array_6
    .array-data 8
        0x62a080da42ac3c54L    # 1.2164638432883926E167
        0xefc287ee0a755e0L
        0x4dbf51246ebba499L    # 3.2980610538628034E66
        0x58fa9c6f3943665dL    # 4.2947773616270114E120
        -0x6c8525df331010dL    # -8.197958573690683E275
        -0x9b517d494dbb333L    # -6.619270299995983E261
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_7
    .array-data 8
        -0x3a6da64c62ba978dL    # -1.419793194867635E27
        0x23dc79c76aa41ed2L
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_8
    .array-data 8
        0x5657d066a1fadea4L    # 8.738804404739271E107
        -0x579910752adb8749L    # -4.656760278215562E-114
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_9
    .array-data 8
        0x195fafc4a6816321L    # 1.820615608576674E-186
        0x1fd8323cbec8ed8cL    # 2.819746841429622E-155
        0x5d33fb86320e19d8L    # 9.518492376477726E140
        -0xd8020123762e132L
    .end array-data
.end method

.method public lockOrientation()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    if-ne v0, v4, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/16 v3, 0x8

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-ne v1, v4, :cond_4

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    if-ne v0, v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 v3, 0x9

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 57
    :cond_4
    :goto_1
    iput v3, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 60
    .line 61
    iget v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->destroyed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    sget p2, Lcom/journeyapps/barcodescanner/CaptureManager;->cameraPermissionReqCode:I

    .line 2
    .line 3
    if-ne p1, p2, :cond_2

    .line 4
    .line 5
    array-length p1, p3

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    aget p1, p3, p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->setMissingCameraPermissionResult()V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->showDialogIfMissingCameraPermission:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->missingCameraPermissionDialogMessage:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->displayFrameworkBugMessageAndExit(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->closeAndFinish()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->openCameraWithPermission()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->barcodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->inactivityTimer:Lcom/google/zxing/client/android/InactivityTimer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/zxing/client/android/InactivityTimer;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->orientationLock:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x2c3c2943d1b3fbb1L    # -3.310581144049813E95
        0x6c20ac458e2902ecL    # 7.016152877831441E212
        -0x6170393d66667481L
        0x332b6eece756454L
    .end array-data
.end method

.method public returnResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->getBarcodeImagePath(Lcom/journeyapps/barcodescanner/BarcodeResult;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->resultIntent(Lcom/journeyapps/barcodescanner/BarcodeResult;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->closeAndFinish()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public returnResultTimeout()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->activity:Landroid/app/Activity;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->closeAndFinish()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x5c2f2450a4467dd3L    # 1.1317553259982696E136
        0x30c9b6de5b3be21eL    # 1.1370152525925185E-73
        -0x25e99f11435d6520L    # -9.467862668620613E125
        0x28812b8abf552b0eL
        0x64d0a7c8e5a6e1a8L    # 4.218254380214257E177
        0xc6e7fbbaa705748L
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x769fbbfbeb93ee1L    # 6.00384994580782E-273
        0x1cc57b651c245f0dL    # 4.447002817210898E-170
    .end array-data
.end method

.method public setShowMissingCameraPermissionDialog(Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, -0x3d0c7e229081e207L    # -3.4317578848713556E14

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->setShowMissingCameraPermissionDialog(ZLjava/lang/String;)V

    return-void
.end method

.method public setShowMissingCameraPermissionDialog(ZLjava/lang/String;)V
    .locals 3

    .line 2
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->showDialogIfMissingCameraPermission:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x1

    new-array p2, p2, [J

    const-wide v0, 0x2ea916b6e032ef3eL    # 6.45728360177853E-84

    const/4 v2, 0x0

    aput-wide v0, p2, v2

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager;->missingCameraPermissionDialogMessage:Ljava/lang/String;

    return-void
.end method
