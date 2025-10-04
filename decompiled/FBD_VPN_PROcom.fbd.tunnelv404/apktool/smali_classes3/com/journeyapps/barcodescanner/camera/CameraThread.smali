.class Lcom/journeyapps/barcodescanner/camera/CameraThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field private static instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private openCount:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method private checkRunning()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 13
    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    new-array v3, v3, [J

    .line 18
    .line 19
    fill-array-data v3, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_1
    :goto_0
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw v1

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x291e734e29d21010L    # -3.297276485673956E110
        0x38b54afdc158d5d9L    # 1.6019023497499583E-35
        -0xe7e66b795afd7afL    # -5.729921572894798E238
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_1
    .array-data 8
        -0x28c70178e115026dL    # -1.502721504181202E112
        -0x23a4cf6a4d8835bcL    # -7.905035223873685E136
        0x31a50ad9db023f45L    # 1.524424808871168E-69
        0x6e675b42d991ae64L    # 6.754206760196434E223
    .end array-data
.end method

.method public static getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->instance:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 13
    .line 14
    return-object v0
.end method

.method private quit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->thread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method


# virtual methods
.method public decrementInstances()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->quit()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public enqueueDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->checkRunning()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public incrementAndEnqueue(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraThread;->openCount:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
