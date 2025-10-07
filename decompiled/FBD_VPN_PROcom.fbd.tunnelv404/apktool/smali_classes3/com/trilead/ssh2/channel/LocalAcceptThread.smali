.class public Lcom/trilead/ssh2/channel/LocalAcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# instance fields
.field cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field host_to_connect:Ljava/lang/String;

.field port_to_connect:I

.field final ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 3
    iput-object p3, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 4
    iput p4, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 5
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 8
    iput-object p3, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 10
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1}, Ljava/net/ServerSocket;-><init>()V

    iput-object p1, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 11
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 7
    .line 8
    .line 9
    :catch_0
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 12
    .line 13
    .line 14
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 15
    :try_start_2
    iget-object v0, v1, Lcom/trilead/ssh2/channel/LocalAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 16
    .line 17
    iget-object v3, v1, Lcom/trilead/ssh2/channel/LocalAcceptThread;->host_to_connect:Ljava/lang/String;

    .line 18
    .line 19
    iget v4, v1, Lcom/trilead/ssh2/channel/LocalAcceptThread;->port_to_connect:I

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    invoke-virtual {v0, v3, v4, v5, v7}, Lcom/trilead/ssh2/channel/ChannelManager;->openDirectTCPIPChannel(Ljava/lang/String;ILjava/lang/String;I)Lcom/trilead/ssh2/channel/Channel;

    .line 34
    .line 35
    .line 36
    move-result-object v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 37
    const/4 v7, 0x1

    .line 38
    :try_start_3
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 39
    .line 40
    invoke-virtual {v15}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v4, v2, [J

    .line 51
    .line 52
    fill-array-data v4, :array_0

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v14

    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    move-object v8, v0

    .line 65
    move-object v9, v15

    .line 66
    invoke-direct/range {v8 .. v14}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    iget-object v9, v15, Lcom/trilead/ssh2/channel/Channel;->stdinStream:Lcom/trilead/ssh2/channel/ChannelOutputStream;

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
    move-result-object v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 91
    move-object v3, v10

    .line 92
    move-object v4, v15

    .line 93
    move-object v5, v0

    .line 94
    const/4 v12, 0x1

    .line 95
    move-object v7, v8

    .line 96
    move-object v8, v9

    .line 97
    move-object v9, v11

    .line 98
    :try_start_4
    invoke-direct/range {v3 .. v9}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v12}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v12}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    goto :goto_1

    .line 116
    :catch_2
    move-exception v0

    .line 117
    const/4 v12, 0x1

    .line 118
    :goto_1
    :try_start_5
    iget-object v3, v15, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v6, 0x7

    .line 128
    new-array v6, v6, [J

    .line 129
    .line 130
    fill-array-data v6, :array_2

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    const/4 v5, 0x2

    .line 153
    new-array v5, v5, [J

    .line 154
    .line 155
    fill-array-data v5, :array_3

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v3, v15, v0, v12}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :catch_3
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :catch_4
    invoke-virtual/range {p0 .. p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catch_5
    invoke-virtual/range {p0 .. p0}, Lcom/trilead/ssh2/channel/LocalAcceptThread;->stopWorking()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x704c556742eb697dL    # -4.948209521764943E-233
        -0x4cdadf2ed5956011L    # -2.5679894377843867E-62
        -0x5b21a72425edc4a8L
    .end array-data

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
    :array_1
    .array-data 8
        0xaf13313bc759697L
        0x55039d210fe0460bL    # 3.4320213654015074E101
        -0x742f7e97243d0341L    # -9.005181765741728E-252
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
    :array_2
    .array-data 8
        0x33f093e1723ccd82L    # 1.6506083824054132E-58
        0x6f287e0aa5c979b0L
        0x4b6d7a127653bc8bL    # 2.2586566156114492E55
        -0x5bb77a3cf3d0ac24L
        -0x2f0c4e41afb031d4L    # -9.340704050961653E81
        0xf58dafd5db87252L    # 9.77157672642987E-235
        0x2a3046b607b5c4c2L    # 1.77416883377287E-105
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
    .line 252
    .line 253
    .line 254
    .line 255
    :array_3
    .array-data 8
        -0x1ba2b621e060cab1L    # -2.89757909533794E175
        -0x361872a6e8eb7879L    # -1.075671629193374E48
    .end array-data
.end method

.method public stopWorking()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/LocalAcceptThread;->ss:Ljava/net/ServerSocket;

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
