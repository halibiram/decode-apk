.class public Lapp/tunnel/ssh2/tunnel/SSHThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;
    }
.end annotation


# static fields
.field private static final RECONNECT_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SSHThread"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mConfig:Lconfig/Settings;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;

.field public mReconnecting:Z

.field private mRunning:Z

.field private mStarting:Z

.field private mStopping:Z

.field private mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

.field private final m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field serverAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mRunning:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mConnected:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 14
    .line 15
    new-instance p1, Lapp/tunnel/ssh2/tunnel/SSHThread$1;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lapp/tunnel/ssh2/tunnel/SSHThread$1;-><init>(Lapp/tunnel/ssh2/tunnel/SSHThread;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lapp/tunnel/ssh2/tunnel/SSHThread;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object p2, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance p1, Lconfig/Settings;

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lconfig/Settings;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mConfig:Lconfig/Settings;

    .line 41
    .line 42
    return-void
.end method

.method public static isServiceVpnRunning()Z
    .locals 2

    .line 1
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getStartingTunnelManager()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelManager()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method private static synthetic lambda$startClienteSSH$1()V
    .locals 1

    .line 1
    const-string v0, "Connected"

    .line 2
    .line 3
    invoke-static {v0, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$stopAll$0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 3
    .line 4
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->closeSSH()V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const v1, 0x7f13025a

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "Disconnected"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mRunning:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()V
    .locals 0

    .line 1
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/SSHThread;->lambda$startClienteSSH$1()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/SSHThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->lambda$stopAll$0()V

    return-void
.end method


# virtual methods
.method public declared-synchronized closeSSH()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopForwarder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public reconnectSSH()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->closeSSH()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Reconnecting"

    .line 21
    .line 22
    const-string v2, "Reconnecting.."

    .line 23
    .line 24
    invoke-static {v1, v2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v3, 0x3e8

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean v3, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v3}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    const-string v3, "Waiting for server"

    .line 49
    .line 50
    const-string v4, "Waiting for network..."

    .line 51
    .line 52
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const v3, 0x7f13025c

    .line 56
    .line 57
    .line 58
    new-array v4, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 66
    .line 67
    invoke-static {v1, v2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->startClienteSSH()V

    .line 71
    .line 72
    .line 73
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 74
    .line 75
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "<strong>"

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    const v6, 0x7f13025a

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, "</strong>"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 110
    .line 111
    const/4 v3, 0x3

    .line 112
    :goto_1
    mul-int/lit16 v3, v3, 0x3e8

    .line 113
    .line 114
    int-to-long v3, v3

    .line 115
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_1
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 120
    .line 121
    return-void

    .line 122
    :catch_2
    iput-boolean v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mReconnecting:Z

    .line 123
    .line 124
    :cond_3
    :goto_2
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    const-string v0, "</strong>"

    .line 2
    .line 3
    const-string v1, "<strong>"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 7
    .line 8
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 9
    .line 10
    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    iget-boolean v4, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    :try_start_0
    iget-object v4, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v4}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string v4, "Waiting for server"

    .line 30
    .line 31
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const v6, 0x7f13025c

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-array v4, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v6, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    .line 47
    .line 48
    const-wide/16 v4, 0x1388

    .line 49
    .line 50
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    if-lez v3, :cond_1

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const v6, 0x7f130260

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    .line 89
    .line 90
    :cond_1
    const-wide/16 v4, 0x3e8

    .line 91
    .line 92
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    .line 94
    .line 95
    :try_start_4
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->startClienteSSH()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const v6, 0x7f13025a

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v4}, Lde/blinkt/openvpn/core/TkLogStatus;->logError(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->closeSSH()V

    .line 131
    .line 132
    .line 133
    const-wide/16 v4, 0xbb8

    .line 134
    .line 135
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    .line 137
    .line 138
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catch_3
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V

    .line 142
    .line 143
    .line 144
    :cond_2
    :goto_2
    iput-boolean v2, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStarting:Z

    .line 145
    .line 146
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 147
    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    :try_start_6
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_3
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mListener:Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    invoke-interface {v0}, Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;->onStop()V

    .line 168
    .line 169
    .line 170
    :cond_4
    return-void
.end method

.method public setOnStopClienteListener(Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mListener:Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;

    .line 2
    .line 3
    return-void
.end method

.method public startClienteSSH()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mRunning:Z

    .line 6
    .line 7
    :try_start_0
    sget-object v2, Lapp/tunnel/ssh2/tunnel/SSHThread;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v3, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    invoke-direct {v3, v4}, L뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v4, 0x1f4

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mConnected:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->startTunnelVpnService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v1

    .line 27
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mConnected:Z

    .line 28
    .line 29
    throw v1
.end method

.method public startTunnelVpnService()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mConnected:Z

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/content/IntentFilter;

    .line 19
    .line 20
    const-string v3, "tunnelVpnDisconnectBroadcast"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "tunnelVpnStartBroadcast"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    invoke-virtual {v3, v4, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getdnsForward()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getVpnUdpForward()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getVpnUdpResolver()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    move-object v8, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 62
    move-object v8, v2

    .line 63
    :goto_0
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :try_start_0
    invoke-static {v2}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->serverAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    filled-new-array {v2}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getDNSEnableReplace()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x2

    .line 86
    const/4 v4, 0x1

    .line 87
    const/4 v15, 0x0

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    if-eqz v5, :cond_1

    .line 91
    .line 92
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getCustomDNSPRIMARY()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getCustomDNSSECONDARY()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-array v3, v3, [Ljava/lang/String;

    .line 101
    .line 102
    aput-object v2, v3, v15

    .line 103
    .line 104
    aput-object v6, v3, v4

    .line 105
    .line 106
    :goto_1
    move-object v6, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v2}, Lapp/tunnel/vpncommons/utils/VpnUtils;->getNetworkDnsServer(Landroid/content/Context;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-array v3, v4, [Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/String;

    .line 121
    .line 122
    aput-object v2, v3, v15

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getDNSPRIMARY()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getDNSSECONDARY()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    new-array v3, v3, [Ljava/lang/String;

    .line 136
    .line 137
    aput-object v2, v3, v15

    .line 138
    .line 139
    aput-object v6, v3, v4

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-static {v2}, Lapp/tunnel/vpncommons/utils/VpnUtils;->getNetworkDnsServer(Landroid/content/Context;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    new-array v3, v4, [Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    aput-object v2, v3, v15

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :goto_2
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/SSHThread;->isServiceVpnRunning()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const-string v7, "127.0.0.1:1080"

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelManager()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-eqz v1, :cond_4

    .line 176
    .line 177
    invoke-virtual {v1, v7}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->restartTunnel(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    return-void

    .line 181
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .line 182
    .line 183
    iget-object v3, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    const-class v10, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 186
    .line 187
    invoke-direct {v2, v3, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .line 189
    .line 190
    const/high16 v3, 0x10000000

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    .line 194
    .line 195
    new-instance v14, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 196
    .line 197
    if-eqz v5, :cond_6

    .line 198
    .line 199
    if-eqz v8, :cond_7

    .line 200
    .line 201
    :cond_6
    if-nez v5, :cond_8

    .line 202
    .line 203
    if-eqz v8, :cond_8

    .line 204
    .line 205
    :cond_7
    const/4 v10, 0x1

    .line 206
    goto :goto_3

    .line 207
    :cond_8
    const/4 v10, 0x0

    .line 208
    :goto_3
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getIsFilterApps()Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getIsFilterBypassMode()Z

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getFilterApps()[Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-static {}, Lconfig/ConfigUtil;->getIsTetheringSubnet()Z

    .line 221
    .line 222
    .line 223
    move-result v16

    .line 224
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getBypass()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    move-object v3, v14

    .line 229
    move-object v4, v7

    .line 230
    move v7, v10

    .line 231
    move v10, v11

    .line 232
    move v11, v12

    .line 233
    move-object v12, v13

    .line 234
    move/from16 v13, v16

    .line 235
    .line 236
    move-object v15, v14

    .line 237
    move v14, v1

    .line 238
    invoke-direct/range {v3 .. v14}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;-><init>(Ljava/lang/String;Z[Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;ZZ)V

    .line 239
    .line 240
    .line 241
    const-string v1, "vpnSettings"

    .line 242
    .line 243
    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-eqz v1, :cond_9

    .line 253
    .line 254
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->setStartingTunnelManager()V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_9
    const v1, 0x7f13023d

    .line 263
    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    new-array v2, v2, [Ljava/lang/Object;

    .line 267
    .line 268
    invoke-static {v1, v2}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Ljava/io/IOException;

    .line 272
    .line 273
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    const v3, 0x7f130338

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v1

    .line 286
    :catch_0
    new-instance v1, Ljava/io/IOException;

    .line 287
    .line 288
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    const v3, 0x7f1300ac

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v1

    .line 301
    :cond_a
    new-instance v1, Ljava/io/IOException;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 304
    .line 305
    .line 306
    throw v1
.end method

.method public stopAll()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mStopping:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 7
    .line 8
    new-instance v1, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-direct {v1, p0, v2}, L딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public stopForwarder()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopTunnelVpnService()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized stopTunnelVpnService()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/SSHThread;->isServiceVpnRunning()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const v1, 0x7f13023f

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelManager()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0
.end method
