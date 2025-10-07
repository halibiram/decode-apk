.class public Lcom/trilead/ssh2/channel/Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/Channel$Output;
    }
.end annotation


# static fields
.field private static final CHANNEL_BUFFER_SIZE:I

.field static final STATE_CLOSED:I = 0x4

.field static final STATE_OPEN:I = 0x2

.field static final STATE_OPENING:I = 0x1

.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field channelBufferSize:I

.field final channelSendLock:Ljava/lang/Object;

.field closeMessageRecv:Z

.field closeMessageSent:Z

.field final cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private eof:Z

.field exit_signal:Ljava/lang/String;

.field exit_status:Ljava/lang/Integer;

.field failedCounter:I

.field hexX11FakeCookie:Ljava/lang/String;

.field localID:I

.field localMaxPacketSize:I

.field localWindow:I

.field final msgWindowAdjust:[B

.field private reasonClosed:Ljava/lang/Throwable;

.field private final reasonClosedLock:Ljava/lang/Object;

.field remoteID:I

.field remoteMaxPacketSize:I

.field remoteWindow:J

.field state:I

.field final stderr:Lcom/trilead/ssh2/channel/Channel$Output;

.field final stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

.field final stdout:Lcom/trilead/ssh2/channel/Channel$Output;

.field successCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/trilead/ssh2/channel/Channel;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v2, 0x104000

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput v0, Lcom/trilead/ssh2/channel/Channel;->CHANNEL_BUFFER_SIZE:I

    .line 49
    .line 50
    invoke-static {v1}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/trilead/ssh2/channel/Channel;->log:Lcom/trilead/ssh2/log/Logger;

    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        -0x3a1fe21459a133f3L    # -3.990345464819348E28
        -0x3b5a5cf415e8f339L    # -5.108868697414991E22
        -0x4e15658920d0f846L
    .end array-data
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/trilead/ssh2/channel/Channel;->CHANNEL_BUFFER_SIZE:I

    .line 5
    .line 6
    iput v0, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    .line 7
    .line 8
    new-instance v0, Lcom/trilead/ssh2/channel/Channel$Output;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/trilead/ssh2/channel/Channel$Output;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 14
    .line 15
    new-instance v1, Lcom/trilead/ssh2/channel/Channel$Output;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/trilead/ssh2/channel/Channel$Output;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 24
    .line 25
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 26
    .line 27
    new-instance v3, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v3, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 36
    .line 37
    const/16 v4, 0x9

    .line 38
    .line 39
    new-array v4, v4, [B

    .line 40
    .line 41
    iput-object v4, p0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    iput v4, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 45
    .line 46
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageRecv:Z

    .line 47
    .line 48
    iput v3, p0, Lcom/trilead/ssh2/channel/Channel;->successCounter:I

    .line 49
    .line 50
    iput v3, p0, Lcom/trilead/ssh2/channel/Channel;->failedCounter:I

    .line 51
    .line 52
    const-wide/16 v5, 0x0

    .line 53
    .line 54
    iput-wide v5, p0, Lcom/trilead/ssh2/channel/Channel;->remoteWindow:J

    .line 55
    .line 56
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 57
    .line 58
    iput v2, p0, Lcom/trilead/ssh2/channel/Channel;->remoteMaxPacketSize:I

    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z

    .line 61
    .line 62
    new-instance v2, Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput-object v2, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 73
    .line 74
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    .line 75
    .line 76
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    .line 77
    .line 78
    sget p1, Lcom/trilead/ssh2/transport/TransportManager;->MAX_PACKET_SIZE:I

    .line 79
    .line 80
    add-int/lit16 p1, p1, -0x400

    .line 81
    .line 82
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localMaxPacketSize:I

    .line 83
    .line 84
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/channel/ChannelOutputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 90
    .line 91
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 92
    .line 93
    invoke-direct {p1, p0, v3}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    .line 94
    .line 95
    .line 96
    iput-object p1, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 97
    .line 98
    new-instance p1, Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 99
    .line 100
    invoke-direct {p1, p0, v4}, Lcom/trilead/ssh2/channel/ChannelInputStream;-><init>(Lcom/trilead/ssh2/channel/Channel;Z)V

    .line 101
    .line 102
    .line 103
    iput-object p1, v1, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized eof()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel$Output;->eof()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/Channel$Output;->eof()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public freeupWindow(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/trilead/ssh2/channel/Channel;->freeupWindow(IZ)V

    return-void
.end method

.method public freeupWindow(IZ)V
    .locals 12

    const/4 v0, 0x7

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-gtz p1, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    iget v4, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I

    mul-int/lit8 v5, v4, 0x3

    const/4 v6, 0x4

    div-int/2addr v5, v6

    const/4 v7, 0x0

    if-gt p1, v5, :cond_1

    .line 4
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    move-result p1

    sub-int/2addr v4, p1

    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel$Output;->readable()I

    move-result p1

    sub-int/2addr v4, p1

    .line 5
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    sub-int/2addr v4, p1

    if-lez v4, :cond_2

    add-int/2addr p1, v4

    .line 6
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->localWindow:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x0

    .line 7
    :cond_2
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 8
    iget v5, p0, Lcom/trilead/ssh2/channel/Channel;->localID:I

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_6

    .line 10
    sget-object v8, Lcom/trilead/ssh2/channel/Channel;->log:Lcom/trilead/ssh2/log/Logger;

    invoke-virtual {v8}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v0, [J

    fill-array-data v11, :array_0

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_1

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_2

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    const/16 v10, 0x50

    .line 12
    invoke-static {v5, v9, v8, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 13
    :cond_3
    iget-object v5, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 14
    :try_start_1
    iget-object v8, p0, Lcom/trilead/ssh2/channel/Channel;->msgWindowAdjust:[B

    const/16 v9, 0x5d

    .line 15
    aput-byte v9, v8, v7

    shr-int/lit8 v7, p1, 0x18

    int-to-byte v7, v7

    const/4 v9, 0x1

    .line 16
    aput-byte v7, v8, v9

    shr-int/lit8 v7, p1, 0x10

    int-to-byte v7, v7

    .line 17
    aput-byte v7, v8, v3

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 18
    aput-byte v3, v8, v1

    int-to-byte p1, p1

    .line 19
    aput-byte p1, v8, v6

    shr-int/lit8 p1, v4, 0x18

    int-to-byte p1, p1

    const/4 v1, 0x5

    .line 20
    aput-byte p1, v8, v1

    shr-int/lit8 p1, v4, 0x10

    int-to-byte p1, p1

    const/4 v1, 0x6

    .line 21
    aput-byte p1, v8, v1

    shr-int/lit8 p1, v4, 0x8

    int-to-byte p1, p1

    .line 22
    aput-byte p1, v8, v0

    int-to-byte p1, v4

    .line 23
    aput-byte p1, v8, v2

    .line 24
    iget-boolean p1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_4

    .line 25
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object p1, p1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v8}, Lcom/trilead/ssh2/transport/TransportManager;->sendAsynchronousMessage([B)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object p1, p1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {p1, v8}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 27
    :cond_5
    :goto_1
    monitor-exit v5

    goto :goto_3

    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_6
    :goto_3
    return-void

    .line 28
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x40329072141845f4L    # 18.564240699697578
        -0x4b2325a7dfa4d4e5L    # -4.706850107001044E-54
        0x18ab2acdbc40a756L    # 7.621801834410103E-190
        -0x39a49fcb630c420aL    # -8.675738216624098E30
        0x2f12fcc1fe77428aL    # 6.255257661950132E-82
        0x5b180dcae3ba0218L    # 6.669345605837478E130
        0x3961bfc932430872L    # 2.734691678233456E-32
    .end array-data

    :array_1
    .array-data 8
        -0x7c6a3f641fad8fc2L
        0x3d6d80b824265d74L    # 8.38520286717064E-13
    .end array-data

    :array_2
    .array-data 8
        -0x5cd978a1f1670de6L
        0x5a751b8360d8f51fL    # 5.715239441600012E127
    .end array-data
.end method

.method public getExitSignal()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_signal:Ljava/lang/String;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getExitStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->exit_status:Ljava/lang/Integer;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getReasonClosed()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public getReasonClosedCause()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

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

.method public getStderrStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 4
    .line 5
    return-object v0
.end method

.method public getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/channel/Channel$Output;->stream:Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 4
    .line 5
    return-object v0
.end method

.method public isEOF()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/channel/Channel;->eof:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized pipeStderrStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stderr:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel$Output;->pipeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public declared-synchronized pipeStdoutStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->stdout:Lcom/trilead/ssh2/channel/Channel$Output;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/Channel$Output;->pipeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public requestWindowChange(IIII)V
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    new-instance v1, Lcom/trilead/ssh2/packets/PacketWindowChange;

    .line 9
    .line 10
    iget v4, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 11
    .line 12
    move-object v3, v1

    .line 13
    move v5, p1

    .line 14
    move v6, p2

    .line 15
    move v7, p3

    .line 16
    move v8, p4

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/trilead/ssh2/packets/PacketWindowChange;-><init>(IIIII)V

    .line 18
    .line 19
    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_1
    iget-boolean p2, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/PacketWindowChange;->getPayload()[B

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p2, p3}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 37
    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 44
    .line 45
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array p4, v0, [J

    .line 48
    .line 49
    fill-array-data p4, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Ljava/io/IOException;

    .line 71
    .line 72
    throw p2

    .line 73
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw p2

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    .line 78
    .line 79
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array p3, v0, [J

    .line 82
    .line 83
    fill-array-data p3, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/io/IOException;

    .line 105
    .line 106
    throw p1

    .line 107
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    throw p1

    .line 109
    :array_0
    .array-data 8
        0x16ed98f717dd4b6bL    # 3.093343820380013E-198
        0x5d37754ef4d445d3L    # 1.1174120226280536E141
        0x3bb8b9517f0fb72bL    # 5.235489425703996E-21
        0x79dbd56a59434527L    # 9.867933780161771E278
        -0x3e9f8588cfc85bc9L    # -8639417.50679217
        0x1b61baeb516f7c16L    # 8.750745258836927E-177
        0x3d279493297afc27L    # 4.188715243887716E-14
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
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        0xeac2c6f29d8ca5cL    # 5.408232319292601E-238
        0x7124287977e569eeL    # 1.0255014405038767E237
        0x226e8083d7f9eb68L    # 7.81664795429273E-143
        0x6f1aff9e7751629dL    # 1.5989562209304336E227
        0x2e5766d7ffb535bdL    # 1.8822151605030906E-85
        -0x1314e6521a8fd094L    # -4.671121390812891E216
        -0x313c0255e18930efL    # -2.7594392543519225E71
    .end array-data
.end method

.method public setReasonClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/channel/Channel;->setReasonClosed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setReasonClosed(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->reasonClosed:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelBufferSize:I
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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x4dfe21487539c131L    # 5.0768969568493524E67
        -0x247a2d7dbe644513L    # -7.74477184170867E132
        -0x4efbbc266714e0dfL    # -1.4337007023594545E-72
    .end array-data
.end method

.method public signal(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/channel/Channel;->state:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    new-instance v0, Lcom/trilead/ssh2/packets/PacketSignal;

    .line 8
    .line 9
    iget v1, p0, Lcom/trilead/ssh2/channel/Channel;->remoteID:I

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/packets/PacketSignal;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object p1, p0, Lcom/trilead/ssh2/channel/Channel;->channelSendLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_1
    iget-boolean v1, p0, Lcom/trilead/ssh2/channel/Channel;->closeMessageSent:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/trilead/ssh2/channel/ChannelManager;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketSignal;->getPayload()[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V

    .line 31
    .line 32
    .line 33
    monitor-exit p1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x7

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/io/IOException;

    .line 66
    .line 67
    throw v0

    .line 68
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw v0

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    new-array v1, v1, [J

    .line 78
    .line 79
    fill-array-data v1, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/Channel;->getReasonClosedCause()Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/io/IOException;

    .line 101
    .line 102
    throw p1

    .line 103
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    throw p1

    .line 105
    :array_0
    .array-data 8
        0x79fc5b34ad1b25c0L    # 4.021287603951732E279
        -0x5567e8564cbe49eeL
        0x3065167d7c9154f4L    # 1.4569459735873226E-75
        0x5dd78bca3e79bb09L    # 1.1485134731100362E144
        0x1685b64bd147bb75L    # 3.545639772397606E-200
        0x3500efefc11beb43L    # 2.2104145374821658E-53
        0x788076e64689df4dL    # 2.783385453055476E272
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
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
        0x19054e08a5a366c6L    # 3.825344711423971E-188
        0x99ca279c32fdfb3L
        0x7f5dcec62636d14aL    # 3.2705760170270883E305
        -0x578ed0e0a2033ff1L    # -6.977948194369188E-114
        0x5201226515ad2b12L    # 1.0651641059297773E87
        -0x3be5bf80e7e01d6dL    # -1.2106570144553558E20
    .end array-data
.end method
