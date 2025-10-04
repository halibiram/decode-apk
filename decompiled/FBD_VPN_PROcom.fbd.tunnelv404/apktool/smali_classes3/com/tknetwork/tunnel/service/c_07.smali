.class public Lcom/tknetwork/tunnel/service/c_07;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ConnectionMonitor;
.implements Lcom/trilead/ssh2/InteractiveCallback;
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;
.implements Lcom/trilead/ssh2/DebugLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;
    }
.end annotation


# static fields
.field private static final AUTH_PASSWORD:Ljava/lang/String;

.field private static final AUTH_PUBLICKEY:Ljava/lang/String;

.field private static final AUTH_TRIES:I = 0x1

.field private static final RECONNECT_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field public static final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I


# instance fields
.field private dnsForwarder:Lcom/trilead/ssh2/LocalPortForwarder;

.field private dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

.field private lastPingLatency:J

.field private final mConfig:Lconfig/ConfigUtil;

.field private mConnected:Z

.field private mConnection:Lcom/trilead/ssh2/Connection;

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

.field public mReconnecting:Z

.field private mStarting:Z

.field private mStopping:Z

.field private mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

.field private thPing:Ljava/lang/Thread;

.field private useProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_07;->AUTH_PUBLICKEY:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/service/c_07;->AUTH_PASSWORD:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "c_07"

    .line 36
    .line 37
    sput-object v0, Lcom/tknetwork/tunnel/service/c_07;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x5f0821e325089d34L    # -7.291408406907303E-150
        0x22b53825493d3275L
        -0x38eca768196b6dfbL    # -2.511263179274639E34
    .end array-data

    .line 42
    .line 43
    .line 44
    .line 45
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
        -0x3d6c912322e13ba7L    # -5.341718202289087E12
        0x17a4b7b59db76a23L    # 8.868957466294082E-195
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/tknetwork/tunnel/service/c_07;->lastPingLatency:J

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->useProxy:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 26
    .line 27
    return-void
.end method

