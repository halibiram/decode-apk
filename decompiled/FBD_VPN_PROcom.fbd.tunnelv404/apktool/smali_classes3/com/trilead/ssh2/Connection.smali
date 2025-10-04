.class public Lcom/trilead/ssh2/Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/Connection$PumpThread;
    }
.end annotation


# static fields
.field public static final identification:Ljava/lang/String;

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private am:Lcom/trilead/ssh2/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private connectionMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field private dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

.field private generator:Ljava/security/SecureRandom;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field private proxyData:Lcom/trilead/ssh2/ProxyData;

.field private final sourceAddress:Ljava/lang/String;

.field private tcpNoDelay:Z

.field private tm:Lcom/trilead/ssh2/transport/TransportManager;


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
    sput-object v0, Lcom/trilead/ssh2/Connection;->identification:Ljava/lang/String;

    .line 17
    .line 18
    const-class v0, Lcom/trilead/ssh2/Connection;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/trilead/ssh2/Connection;->log:Lcom/trilead/ssh2/log/Logger;

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0x2a37e9c32424ac5dL
        -0xe6920b74e785892L    # -1.489376752719761E239
        0x7c1024f6734a368aL    # 3.933302663729483E289
        0x3adf4ba10d24f7fL
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x16

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 5
    new-instance v1, Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/CryptoWishList;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 6
    new-instance v1, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v1}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    .line 7
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 10
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/trilead/ssh2/Connection;->port:I

    .line 12
    iput-object p3, p0, Lcom/trilead/ssh2/Connection;->sourceAddress:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized close(Ljava/lang/Throwable;Z)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeAllChannels()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    xor-int/lit8 p2, p2, 0x1

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 10
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 11
    :cond_1
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 12
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 13
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getAvailableCiphers()[Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/trilead/ssh2/Connection;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v1
.end method

.method public static declared-synchronized getAvailableMACs()[Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/trilead/ssh2/Connection;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->getMacs()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v1
.end method

.method public static declared-synchronized getAvailableServerHostKeyAlgorithms()[Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/trilead/ssh2/Connection;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v1
.end method

.method private getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/trilead/ssh2/RandomFactory;->create()Ljava/security/SecureRandom;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 12
    .line 13
    return-object v0
.end method

.method private synthetic lambda$connect$0(Lcom/trilead/ssh2/Connection$1TimeoutState;)V
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p1

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    .line 12
    .line 13
    new-instance v0, Ljava/net/SocketTimeoutException;

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    new-array v2, v2, [J

    .line 19
    .line 20
    fill-array-data v2, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 35
    .line 36
    .line 37
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v0

    .line 41
    :array_0
    .array-data 8
        -0x4066bb2d08621be4L    # -0.024676605571105723
        -0x4ec8fbe7a2cdcbacL    # -1.3026592524433056E-71
        -0x1c403af750a68a04L
        0x5672a83d232c074bL    # 2.738574279641228E108
        -0x49bab4f77e4ecc89L    # -2.913865849573246E-47
    .end array-data
.end method

.method private static synthetic lambda$enableDebugging$1(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v0, v1, [J

    .line 39
    .line 40
    fill-array-data v0, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x82908c384dee12cL
        -0x61d4984343c23685L    # -2.3795000229801225E-163
    .end array-data

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
    :array_1
    .array-data 8
        -0xe3b2a4a994f0843L    # -1.085365170701198E240
        -0x18bbfd0c6a036767L    # -2.7862980412618008E189
    .end array-data
.end method

.method private removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    if-ge v4, v2, :cond_5

    .line 16
    .line 17
    aget-object v6, p1, v4

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_1
    if-ge v7, v5, :cond_3

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    aget-object v8, v1, v7

    .line 25
    .line 26
    if-eqz v8, :cond_4

    .line 27
    .line 28
    :cond_1
    if-eqz v6, :cond_2

    .line 29
    .line 30
    aget-object v8, v1, v7

    .line 31
    .line 32
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    add-int/lit8 v7, v5, 0x1

    .line 43
    .line 44
    aput-object v6, v1, v5

    .line 45
    .line 46
    move v5, v7

    .line 47
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    if-ne v5, v0, :cond_6

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_6
    new-array p1, v5, [Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    :cond_7
    :goto_3
    return-object p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->lambda$connect$0(Lcom/trilead/ssh2/Connection$1TimeoutState;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/trilead/ssh2/Connection;->lambda$enableDebugging$1(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_1
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1

    .line 55
    :array_0
    .array-data 8
        -0x6c1ae2794d2ea004L    # -7.840271152995594E-213
        -0xb51c473c9b17f83L
        -0x1962b5254f8c452dL    # -1.9914631986984559E186
        0x4f89e2fafa6460f8L    # 1.4636076047957573E75
    .end array-data
.end method

.method public declared-synchronized authenticateWithAgent(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 43
    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Lcom/trilead/ssh2/auth/AgentProxy;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return p1

    .line 56
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    new-array v0, v0, [J

    .line 104
    .line 105
    fill-array-data v0, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p1

    .line 121
    :array_0
    .array-data 8
        -0x7363eb06761ef965L    # -6.275532384707534E-248
        0x33245eecdd2d549dL    # 2.47593379997223E-62
        0x7001c882406a0b01L    # 3.451099741303932E231
        -0x574c4f6abb0aba12L
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        0x7fc36fd32ea6fb67L    # 2.7297992913907857E307
        0x7c6e35b8022f9c35L    # 2.3552349381143876E291
        0x21bf5b20d334e340L
        0x4510a0aff897953bL    # 5.025409461064058E24
        -0x7e3fc36277a63929L
        -0x17d05344a7cca028L    # -7.225704568021606E193
    .end array-data

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
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        -0x32bad3024ea4967bL    # -1.74223933108114E64
        0x3cc63534ffe6c655L    # 6.163913812680971E-16
        -0x10901dd8da4900adL    # -6.0424280544442154E228
        0x1fe4548be6649a8fL    # 4.738437625859421E-155
        -0x41fd5439a5db1ebcL    # -5.433974835101744E-10
    .end array-data
.end method

.method public declared-synchronized authenticateWithDSA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 8
    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 44
    .line 45
    :cond_1
    if-eqz p1, :cond_3

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return p1

    .line 67
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array p3, v0, [J

    .line 72
    .line 73
    fill-array-data p3, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array p3, v0, [J

    .line 92
    .line 93
    fill-array-data p3, :array_1

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/4 p3, 0x6

    .line 112
    new-array p3, p3, [J

    .line 113
    .line 114
    fill-array-data p3, :array_2

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    const/4 p3, 0x5

    .line 133
    new-array p3, p3, [J

    .line 134
    .line 135
    fill-array-data p3, :array_3

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1

    .line 149
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    throw p1

    .line 151
    :array_0
    .array-data 8
        -0x6fbfb033e2394db1L    # -2.101322799220127E-230
        -0x87da66d377a261dL    # -4.733471531220976E267
        -0x363c8a26fb32f838L
        -0x3238e0127137a4baL    # -4.870634218547437E66
    .end array-data

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
    :array_1
    .array-data 8
        -0x32bd2c2fc6450365L    # -1.549028297598148E64
        -0x4df69476179e6b47L    # -1.1786036415862093E-67
        -0x67c1a3e4a5f65250L
        -0x41e6583c85c1b83cL    # -1.4933365455441305E-9
    .end array-data

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
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 8
        0x73296b4f692f71caL    # 5.5540273055355346E246
        -0x5d7404e1df7c7150L    # -2.86823136463762E-142
        0x6a91194935e980d3L    # 2.144381322792773E205
        0x751cd30a99eb8341L    # 1.3524970110967556E256
        -0x35b783df2c7683afL    # -7.156937240569288E49
        -0x5f1521fca0e7de4aL
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_3
    .array-data 8
        0x24885a810d5506f1L
        -0x357ee15ae1b3080eL    # -8.00655354248558E50
        -0x59f397447bf40dd7L    # -2.098405734817482E-125
        0x12cf1753b59d1341L
        0x1a9bf38b4ef02ff4L
    .end array-data
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 2

    const/4 v0, 0x5

    monitor-enter p0

    if-eqz p3, :cond_5

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v1, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return p1

    .line 11
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x6

    new-array p3, p3, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        -0x7fd8a8ec90670463L    # -6.491692009636133E-308
        0x31bbfbb5a870ac8cL
        0x5fdd2dc758a165a3L    # 6.112875856754664E153
        0x2a3f505797248a70L
    .end array-data

    :array_1
    .array-data 8
        0x41900135382a06e9L    # 6.712865404104199E7
        0x60b201712d2a6d46L    # 6.180251427964176E157
        -0x5b4f2474f20c176bL    # -5.937415051509003E-132
        0x32e428afb62d6380L    # 1.531363971084713E-63
        -0x4fc6dbf0cd376f49L    # -2.1712067788361318E-76
        0x9d18d4697b78a34L
    .end array-data

    :array_2
    .array-data 8
        -0x7458eb0bac829dd0L
        0x51bdccfe877035abL    # 5.7893007095535E85
        0x341a8a5ab094bbe6L    # 1.0570342585991238E-57
        0x785dd6795d2eabbL
        0x1bc95850ac58b96aL    # 8.005795595444661E-175
    .end array-data

    :array_3
    .array-data 8
        0x29f5be40cad1784fL
        0x29515cc42d871f22L
        -0x42c6899ad83e37beL    # -9.046090457116984E-14
        0x3adeb64913bad711L    # 3.969439758690854E-25
        0x17fcde1c20e31e8cL
    .end array-data
.end method

.method public declared-synchronized authenticateWithNone(Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 43
    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateNone(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return p1

    .line 56
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    new-array v1, v1, [J

    .line 62
    .line 63
    fill-array-data v1, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v1, 0x6

    .line 82
    new-array v1, v1, [J

    .line 83
    .line 84
    fill-array-data v1, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    const/4 v1, 0x5

    .line 103
    new-array v1, v1, [J

    .line 104
    .line 105
    fill-array-data v1, :array_2

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p1

    .line 121
    :array_0
    .array-data 8
        0x3e8e79701ec3d728L    # 2.2705172798120977E-7
        -0x8ece528b69fb1e0L
        -0x5cabea9d0d2cd782L    # -1.686484260112864E-138
        -0x5910656865cc9a00L
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        0x3decdde67146669fL    # 2.100335952360235E-10
        0x320bd5ece034a3a5L    # 1.290601852424636E-67
        -0x67331984ea339a1aL
        -0x3a822de22b9ed1d3L    # -5.768175358299006E26
        -0x500f8aa3963572fL
        -0x22ef3cedaac3b2c0L
    .end array-data

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
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        0x718f5ad8a57c29ceL    # 1.0208726275039812E239
        0x507b181d77f60c8cL    # 5.0196703748475164E79
        -0x4d06db8bf20e4be5L    # -3.8198611694515915E-63
        -0x749597f912ac8cbcL
        0xd1f099211aa11a3L
    .end array-data
.end method

.method public declared-synchronized authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 8
    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 44
    .line 45
    :cond_1
    if-eqz p1, :cond_3

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return p1

    .line 59
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_0

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v0, 0x6

    .line 105
    new-array v0, v0, [J

    .line 106
    .line 107
    fill-array-data v0, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_3

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p1

    .line 143
    :array_0
    .array-data 8
        0x6a59a7e02790e75L
        -0x6b57f0f0529f4f35L    # -3.659043555718028E-209
        0x7ff7b599db8ea7daL
        -0x131a7e112a13fffeL    # -3.707130315609126E216
        -0x3491f536fbbbd20L    # -5.707512793630391E292
    .end array-data

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
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_1
    .array-data 8
        -0x211fc96c44ebbb14L    # -1.0365646369368357E149
        0x4f3f18e8aceeb294L    # 5.494417383998832E73
        -0x29ce80058427f04cL    # -1.605441309344907E107
        -0x778b9bd699dc71d7L    # -6.175723728797715E-268
    .end array-data

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
        0x48e67bfa2db9f73bL    # 1.5669260528433113E43
        0x47cffb7786fdc3bcL    # 8.502351736535516E37
        0x137a8c6611044cceL    # 7.701263573373641E-215
        0x4bc0ffe176266d89L    # 8.33654722630211E56
        0x514ed0b1ce7f0bb0L    # 4.676855931522466E83
        0x99ffb73a47b8df3L
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        0x39ae5caf1b6d3f4cL    # 7.484822443725087E-31
        -0x5b471553dbeed9f8L    # -8.775911646039817E-132
        0x4dfb1bd0ac4507ccL    # 4.5677989684484615E67
        -0x32ac2c049b2d9d4bL    # -3.262715439717503E64
        -0x44e62bac4dc6cc6fL    # -5.341395163243117E-24
    .end array-data
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    if-eqz p2, :cond_1

    const/16 v0, 0x100

    .line 15
    :try_start_0
    new-array v0, v0, [C

    .line 16
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 17
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 18
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result p2

    if-gez p2, :cond_0

    .line 19
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 20
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 21
    :try_start_1
    invoke-virtual {v1, v0, v3, p2}, Ljava/io/CharArrayWriter;->write([CII)V

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x62dc6c536ede154bL    # 1.6760608262212362E168
        0x40a28b4599efd9a3L    # 2373.6359400704546
        0x2c8412945760f18bL    # 3.0071457433246337E-94
        0x6360d84c8821e64aL    # 5.085766940706266E170
    .end array-data
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v1, :cond_5

    .line 2
    iget-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 5
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v1, v2}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 8
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return p1

    .line 10
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x6

    new-array p3, p3, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x63491ebf970646aL
        -0x7fa3fc64c3ea059dL    # -6.233341364091291E-307
        -0x2b3cb74e12345916L
        0x3324b5220323d313L    # 2.516863310265624E-62
        0x58eea9399f0e98feL    # 2.474201722942423E120
    .end array-data

    :array_1
    .array-data 8
        0x678cff0984dbc32L
        -0x2d5125a80c13050aL    # -1.9640148922003051E90
        0x60fd583cc7cfdb2cL    # 1.6115621840579193E159
        0x39a7d520c149fa44L    # 5.8751725061010145E-31
    .end array-data

    :array_2
    .array-data 8
        0x58f9500d22892c17L    # 4.0852323487941254E120
        0x67113cd2bdfba6d5L    # 3.0000871208498457E188
        -0x56b86d83aec9ee33L    # -7.841368835542423E-110
        0x3e78370bf6a32f3bL    # 9.020800254276638E-8
        -0x5825cfc75bf48797L
        -0x61761d955a31986cL    # -1.438371626828012E-161
    .end array-data

    :array_3
    .array-data 8
        -0x29d42a8803aa1892L    # -1.2767384834503758E107
        -0x75cc14e8fd731986L    # -1.61933405180247E-259
        0x32dfe7734694949eL    # 1.2117902748929334E-63
        0x6ce6e81b05ecf5aaL    # 3.9482869993277636E216
        0x7e5251851d5fdbeaL    # 3.066931775862118E300
    .end array-data
.end method

.method public declared-synchronized cancelRemotePortForwarding(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    new-array v1, v1, [J

    .line 46
    .line 47
    fill-array-data v1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1

    .line 63
    :array_0
    .array-data 8
        0x24f17c9fabe9ea2fL    # 9.85445286236496E-131
        0x3f168a62708aae2eL    # 8.598543002829508E-5
        -0x363bb346c9867d66L    # -2.3178161272245003E47
        0x7e830237fa1a1b51L    # 2.5459937395722705E301
        -0x56dd5829b5a3d7e4L
        0x313ecf3875ff020bL    # 1.7437533722913953E-71
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
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        -0x25b8555036c7bb91L    # -8.010261964693335E126
        0x66072183ecadbe21L    # 3.0714275067437197E183
        -0x2cc84b5b729c3c86L    # -7.726277297089998E92
        -0x2c979a5dacea66e7L    # -6.361290658262147E93
        0x556748d67031608eL    # 2.6075692938048257E103
        -0x3a24e295f5474bf7L    # -3.3566619530276155E28
        0x1316334957e6bd89L
    .end array-data
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/trilead/ssh2/Connection;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v0}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 8
        0x7a8b9b8b1e3664fL
        -0x4419439977e122f7L    # -3.851617970333559E-20
        0x6b03d3b15d1f0471L    # 3.1827490407715185E207
    .end array-data

    :array_1
    .array-data 8
        -0x4ddefb63f00678faL    # -3.156164686333867E-67
        0x3cbeb026df0a83a2L
        0x5b27440b714a5cfL    # 3.177000050675402E-281
        0x530bf382b566f426L    # 1.1387525376151877E92
        0x32e268366a357d27L    # 1.3982854243139654E-63
    .end array-data
.end method

.method public connect()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;III)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;III)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p4

    const/4 v0, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x6

    .line 4
    iget-object v6, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v6, :cond_9

    if-ltz p2, :cond_8

    if-ltz v2, :cond_7

    .line 5
    new-instance v6, Lcom/trilead/ssh2/Connection$1TimeoutState;

    invoke-direct {v6, v1}, Lcom/trilead/ssh2/Connection$1TimeoutState;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 6
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v7, v1, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    iget v8, v1, Lcom/trilead/ssh2/Connection;->port:I

    iget-object v9, v1, Lcom/trilead/ssh2/Connection;->sourceAddress:Ljava/lang/String;

    invoke-direct {v0, v7, v8, v9}, Lcom/trilead/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 7
    iget-object v7, v1, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 8
    iget-object v7, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    monitor-enter v7

    .line 9
    :try_start_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-lez v2, :cond_0

    .line 10
    :try_start_1
    new-instance v0, Lcom/trilead/ssh2/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    invoke-direct {v0, v1, v6}, Lcom/trilead/ssh2/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    int-to-long v10, v2

    add-long/2addr v8, v10

    .line 12
    invoke-static {v8, v9, v0}, Lcom/trilead/ssh2/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object/from16 v16, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 13
    :goto_0
    :try_start_2
    iget-object v7, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v8, v1, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v10, v1, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v13

    iget-object v14, v1, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v14}, Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;IILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    :try_start_3
    iget-object v0, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-boolean v7, v1, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    invoke-virtual {v0, v7}, Lcom/trilead/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V

    .line 15
    iget-object v0, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, v15}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v16, :cond_2

    .line 16
    :try_start_4
    invoke-static/range {v16 .. v16}, Lcom/trilead/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 17
    monitor-enter v6
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 18
    :try_start_5
    iget-boolean v7, v6, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-nez v7, :cond_1

    .line 19
    iput-boolean v15, v6, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 20
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :goto_1
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_3

    :catch_2
    move-exception v0

    .line 23
    :try_start_7
    new-instance v7, Ljava/net/SocketTimeoutException;

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x7

    new-array v9, v9, [J

    fill-array-data v9, :array_1

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/net/SocketTimeoutException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    if-eqz v7, :cond_4

    .line 25
    :try_start_8
    invoke-static {v7}, Lcom/trilead/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 26
    monitor-enter v6
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 27
    :try_start_9
    iget-boolean v7, v6, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v7, :cond_3

    .line 28
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_2

    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 29
    :cond_3
    iput-boolean v15, v6, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 30
    monitor-exit v6

    goto :goto_5

    :goto_4
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    .line 31
    :cond_4
    :goto_5
    throw v0
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 32
    :goto_6
    new-instance v3, Ljava/lang/Throwable;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v5, [J

    fill-array-data v8, :array_3

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    invoke-direct {v1, v3, v7}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 33
    monitor-enter v6

    .line 34
    :try_start_b
    iget-boolean v3, v6, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-nez v3, :cond_6

    .line 35
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 36
    instance-of v2, v0, Lcom/trilead/ssh2/HTTPProxyException;

    if-eqz v2, :cond_5

    .line 37
    throw v0

    .line 38
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v5, [J

    fill-array-data v5, :array_4

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_5

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/trilead/ssh2/Connection;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 39
    :cond_6
    :try_start_c
    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v4, [J

    fill-array-data v7, :array_6

    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_7

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :goto_7
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 41
    :goto_8
    throw v0

    :catchall_5
    move-exception v0

    .line 42
    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    .line 43
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_8

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_9
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_a

    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_b

    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    invoke-static {v4, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 8
        -0x17430fb595ad63e1L    # -3.379988632773721E196
        0x432cb11384ae5182L    # 4.037998368204993E15
        -0x4c3476bd6a6fa2eaL    # -3.427160411461945E-59
        -0x3c6f4a5b05be7a9aL    # -3.010124675348791E17
        -0x4988579a7174d036L    # -2.5899717419042876E-46
        -0x4a5af0e0790dd555L    # -2.8142975997520523E-50
        0x207fa6b1e8f7fbaaL    # 3.777041241289943E-152
        0x4bf2a462b39a6bc9L    # 7.313659579307361E57
    .end array-data

    :array_1
    .array-data 8
        0x60963ca6add21371L    # 1.908149310602742E157
        0x2528b0b7f55b8147L
        -0x4d109d45b0c60023L    # -2.384196933502481E-63
        -0x5fada828f7350920L    # -5.472371027266185E-153
        0xe1a082a24b6656fL    # 9.759986769454371E-241
        0x1cb87d1cf7fde688L
        -0x539e701d8db4e4a5L    # -6.577586381716254E-95
    .end array-data

    :array_2
    .array-data 8
        0x51c3cb53332afd3bL    # 7.69073019011484E85
        0x57df64100d1de794L    # 1.9325988299914261E115
        0x2b05c3c7a19a1ebcL
        0x4ddb6b6534ce541aL    # 1.155044701668123E67
        0x145aba2a760523e9L    # 1.27027185722607E-210
        -0x60a5a4a102de520dL    # -1.199822242989422E-157
        -0x113c933654835743L    # -3.595064853620963E225
        0x3b1a25700654d529L    # 5.406915831297486E-24
    .end array-data

    :array_3
    .array-data 8
        -0x264cbb190a86a299L    # -1.2737986061020755E124
        0x7a380e66026f11f2L    # 5.458380377847137E280
        0x23eb0ab2eb3794a5L
        0x559b733e8a619b84L    # 2.4592552298051674E104
        -0x25c7165d726bb815L    # -4.215973665553047E126
        0x14a24c23874c89a4L
    .end array-data

    :array_4
    .array-data 8
        -0x32b4b499b69a0660L    # -2.245663635867328E64
        -0x500211754bf7b023L    # -1.6156006500969084E-77
        0x7ca79ec08fb089bL
        0x170f28ef25590097L
        -0x2ab4cc2c53743c34L    # -7.615817664204386E102
        -0x259dcf9df6614f31L    # -2.462503798568322E127
    .end array-data

    :array_5
    .array-data 8
        -0x7afdc5605c7b2e0L    # -3.41052419080401E271
        -0x6d818e8fa3e1a13dL
    .end array-data

    :array_6
    .array-data 8
        0x20f98378adc309beL    # 7.794230270031793E-150
        0x77484808f74b9501L    # 3.914710650710679E266
        0x3be1ea7888d05c5eL    # 3.035071805531704E-20
    .end array-data

    :array_7
    .array-data 8
        -0x1aee02c476819cc9L    # -7.289689725492311E178
        0x4bc98d08bd40ef1cL    # 1.2530132061002132E57
        0x206514ad23c0171dL
    .end array-data

    :array_8
    .array-data 8
        -0xd7902cf473876deL
        -0x403937c5c115ed64L    # -0.1779854590605695
        -0x5ae1f2d8b8b7be04L
        -0x425317c8e2424758L    # -1.3145423056860669E-11
        0x1ec3758906d3f6a4L
    .end array-data

    :array_9
    .array-data 8
        0x2d5ebd2988555037L    # 3.77250516725771E-90
        -0x5b687144647e81a6L    # -2.074302262659856E-132
        0x649912c80ac32354L    # 3.968899460367231E176
        -0x19cae1a7d346cb24L    # -2.2433710393084287E184
        -0x4635aa96246a9a60L
        -0x17f6f06b6569286aL    # -1.4292336418513662E193
    .end array-data

    :array_a
    .array-data 8
        -0x7322fd94ad14cab5L
        0x33842174155858a1L    # 1.5659189237038525E-60
        0x7bc8809424c7f243L    # 1.865486113237504E288
    .end array-data

    :array_b
    .array-data 8
        -0x426c303d55cc55c3L    # -4.5046281456727526E-12
        -0x100888fc0c898c61L    # -2.27685550330631E231
        -0x3f67662d51a6fa35L    # -1574.4557432088648
        0x37b1aa8d248fd25eL    # 2.027982158836933E-40
        0x1fd0ef50a346ce79L
    .end array-data
.end method

.method public declared-synchronized createDynamicPortForwarder(I)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createDynamicPortForwarder(II)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0xcf2415c011efad2L
        -0x138c8a6c352c6988L    # -2.620377367380091E214
        -0x4560b17e061168c8L
        -0x1ca1614408fd8eL
        0x776bfdedba9d2528L    # 1.8051723981274762E267
        0x7af9dec2d02e7dd3L    # 2.4043353446283223E284
        -0x7e7ca543ec17bac4L    # -2.257848444836054E-301
        0x223cf96157904ec8L    # 9.281382246116388E-144
    .end array-data

    :array_1
    .array-data 8
        -0x6328843c1ad59326L
        -0x53deed4c1b50141cL    # -3.996526469248962E-96
        0x56474475fb5e738eL    # 4.2691046107146624E107
        -0x2f9616d7dec074a2L    # -2.4002096224049442E79
        0x56eefeec4fd7deb8L    # 5.823595242398999E110
        -0x1e231eff475fe3eaL    # -2.5984751841578086E163
        -0x689d0e31a10b2737L    # -5.068707671491657E-196
        -0x7c203da5313af5e3L    # -5.092062400179204E-290
        -0x4605f60917ef1eb5L    # -2.054108895592293E-29
    .end array-data
.end method

.method public declared-synchronized createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/Connection;->createDynamicPortForwarder(Ljava/net/InetSocketAddress;I)Lcom/trilead/ssh2/DynamicPortForwarder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createDynamicPortForwarder(Ljava/net/InetSocketAddress;I)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x19e3606692ea8249L    # 5.700191562567226E-184
        -0x4fdb2e70aad07e8bL    # -8.989644055745363E-77
        0x5c8012940acfa3e5L    # 3.738293544114984E137
        -0x12538d82f6ab54a8L    # -2.0083836877392795E220
        -0x349e32c5b4674f46L    # -1.3640490534172112E55
        -0x163d28e7e5dfddc0L    # -2.8842499304834454E201
        -0x3e50abfe115f9ac8L    # -2.6279960731327224E8
        -0x786e0b63c013198eL    # -3.319110061051032E-272
    .end array-data

    :array_1
    .array-data 8
        0x5371ed1170d99034L    # 9.348096874997755E93
        -0x5226f6b2547c8aa7L    # -7.865967357473462E-88
        -0x312958bcf7ac1f19L    # -6.253911602885802E71
        -0x3eed396f35052c6eL    # -307620.19822245196
        -0x367af67ca64a9058L    # -1.5012619391230643E46
        -0x5089f43f73c6e724L    # -4.6482462655116784E-80
        0x458305538049ded7L    # 7.358317673284847E26
        -0x7f75f5b227480e81L    # -4.635318424787E-306
        0x201b35ce8bc59ef5L    # 5.07357038409656E-154
    .end array-data
.end method

.method public declared-synchronized createLocalPortForwarder(ILjava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x8

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x9

    new-array p3, p3, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        -0x44cdbf088c56bbf9L    # -1.509916945992734E-23
        -0x63c477d85b8c536aL
        0x5756a5751c108e8eL    # 5.446230286166214E112
        0x16da4701994e0f3fL    # 1.373171357411817E-198
        -0x2ea431db9cfbb858L    # -8.440059385867919E83
        -0x436837b84cef8affL    # -8.251158106447664E-17
        -0x1730cb4472ee75c4L    # -7.289623638934569E196
        -0x7cae2fc088722d4fL
    .end array-data

    :array_1
    .array-data 8
        0x6fae43a22101aefbL    # 9.176895825057743E229
        -0x44c9ae15557d1f2bL    # -1.8462660493939715E-23
        -0x70921d0ca41939afL    # -2.349896964028222E-234
        0x1ef6e6a0a58d643cL
        0x104bbb9f87896981L    # 3.572635077634911E-230
        -0x3635d1e3038e3773L    # -2.9892423873391774E47
        -0x31024531d28e8e82L    # -3.2829905146131642E72
        0x3cf9de3b5e7f1a08L    # 5.743870579385405E-15
        -0x3a61284dd082d217L    # -2.3863277007771354E27
    .end array-data
.end method

.method public declared-synchronized createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x8

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x9

    new-array p3, p3, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x22e44540ae91c5d8L
        -0x55a1bfa76858dc7bL
        0x7eb8d6434ca2d01fL    # 2.661302113818806E302
        0x3d7d027ef3dffd68L    # 1.649013350032775E-12
        0x36052cc29d27c7cL
        -0x298f9ce8dce2ecdcL    # -2.4053584948574123E108
        -0xb5d24ae7b70acf0L    # -6.912455433533366E253
        0x22d9e7fcff6f2924L    # 8.497786629157684E-141
    .end array-data

    :array_1
    .array-data 8
        -0xdb40c526250347dL    # -3.727669174245877E242
        0x725bce2afe4f3a84L    # 7.416257278013343E242
        -0x352848c9a532edbfL    # -3.5492347002675336E52
        0x1f17d0b35ca799fbL    # 6.775747336994104E-159
        -0x3036f52910cfc0bbL    # -2.2653946214911856E76
        -0xf70eb4008c36659L    # -1.5441247654144412E234
        0x4d7b84b4f2196876L    # 1.8112651837326463E65
        -0x494e8809f0638c43L    # -3.059840003925085E-45
        0x45c7436879219a63L    # 1.439929323279345E28
    .end array-data
.end method

.method public declared-synchronized createLocalStreamForwarder(Ljava/lang/String;I)Lcom/trilead/ssh2/LocalStreamForwarder;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/trilead/ssh2/LocalStreamForwarder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/LocalStreamForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 v0, 0x9

    .line 47
    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x2005ebbb684e2005L    # -2.1854032769544412E154
        -0x785aa3252189c157L    # -7.897876968636229E-272
        0x5318f55bbb33f973L    # 2.0336488709701776E92
        -0x2acc3f608e3dd3f1L    # -2.765025487231035E102
        0x72a6edc68e03737eL    # 1.956987422413184E244
        0x3533946429d9220cL    # 2.044211194213488E-52
        0x1458ac4b8e2cd520L    # 1.172642130606116E-210
    .end array-data

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
    :array_1
    .array-data 8
        0x6540ea765f7a692cL    # 5.483801613140416E179
        0xac6abd5eb6e69a4L
        0x77eaaa8b706ab676L
        0x6ee7d45bbce5ebacL    # 1.7640957067927047E226
        -0x43f401426f8e04bfL    # -1.897020411086993E-19
        0x30b7758080b9a460L    # 5.186452722069673E-74
        -0x26f730eeea86aaceL    # -8.007832665711855E120
        -0x2626b40ac26552cL
        0x27691596e58dafe0L    # 7.771311045822147E-119
    .end array-data
.end method

.method public declared-synchronized createSCPClient()Lcom/trilead/ssh2/SCPClient;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/trilead/ssh2/SCPClient;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/trilead/ssh2/SCPClient;-><init>(Lcom/trilead/ssh2/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/16 v2, 0xa

    .line 46
    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v0

    .line 65
    :array_0
    .array-data 8
        -0x7ba29a097b9354faL
        0x234d82bc21eb98b0L
        0x5e7b11c1e5b7b1aL
        0xd5d9b0b50501b67L
        0x54e3ddf5764649dL
        0xd3d0f7a343f3812L
        -0x3cae85cd50abe252L    # -1.9677730850240184E16
        -0x2f45c36bfbcc00edL    # -7.7772662104566E80
        -0x369c028ad03c5031L    # -3.5663475491162115E45
    .end array-data

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
    :array_1
    .array-data 8
        -0x39f0fa7da5f28c4dL    # -3.072222560761224E29
        0x4a78993689d14e8cL    # 5.752116980756005E50
        0x6299f5203a094f7L
        0x7155dca882ba67b4L    # 8.89744709775693E237
        0x5dd0bbd524a32cf6L    # 8.162260851160767E143
        -0x3cfc1fb980305780L    # -6.99327244268816E14
        -0x2449bbc4f8bd05f0L    # -6.321942630971656E133
        -0x630a5f56f05ada99L    # -3.581709559034462E-169
        0x5400ae5804739278L    # 4.453808122075305E96
        -0x6a6eb7d8fb887dc5L    # -8.612576090402312E-205
    .end array-data
.end method

.method public declared-synchronized enableDebugging(ZLcom/trilead/ssh2/DebugLogger;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sput-boolean p1, Lcom/trilead/ssh2/log/Logger;->enabled:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    sput-object p1, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    new-instance p1, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-direct {p1, p2}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object p1, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sput-object p2, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public exec(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/Session;->execCommand(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/trilead/ssh2/Connection$PumpThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p1, v1, p2}, Lcom/trilead/ssh2/Connection$PumpThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/trilead/ssh2/Connection$PumpThread;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStderr()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2, p2}, Lcom/trilead/ssh2/Connection$PumpThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 43
    .line 44
    .line 45
    const/16 p1, 0x20

    .line 46
    .line 47
    const-wide/16 v1, 0xbb8

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1, v2}, Lcom/trilead/ssh2/Session;->waitForCondition(IJ)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getExitStatus()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 63
    .line 64
    .line 65
    return p1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 69
    .line 70
    .line 71
    const/4 p1, -0x1

    .line 72
    return p1

    .line 73
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public declared-synchronized forceKeyExchange()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x7

    .line 22
    new-array v2, v2, [J

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x4387319601e59181L    # 2.08910233952727072E17
        0x44c8cb3be9893966L    # 2.341716035368639E23
        -0x398bbd929e429caaL    # -2.56819439265756E31
        -0x608519fd30c9e6baL    # -4.897901165491829E-157
        -0x1e8e7e67fd1b5ff7L    # -2.461218767336031E161
        -0x5e7f845c5b1d678L    # -1.363116910714158E280
        0x7fa01b777372c7ecL    # 5.655462347622455E306
    .end array-data
.end method

.method public declared-synchronized getConnectionInfo()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/16 v2, 0xb

    .line 20
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
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0

    .line 39
    :array_0
    .array-data 8
        0x20451e97a145cdccL    # 3.150328718922684E-153
        -0x79dea536b500821aL    # -3.824278279812136E-279
        -0x79fd26003ea68048L
        0x918ea2842db733eL
        0x7f0b3d8ba9de76a9L    # 9.340267613680097E303
        -0x7af79f4faef71f47L    # -2.04921092675007E-284
        0x252152fc801c4b8bL    # 7.810236731209143E-130
        0x7dee2cd606edf0a6L
        0x37dab6ecb4581321L    # 1.2266719458831904E-39
        0x74a1e9a8b1beb707L    # 6.566412321028538E253
        -0x48f62272562dfdafL    # -1.4498082144270437E-43
    .end array-data
.end method

.method public declared-synchronized getHostname()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public declared-synchronized getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    monitor-enter p0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    .line 54
    return-object p1

    .line 55
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v0, v0, [J

    .line 101
    .line 102
    fill-array-data v0, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p1

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x637d0bffd8ad2733L    # 1.753948895404948E171
        0x2543e70476043eb0L
        0xd3c2cf72bbf5d63L
        -0x7a76224ae77d58c3L    # -5.56626774676938E-282
        -0x3b846d0cf978a950L    # -8.138414469078093E21
        -0x519507457c42077L    # -1.054189258847931E284
    .end array-data

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
        -0x59f5c1e8eff349d6L
        0x48de52700a1258b2L    # 1.0565682631483726E43
        0x15e9c451c36955c7L    # 4.109175081239007E-203
        -0x5fb38deff6e2fcb9L
        -0xbaa8429f0747833L
    .end array-data

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
    :array_2
    .array-data 8
        0x5f5fb6685935672dL    # 2.595187424377412E151
        0x12fa899a90883005L
        -0x1d95eb011b85b5a8L    # -1.2015691177172997E166
        -0x2381163bd085cd02L    # -3.59501989862835E137
        0xf1d015717ba030bL    # 7.126885791176559E-236
    .end array-data
.end method

.method public declared-synchronized getVersionInfo()Lcom/trilead/ssh2/transport/ClientServerHello;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportManager;->getVersionInfo()Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/16 v2, 0xb

    .line 19
    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x4ba4c88c519e20e6L    # 2.548036334204884E56
        -0x38fa4ff3e8da889fL    # -1.4076112002609185E34
        0x1236748190143a90L    # 6.212096920127127E-221
        -0x1d5b18b9373edea2L    # -1.540795626734448E167
        -0x1ac3cc13b517835dL    # -4.5714085341407997E179
        0x7b7fa10959143d5L
        -0x4d91c3158c308d0aL    # -8.972703939750362E-66
        -0x3db0802faf5eb061L    # -2.7057668947462204E11
        0x50909777d6b89acfL    # 1.2295580189980753E80
        0x49302a7d20cea174L    # 3.605132180896727E44
        0x40ad64a394ace7aL
    .end array-data
.end method

.method public declared-synchronized isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    monitor-enter p0

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-object v4, p1, v3

    .line 15
    .line 16
    invoke-virtual {v4, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :cond_0
    add-int/2addr v3, v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    return v2

    .line 30
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1

    .line 53
    :array_0
    .array-data 8
        -0x3013fcb39918b09fL    # -1.0136470086818003E77
        -0x288d8e77c0e2c083L    # -1.774195113324691E113
        -0x359949e8c6893adcL    # -2.6554072211620025E50
        0x35db0786b2a4b91fL    # 2.8897289593826515E-49
        -0x4ba31e332047844cL
    .end array-data
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized isAuthenticationPartialSuccess()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getPartialSuccess()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    throw v0
.end method

.method public declared-synchronized openSession()Lcom/trilead/ssh2/Session;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/trilead/ssh2/Session;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Session;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/16 v2, 0x9

    .line 52
    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw v0

    .line 71
    :array_0
    .array-data 8
        -0x21f76c5c4139a91bL    # -9.59029145178581E144
        0x18758e49e20fe2d6L    # 7.559397847789381E-191
        -0xb26d4786aa3a7f4L    # -7.381425030544348E254
        0x3d0876a5932c0db7L    # 1.0863960385669776E-14
        0x33bc27ce66944c06L    # 1.7521206418217639E-59
        0x583395c57888bc48L    # 7.716900414295452E116
        0x33435509e5f68b48L    # 9.39878638437319E-62
        0x66e13989df6712deL    # 3.747317540347633E187
    .end array-data

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
        -0x5c31c7916db07f3eL
        -0x577c50b6300b6c6aL    # -1.598677585184215E-113
        -0x16c74ec590aeb643L    # -7.383098514322027E198
        -0x54f5000987cfe5adL    # -2.410976042708634E-101
        0x570f769eb6a0449cL    # 2.3645772496696765E111
        -0xec0097268e18259L    # -3.2521117975047483E237
        -0x30a683ba65a92154L    # -1.8011547862644303E74
        -0x5800803dc5695004L
        0x6d61ea06f8775cf1L    # 7.904666082233283E218
    .end array-data
.end method

.method public declared-synchronized ping()J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalTrileadPing()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-wide v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v2, 0x7

    .line 46
    new-array v2, v2, [J

    .line 47
    .line 48
    fill-array-data v2, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x423926ec294172bdL    # -4.1560195253173276E-11
        0x18c026aad8c4d73fL
        0x246418018888078eL
        -0x11e139fb8bf76018L    # -2.7809538864916302E222
        0x47de0e9d942ff06L
        -0x4b2d84c8bbe60fa2L    # -3.0149047011437585E-54
    .end array-data

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
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        -0x46f65363db9a1427L    # -6.180852674666836E-34
        -0x72ff120b8d33f4ccL    # -4.842593014314992E-246
        0x43dba1df68fc8dc4L    # 7.9644726091248476E18
        -0x35274c27d85e8f68L    # -3.6969235514569006E52
        -0x3e37be9542b1e651L    # -8.138806986101588E8
        0x47447bb9f6908744L    # 2.127108141400947E35
        -0x3358f5934f7dc772L    # -1.851250554688882E61
    .end array-data
.end method

.method public declared-synchronized requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    if-lez p2, :cond_0

    .line 15
    .line 16
    if-lez p4, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 p3, 0x6

    .line 38
    new-array p3, p3, [J

    .line 39
    .line 40
    fill-array-data p3, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 p3, 0x7

    .line 59
    new-array p3, p3, [J

    .line 60
    .line 61
    fill-array-data p3, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1

    .line 77
    :array_0
    .array-data 8
        -0x5241a604c274b2c8L
        0x5acaf00eabc08210L
        0x32dc80778c7198b2L
        -0x36830b0742f6bfb4L    # -1.0332174474005269E46
        0x5fade1bade45eedeL    # 7.825173182736432E152
        0x593e57f2a3f87396L    # 7.835461834748475E121
    .end array-data

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
    :array_1
    .array-data 8
        0x1420ee4cac140b34L
        -0x6b060fd6b2b09a4bL
        -0x38e2a2e522032b74L    # -3.8116250406178795E34
        0x76b501f92ee219dfL    # 6.615076961056041E263
        -0x7b646cbeeb96d665L
        -0xff9e81408a7d5c1L    # -4.287559001235101E231
        -0x6d8ccfdcf41bd00aL
    .end array-data
.end method

.method public declared-synchronized sendIgnorePacket()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    new-array v1, v1, [B

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/trilead/ssh2/Connection;->sendIgnorePacket([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized sendIgnorePacket([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/trilead/ssh2/packets/PacketIgnore;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;-><init>()V

    .line 8
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/PacketIgnore;->setData([B)V

    .line 9
    iget-object p1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;->getPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xb

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 8
        0x18237941f5738dc7L    # 2.134127798410731E-192
        0x2fe0e3c13c8fbc6L
        0x4bafa2440a1467e2L    # 3.8782988108638175E56
        -0x7be62075d13ab4a0L    # -6.637344425324363E-289
        0x67f40593b17548caL    # 5.709262782817926E192
        0x588e86dd7cb51a64L    # 3.849017080115653E118
        -0x67ab6ddd1c9b28bL    # -2.358269900224742E277
        -0x7e30651267eeeb25L    # -5.899194404025309E-300
        -0x516ed39979c5b386L    # -2.2100317076427754E-84
        -0xcaf6a525bd8e277L    # -2.898968994669062E247
        0x1dc60a8cc52631c7L    # 2.990252285580098E-165
    .end array-data

    :array_1
    .array-data 8
        0xb058a90ee59a928L
        -0x210912da24397f20L
        0x426cbe95cde8c660L    # 9.876525832381992E11
        -0x5a12a4e1a92d0daaL    # -5.420853791754827E-126
        0x6a01e6970b60584bL    # 4.384682374126632E202
    .end array-data
.end method

.method public declared-synchronized setClient2ServerCiphers([Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setClient2ServerMACs([Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->checkMacs([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public setCompression(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setDHGexParameters(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public declared-synchronized setProxyData(Lcom/trilead/ssh2/ProxyData;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public declared-synchronized setServer2ClientCiphers([Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setServer2ClientMACs([Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MessageMac;->checkMacs([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setServerHostKeyAlgorithms([Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/trilead/ssh2/transport/KexManager;->checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setTCPNoDelay(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method
