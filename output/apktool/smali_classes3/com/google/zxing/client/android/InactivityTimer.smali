.class public final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "InactivityTimer"


# instance fields
.field private callback:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private onBattery:Z

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p0, p2}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$100(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/zxing/client/android/InactivityTimer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/InactivityTimer;->onBattery(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private cancelCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private onBattery(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x6

    .line 14
    new-array v4, v4, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x652398014b276bfL    # 3.21278950908711E-278
        0x38c1d498c1f6533eL    # 2.6828288229751005E-35
        -0x5cac09aecd07ec75L    # -1.676292857046953E-138
        -0x2c359d82016fea22L    # -4.4029259338037465E95
        0x59b0e657e2122743L    # 1.1171699441733432E124
        -0x730afc21cad07302L    # -3.005627877024728E-246
    .end array-data
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->registered:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public activity()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->onBattery:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->callback:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/32 v2, 0x493e0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancelCallback()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->unregisterReceiver()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->registerReceiver()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->activity()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
