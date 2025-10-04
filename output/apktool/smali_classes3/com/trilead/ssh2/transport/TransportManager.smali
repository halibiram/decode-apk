.class public Lcom/trilead/ssh2/transport/TransportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;,
        Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;
    }
.end annotation


# static fields
.field public static final MAX_PACKET_SIZE:I

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private final asynchronousQueue:Ljava/util/Vector;

.field private asynchronousThread:Ljava/lang/Thread;

.field connectionMonitors:Ljava/util/Vector;

.field final connectionSemaphore:Ljava/lang/Object;

.field flagKexOngoing:Z

.field hostname:Ljava/lang/String;

.field km:Lcom/trilead/ssh2/transport/KexManager;

.field messageHandlers:Ljava/util/Vector;

.field monitorsWereInformed:Z

.field port:I

.field proxyData:Lcom/trilead/ssh2/ProxyData;

.field reasonClosedCause:Ljava/lang/Throwable;

.field receiveThread:Ljava/lang/Thread;

.field sock:Ljava/net/Socket;

.field private final sourceAddress:Ljava/lang/String;

.field tc:Lcom/trilead/ssh2/transport/TransportConnection;

.field private versions:Lcom/trilead/ssh2/transport/ClientServerHello;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/trilead/ssh2/transport/TransportManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/high16 v1, 0x10000

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    sput v0, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x7a5f7f965b59f38L
        0x3829d9277ad94353L    # 3.7980602549310453E-38
        -0x51ac534da2f9fdc3L    # -1.5824393608564508E-85
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/trilead/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 7
    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 10
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 11
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    .line 13
    iput-object p3, p0, Lcom/trilead/ssh2/transport/TransportManager;->sourceAddress:Ljava/lang/String;

    return-void
.end method