.method private addProxy(Lcom/trilead/ssh2/Connection;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->useProxy:Z

    .line 3
    .line 4
    new-instance v0, Lcom/trilead/ssh2/HTTPProxyData;

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x231d

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x5c5cf446aa9e4533L    # 8.418014471429443E136
        -0x5e4863f1ffdbe11bL
        0x6a68361b0ed88018L    # 3.7954745685356303E204
    .end array-data
.end method

.method private synthetic lambda$startForwarder$0()V
    .locals 5

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_1
    const-wide/16 v0, 0x7d0

    .line 7
    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_07;->lastPingLatency:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-wide v1, p0, Lcom/tknetwork/tunnel/service/c_07;->lastPingLatency:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v1, v2, v3

    .line 45
    .line 46
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x429f36818640a434L    # -4.771176837192011E-13
        0x1a5a5520f33a21eL
        0x172a24c1dcbf7c3aL
        0x7a6a2d7216d71158L    # 4.751760010323766E281
    .end array-data
.end method

.method private mReconnectSSH()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 8
    .line 9
    if-nez v2, :cond_3

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v3, v1, [J

    .line 40
    .line 41
    fill-array-data v3, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const v5, 0x7f1301a7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x5

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v2, 0x1

    .line 66
    iput-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v0, [J

    .line 71
    .line 72
    fill-array-data v3, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const v5, 0x7f1301d3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :try_start_1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_07;->startClienteSSH()V

    .line 95
    .line 96
    .line 97
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 98
    .line 99
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    return-void

    .line 102
    :catch_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 103
    .line 104
    invoke-interface {v2}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V

    .line 105
    .line 106
    .line 107
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 108
    .line 109
    const/4 v2, 0x3

    .line 110
    :goto_1
    mul-int/lit16 v2, v2, 0x3e8

    .line 111
    .line 112
    int-to-long v2, v2

    .line 113
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_1
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 118
    .line 119
    return-void

    .line 120
    :catch_2
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 121
    .line 122
    :cond_3
    :goto_2
    return-void

    .line 123
    :array_0
    .array-data 8
        -0x2e2dd787fcf47178L    # -1.4110055824023322E86
        -0x42213d765a3962c0L
        0x1f90e65825cdfd43L
        0x57d1a1917063f17L
        0xcdb3e34bcb492d9L    # 9.74088397275052E-247
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        0x2c5cb80514e53facL    # 5.378090233030369E-95
        0x79ec95af0b06544bL    # 2.0268409484901562E279
        0x6a4b686f33ac312L
    .end array-data
.end method

.method private declared-synchronized startForwarderSocks(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v4, v2, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v4, v2, [J

    .line 29
    .line 30
    fill-array-data v4, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-array v5, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    aput-object v4, v5, v6

    .line 48
    .line 49
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_1
    new-instance v3, Ljava/net/ServerSocket;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 65
    .line 66
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v2, v2, [J

    .line 69
    .line 70
    fill-array-data v2, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const/16 v3, 0x1bb

    .line 81
    .line 82
    const/16 v4, 0x1f75

    .line 83
    .line 84
    invoke-virtual {v1, v4, v2, v3}, Lcom/trilead/ssh2/Connection;->createLocalPortForwarder(ILjava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->dnsForwarder:Lcom/trilead/ssh2/LocalPortForwarder;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 91
    .line 92
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 93
    .line 94
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v0, [J

    .line 97
    .line 98
    fill-array-data v4, :array_3

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_3

    .line 120
    :catch_0
    move-exception p1

    .line 121
    goto :goto_0

    .line 122
    :catch_1
    move-exception p1

    .line 123
    goto :goto_1

    .line 124
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v0, v0, [J

    .line 132
    .line 133
    fill-array-data v0, :array_4

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logError(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Ljava/lang/Exception;

    .line 161
    .line 162
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 163
    .line 164
    .line 165
    throw p1

    .line 166
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    :goto_2
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/Exception;

    .line 172
    .line 173
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    throw p1

    .line 179
    :array_0
    .array-data 8
        0x194311a1cd023b7bL    # 5.478198646524488E-187
        -0x5a8e6d174a84fd86L    # -2.535298509361912E-128
        -0x5354a2c46d1828acL
        -0x66a6d532768ef0adL
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        -0x2dd5496f4adec7bcL    # -6.642534002740124E87
        0x54db1878f42496d8L    # 5.926486112926928E100
        -0x13b28b1f34e3a172L    # -4.958255452366742E213
        0xfb97f1ce1d2af27L    # 6.415116075839673E-233
    .end array-data

    :array_2
    .array-data 8
        0x76e5a8cfdb13bd3dL    # 5.456234928746246E264
        0x13fcf3eca026ed18L    # 2.150077333427248E-212
        0x699cd885e7cd1972L    # 5.5200068384154214E200
        -0x52c3ea2f1ff885b6L    # -8.617060142036615E-91
    .end array-data

    :array_3
    .array-data 8
        0x2d95441e733cb1c6L    # 4.175888865861759E-89
        0x5250622ba0bd2c1fL    # 3.259153762563534E88
        -0x584d98976ee8224aL
    .end array-data

    :array_4
    .array-data 8
        0x6c35676e79845bb4L    # 1.8014096607866635E213
        -0xf1f4bb9de4a8a43L    # -5.31119414231242E235
        -0x1ef57defd9626ee5L    # -2.9115593760259545E159
    .end array-data
.end method

.method private startPinger(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/tknetwork/tunnel/service/c_07$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/tknetwork/tunnel/service/c_07$1;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->thPing:Ljava/lang/Thread;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x37c1056f31f54cecL    # 3.907882285780136E-40
        0x40c837cd5773eeeL
        0x18be8b609b4a4fcaL    # 1.713858442198607E-189
    .end array-data
.end method

.method private stopForwarderSocks()V
    .locals 2

    .line 1
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->stopNetStat()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->dnsForwarder:Lcom/trilead/ssh2/LocalPortForwarder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/LocalPortForwarder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->dnsForwarder:Lcom/trilead/ssh2/LocalPortForwarder;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/DynamicPortForwarder;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    .line 20
    .line 21
    :catch_1
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private declared-synchronized stopPinger()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->thPing:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->thPing:Ljava/lang/Thread;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->thPing:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw v0

    .line 45
    :array_0
    .array-data 8
        0x44c5c15fc69ceaacL    # 2.054736382449984E23
        0x501f5a66292a0351L    # 9.076108563085427E77
        -0x31f9fb4db2363fc3L    # -7.42016782246787E67
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_07;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_07;->lambda$startForwarder$0()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_07;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_07;->mReconnectSSH()V

    return-void
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_07;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_07;->lastPingLatency:J

    return-wide v0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_07;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_07;)Lcom/trilead/ssh2/Connection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    return-object p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/service/c_07;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/service/c_07;->lastPingLatency:J

    return-void
.end method


# virtual methods
.method public addLogInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public autenticar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x5

    .line 5
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 6
    .line 7
    if-eqz v3, :cond_4

    .line 8
    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v4, v1, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const v5, 0x7f130254

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 36
    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    new-array v5, v5, [J

    .line 41
    .line 42
    fill-array-data v5, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, p1, v4}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v4, v2, [J

    .line 61
    .line 62
    fill-array-data v4, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 76
    .line 77
    invoke-virtual {v3, p1, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v2, [J

    .line 86
    .line 87
    fill-array-data v4, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    const/4 v4, 0x6

    .line 104
    new-array v4, v4, [J

    .line 105
    .line 106
    fill-array-data v4, :array_4

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/16 v4, 0x9

    .line 119
    .line 120
    new-array v4, v4, [J

    .line 121
    .line 122
    fill-array-data v4, :array_5

    .line 123
    .line 124
    .line 125
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 132
    .line 133
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v1, v1, [J

    .line 136
    .line 137
    fill-array-data v1, :array_6

    .line 138
    .line 139
    .line 140
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v3, p1, v1}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_2

    .line 152
    .line 153
    if-eqz p3, :cond_2

    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_2

    .line 160
    .line 161
    new-instance v1, Ljava/io/File;

    .line 162
    .line 163
    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-eqz p3, :cond_2

    .line 171
    .line 172
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    const/4 v3, 0x1

    .line 175
    new-array v3, v3, [J

    .line 176
    .line 177
    const-wide v4, 0x4dc83a6a7f1cd003L    # 5.103051898915247E66

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    const/4 v6, 0x0

    .line 183
    aput-wide v4, v3, v6

    .line 184
    .line 185
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p3

    .line 192
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p3

    .line 196
    if-eqz p3, :cond_1

    .line 197
    .line 198
    const/4 p2, 0x0

    .line 199
    :cond_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v3, v2, [J

    .line 202
    .line 203
    fill-array-data v3, :array_7

    .line 204
    .line 205
    .line 206
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    invoke-virtual {p0, p3}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 217
    .line 218
    invoke-virtual {p3, p1, v1, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_2

    .line 223
    .line 224
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array p2, v2, [J

    .line 227
    .line 228
    fill-array-data p2, :array_8

    .line 229
    .line 230
    .line 231
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :catch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    new-array p2, v0, [J

    .line 245
    .line 246
    fill-array-data p2, :array_9

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->isAuthenticationComplete()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_3

    .line 262
    .line 263
    return-void

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_07;->interrupt()V

    .line 265
    .line 266
    .line 267
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    const/16 p2, 0xb

    .line 270
    .line 271
    new-array p2, p2, [J

    .line 272
    .line 273
    fill-array-data p2, :array_a

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    const/4 p2, 0x4

    .line 289
    new-array p2, p2, [J

    .line 290
    .line 291
    fill-array-data p2, :array_b

    .line 292
    .line 293
    .line 294
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 302
    .line 303
    const p3, 0x7f130032

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-static {p1, p2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance p1, Ljava/io/IOException;

    .line 314
    .line 315
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array p3, v0, [J

    .line 318
    .line 319
    fill-array-data p3, :array_c

    .line 320
    .line 321
    .line 322
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p1

    .line 333
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 334
    .line 335
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :array_0
    .array-data 8
        0x5edebc2c67411f77L    # 9.82498362513934E148
        -0x14f51d4d73c9b0bbL    # -4.315844055007715E207
        0x2775db64c6015f59L
    .end array-data

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
    :array_1
    .array-data 8
        -0x6ca4ba70585b01aaL
        -0x4a017953b7b72b5eL    # -1.3054238847774753E-48
    .end array-data

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
    .line 366
    .line 367
    :array_2
    .array-data 8
        0x2214b57ac9d9b88L
        -0x10b9c7134fb5a73cL    # -1.0528753176763927E228
        0x658269c11b1c2001L    # 9.55068209880951E180
        -0x4a9595305793bb0L
        -0xb26ce597f90740cL    # -7.388436721411015E254
    .end array-data

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
    :array_3
    .array-data 8
        -0x73b3bdb3ddaee0b1L    # -1.973467580593024E-249
        0x281e137b3a1f9ca8L
        -0x49af91269512e573L    # -4.49756732685843E-47
        0x7aa42caf6e1def05L    # 5.859355414890803E282
        -0x78405c68e3010980L
    .end array-data

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
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_4
    .array-data 8
        -0x7df3a82f2035b127L    # -8.464486269762567E-299
        -0x79bf4c6515d7ee90L
        0x62335fbb5765ff84L    # 1.1156702911400477E165
        -0x1b2aa0e4dd5b1efeL    # -5.412683371332039E177
        0x1a9dd8b58a8afe0aL
        -0x40793ef86dda76ecL    # -0.011110362193623526
    .end array-data

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
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_5
    .array-data 8
        -0x6890734dad25dd18L
        0xd50b19df341f72L
        -0x1471d234199421a2L    # -1.240195906287589E210
        -0x6863a8a5d074a154L
        0x67aef96281fa389dL    # 2.760112553795263E191
        -0x5ff0ff97f24e0113L    # -2.890255056265794E-154
        -0x5f85f67da6a2abbL    # -6.701321923416909E279
        0x4f40514baecc41ffL    # 5.766126978981951E73
        0x3882ef1fd70345d3L    # 1.7805522875179223E-36
    .end array-data

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
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_6
    .array-data 8
        -0x461dda65f6c9f348L    # -7.157682743681367E-30
        0x69f0aae412760b74L    # 2.0413086573437382E202
        -0x19ac04ccf9bf998aL    # -8.49023967678346E184
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_7
    .array-data 8
        -0x3c40b47bd2160b49L    # -2.25504137116258893E18
        -0x2f65fe81c2f84702L    # -1.927212593256765E80
        -0x70b62b08fc529d10L    # -5.077730504051298E-235
        -0x393a19cd56ed913L    # -2.211695168007017E291
        0xbb57ed72452bb12L
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_8
    .array-data 8
        -0x5adb0f9e9eff904fL    # -9.439902780653217E-130
        -0x4b784ea6ef571d7L    # -7.280672061158441E285
        0x252acec788a7ae52L
        0x203f6019310c6347L
        0x5f47736e059a7cbaL    # 9.595493473686105E150
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_9
    .array-data 8
        0x27e25dc6bd764f34L    # 1.456644879602834E-116
        -0x2d4a32d3d5f61e2eL    # -2.7756467788463255E90
        0x348a5cbdac46d05dL    # 1.3439205692527346E-55
        -0x32637e9215322f40L    # -7.50497079707105E65
        0x219001c3d93b89e3L    # 5.007364563912769E-147
        0x3ac46428a9004a5fL    # 1.3177533500951315E-25
        -0x4a66c6a196a94c1dL    # -1.6854518979395396E-50
        0xf9be774ddd24613L    # 1.755221027690512E-233
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_a
    .array-data 8
        -0x68a2d7ecf4f73674L
        -0x5b68913c5c5f8c8L
        0x16481f2b2b534830L    # 2.46196438358146E-201
        0x20085fdea41658aL
        0x4835ee81a2e1572fL    # 7.462959078234943E39
        0x11b6741f70d702a7L
        -0x78ad58a673fc0c33L    # -2.155108647149572E-273
        -0x3eca1169eb0253cL
        0x22e39b629a275b37L    # 1.286300951866545E-140
        0x2fe6f1d4cd104a6cL    # 6.19230917650419E-78
        0x49cd54cc630a4811L    # 3.349035991170376E47
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_b
    .array-data 8
        0x5d2bfdbdac680c3aL    # 6.66667261834797E140
        0x4eaac931eba9bf38L    # 9.243480577255463E70
        0x9ba1c7765ef78e1L
        -0x3bdce12c305d9bc4L    # -1.763547423690393E20
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_c
    .array-data 8
        -0x1af9afc82bfc14e8L    # -4.520976610377961E178
        -0x56e6d264bdb38a12L
        -0x40af6bbecbc81961L    # -0.0010119091756436783
        0x4f57dff378e0df7cL    # 1.6873254368903854E74
        -0x44545c8eba565f27L    # -2.9263344178853457E-21
        -0x7c2131d673ecb1bdL    # -4.939124047122312E-290
        -0x6e3cc85fb657b9a8L    # -4.153415271052119E-223
        0x1394392a7a20b089L
    .end array-data
.end method

.method public closeSSH()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_07;->stopForwarderSocks()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_07;->stopPinger()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public conectar(Ljava/lang/String;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 5
    .line 6
    if-eqz v3, :cond_2

    .line 7
    .line 8
    :try_start_0
    new-instance v3, Lcom/trilead/ssh2/Connection;

    .line 9
    .line 10
    invoke-direct {v3, p1, p2}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lcom/trilead/ssh2/Connection;->setCompression(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/trilead/ssh2/Connection;->setTCPNoDelay(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addProxy(Lcom/trilead/ssh2/Connection;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/Connection;->addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    new-array v3, v3, [J

    .line 39
    .line 40
    fill-array-data v3, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 55
    .line 56
    invoke-static {p1}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/net/ConnectivityManager;)Landroid/net/ProxyInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v4, v2, [J

    .line 70
    .line 71
    fill-array-data v4, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v4, v0, [J

    .line 87
    .line 88
    fill-array-data v4, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    aput-object v4, v0, v5

    .line 114
    .line 115
    aput-object p1, v0, v1

    .line 116
    .line 117
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    goto :goto_1

    .line 134
    :cond_0
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array p2, v2, [J

    .line 137
    .line 138
    fill-array-data p2, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    const v0, 0x7f1300c9

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    const p2, 0x7f13007f

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    const p2, 0x7f130339

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 185
    .line 186
    const/16 p2, 0x1388

    .line 187
    .line 188
    const/16 v0, 0x2710

    .line 189
    .line 190
    invoke-virtual {p1, p0, p2, v0}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    .line 191
    .line 192
    .line 193
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    return-void

    .line 196
    :goto_1
    new-instance p2, Ljava/io/StringWriter;

    .line 197
    .line 198
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 199
    .line 200
    .line 201
    new-instance v0, Ljava/io/PrintWriter;

    .line 202
    .line 203
    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->useProxy:Z

    .line 221
    .line 222
    if-eqz v0, :cond_1

    .line 223
    .line 224
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    const/4 v1, 0x5

    .line 227
    new-array v1, v1, [J

    .line 228
    .line 229
    fill-array-data v1, :array_4

    .line 230
    .line 231
    .line 232
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    .line 245
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    const/4 v0, 0x6

    .line 248
    new-array v0, v0, [J

    .line 249
    .line 250
    fill-array-data v0, :array_5

    .line 251
    .line 252
    .line 253
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p0, p2}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v2, v2, [J

    .line 272
    .line 273
    fill-array-data v2, :array_6

    .line 274
    .line 275
    .line 276
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-static {p2}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_2
    new-instance p2, Ljava/lang/Exception;

    .line 297
    .line 298
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 299
    .line 300
    .line 301
    throw p2

    .line 302
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 303
    .line 304
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 305
    .line 306
    .line 307
    throw p1

    .line 308
    nop

    .line 309
    :array_0
    .array-data 8
        0x24d9f8250b9bfa1L
        -0x24aa658eca9ff7aeL    # -9.583805962745523E131
        0x723a6d5f05c3bfa4L    # 1.7621715891969345E242
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
    :array_1
    .array-data 8
        0x1d7763dfbd4c007cL    # 9.916424218363717E-167
        -0x112d5f6c8830694cL    # -6.894860963666599E225
        0x51f71bb2678756e0L    # 7.182650205222718E86
        -0x74eea0d8e8b05314L
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
    :array_2
    .array-data 8
        -0x2c348a3884342518L    # -4.582372224884367E95
        0x7981b2d401547ca7L    # 1.960846729768704E277
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
    :array_3
    .array-data 8
        -0x681b61431151acaL
        0xadd4f18a5ebcca5L
        -0x607119354383319eL
        0x223bbe21ef501c10L    # 8.886912208670023E-144
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
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
    :array_4
    .array-data 8
        0x4b3b5e45264d6a4dL    # 2.621356862892961E54
        -0x1d8769b63631735eL    # -2.2653968135897904E166
        0x69d7902e2474b09fL    # 7.214586699973136E201
        0x4632a34364bf1032L    # 1.476634455648695E30
        0x272f9a212e8fbb7cL    # 6.119095809335617E-120
    .end array-data

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
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_5
    .array-data 8
        -0x7d1602cd5aae5981L
        0x590c2be8f4220a31L    # 9.093239088947965E120
        0x6c2ebcfe1ccd355bL    # 1.2934990820682385E213
        -0x215d8ed3be67cba9L    # -7.369157290555674E147
        0xb542baf6285400aL
        0x28672184d0213c85L
    .end array-data

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
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_6
    .array-data 8
        0x35c09f67efe072cbL    # 8.885702339491299E-50
        0x5fbf64a31a53c459L    # 1.6441907793262894E153
        -0x4abfc3a19f0c9addL    # -3.390196379056672E-52
        0x6815af9e71d268cdL    # 2.473528483761311E193
    .end array-data
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 3
    .line 4
    if-nez v1, :cond_5

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, v0, [J

    .line 50
    .line 51
    fill-array-data v3, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v0, v0, [J

    .line 75
    .line 76
    fill-array-data v0, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_07;->reconnectSSH()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 103
    .line 104
    invoke-interface {p1}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_0
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        -0x523562079d1f4edeL    # -4.1813021087477965E-88
        -0x6116f91f0a15edeeL
        -0x2770fa79a98ae01dL    # -3.911400095922156E118
        0x26ba278b0d142188L
        0x7166b8d39055bcb9L    # 1.8494931473553072E238
        -0xb9bc8eec9888bd5L    # -4.631507918186248E252
    .end array-data

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
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        0x686ea8e1d2b3a923L    # 1.1190643310364832E195
        0x37fc1decaea99ddL
        -0x187964e5f0121d66L    # -5.0360314056407505E190
        0x66cc9adfb0dd7473L    # 1.5557825951188635E187
        0x16e78b0d5c68318L    # 8.88684190347426E-302
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        0x3c380bee49edbc05L    # 1.3035690554496944E-18
        -0x73399a372f400ff0L    # -4.004192654572678E-247
        -0x11f1e701982b41d3L    # -1.359938122714E222
        -0x5d86676e71bbd9cbL    # -1.311878677815993E-142
        -0x1afc924107e0a17cL
    .end array-data
.end method

.method public interrupt()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mReconnecting:Z

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v1, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p0, v2}, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object p2, v0, v1

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    aput-object p3, v0, p2

    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x2fb4fae15103a772L    # -6.2574043735389875E78
        0x62c5e6c184fb1084L    # 6.457423774795388E167
    .end array-data
.end method

.method public onReceiveInfo(ILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x65

    .line 3
    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v2, v0, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const v2, 0x7f1300eb

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v0, v0, [J

    .line 43
    .line 44
    fill-array-data v0, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        -0x619956afe7d28670L
        0x6d45796a49d2ee84L    # 2.3688930100172763E218
    .end array-data

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
    :array_1
    .array-data 8
        -0x4816f84c38a4c3L
        -0x56d452aab79b9e41L    # -2.301716914794662E-110
    .end array-data
.end method

.method public reconnectSSH()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 16
    .line 17
    new-instance v1, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, p0, v2}, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-array p2, p3, [Ljava/lang/String;

    .line 8
    .line 9
    const/4 p5, 0x0

    .line 10
    :goto_0
    if-ge p5, p3, :cond_1

    .line 11
    .line 12
    aget-object v0, p4, p5

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    aput-object p1, p2, p5

    .line 40
    .line 41
    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object p2

    .line 45
    :array_0
    .array-data 8
        -0x75112aa2f318d20cL    # -5.133763231832364E-256
        0x1e81098a4ce47f28L    # 9.467433320632545E-162
    .end array-data
.end method

.method public run()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x5

    .line 4
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 9
    .line 10
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 20
    .line 21
    if-nez v6, :cond_4

    .line 22
    .line 23
    const-wide/16 v6, 0x1f4

    .line 24
    .line 25
    :try_start_0
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v8}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-nez v8, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    const v9, 0x7f1301a7

    .line 38
    .line 39
    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v10, v2, [J

    .line 45
    .line 46
    fill-array-data v10, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-static {v8, v10}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_1

    .line 70
    .line 71
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v10, v1, [J

    .line 74
    .line 75
    fill-array-data v10, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-static {v8, v9}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    .line 93
    .line 94
    :cond_1
    const-wide/16 v8, 0x1388

    .line 95
    .line 96
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 97
    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :catch_0
    :try_start_2
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 102
    .line 103
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_2
    if-lez v5, :cond_3

    .line 109
    .line 110
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v9, v1, [J

    .line 113
    .line 114
    fill-array-data v9, :array_2

    .line 115
    .line 116
    .line 117
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    const v11, 0x7f1301d3

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v11, v0, [J

    .line 144
    .line 145
    fill-array-data v11, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v11, v0, [J

    .line 164
    .line 165
    fill-array-data v11, :array_4

    .line 166
    .line 167
    .line 168
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v8, v9}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/16 v8, 0x32

    .line 186
    .line 187
    if-ne v5, v8, :cond_3

    .line 188
    .line 189
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v9, v2, [J

    .line 192
    .line 193
    fill-array-data v9, :array_5

    .line 194
    .line 195
    .line 196
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {p0, v8}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 207
    .line 208
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_3
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 213
    .line 214
    .line 215
    :try_start_4
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_07;->startClienteSSH()V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_1
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 220
    .line 221
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catch_2
    new-instance v8, Ljava/lang/Thread;

    .line 226
    .line 227
    new-instance v9, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;

    .line 228
    .line 229
    invoke-direct {v9, p0, v3}, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 230
    .line 231
    .line 232
    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 236
    .line 237
    .line 238
    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 239
    .line 240
    .line 241
    :goto_1
    add-int/2addr v5, v3

    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :catch_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 245
    .line 246
    invoke-interface {v0}, Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;->onStop()V

    .line 247
    .line 248
    .line 249
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mStarting:Z

    .line 250
    .line 251
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 252
    .line 253
    if-nez v0, :cond_5

    .line 254
    .line 255
    :try_start_6
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 266
    .line 267
    .line 268
    :cond_5
    :goto_3
    return-void

    .line 269
    :array_0
    .array-data 8
        -0x55bb6b7bedca8941L    # -4.486625826151571E-105
        0x11f6203e345d6e82L    # 3.82564897845266E-222
        -0x68cef9be17c6c5dbL    # -5.693715467237307E-197
        -0x4b8eb2bd155991c0L    # -4.4101378109015055E-56
        -0x7fa7e1a325a8b97bL    # -5.3665675982178E-307
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
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
    :array_1
    .array-data 8
        -0x61e0082ad9d3cd33L
        -0x2b257d34abe8c13cL    # -5.798601814985997E100
        0x133537c076371794L    # 3.846830704976748E-216
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
    :array_2
    .array-data 8
        -0x243da06dc9aba50cL
        -0x7010ab53434161dL    # -6.699021619551068E274
        0x1889a249a0e79626L
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
    :array_3
    .array-data 8
        -0x650599130e29b53L
        -0x6a8357b36ca19888L
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
    :array_4
    .array-data 8
        -0x3d1c50d00332b0e6L    # -1.731451624106168E14
        0x66eb324a11b52814L    # 5.916698210525396E187
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
    :array_5
    .array-data 8
        -0xb576fa32d9da8a3L    # -9.004590594114233E253
        0x5b3bea5eac621d9cL    # 3.09601922139996E131
        0x7b6af0d43dd6755cL    # 3.2049066999509256E286
        -0x44ffeecb1bd10eebL    # -1.6613109182478104E-24
        0x66c5ec909d2deec2L    # 1.1924185818691412E187
    .end array-data
.end method

.method public setOnTun2SocksListener(Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_07;->mListener:Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;

    .line 2
    .line 3
    return-void
.end method

.method public startClienteSSH()V
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mStopping:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 6
    .line 7
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 12
    .line 13
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getSSHPort()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 18
    .line 19
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getSSLPort()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    new-array v7, v6, [J

    .line 27
    .line 28
    const-wide v8, -0x16abffeffc983b9aL    # -2.392062090427896E199

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    aput-wide v8, v7, v1

    .line 34
    .line 35
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v7, v6, [J

    .line 44
    .line 45
    const-wide v8, 0x5908050af5fb51e3L    # 7.753107940266333E120

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    aput-wide v8, v7, v1

    .line 51
    .line 52
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 59
    .line 60
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getEnableFreeServer()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 67
    .line 68
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getFreeServerUsername()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget-object v7, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 73
    .line 74
    invoke-virtual {v7}, Lconfig/ConfigUtil;->getFreeServerPassword()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 80
    .line 81
    invoke-virtual {v5}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v7, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 86
    .line 87
    invoke-virtual {v7}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_1

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-static {v7, v1}, Lcom/tknetwork/tunnel/core/PasswordCache;->getAuthPassword(Ljava/util/UUID;Z)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    :cond_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v9, v6, [J

    .line 105
    .line 106
    const-wide v10, 0x295bded877c94d07L    # 1.854241084894297E-109

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    aput-wide v10, v9, v1

    .line 112
    .line 113
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    :try_start_0
    iget-object v9, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 121
    .line 122
    invoke-virtual {v9}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_2

    .line 127
    .line 128
    if-eq v9, v6, :cond_2

    .line 129
    .line 130
    const/4 v6, 0x2

    .line 131
    if-ne v9, v6, :cond_3

    .line 132
    .line 133
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/tknetwork/tunnel/service/c_07;->conectar(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :cond_3
    const/4 v3, 0x3

    .line 137
    if-eq v9, v3, :cond_4

    .line 138
    .line 139
    if-eq v9, v0, :cond_4

    .line 140
    .line 141
    const/4 v3, 0x5

    .line 142
    if-ne v9, v3, :cond_5

    .line 143
    .line 144
    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/tknetwork/tunnel/service/c_07;->conectar(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    :cond_5
    :try_start_1
    invoke-virtual {p0, v5, v7, v8}, Lcom/tknetwork/tunnel/service/c_07;->autenticar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v0, v0, [J

    .line 158
    .line 159
    fill-array-data v0, :array_0

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    const v3, 0x7f13007e

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/16 v0, 0x438

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/c_07;->startForwarder(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 197
    .line 198
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHPinger()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_6

    .line 203
    .line 204
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConfig:Lconfig/ConfigUtil;

    .line 205
    .line 206
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHPinger()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_07;->startPinger(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    goto :goto_2

    .line 216
    :cond_6
    :goto_1
    return-void

    .line 217
    :catch_1
    new-instance v2, Ljava/io/IOException;

    .line 218
    .line 219
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v0, v0, [J

    .line 222
    .line 223
    fill-array-data v0, :array_1

    .line 224
    .line 225
    .line 226
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 237
    :goto_2
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_07;->reconnectSSH()V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :array_0
    .array-data 8
        -0x3b7b476b438afb58L    # -1.2231531017103944E22
        -0x4605977162420bc5L    # -2.0832574958311554E-29
        0x7a78154bb84fd590L    # 8.743189880657792E281
        0x6ad5f9082e29b90fL    # 4.4090200261249886E206
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
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
    :array_1
    .array-data 8
        0x4be73c5e775a7f31L    # 4.557924490621083E57
        -0x4f2be8cc29c30e2fL    # -1.7767025438922457E-73
        -0x7fc90b565e20503L
        -0x27f74f505b02b1daL    # -1.216053287707502E116
    .end array-data
.end method

.method public startForwarder(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_07;->mConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->startNetStat()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->startForwarderSocks(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_06;->startmanager()V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/Thread;

    .line 15
    .line 16
    new-instance v0, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, L땸뒛돶땭딄땋딟땠땪뎰된돶듔두돛딅땸뎸딄뒀땨디딜돰든딽둠땃둠됨둠땥땟둠뒾둘듽돷뎻땩돤딄딹딀뒷뒤듌뎠둘딨뒀둠된둑돨됩딎땲땜둘땋둑뒝딄돨딄둔땻듼듔둬딸둘딐도돰따딝두뒋땔돨딝돝뒈딅뎻됴듸됫땯땨딝딨땜뒉뎬딤땨될듟뒤들땄땳듼둣땦딅뒬뎬뎰듸딝뒛뒙돠땠딄딄땮돝딜들뎽땥뒈뎠땠땱;-><init>(Lcom/tknetwork/tunnel/service/c_07;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 0

    .line 1
    invoke-static {p3, p4}, Lcom/trilead/ssh2/KnownHosts;->createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p4, 0x3

    .line 13
    new-array p4, p4, [J

    .line 14
    .line 15
    fill-array-data p4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_07;->addLogInfo(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x316d3b00e7002824L    # -3.238561217687967E70
        0x33d99399b975c118L    # 6.366534040407714E-59
        0x4d248fef0c2fe295L    # 4.2294077265377236E63
    .end array-data
.end method
