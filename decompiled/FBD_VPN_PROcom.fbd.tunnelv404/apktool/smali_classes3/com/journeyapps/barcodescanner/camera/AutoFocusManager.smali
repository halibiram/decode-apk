.class public final Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x7d0L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AutoFocusManager"


# instance fields
.field private MESSAGE_FOCUS:I

.field private final autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final camera:Landroid/hardware/Camera;

.field private final focusHandlerCallback:Landroid/os/Handler$Callback;

.field private focusing:Z

.field private handler:Landroid/os/Handler;

.field private stopped:Z

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 8
    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v3, v1, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x7f3fcd81083b0fb8L    # 8.723691645558951E304
        -0x486f43a13fa91f22L    # -4.802945018456321E-41
    .end array-data

    .line 46
    .line 47
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
    :array_1
    .array-data 8
        0x15f874bfafb92e6cL
        -0x4406db2388e801fL
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 7
    .line 8
    new-instance v2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$1;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusHandlerCallback:Landroid/os/Handler$Callback;

    .line 14
    .line 15
    new-instance v3, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager$2;-><init>(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 21
    .line 22
    new-instance v3, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isAutoFocusEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 44
    .line 45
    sget-object p2, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 46
    .line 47
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    .line 56
    .line 57
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array p2, v0, [J

    .line 60
    .line 61
    fill-array-data p2, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array p2, v0, [J

    .line 73
    .line 74
    fill-array-data p2, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->start()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :array_0
    .array-data 8
        0x741c4158a8b0aea1L    # 2.0229991248272346E251
        0x7d263ca4abf2021cL    # 7.101004289694827E294
        -0x2a47c0ce96cc7561L    # -8.68907994448666E104
        -0x573364508e17c050L
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
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
        0x72bd1fcb4018ecefL    # 4.9715341645828496E244
        -0x12b6c1bc1d8363b8L    # -2.7846568387030428E218
        -0x757761611c8745beL    # -6.40493796824551E-258
        -0x658054d98fcdec40L
    .end array-data
.end method

.method public static synthetic access$000(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$302(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusAgainLater()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized autoFocusAgainLater()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-wide/16 v2, 0x7d0

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method private cancelOutstandingTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->MESSAGE_FOCUS:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private focus()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->autoFocusAgainLater()V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x62c36b1608b167dfL    # 5.725308849877684E167
        -0x2cacaee197de63f4L    # -2.518346213702328E93
        -0x4e7f6a2d5d07f02aL    # -3.003813179313019E-70
        -0x5ce2ae83dd19bd34L
        0x6fd8ed2219ae239cL    # 6.046645965046979E230
        -0x53caf289c152fdbdL    # -9.856139184759842E-96
    .end array-data
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focus()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stopped:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->focusing:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->cancelOutstandingTask()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->useAutoFocus:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void

    :array_0
    .array-data 8
        -0x53dc6d398fa58934L    # -4.581802255316249E-96
        -0xabbc697ef075ec0L    # -7.591692674918184E256
        0x22461ec153e459L
        -0x7a66c1e0f798d8b8L
        0x6d865ee8b4d67150L    # 3.948454829759581E219
        -0x733ccf8ebd4dc656L
        0x8c1614d85945eecL
    .end array-data
.end method