.method private connectDirect(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 4

    .line 1
    new-instance v0, Ljava/net/Socket;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sourceAddress:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 28
    .line 29
    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/transport/TransportManager;->parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private ensureConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x6

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
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/io/IOException;

    .line 33
    .line 34
    throw v0

    :array_0
    .array-data 8
        -0x439ffa0842c73cL
        0x12ddbcbcb236387L
        0x2f3bde270c350e89L    # 3.6723461000316177E-81
        -0x54f2511ee8104be1L    # -2.650580809078628E-101
        0x61662072c972b693L    # 1.5554116811429529E161
        -0x3fcd8660944d6986L    # -18.47508881673864
    .end array-data
.end method

.method private establishConnection(Lcom/trilead/ssh2/ProxyData;II)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 4
    .line 5
    iget v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/trilead/ssh2/transport/TransportManager;->connectDirect(Ljava/lang/String;III)Ljava/net/Socket;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    .line 15
    .line 16
    iget v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    .line 17
    .line 18
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/trilead/ssh2/ProxyData;->openConnection(Ljava/lang/String;III)Ljava/net/Socket;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private static parseIPv4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/16 v1, 0x2e

    .line 6
    .line 7
    invoke-static {p0, v1}, Lcom/trilead/ssh2/util/Tokenizer;->parseTokens(Ljava/lang/String;C)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    goto :goto_4

    .line 18
    :cond_1
    new-array v2, v3, [B

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v3, :cond_8

    .line 23
    .line 24
    aget-object v6, v1, v5

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_7

    .line 31
    .line 32
    aget-object v6, v1, v5

    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x3

    .line 39
    if-le v6, v7, :cond_2

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_1
    aget-object v8, v1, v5

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-ge v6, v8, :cond_5

    .line 51
    .line 52
    aget-object v8, v1, v5

    .line 53
    .line 54
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    const/16 v9, 0x30

    .line 59
    .line 60
    if-lt v8, v9, :cond_4

    .line 61
    .line 62
    const/16 v9, 0x39

    .line 63
    .line 64
    if-le v8, v9, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    mul-int/lit8 v7, v7, 0xa

    .line 68
    .line 69
    add-int/lit8 v8, v8, -0x30

    .line 70
    .line 71
    add-int/2addr v7, v8

    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    return-object v0

    .line 76
    :cond_5
    const/16 v6, 0xff

    .line 77
    .line 78
    if-le v7, v6, :cond_6

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_6
    int-to-byte v6, v7

    .line 82
    aput-byte v6, v2, v5

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    :goto_3
    return-object v0

    .line 88
    :cond_8
    invoke-static {p0, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_9
    :goto_4
    return-object v0
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/transport/TransportManager;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/transport/TransportManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method


# virtual methods
.method public changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeRecvCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->changeSendCipher(Lcom/trilead/ssh2/crypto/cipher/BlockCipher;Lcom/trilead/ssh2/crypto/digest/MAC;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close(Ljava/lang/Throwable;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v4, 0x4

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
    const/16 v4, 0x32

    .line 27
    .line 28
    invoke-virtual {v2, v4, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-nez p2, :cond_2

    .line 32
    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Lcom/trilead/ssh2/ProxyData;->close()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_2
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2

    .line 50
    :try_start_1
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    if-nez v3, :cond_7

    .line 53
    .line 54
    if-ne p2, v1, :cond_5

    .line 55
    .line 56
    :try_start_2
    new-instance p2, Lcom/trilead/ssh2/packets/PacketDisconnect;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v5, v1, [J

    .line 65
    .line 66
    const-wide v6, 0x21fa320aa0e1b241L    # 5.244551702148469E-145

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    aput-wide v6, v5, v0

    .line 72
    .line 73
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/16 v5, 0xb

    .line 81
    .line 82
    invoke-direct {p2, v5, v3, v4}, Lcom/trilead/ssh2/packets/PacketDisconnect;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/trilead/ssh2/packets/PacketDisconnect;->getPayload()[B

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object v3, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3, p2}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    goto :goto_6

    .line 99
    :catch_1
    :cond_3
    :goto_0
    :try_start_3
    iget-object p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 100
    .line 101
    if-eqz p2, :cond_4

    .line 102
    .line 103
    invoke-interface {p2}, Lcom/trilead/ssh2/ProxyData;->close()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_2
    nop

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 110
    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    if-nez p1, :cond_6

    .line 117
    .line 118
    :try_start_4
    new-instance p1, Ljava/lang/Exception;

    .line 119
    .line 120
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v3, 0x3

    .line 123
    new-array v3, v3, [J

    .line 124
    .line 125
    fill-array-data v3, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 139
    .line 140
    :cond_7
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    .line 144
    .line 145
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_5
    iget-boolean p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 148
    .line 149
    if-nez p1, :cond_8

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->monitorsWereInformed:Z

    .line 152
    .line 153
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/util/Vector;

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catchall_1
    move-exception p1

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    const/4 p1, 0x0

    .line 165
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    if-eqz p1, :cond_9

    .line 167
    .line 168
    :goto_4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-ge v0, p2, :cond_9

    .line 173
    .line 174
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lcom/trilead/ssh2/ConnectionMonitor;

    .line 179
    .line 180
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 181
    .line 182
    invoke-interface {p2, v2}, Lcom/trilead/ssh2/ConnectionMonitor;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 183
    .line 184
    .line 185
    :catch_3
    add-int/2addr v0, v1

    .line 186
    goto :goto_4

    .line 187
    :cond_9
    return-void

    .line 188
    :goto_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    throw p1

    .line 190
    :goto_6
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 191
    throw p1

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        -0x51a5c9a836751e8bL    # -2.1082688367224577E-85
        0x31c19499187ade0eL    # 5.09449642756592E-69
        -0x3a846b523aabadd4L    # -5.334898059978355E26
        0x61ab42c8102a847eL
    .end array-data

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
    :array_1
    .array-data 8
        0x3bb43be548c26cfaL    # 4.2847092496731426E-21
        -0x1606ff189196b2e5L    # -3.06223456233446E202
        -0x1cc6f5ac2b6c2ba3L    # -9.450130849215662E169
    .end array-data
.end method

.method public forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/KexManager;->getOrWaitForConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPacketOverheadEstimate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/trilead/ssh2/transport/TransportConnection;->getPacketOverheadEstimate()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->reasonClosedCause:Ljava/lang/Throwable;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getSessionIdentifier()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexManager;->sessionId:[B

    .line 4
    .line 5
    return-object v0
.end method

.method public getVersionInfo()Lcom/trilead/ssh2/transport/ClientServerHello;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->versions:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;IILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    .locals 8

    .line 2
    iput-object p7, p0, Lcom/trilead/ssh2/transport/TransportManager;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 3
    invoke-direct {p0, p7, p4, p5}, Lcom/trilead/ssh2/transport/TransportManager;->establishConnection(Lcom/trilead/ssh2/ProxyData;II)V

    .line 4
    new-instance v2, Lcom/trilead/ssh2/transport/ClientServerHello;

    iget-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p4

    iget-object p5, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p5

    invoke-direct {v2, p4, p5}, Lcom/trilead/ssh2/transport/ClientServerHello;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 5
    iput-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->versions:Lcom/trilead/ssh2/transport/ClientServerHello;

    .line 6
    new-instance p4, Lcom/trilead/ssh2/transport/TransportConnection;

    iget-object p5, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p5

    iget-object p7, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    invoke-virtual {p7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p7

    invoke-direct {p4, p5, p7, p6}, Lcom/trilead/ssh2/transport/TransportConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 7
    new-instance p4, Lcom/trilead/ssh2/transport/KexManager;

    iget-object v4, p0, Lcom/trilead/ssh2/transport/TransportManager;->hostname:Ljava/lang/String;

    iget v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->port:I

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/trilead/ssh2/transport/KexManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;Lcom/trilead/ssh2/transport/ClientServerHello;Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/lang/String;ILcom/trilead/ssh2/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V

    iput-object p4, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 8
    invoke-virtual {p4, p1, p3}, Lcom/trilead/ssh2/transport/KexManager;->initiateKEX(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V

    .line 9
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/trilead/ssh2/transport/TransportManager$1;

    invoke-direct {p2, p0}, Lcom/trilead/ssh2/transport/TransportManager$1;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 11
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;IILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V

    return-void
.end method

.method public isConnectionClosed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/trilead/ssh2/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public kexFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public receiveLoop()V
    .locals 13

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    sget v3, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    .line 5
    .line 6
    new-array v4, v3, [B

    .line 7
    .line 8
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    invoke-virtual {v5, v4, v6, v3}, Lcom/trilead/ssh2/transport/TransportConnection;->receiveMessage([BII)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    aget-byte v7, v4, v6

    .line 16
    .line 17
    const/16 v8, 0xff

    .line 18
    .line 19
    and-int/2addr v7, v8

    .line 20
    if-ne v7, v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v9, 0x4

    .line 24
    const v10, 0xfffd

    .line 25
    .line 26
    .line 27
    const/16 v11, 0x7e

    .line 28
    .line 29
    const/16 v12, 0x20

    .line 30
    .line 31
    if-ne v7, v9, :cond_4

    .line 32
    .line 33
    sget-object v7, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 34
    .line 35
    invoke-virtual {v7}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    new-instance v7, Lcom/trilead/ssh2/packets/TypesReader;

    .line 42
    .line 43
    invoke-direct {v7, v4, v6, v5}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 50
    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuffer;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v9, v2, [J

    .line 60
    .line 61
    fill-array-data v9, :array_0

    .line 62
    .line 63
    .line 64
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-ge v6, v7, :cond_3

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-lt v7, v12, :cond_2

    .line 89
    .line 90
    if-gt v7, v11, :cond_2

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v5, v6, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 94
    .line 95
    .line 96
    :goto_2
    add-int/2addr v6, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    sget-object v6, Lcom/trilead/ssh2/transport/TransportManager;->log:Lcom/trilead/ssh2/log/Logger;

    .line 99
    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v9, v0, [J

    .line 108
    .line 109
    fill-array-data v9, :array_1

    .line 110
    .line 111
    .line 112
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    new-array v8, v2, [J

    .line 132
    .line 133
    fill-array-data v8, :array_2

    .line 134
    .line 135
    .line 136
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    const/16 v8, 0x32

    .line 140
    .line 141
    invoke-static {v5, v7, v6, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_4
    const/4 v9, 0x3

    .line 147
    if-eq v7, v9, :cond_e

    .line 148
    .line 149
    if-ne v7, v1, :cond_8

    .line 150
    .line 151
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    .line 152
    .line 153
    invoke-direct {v0, v4, v6, v5}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    new-instance v4, Ljava/lang/StringBuffer;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .line 167
    .line 168
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v7, v2, [J

    .line 171
    .line 172
    fill-array-data v7, :array_3

    .line 173
    .line 174
    .line 175
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v0, v5}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-le v0, v8, :cond_5

    .line 194
    .line 195
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 196
    .line 197
    .line 198
    const/16 v0, 0xfe

    .line 199
    .line 200
    const/16 v5, 0x2e

    .line 201
    .line 202
    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 203
    .line 204
    .line 205
    const/16 v0, 0xfd

    .line 206
    .line 207
    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 208
    .line 209
    .line 210
    const/16 v0, 0xfc

    .line 211
    .line 212
    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 213
    .line 214
    .line 215
    :cond_5
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-ge v6, v0, :cond_7

    .line 220
    .line 221
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-lt v0, v12, :cond_6

    .line 226
    .line 227
    if-gt v0, v11, :cond_6

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    invoke-virtual {v4, v6, v10}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 231
    .line 232
    .line 233
    :goto_4
    add-int/2addr v6, v1

    .line 234
    goto :goto_3

    .line 235
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 243
    .line 244
    const/4 v6, 0x7

    .line 245
    new-array v6, v6, [J

    .line 246
    .line 247
    fill-array-data v6, :array_4

    .line 248
    .line 249
    .line 250
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v2, v2, [J

    .line 266
    .line 267
    fill-array-data v2, :array_5

    .line 268
    .line 269
    .line 270
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_8
    const/16 v8, 0x14

    .line 296
    .line 297
    if-eq v7, v8, :cond_d

    .line 298
    .line 299
    const/16 v8, 0x15

    .line 300
    .line 301
    if-eq v7, v8, :cond_d

    .line 302
    .line 303
    const/16 v8, 0x1e

    .line 304
    .line 305
    if-lt v7, v8, :cond_9

    .line 306
    .line 307
    const/16 v8, 0x31

    .line 308
    .line 309
    if-gt v7, v8, :cond_9

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_9
    :goto_5
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 313
    .line 314
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    if-ge v6, v8, :cond_b

    .line 319
    .line 320
    iget-object v8, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 321
    .line 322
    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    check-cast v8, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 327
    .line 328
    iget v9, v8, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 329
    .line 330
    if-gt v9, v7, :cond_a

    .line 331
    .line 332
    iget v9, v8, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 333
    .line 334
    if-gt v7, v9, :cond_a

    .line 335
    .line 336
    iget-object v6, v8, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_a
    add-int/2addr v6, v1

    .line 340
    goto :goto_5

    .line 341
    :cond_b
    const/4 v6, 0x0

    .line 342
    :goto_6
    if-eqz v6, :cond_c

    .line 343
    .line 344
    invoke-interface {v6, v4, v5}, Lcom/trilead/ssh2/transport/MessageHandler;->handleMessage([BI)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 350
    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 357
    .line 358
    new-array v0, v0, [J

    .line 359
    .line 360
    fill-array-data v0, :array_6

    .line 361
    .line 362
    .line 363
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 377
    .line 378
    new-array v2, v2, [J

    .line 379
    .line 380
    fill-array-data v2, :array_7

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 384
    .line 385
    .line 386
    invoke-static {v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v1

    .line 394
    :cond_d
    :goto_7
    iget-object v6, p0, Lcom/trilead/ssh2/transport/TransportManager;->km:Lcom/trilead/ssh2/transport/KexManager;

    .line 395
    .line 396
    invoke-virtual {v6, v4, v5}, Lcom/trilead/ssh2/transport/KexManager;->handleMessage([BI)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 402
    .line 403
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    const/16 v2, 0x8

    .line 406
    .line 407
    new-array v2, v2, [J

    .line 408
    .line 409
    fill-array-data v2, :array_8

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :array_0
    .array-data 8
        -0x4628f390e7d33081L    # -4.545528981404849E-30
        -0x1ddb4288e24602f4L    # -5.971706666963571E164
    .end array-data

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
    :array_1
    .array-data 8
        0x7590d9c0c9ba268bL    # 2.0240983643271383E258
        0x2aef0902b6a8ddc8L    # 6.928288985459079E-102
        -0x52a448ca8430cf29L    # -3.4014691158406186E-90
        0x747d57dfb687455aL    # 1.3445739641617098E253
        -0x50214a9b4076264dL    # -4.143818344445565E-78
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
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
    :array_2
    .array-data 8
        -0x44c7d3e12ef67101L    # -1.9994895328626212E-23
        -0x452d1cc7de3911c4L    # -2.4411618858517326E-25
    .end array-data

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
    :array_3
    .array-data 8
        0x10f6fe18805660d8L    # 6.066114900652341E-227
        0x4beb0f75370f2b87L    # 5.3081491487189016E57
    .end array-data

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
    :array_4
    .array-data 8
        -0x7c79f869fe49b3d1L
        -0x7ebf33b76f0c616cL    # -1.224761384318968E-302
        0x4beb49040c78ff24L    # 5.352252794925837E57
        -0x6145cff6747a2accL
        0x5d01197978b99e0L    # 1.1065354086279996E-280
        -0x7f2944fce74e6e6bL
        -0x1a3134d4af1d7c9aL    # -2.5555729171704937E182
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
    :array_5
    .array-data 8
        0x3dc17a7c4b958a2aL    # 3.179313188413204E-11
        -0x68b7e092305fe201L
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_6
    .array-data 8
        0x13ccf96e3f87335dL
        -0x10329e3e13396017L    # -3.5637404279784297E230
        -0x297fbf0f1b64ffd1L    # -4.771556198875461E108
        -0x6b065e6ae1b6aa97L
        -0x4fad6bf082ad6a52L    # -6.417834404410263E-76
    .end array-data

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
    .line 548
    .line 549
    .line 550
    .line 551
    :array_7
    .array-data 8
        -0x22cdd31c4716bf31L    # -8.657664762210138E140
        0x52a29d74d04509e8L    # 1.1849860757745525E90
    .end array-data

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
    :array_8
    .array-data 8
        -0x5f19cfe41d549488L
        0x68da4bb2bccca1b9L    # 1.2285189305164401E197
        -0x3f340c0c636bdbf1L    # -14311.903215901953
        -0x4782c45de2ccccbdL    # -1.3745263466361544E-36
        -0x1b30152a696373f0L    # -4.041791470121105E177
        -0x4e5f7aadb913f576L
        -0x6d12d835ec71205eL    # -1.651857398295905E-217
        0x3da3553feb2a87e7L    # 8.79163352269868E-12
    .end array-data
.end method

.method public registerMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 7
    .line 8
    iput p2, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 9
    .line 10
    iput p3, v0, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    monitor-exit p1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p2
.end method

.method public removeMessageHandler(Lcom/trilead/ssh2/transport/MessageHandler;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->mh:Lcom/trilead/ssh2/transport/MessageHandler;

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget v3, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->low:I

    .line 26
    .line 27
    if-ne v3, p2, :cond_0

    .line 28
    .line 29
    iget v2, v2, Lcom/trilead/ssh2/transport/TransportManager$HandlerEntry;->high:I

    .line 30
    .line 31
    if-ne v2, p3, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->messageHandlers:Ljava/util/Vector;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public sendAsynchronousMessage([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousQueue:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x64

    .line 16
    .line 17
    if-gt p1, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/transport/TransportManager$AsynchronousWorker;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->asynchronousThread:Ljava/lang/Thread;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/16 v2, 0x9

    .line 49
    .line 50
    new-array v2, v2, [J

    .line 51
    .line 52
    fill-array-data v2, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x49b6b345f22f8bcL
        0x55a6216c69c51309L    # 3.9653445223493295E104
        0x7a820eae966967b8L    # 1.3111126462256016E282
        -0x639146bfb8fd5502L    # -9.937682342990719E-172
        0x68516848700226eaL    # 3.176800996292681E194
        0x3ea064de31389a10L    # 4.885797317319543E-7
        -0x416746e0b366cd8aL    # -3.684034025383431E-7
        0x5a56c2d33b3e3d25L    # 1.5407430105906007E127
        -0x372cfbe8e410ebc5L    # -6.626101117824582E42
    .end array-data
.end method

.method public sendKexMessage([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/TransportManager;->ensureConnected()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method public sendMessage([B)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->receiveThread:Ljava/lang/Thread;

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/transport/TransportManager;->ensureConnected()V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->flagKexOngoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->tc:Lcom/trilead/ssh2/transport/TransportConnection;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/transport/TransportConnection;->sendMessage([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 31
    .line 32
    .line 33
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionSemaphore:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_1
    :try_start_4
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v1, 0xb

    .line 53
    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x184b01691fcbf027L    # -3.7416450184003254E191
        0x25275a3096377487L
        0xab6b4d3791dd5b8L
        0x7f2f6d37cb0100bL
        -0x1bbdc58d14463438L    # -9.016833454789798E174
        0x266d7101304b61d0L
        -0x12be0d90f3c79134L    # -1.9797889904326437E218
        -0x3ec462390ddc6e5aL    # -1809862.945855239
        -0x7086b4e2fba3d3a8L
        -0x7771c05c0916b2e9L
        -0x235548c519280225L    # -2.4855086350348223E138
    .end array-data
.end method

.method public setConnectionMonitors(Ljava/util/Vector;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/Vector;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/trilead/ssh2/transport/TransportManager;->connectionMonitors:Ljava/util/Vector;

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public setSoTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/transport/TransportManager;->sock:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
