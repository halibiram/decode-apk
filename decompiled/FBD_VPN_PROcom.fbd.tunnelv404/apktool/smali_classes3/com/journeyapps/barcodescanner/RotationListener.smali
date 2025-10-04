.class public Lcom/journeyapps/barcodescanner/RotationListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/RotationCallback;

.field private lastRotation:I

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/journeyapps/barcodescanner/RotationListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/journeyapps/barcodescanner/RotationListener;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public listen(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/RotationListener;->stop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 9
    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/view/WindowManager;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 32
    .line 33
    new-instance p2, Lcom/journeyapps/barcodescanner/RotationListener$1;

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-direct {p2, p0, p1, v0}, Lcom/journeyapps/barcodescanner/RotationListener$1;-><init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/OrientationEventListener;->enable()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 45
    .line 46
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/journeyapps/barcodescanner/RotationListener;->lastRotation:I

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        0x27f1c1d97e70fa43L
        -0x3f830aa1db8ee008L    # -463.3354839724484
    .end array-data
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->windowManager:Landroid/view/WindowManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener;->callback:Lcom/journeyapps/barcodescanner/RotationCallback;

    .line 14
    .line 15
    return-void
.end method
