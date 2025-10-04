.class Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicAcceptRunnable"
.end annotation


# static fields
.field private static final idleTimeout:I = 0x57e40


# instance fields
.field private auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

.field private in:Ljava/io/InputStream;

.field private msg:Lnet/sourceforge/jsocks/ProxyMessage;

.field private out:Ljava/io/OutputStream;

.field private sock:Ljava/net/Socket;

.field final synthetic this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 9
    .line 10
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p3, 0x4

    .line 13
    new-array p3, p3, [J

    .line 14
    .line 15
    fill-array-data p3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x7e8b98738e769349L    # 3.696103746183177E301
        -0x7ee4daa372276f21L    # -2.474054831140631E-303
        -0x66631711e3926133L    # -2.657718735860423E-185
        0x5786ff3dbd1edc3cL    # 4.42445970424317E113
    .end array-data
.end method

.method private handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->checkRequest(Lnet/sourceforge/jsocks/ProxyMessage;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p1, Lnet/sourceforge/jsocks/ProxyMessage;->command:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    .line 26
    .line 27
    invoke-direct {p1, v1}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method private onConnect(Lnet/sourceforge/jsocks/ProxyMessage;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lnet/sourceforge/jsocks/Socks5Message;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, v2, v3, v2}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(ILjava/net/InetAddress;I)V

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Lnet/sourceforge/jsocks/Socks5Message;->write(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->host:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p1, Lnet/sourceforge/jsocks/ProxyMessage;->ip:Ljava/net/InetAddress;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget p1, p1, Lnet/sourceforge/jsocks/ProxyMessage;->port:I

    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v5, v0, [J

    .line 35
    .line 36
    fill-array-data v5, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v1, p1, v4, v2}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    const/4 v1, 0x1

    .line 51
    :try_start_1
    new-instance v2, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-object v10, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 58
    .line 59
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v4, v0, [J

    .line 62
    .line 63
    fill-array-data v4, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    move-object v5, v2

    .line 76
    move-object v6, p1

    .line 77
    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 81
    .line 82
    iget-object v8, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 83
    .line 84
    iget-object v9, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 85
    .line 86
    iget-object v10, p1, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 87
    .line 88
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    move-object v5, v3

    .line 103
    move-object v6, p1

    .line 104
    move-object v7, v2

    .line 105
    invoke-direct/range {v5 .. v11}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :try_start_2
    iget-object v2, p1, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/4 v5, 0x7

    .line 132
    new-array v5, v5, [J

    .line 133
    .line 134
    fill-array-data v5, :array_3

    .line 135
    .line 136
    .line 137
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    const/4 v4, 0x2

    .line 157
    new-array v4, v4, [J

    .line 158
    .line 159
    fill-array-data v4, :array_4

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v2, p1, v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    .line 178
    .line 179
    :catch_1
    return-void

    .line 180
    :catch_2
    :try_start_3
    iget-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    .line 184
    .line 185
    :catch_3
    return-void

    .line 186
    nop

    .line 187
    :array_0
    .array-data 8
        -0x562cfaaadc4573b1L    # -3.239597274698206E-107
        -0x44bb05b2e46d5c4bL    # -3.470475810817323E-23
        -0x53332502a2fd9c73L    # -6.9166990025994625E-93
    .end array-data

    :array_1
    .array-data 8
        -0x466ef5ec5bc0ee0L
        0x389d8b0c24117295L    # 5.556449702192157E-36
        -0x24e92c620638f9f6L    # -6.329070318969969E130
    .end array-data

    :array_2
    .array-data 8
        0x5fa6ee75e4aa71e6L    # 6.005096978608036E152
        0x12362e354496a261L    # 6.13612967778429E-221
        0x7cb1ecfcb1640f0L
    .end array-data

    :array_3
    .array-data 8
        0x8e285d0e78d5a74L
        -0x6c918d3cb66d9156L
        -0x246d02fed756ebd7L    # -1.3477959934108183E133
        -0x64f986d7f2a39dddL
        -0x2bfe88c6a1478433L    # -4.663318708816136E96
        -0x60e1b962b92535fL    # -2.537351910071182E279
        0x6a1488bdd473ea93L    # 1.0059438795146113E203
    .end array-data

    :array_4
    .array-data 8
        0x70686f91e2ef1cfeL    # 3.0349641872674872E233
        0x5bde9a548f72ac90L    # 3.475521637587451E134
    .end array-data
.end method

.method private readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/PushbackInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/io/PushbackInputStream;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    move-object p1, v0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p1, v1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(Ljava/io/InputStream;Z)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance p1, Lnet/sourceforge/jsocks/SocksException;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p1, v0}, Lnet/sourceforge/jsocks/SocksException;-><init>(I)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method private sendErrorMessage(I)V
    .locals 1

    .line 1
    new-instance v0, Lnet/sourceforge/jsocks/Socks5Message;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;-><init>(I)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/sourceforge/jsocks/Socks5Message;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method private startSession()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 2
    .line 3
    const v1, 0x57e40

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x32

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sock:Ljava/net/Socket;

    .line 14
    .line 15
    invoke-interface {v1, v2}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->startSession(Ljava/net/Socket;)Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    new-array v3, v3, [J

    .line 31
    .line 32
    fill-array-data v3, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v0, v2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getInputStream()Ljava/io/InputStream;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 53
    .line 54
    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->getOutputStream()Ljava/io/OutputStream;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->out:Ljava/io/OutputStream;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->in:Ljava/io/InputStream;

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->readMsg(Ljava/io/InputStream;)Lnet/sourceforge/jsocks/ProxyMessage;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->msg:Lnet/sourceforge/jsocks/ProxyMessage;

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->handleRequest(Lnet/sourceforge/jsocks/ProxyMessage;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    invoke-static {}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/trilead/ssh2/log/Logger;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    new-array v4, v4, [J

    .line 81
    .line 82
    fill-array-data v4, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v0, v3}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 100
    .line 101
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x1bc14f1466608533L    # 5.467416044500765E-175
        0x13a7f3e754bd53b7L    # 5.55863871059602E-214
        0x534ffa2ee85dfc6bL    # 2.0844437193468137E93
        -0x6aa9faeaddaaf10fL    # -6.85863046658927E-206
    .end array-data

    .line 104
    .line 105
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
    :array_1
    .array-data 8
        -0x1646fe61668c08aaL    # -1.9141105390521097E201
        0x105c54fcc194727bL    # 7.299620376369976E-230
        0x434a8e250bedbfa9L    # 1.4949278319083346E16
        -0x5737194e5f03c69dL    # -3.235720450840041E-112
        0x48760d6277ea1d25L    # 1.2006405301525023E41
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->startSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :goto_0
    invoke-interface {v0}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_4

    .line 23
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    :try_start_2
    instance-of v1, v0, Lnet/sourceforge/jsocks/SocksException;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v0, Lnet/sourceforge/jsocks/SocksException;

    .line 40
    .line 41
    iget v0, v0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    instance-of v1, v0, Ljava/net/NoRouteToHostException;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    instance-of v1, v0, Ljava/net/ConnectException;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    instance-of v0, v0, Ljava/io/InterruptedIOException;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const/4 v0, 0x6

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const/4 v0, 0x1

    .line 63
    :goto_1
    const/16 v1, 0x8

    .line 64
    .line 65
    if-gt v0, v1, :cond_6

    .line 66
    .line 67
    if-gez v0, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    move v2, v0

    .line 71
    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->sendErrorMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :goto_3
    return-void

    .line 80
    :goto_4
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->auth:Lnet/sourceforge/jsocks/server/ServerAuthenticator;

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    invoke-interface {v1}, Lnet/sourceforge/jsocks/server/ServerAuthenticator;->endSession()V

    .line 85
    .line 86
    .line 87
    :cond_7
    iget-object v1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;->this$0:Lcom/trilead/ssh2/channel/DynamicAcceptThread;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Ljava/util/concurrent/Semaphore;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 94
    .line 95
    .line 96
    throw v0
.end method
