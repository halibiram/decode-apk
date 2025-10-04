.class public Lcom/tknetwork/tunnel/service/c_04;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ConnectionMonitor;
.implements Lcom/trilead/ssh2/InteractiveCallback;
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;
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
.field private dpf:Lcom/trilead/ssh2/DynamicPortForwarder;

.field private lastPingLatency:J

.field private final mConfig:Lconfig/ConfigUtil;

.field private mConnected:Z

.field private mConnection:Lcom/trilead/ssh2/Connection;

.field private final mContext:Landroid/content/Context;

.field private mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

.field private mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

.field public mReconnecting:Z

.field private mRunning:Z

.field private mStarting:Z

.field private mStopping:Z

.field private mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

.field private final m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_04;->AUTH_PUBLICKEY:Ljava/lang/String;

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_04;->AUTH_PASSWORD:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "c_04"

    .line 36
    .line 37
    sput-object v0, Lcom/tknetwork/tunnel/service/c_04;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x4abd6b09be018e57L    # -3.8800781288077674E-52
        0x6d522c9d16f0334bL    # 4.009718578843855E218
        0x3dd7aa4d0e181c7bL    # 8.609363527952765E-11
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
        0x5110c4e4056e5143L    # 3.1813298171626005E82
        0x6ed0c6d43e74a042L    # 6.209872520462184E225
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
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mRunning:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/tknetwork/tunnel/service/c_04;->lastPingLatency:J

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->useProxy:Z

    .line 20
    .line 21
    new-instance v0, Lcom/tknetwork/tunnel/service/c_04$2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_04$2;-><init>(Lcom/tknetwork/tunnel/service/c_04;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 35
    .line 36
    new-instance p1, Ljava/lang/Thread;

    .line 37
    .line 38
    new-instance v0, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-direct {v0, p0, v1}, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private addProxy(Lcom/trilead/ssh2/Connection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/service/c_04;->useProxy:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->useProxy:Z

    .line 17
    .line 18
    new-instance v0, Lcom/trilead/ssh2/HTTPProxyData;

    .line 19
    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/16 v2, 0x231d

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/HTTPProxyData;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/Connection;->setProxyData(Lcom/trilead/ssh2/ProxyData;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    nop

    :array_0
    .array-data 8
        -0x6300b5a531801610L
        0x1ebb975056936fcaL
        -0x15f2d6a266a9359fL    # -7.142959970460823E202
    .end array-data
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

.method private synthetic lambda$startForwarder$0()V
    .locals 5

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

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
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_04;->lastPingLatency:J

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
    iget-wide v1, p0, Lcom/tknetwork/tunnel/service/c_04;->lastPingLatency:J

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
        -0x1fdade52b5b45adcL    # -1.4166388484013052E155
        0x452caad71d32cd99L    # 1.7328346702621669E25
        -0xeddc2bcd0175ffL    # -1.2439756599959938E304
        0x6cebbeff4fba6eeeL    # 4.7824295885498144E216
    .end array-data
.end method

.method private synthetic lambda$stopAll$1()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

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
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->closeDNSTT()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    new-array v1, v1, [J

    .line 18
    .line 19
    fill-array-data v1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v2, 0x7f13025a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mRunning:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 8
        -0x6956bbf256df1f4dL
        0x76f346dec00d3325L    # 9.712073561514248E264
        -0x24c8988375d3f49aL    # -2.595689530482216E131
    .end array-data
.end method

.method private startDNSTunnel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->interrupt()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private declared-synchronized startForwarderSocks(I)V
    .locals 6
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
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->startNetStat()V

    .line 6
    .line 7
    .line 8
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v4, v2, [J

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
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    new-array v4, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v3, v4, v5

    .line 51
    .line 52
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_1
    new-instance v2, Ljava/net/ServerSocket;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 68
    .line 69
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 70
    .line 71
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v4, v0, [J

    .line 74
    .line 75
    fill-array-data v4, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {v2, v3, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_0

    .line 99
    :catch_1
    move-exception p1

    .line 100
    goto :goto_1

    .line 101
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v0, [J

    .line 109
    .line 110
    fill-array-data v0, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logError(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/Exception;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    :goto_2
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :cond_0
    :try_start_3
    new-instance p1, Ljava/lang/Exception;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    throw p1

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        0x6e047d644a817136L    # 9.258162221501228E221
        -0x78678c02d569f0a7L    # -4.520198724532702E-272
        0x3978355282ed39faL    # 7.459755382744947E-32
        -0x3981122ea5ce9f40L    # -3.920713462681174E31
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        0x37039cfa30b0b45L
        0x34f96bc3a89139e2L    # 1.658794664217899E-53
        0x706ddf073f5a5d6eL    # 3.7100468138417623E233
        -0xaf20b6ccae3fd81L    # -7.027826670432739E255
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        -0x7222d2e7a14266ebL
        0x5ec43e885baa3a4L
        -0x3bb2f9cb7dc917d6L    # -1.0708054071458569E21
    .end array-data

    :array_3
    .array-data 8
        0x4f355b477219d672L    # 3.7733773450347634E73
        -0x5595f3b8609e6094L
        -0x5e44e5692d5f05a1L
    .end array-data
.end method

.method private startPinger(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

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
    new-instance v0, Lcom/tknetwork/tunnel/service/c_04$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/tknetwork/tunnel/service/c_04$1;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->thPing:Ljava/lang/Thread;

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
        0x75636c7f3d60b478L    # 2.91649258876251E257
        -0x3f2443536e1e647dL    # -28402.696403886668
        0x703d3e4aab36d108L    # 4.5400794022301236E232
    .end array-data
.end method

.method private declared-synchronized stopForwarderSocks()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->stopNetStat()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/DynamicPortForwarder;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 16
    :try_start_2
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->dpf:Lcom/trilead/ssh2/DynamicPortForwarder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    throw v0
.end method

.method private declared-synchronized stopPinger()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->thPing:Ljava/lang/Thread;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->thPing:Ljava/lang/Thread;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->thPing:Ljava/lang/Thread;
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
        0x3d10ccb35c4be0f7L    # 1.4921052681892286E-14
        -0x155cc58c572df91eL    # -4.82290338895845E205
        0x61e2ec11d59e84e7L    # 3.405164350201299E163
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_04;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_04;->lambda$stopAll$1()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_04;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_04;->startDNSTunnel()V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_04;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_04;->lambda$startForwarder$0()V

    return-void
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_04;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_04;->lastPingLatency:J

    return-wide v0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_04;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/service/c_04;)Lcom/trilead/ssh2/Connection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    return-object p0
.end method

.method public static bridge synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/tknetwork/tunnel/service/c_04;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tknetwork/tunnel/service/c_04;->lastPingLatency:J

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

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x5

    .line 5
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

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
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

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
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

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
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V
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
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

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
    const-wide v4, 0x50996d732725606bL    # 1.8843569849706944E80

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
    invoke-virtual {p0, p3}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

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
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V
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
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

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
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->interrupt()V

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
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

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
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
        0x75a60b27a0b92633L    # 5.295759949995178E258
        0x3991c19a230b8f5cL
        -0x5f0baf72aa5cf29eL    # -6.205998313984509E-150
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
        0x75063381d46825faL    # 5.208621283586945E255
        0x52d26c032672f996L    # 9.381530010753282E90
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
        0x12e141cf05512abaL    # 9.777325686676798E-218
        0x6ee3068046a6ee6L
        0x34f6ca99bc04c134L
        0x4dcc5ad6b7ccb79bL    # 5.9722261154601374E66
        0x6ca3b4da7a7bfa2cL    # 2.1229291722305733E215
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
        0x74cba1788a6bac11L    # 4.0515290478138387E254
        0x757edda18baec528L    # 9.269004373449809E257
        0x30b001bc1fe8f794L    # 3.538872896152745E-74
        -0x195272ee9ebf576fL    # -4.018094974726847E186
        0x6642c8190312f904L    # 3.990255255190373E184
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
        0x212661c6ee58b027L    # 5.470032606019934E-149
        -0x29f1e0153d5270ecL    # -3.4545451253770354E106
        0x4183b1ad9e38a31fL    # 4.130142777765488E7
        -0x36338acf1c8667abL    # -3.249303751334903E47
        -0x7cf71539ff0a66b5L    # -4.876760836960545E-294
        0x5b98f10e8e8c12efL    # 1.7703653658161126E133
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
        0x562f6adfec9803a7L    # 1.441118906401699E107
        -0x7ebc18ea2ff19a67L
        -0x7c3d0d5c2d1a0217L
        0x27ae9793281c4fdL
        -0x1052751928409606L    # -8.958085453351479E229
        -0x2b544b21c2511022L    # -7.575137185213989E99
        0x2944f8b81f48141L
        0x728d9a8f325b13ffL    # 6.316742900880055E243
        -0x4b989e4b44f9149aL    # -2.9799311803915567E-56
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
        -0x732cc1bbb162c3efL    # -6.880524252716985E-247
        -0x81d2183a707e967L    # -3.115135736377746E269
        0x5dfab4ec2c227cc1L    # 5.21073072612855E144
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
        -0x4ff7c367944b2d64L    # -2.6164029118239645E-77
        0x576b3624d006c08cL
        -0x4e318e420066cb30L    # -8.822203502203613E-69
        -0x4493c5c9e8bb1abL    # -8.6657965484933E287
        0x73e6bc304860a6dbL    # 2.034714626814383E250
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
        -0x2e9af2a98a48df0dL    # -1.278039400017694E84
        0x2df6e958972b67e8L    # 2.8793531998480704E-87
        -0x35a7f7f9e30bc667L    # -1.4048739019531566E50
        0x50bdc85def70f228L    # 8.828413764961895E80
        0x2dd402bf0301329fL    # 6.287009899569627E-88
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
        -0x4a81c61685df60baL    # -5.049223187556312E-51
        -0x7bab464fab734451L    # -8.506794880980863E-288
        0x556dc025b86636c0L
        -0x1da3be9299126618L    # -6.508513218975572E165
        -0x55b9675fecee27e6L    # -4.92614043569816E-105
        -0xa421c583e07b7a9L    # -1.436123273980052E259
        0x30f222146218548eL    # 6.414365129621347E-73
        0x563a5cc5bea30615L    # 2.418484414232173E107
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
        -0x12f2995e4892d54L
        -0x34507272fa4cbb1fL    # -3.868378339587081E56
        -0x6955788076a70453L
        0x5651a58551558eedL    # 6.475579774376889E107
        0x1de3082e8a566f4dL
        -0x2145ec345a6c65deL    # -2.0840154909496366E148
        0x2dbaa786c1d70818L    # 2.093583052329562E-88
        0x616c208ffd21aa61L    # 1.977216172046151E161
        0x561211ea82a9da74L    # 4.144348465911623E106
        -0x4d02b40e0e0992abL    # -4.45101479815295E-63
        -0x55a80a665eea5007L
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
        -0x68e02a6ea9c7a0c3L
        -0x8000755741d4a16L
        0x142f53daf774e50aL
        -0x7a5248b33e55c39eL
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
        0x6ab9f3c75461c9e4L    # 1.3018838502664172E206
        -0x3fcdeec242af2fe1L    # -18.06734832022641
        -0x32b5f453e83d698cL    # -2.1429072370338667E64
        -0x7d2808bc421a945eL
        0x40411f8a1d30a448L    # 34.246402405501215
        -0x2e76bcb046a7aa92L    # -6.134689802560518E84
        -0x6df7038287fafc0dL    # -8.640422355882392E-222
        0xfdb376dc4756fb6L
    .end array-data
.end method

.method public declared-synchronized closeDNSTT()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->stopForwarder()V
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

.method public connect(Ljava/lang/String;I)V
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
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 5
    .line 6
    if-eqz v3, :cond_3

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
    iput-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Lcom/trilead/ssh2/Connection;->setCompression(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/trilead/ssh2/Connection;->setTCPNoDelay(Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addProxy(Lcom/trilead/ssh2/Connection;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Lcom/trilead/ssh2/Connection;->addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v3, 0x17

    .line 59
    .line 60
    if-lt p2, v3, :cond_0

    .line 61
    .line 62
    invoke-static {p1}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroid/net/ConnectivityManager;)Landroid/net/ProxyInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v4, v2, [J

    .line 80
    .line 81
    fill-array-data v4, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v0, [J

    .line 97
    .line 98
    fill-array-data v4, :array_2

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
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    aput-object v4, v0, v5

    .line 124
    .line 125
    aput-object p1, v0, v1

    .line 126
    .line 127
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array p2, v2, [J

    .line 144
    .line 145
    fill-array-data p2, :array_3

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    const v0, 0x7f1300c9

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-static {p1, p2}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    const p2, 0x7f130339

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnection:Lcom/trilead/ssh2/Connection;

    .line 180
    .line 181
    const/16 p2, 0x1388

    .line 182
    .line 183
    const/16 v0, 0x2710

    .line 184
    .line 185
    invoke-virtual {p1, p0, p2, v0}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    .line 186
    .line 187
    .line 188
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    return-void

    .line 191
    :goto_1
    new-instance p2, Ljava/io/StringWriter;

    .line 192
    .line 193
    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 194
    .line 195
    .line 196
    new-instance v0, Ljava/io/PrintWriter;

    .line 197
    .line 198
    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->useProxy:Z

    .line 216
    .line 217
    if-eqz v0, :cond_2

    .line 218
    .line 219
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    const/4 v1, 0x5

    .line 222
    new-array v1, v1, [J

    .line 223
    .line 224
    fill-array-data v1, :array_4

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    .line 240
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    const/4 v0, 0x6

    .line 243
    new-array v0, v0, [J

    .line 244
    .line 245
    fill-array-data v0, :array_5

    .line 246
    .line 247
    .line 248
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p0, p2}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v2, v2, [J

    .line 267
    .line 268
    fill-array-data v2, :array_6

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-static {p2}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_2
    new-instance p2, Ljava/lang/Exception;

    .line 292
    .line 293
    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    throw p2

    .line 297
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    .line 298
    .line 299
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 300
    .line 301
    .line 302
    throw p1

    .line 303
    :array_0
    .array-data 8
        -0x5c50d039b56d23eeL
        -0x1bc92dfa510d3541L    # -5.644178501275358E174
        0x7327024bd9bc57d9L    # 5.027402327451632E246
    .end array-data

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
    :array_1
    .array-data 8
        -0x30c464f4f6fdc818L    # -4.877493894090547E73
        -0x1a426d05c58712f3L    # -1.2271831570311455E182
        0x31115d964abf2e1dL    # 2.4571417172705106E-72
        -0x4aa405d4d4ae568aL    # -1.168383274005907E-51
    .end array-data

    .line 320
    .line 321
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
    .line 338
    .line 339
    :array_2
    .array-data 8
        0x25a3f24970fcb72cL    # 2.3020623819368E-127
        0x42cf0bb9e7dabb4eL    # 6.827044816216661E13
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
    :array_3
    .array-data 8
        -0xa1d42d7c7f7d346L    # -7.202947539210634E259
        0x602139b55a0d18d2L    # 1.1547758462032463E155
        0x3a4e13a3698b105fL    # 7.5924295778204345E-28
        0xca71e71396627e6L
    .end array-data

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
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_4
    .array-data 8
        -0x13ec61944d8052eeL    # -4.1279086557659E212
        -0x60d1cc04177ce39fL
        -0x195f1ceb734ec4fbL    # -2.2961521783465526E186
        0x74c33acc03119d03L    # 2.8196701610868986E254
        -0x12f0ac9d68dc0541L    # -2.1597724452521339E217
    .end array-data

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
    .line 394
    .line 395
    :array_5
    .array-data 8
        0x13442c9718362a6eL    # 7.315247429657741E-216
        -0x5f0b5c9bb3d6d0c1L    # -6.304853786365813E-150
        -0x4470638f9c6ec216L    # -8.367385831267177E-22
        0x4b3709c462e93917L    # 2.206616658770185E54
        0x7f059a31e721579bL    # 7.407064337682834E303
        0x635fd3cd03fc0260L    # 4.804608472314967E170
    .end array-data

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
    .line 422
    .line 423
    :array_6
    .array-data 8
        0x591229e710a6c917L    # 1.17257914222336E121
        0x4afa44e7cff7ce0aL    # 1.5725536678595446E53
        0x3878dbff43c0ff27L    # 1.1688816675209517E-36
        -0x74025c60b1a0c394L    # -6.468288218442622E-251
    .end array-data
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 3
    .line 4
    if-nez v1, :cond_5

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x2

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const v3, 0x7f1300ea

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    new-array v3, v3, [J

    .line 55
    .line 56
    fill-array-data v3, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lde/blinkt/openvpn/core/TkLogStatus;->logError(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/4 v3, 0x6

    .line 88
    new-array v3, v3, [J

    .line 89
    .line 90
    fill-array-data v3, :array_2

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v3, v0, [J

    .line 114
    .line 115
    fill-array-data v3, :array_3

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_4

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_3

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->stopAll()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->reconnectDNSTT()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->stopAll()V

    .line 165
    .line 166
    .line 167
    :cond_5
    :goto_0
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x4418f96c837ee02eL    # -3.900703267577012E-20
        0x1ea5bb28e26d0196L    # 4.830297620716847E-161
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        0x33406cebd0db753bL    # 7.985622739827414E-62
        0x8be0c3debd163c6L
        -0x6522d23cecb5ae2cL
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x7d667d0e19844c6fL    # 1.1490162586599383E296
        -0x23a8b9bf59720ad5L    # -6.766701056620319E136
        0x431de3fc1abb8f55L    # 2.1033615610930772E15
        -0x4057608bce6a0f3eL    # -0.04809153657240152
        -0x440d6e0e6bf526cL
        0x516628bf8920616cL    # 1.3452479778604382E84
    .end array-data

    :array_3
    .array-data 8
        0x79123ca780340141L    # 1.578511702041382E275
        -0x257d1d01df7f0711L    # -1.0227842471885126E128
        -0x4fdd27cfe88bf710L    # -8.137206930076412E-77
        0x26c772e2d687e2dfL    # 7.094338416238041E-122
        0x7aadf32db3de87f2L    # 8.698443686094336E282
    .end array-data

    :array_4
    .array-data 8
        -0x4549b6a220c94ca8L    # -7.201185167197544E-26
        0x6f381a3c38b07dbaL    # 5.709768440645842E227
        0x6359288f35fd839aL    # 3.797879568244372E170
        0x3e9fa8423f302e18L    # 4.717299468277177E-7
        -0x4043d80d5600c2daL    # -0.10998455667799031
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
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v1, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p0, v2}, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->interrupt()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mDNSTunnelThread:Lcom/tknetwork/tunnel/thread/DNSTunnelThread;

    .line 42
    .line 43
    :cond_1
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
        0x4cca3b372cdb1b7L
        0x239b3b32a056c62cL
    .end array-data
.end method

.method public onReceiveInfo(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const v1, 0x7f1300eb

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    new-array v1, v1, [J

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :array_0
    .array-data 8
        -0x1a772d3502f557b9L    # -1.287564070973131E181
        0xd3ac06e1544574dL
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
        -0x7a3f2863b6d61a56L    # -5.799006678145359E-281
        -0x38183d373f1a0c02L    # -2.5266897006803032E38
        0x7e178a447e08eb4aL    # 2.4632253826287333E299
    .end array-data
.end method

.method public reconnectDNSTT()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 8
    .line 9
    if-nez v2, :cond_3

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->closeDNSTT()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v4, v1, [J

    .line 26
    .line 27
    fill-array-data v4, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const v5, 0x7f130260

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x3e8

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v3}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v4, v0, [J

    .line 73
    .line 74
    fill-array-data v4, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const v7, 0x7f13025c

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v3, 0x5

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    iput-boolean v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 99
    .line 100
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v4, v1, [J

    .line 103
    .line 104
    fill-array-data v4, :array_2

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :try_start_1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->startClienteDNSTT()V

    .line 124
    .line 125
    .line 126
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 127
    .line 128
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 130
    return-void

    .line 131
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v7, v0, [J

    .line 139
    .line 140
    fill-array-data v7, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    const v7, 0x7f13025a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v7, v1, [J

    .line 168
    .line 169
    fill-array-data v7, :array_4

    .line 170
    .line 171
    .line 172
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 190
    .line 191
    const/4 v3, 0x3

    .line 192
    :goto_1
    mul-int/lit16 v3, v3, 0x3e8

    .line 193
    .line 194
    int-to-long v3, v3

    .line 195
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :catch_1
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 201
    .line 202
    return-void

    .line 203
    :catch_2
    iput-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mReconnecting:Z

    .line 204
    .line 205
    :cond_3
    :goto_2
    return-void

    .line 206
    nop

    .line 207
    :array_0
    .array-data 8
        -0x7cde416880b41e41L
        -0x7b12a72cc58b6414L    # -6.167333429725719E-285
        0x3a14d996b97e48afL    # 6.579086104914895E-29
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_1
    .array-data 8
        0x7683279d06d0a7f6L    # 7.539499010383531E262
        0xe955734433474c3L
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 8
        0x4acb522761fa14a0L    # 2.0443934574179542E52
        -0x62aa04757f77905fL
        0xd65d66d9200c7d4L
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_3
    .array-data 8
        0x5fb4f9258849d94aL    # 1.098457130522757E153
        -0x48e2f49b0fae21d0L    # -3.2560020634418165E-43
    .end array-data

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
    :array_4
    .array-data 8
        0x38f3b366df639facL    # 2.3713961516294666E-34
        -0x9bcbdeb97f9ffecL    # -4.737620020125246E261
        -0x380f797ebf338f68L    # -3.514565964210344E38
    .end array-data
.end method

.method public replyToChallenge(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getSSHPortString()Ljava/lang/String;

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
        0x1e5110f95a44f31L
        0x5dd9519f654d1f68L    # 1.2349851122135167E144
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
    iput-boolean v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 9
    .line 10
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    invoke-direct {v4, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    iget-boolean v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 20
    .line 21
    if-nez v6, :cond_4

    .line 22
    .line 23
    const-wide/16 v6, 0x1f4

    .line 24
    .line 25
    :try_start_0
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_04;->mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

    .line 102
    .line 103
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;->onStop()V

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
    iget-object v10, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0, v8}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_04;->mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

    .line 207
    .line 208
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;->onStop()V
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
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->startClienteDNSTT()V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_1
    iget-object v8, p0, Lcom/tknetwork/tunnel/service/c_04;->mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

    .line 220
    .line 221
    invoke-interface {v8}, Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;->onStop()V
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
    new-instance v9, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;

    .line 228
    .line 229
    invoke-direct {v9, p0, v4}, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

    .line 245
    .line 246
    invoke-interface {v0}, Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;->onStop()V

    .line 247
    .line 248
    .line 249
    :cond_4
    :goto_2
    iput-boolean v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mStarting:Z

    .line 250
    .line 251
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 252
    .line 253
    if-nez v0, :cond_5

    .line 254
    .line 255
    :try_start_6
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mTunnelThreadStopSignal:Ljava/util/concurrent/CountDownLatch;

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
        -0x724b27420ff93d9fL
        -0x607168b518cc72b1L    # -1.114052743999028E-156
        0x36c16e9f29814de9L    # 6.106899387697498E-45
        0x1dc7550c4bd7ca35L
        -0x7356d39c31bbf661L
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
        -0x64cfe66e2aacc481L    # -9.932652602252024E-178
        0x4ee1a78e2a7b1215L    # 9.747757664786833E71
        -0x402cf97bf0275136L    # -0.29727269694806735
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
        0xac404b3a77ffdb8L
        0x40b0236e47570128L    # 4131.430776059897
        0x5a8441f1c55d800dL    # 1.0970238435853215E128
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
        -0x7abe36ce6ccf533eL    # -2.392160116334759E-283
        -0x118352c72c41d3cdL    # -1.6585370678519366E224
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
        0x6ddfce7d906bf1a8L    # 1.7964458428239435E221
        0x1c68e7bb1994b4bL    # 4.21024614557244E-300
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
        -0x63eb71d2fe1d82eaL
        -0xf1089dca626f09eL    # -1.0003356081742876E236
        -0x1232c5e839f11e10L    # -8.253724489683078E220
        0x768fc012f5ecd470L    # 1.2497234499359696E263
        0xfab9f9673cef5ebL    # 3.475124240307642E-233
    .end array-data
.end method

.method public setOnTun2SocksListener(Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_04;->mListener:Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;

    .line 2
    .line 3
    return-void
.end method

.method public startClienteDNSTT()V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 6
    .line 7
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 12
    .line 13
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getSSHPortString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    new-array v6, v5, [J

    .line 25
    .line 26
    const-wide v7, -0x316f48e81b1d0b1dL    # -2.884103203247773E70

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    aput-wide v7, v6, v1

    .line 32
    .line 33
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v6, v5, [J

    .line 42
    .line 43
    const-wide v7, -0x4d7b4c2f2a01da22L    # -2.4572636542564223E-65

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    aput-wide v7, v6, v1

    .line 49
    .line 50
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 57
    .line 58
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getEnableFreeServer()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 65
    .line 66
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getFreeServerUsername()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 71
    .line 72
    invoke-virtual {v6}, Lconfig/ConfigUtil;->getFreeServerPassword()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v4, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 78
    .line 79
    invoke-virtual {v4}, Lconfig/ConfigUtil;->getUsername()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v6, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 84
    .line 85
    invoke-virtual {v6}, Lconfig/ConfigUtil;->getPassword()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_1

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-static {v6, v1}, Lcom/tknetwork/tunnel/core/PasswordCache;->getAuthPassword(Ljava/util/UUID;Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v5, v5, [J

    .line 103
    .line 104
    const-wide v8, 0x2bb1ce64c82d2667L    # 3.256366562569363E-98

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    aput-wide v8, v5, v1

    .line 110
    .line 111
    invoke-direct {v7, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/tknetwork/tunnel/service/c_04;->connect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-virtual {p0, v4, v6, v5}, Lcom/tknetwork/tunnel/service/c_04;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    .line 123
    .line 124
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v0, v0, [J

    .line 132
    .line 133
    fill-array-data v0, :array_0

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    const v3, 0x7f13007e

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 166
    .line 167
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHPinger()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-lez v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConfig:Lconfig/ConfigUtil;

    .line 174
    .line 175
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHPinger()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_04;->startPinger(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    goto :goto_2

    .line 185
    :cond_2
    :goto_1
    const/16 v0, 0x438

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/c_04;->startForwarder(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :catch_1
    new-instance v2, Ljava/io/IOException;

    .line 192
    .line 193
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array v0, v0, [J

    .line 196
    .line 197
    fill-array-data v0, :array_1

    .line 198
    .line 199
    .line 200
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    :goto_2
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->reconnectDNSTT()V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :array_0
    .array-data 8
        -0x1562ce7875fb1855L    # -3.661194869311214E205
        -0x11d0594495c7c46cL    # -5.7205571311288115E222
        0x1690014eabb2f5b2L    # 5.227348570574006E-200
        -0xb848f20d1a29472L
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_1
    .array-data 8
        -0x4453cc42e4bbf10aL    # -2.9860139390501847E-21
        0x20dcb6a7fb7200eaL
        -0x6e237b834b107570L
        0x64df2d57d833efc3L    # 7.896115215158031E177
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
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->startForwarderSocks(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_06;->startmanager()V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v0, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, v1}, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public stopAll()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mStopping:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_04;->stopPinger()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/Thread;

    .line 10
    .line 11
    new-instance v1, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p0, v2}, L땸돰됨됨듨땜돷돵둡돰땵땯땃돳뒐뒘됩돰딄딐됫도된딞땥땣뎨뎹딀돰됫딀땵듻딽땥돤뒉됐땃뎡땤두뒘됨뒻뒵듬도뎬둘땜뒬돰될뎹땪땤돝듔땱딨땪듸둔듼땨돵뒹뎰뒬딐뒬딃돵땫딅딐땰땬둘뒼딅두땨두땀둔뒋딸땀돷돤땟딃듨땝둑듟뒨딨딎돝땹돠땧뎹딄듻뒙뒾돰땀땔둘뎠돤땫딐듸됩뒼딎뒛땃딄땡딐둣딝;-><init>(Lcom/tknetwork/tunnel/service/c_04;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public stopForwarder()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_04;->stopTunnelVpnService()V

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
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_04;->isServiceVpnRunning()Z

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
    :try_start_1
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelManager()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->signalStopService()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_04;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_04;->m_vpnTunnelBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw v0
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
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/service/c_04;->addLogInfo(Ljava/lang/String;)V

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
        0x7341bb0715d2e46eL    # 1.549634665463893E247
        0x1fe1c19c750f5096L    # 4.138515243128692E-155
        -0x3312140859bd25acL    # -3.8465915630686356E62
    .end array-data
.end method
