.class public Lcom/trilead/ssh2/channel/RemoteAcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteConnectedAddress:Ljava/lang/String;

.field remoteConnectedPort:I

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;

.field targetAddress:Ljava/lang/String;

.field targetPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedAddress:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteConnectedPort:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 12
    .line 13
    iput p5, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->remoteOriginatorPort:I

    .line 14
    .line 15
    iput-object p6, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 16
    .line 17
    iput p7, p0, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    .line 18
    .line 19
    sget-object p1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p6

    .line 25
    if-eqz p6, :cond_0

    .line 26
    .line 27
    new-instance p6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance p7, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p7

    .line 47
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array p7, v0, [J

    .line 56
    .line 57
    fill-array-data p7, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array p3, v0, [J

    .line 76
    .line 77
    fill-array-data p3, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array p3, v0, [J

    .line 96
    .line 97
    fill-array-data p3, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const/16 p3, 0x1e

    .line 118
    .line 119
    invoke-virtual {p1, p3, p2}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_0
    return-void

    .line 123
    :array_0
    .array-data 8
        0x7b8fb9674a53a606L    # 1.5095830365233874E287
        -0x205ecf79ca70e9efL    # -4.501448364156113E152
        0x11bf1851e67179a0L
        0x64d270a209b05997L    # 4.670224181152623E177
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
    :array_1
    .array-data 8
        -0x47ceb61d2c441c6bL    # -5.080668009068875E-38
        -0x116491f591a0efccL    # -6.345709147875039E224
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
    :array_2
    .array-data 8
        -0x3fb371384badf9aaL    # -57.115469493914745
        -0x3bc02ec2466abc8aL    # -5.8692647746323546E20
    .end array-data

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
    :array_3
    .array-data 8
        0x1f7671ce9e68a7c5L
        -0x7d5a7dd4461a0c2eL    # -6.577547379047834E-296
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 7
    .line 8
    iget-object v5, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 9
    .line 10
    invoke-virtual {v5, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Ljava/net/Socket;

    .line 14
    .line 15
    iget-object v5, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetAddress:Ljava/lang/String;

    .line 16
    .line 17
    iget v6, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->targetPort:I

    .line 18
    .line 19
    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iput-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 23
    .line 24
    new-instance v4, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 25
    .line 26
    iget-object v8, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 27
    .line 28
    invoke-virtual {v8}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    iget-object v5, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v6, v0, [J

    .line 41
    .line 42
    fill-array-data v6, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    move-object v7, v4

    .line 55
    invoke-direct/range {v7 .. v13}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 59
    .line 60
    iget-object v15, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 61
    .line 62
    iget-object v6, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v18

    .line 68
    iget-object v6, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v19

    .line 74
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v0, v0, [J

    .line 77
    .line 78
    fill-array-data v0, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v6, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v20

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    move-object v14, v5

    .line 93
    invoke-direct/range {v14 .. v20}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_1

    .line 117
    :catch_1
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_0
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 124
    .line 125
    iget-object v4, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 126
    .line 127
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v6, v2, [J

    .line 130
    .line 131
    fill-array-data v6, :array_2

    .line 132
    .line 133
    .line 134
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v0, v5, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :goto_1
    sget-object v4, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 151
    .line 152
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v6, v2, [J

    .line 155
    .line 156
    fill-array-data v6, :array_3

    .line 157
    .line 158
    .line 159
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const/16 v6, 0x32

    .line 167
    .line 168
    invoke-virtual {v4, v6, v5, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :try_start_3
    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 172
    .line 173
    iget-object v5, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 174
    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v2, v2, [J

    .line 183
    .line 184
    fill-array-data v2, :array_4

    .line 185
    .line 186
    .line 187
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    const/4 v2, 0x2

    .line 207
    new-array v2, v2, [J

    .line 208
    .line 209
    fill-array-data v2, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v5, v4, v0, v3}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 227
    .line 228
    .line 229
    :catch_2
    :try_start_4
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteAcceptThread;->s:Ljava/net/Socket;

    .line 230
    .line 231
    if-eqz v0, :cond_1

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 234
    .line 235
    .line 236
    :catch_3
    :cond_1
    :goto_2
    return-void

    .line 237
    :array_0
    .array-data 8
        0x24ed7fc666f4b326L    # 8.311912677245199E-131
        -0x283c70ab34a25b31L    # -6.021084475024954E114
        0x216fd2d2515555a1L
    .end array-data

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
    :array_1
    .array-data 8
        0xced534150d41c3cL
        0x274aebbece089affL    # 2.085071660100298E-119
        -0x45dbe9fc259e25c8L
    .end array-data

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
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_2
    .array-data 8
        0x4a2e4f57b7ec9692L    # 2.2149007788854775E49
        0x51ed09a7f5e31a23L    # 4.512853891437647E86
        -0x73a41e9a10c0001fL    # -3.894068254493605E-249
        0x5603bdff8bebb322L    # 2.263933191972923E106
        -0x3f51d4337a1c5326L    # -3861.8994589947224
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
    :array_3
    .array-data 8
        0x579500a989ba6a2eL    # 8.081484970030147E113
        0x1ae33cc26e883201L    # 3.708836171155712E-179
        -0x5c8d8169d360f83L    # -5.254092738513365E280
        -0x2cb830770196aebdL    # -1.5521030448643505E93
        0x775b818c0fa82aeaL    # 8.869196965719114E266
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
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :array_4
    .array-data 8
        0x599119f6f2b73981L    # 2.8262496651537433E123
        0x291e6b8ba5a0a52L
        -0xa4a927ac1c83e12L
        -0x70c6b5d183dd84afL    # -2.485583229587188E-235
        0x657db3912d72ddc7L    # 7.702910170754647E180
    .end array-data

    .line 318
    .line 319
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
    .line 340
    .line 341
    :array_5
    .array-data 8
        -0x28785ea578d29ae2L    # -4.546292667809245E113
        0x7fdefb82123c1ae6L    # 8.702647487688935E307
    .end array-data
.end method
