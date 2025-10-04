.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraInstance"


# instance fields
.field private cameraClosed:Z

.field private cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

.field private closer:Ljava/lang/Runnable;

.field private configure:Ljava/lang/Runnable;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private mainHandler:Landroid/os/Handler;

.field private open:Z

.field private opener:Ljava/lang/Runnable;

.field private previewStarter:Ljava/lang/Runnable;

.field private readyHandler:Landroid/os/Handler;

.field private surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 4
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 5
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 9
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 10
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 11
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 12
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 17
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 18
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 22
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 23
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->notifyError(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 2
    .line 3
    return-object p0
.end method

.method private getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private synthetic lambda$changeCameraParameters$1(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$requestPreview$2(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$requestPreview$3(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 21
    .line 22
    new-instance v1, L돶될땻든돰땵땰됨뎡딟뒀뒻땮돝뒹따땤뎡되듼딠땰뒤땧따땸땳돝돴땤딃돷땳땠딻돵땣딄땜디돵땥땹땸땐땯땯딅돰땃득딤둥둥딟돤듟돛듸땡되둑땻도땅듽뒘뎬뒨땰두딁듨뎬돳딎듨뒘뒵딄땦뎻듌듐땟돶돵듬듽땍땟듽됴딽땦뒙땹들둑뒝딸딸딤땋드딞땰듽뎰딜될땹땩뎨딄돴뒹뒘따뒀땭땹돨듔땡두땯됩돷뒤;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, p0, p1, v2}, L돶될땻든돰땵땰됨뎡딟뒀뒻땮돝뒹따땤뎡되듼딠땰뒤땧따땸땳돝돴땤딃돷땳땠딻돵땣딄땜디돵땥땹땸땐땯땯딅돰땃득딤둥둥딟돤듟돛듸땡되둑땻도땅듽뒘뎬뒨땰두딁듨뎬돳딎듨뒘뒵딄땦뎻듌듐땟돶돵듬듽땍땟듽됴딽땦뒙땹들둑뒝딸딸딤땋드딞땰듽뎰딜될땹땩뎨딄돴뒹뒘따뒀땭땹돨듔땡두땯됩돷뒤;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x33545bfa631e51efL    # 1.9796276359954893E-61
        0x75d9b87fe6b051e5L    # 4.943324165971868E259
        0x7a68e913ee6f3b27L    # 4.5217621803265385E281
        -0x3bf88b1e4f4a1598L    # -5.4087165096105935E19
        -0x55db6ab5e6d34e27L
        0x3605dc473b762bcdL    # 1.869691877161907E-48
    .end array-data
.end method

.method private synthetic lambda$setTorch$0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setTorch(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private notifyError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private validateOpen()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :array_0
    .array-data 8
        -0x1ba9e3b14a050af7L    # -2.1874470587598284E175
        0x62386773d6aa933eL
        -0xe5a1d369b0c1913L    # -2.850300793283092E239
        -0x8be2e35c49bdb88L
        0x75df1f805251df97L    # 5.981614976369888E259
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$setTorch$0(Z)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$requestPreview$2(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$requestPreview$3(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$changeCameraParameters$1(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    return-void
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 9
    .line 10
    new-instance v1, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;

    .line 11
    .line 12
    const/16 v2, 0xc

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, v2}, L뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 21
    .line 22
    return-void
.end method

.method public configureCamera()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getCameraManager()Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getCameraRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCameraThread()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurface()Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCameraClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 2
    .line 3
    return v0
.end method

.method public open()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->incrementAndEnqueue(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, L돶될땻든돰땵땰됨뎡딟뒀뒻땮돝뒹따땤뎡되듼딠땰뒤땧따땸땳돝돴땤딃돷땳땠딻돵땣딄땜디돵땥땹땸땐땯땯딅돰땃득딤둥둥딟돤듟돛듸땡되둑땻도땅듽뒘뎬뒨땰두딁듨뎬돳딎듨뒘뒵딄땦뎻듌듐땟돶돵듬듽땍땟듽됴딽땦뒙땹들둑뒝딸딸딤땋드딞땰듽뎰딜될땹땩뎨딄돴뒹뒘따뒀땭땹돨듔땡두땯됩돷뒤;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, L돶될땻든돰땵땰됨뎡딟뒀뒻땮돝뒹따땤뎡되듼딠땰뒤땧따땸땳돝돴땤딃돷땳땠딻돵땣딄땜디돵땥땹땸땐땯땯딅돰땃득딤둥둥딟돤듟돛듸땡되둑땻도땅듽뒘뎬뒨땰두딁듨뎬돳딎듨뒘뒵딄땦뎻듌듐땟돶돵듬듽땍땟듽됴딽땦뒙땹들둑뒝딸딸딤땋드딞땰듽뎰딜될땹땩뎨딄돴뒹뒘따뒀땭땹돨듔땡두땯됩돷뒤;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setReadyHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTorch(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 9
    .line 10
    new-instance v1, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2, p0, p1}, L뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮;-><init>(ILjava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
