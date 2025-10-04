.class public Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$ManagerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TunnelManager"

.field public static final VPN_SETTINGS:Ljava/lang/String; = "vpnSettings"


# instance fields
.field private mSettings:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

.field private final m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

.field private m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

.field private m_tunnelThread:Ljava/lang/Thread;

.field private m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 6
    .line 7
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-static {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->newTunnel(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;)Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 29
    .line 30
    return-void
.end method

.method private runTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 9

    .line 1
    const-string v0, "Start tunnel failed: "

    .line 2
    .line 3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    move v6, p3

    .line 15
    move-object v7, p4

    .line 16
    move v8, p5

    .line 17
    invoke-virtual/range {v3 .. v8}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->startTunneling(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_1
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_5

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    :goto_1
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stopTunneling()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 65
    .line 66
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stop()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    .line 77
    .line 78
    .line 79
    :goto_2
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/Exception;

    .line 86
    .line 87
    const-string p2, "application is not prepared or revoked"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_4
    return-void

    .line 120
    :goto_5
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 129
    .line 130
    invoke-virtual {p2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stopTunneling()V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_2
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 135
    .line 136
    invoke-virtual {p2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stop()V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 140
    .line 141
    invoke-virtual {p2, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V

    .line 147
    .line 148
    .line 149
    :goto_6
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    .line 151
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method

.method private startTunnel()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Thread;

    .line 10
    .line 11
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->mSettings:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->runTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f130024

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVpnService()Landroid/net/VpnService;
    .locals 1

    .line 2
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    return-object v0
.end method

.method public bridge synthetic getVpnService()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->getVpnService()Landroid/net/VpnService;

    move-result-object v0

    return-object v0
.end method

.method public newVpnServiceBuilder()Landroid/net/VpnService$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->newBuilder()Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newVpnServiceBuilder()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->newVpnServiceBuilder()Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 24
    .line 25
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThread:Ljava/lang/Thread;

    .line 26
    .line 27
    return-void
.end method

.method public onDiagnosticMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 7
    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    const-string p3, "vpnSettings"

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 17
    .line 18
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->mSettings:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 25
    .line 26
    .line 27
    return p2

    .line 28
    :cond_1
    iget-object p3, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 29
    .line 30
    if-nez p3, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 35
    .line 36
    .line 37
    return p2

    .line 38
    :cond_2
    iget-object p3, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 39
    .line 40
    if-nez p3, :cond_3

    .line 41
    .line 42
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 45
    .line 46
    .line 47
    return p2

    .line 48
    :cond_3
    :try_start_0
    iget-object p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->startRouting(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v0, "Failed to establish VPN: "

    .line 70
    .line 71
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 83
    return p1
.end method

.method public onTunnelConnected()V
    .locals 1

    .line 1
    const-string v0, "<strong>VPN Connected</strong>"

    .line 2
    .line 3
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVpnEstablished()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->startTunnel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public restartTunnel(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->mSettings:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 5
    .line 6
    iget-object v1, v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->mSettings:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 16
    .line 17
    iput-object p1, v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_parentService:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnStart(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public signalStopService()V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->m_tunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
