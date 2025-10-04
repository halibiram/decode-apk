.class public Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    }
.end annotation


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x19

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private ss:Ljava/net/ServerSocket;

.field private threadBound:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;II)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    const/4 p1, 0x2

    if-ge p3, p1, :cond_0

    const/16 p3, 0x19

    .line 11
    :cond_0
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-void

    nop

    :array_0
    .array-data 8
        0x69db00656684fb7aL    # 8.267339323548537E201
        -0x571f473824eeda20L    # -8.691497920405117E-112
        -0x32fa219dee019af3L    # -1.1245318461171071E63
        -0x45687753dc9a68b0L    # -1.901051414018414E-26
    .end array-data
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 5
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    const/4 p1, 0x2

    if-ge p3, p1, :cond_0

    const/16 p3, 0x19

    .line 6
    :cond_0
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-void

    :array_0
    .array-data 8
        0x4f69a9eebae6f1a1L    # 3.627520632197203E74
        0x764e8d01cd724fbL
        -0x5e53f82aec935ecaL
        0x4ab2f058958d908eL    # 7.085865664111106E51
    .end array-data
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->threadBound:Ljava/util/concurrent/Semaphore;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;

    .line 18
    .line 19
    new-instance v2, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    .line 20
    .line 21
    invoke-direct {v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v2, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;-><init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/Thread;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_1
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public stopWorking()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method
