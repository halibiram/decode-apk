.class public Lcom/tknetwork/tunnel/thread/BackServer;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private client:Ljava/net/Socket;

.field private isAlive:Z

.field private ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/thread/BackServer;->isAlive:Z

    .line 6
    .line 7
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public Stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/thread/BackServer;->isAlive:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getLocalSocketAddr()Ljava/net/SocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/net/ServerSocket;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 15
    .line 16
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v3, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v3, v1, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v5, v1, [J

    .line 47
    .line 48
    fill-array-data v5, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {p0, v2, v3}, Lcom/tknetwork/tunnel/thread/BackServer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->isAlive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    :try_start_1
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->ss:Ljava/net/ServerSocket;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 88
    .line 89
    new-instance v2, Ljava/io/BufferedReader;

    .line 90
    .line 91
    new-instance v3, Ljava/io/InputStreamReader;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_0

    .line 110
    .line 111
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v5, v0, [J

    .line 120
    .line 121
    fill-array-data v5, :array_2

    .line 122
    .line 123
    .line 124
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_1

    .line 148
    .line 149
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_1
    :try_start_2
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v4, v0, [J

    .line 164
    .line 165
    fill-array-data v4, :array_3

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-nez v2, :cond_0

    .line 192
    .line 193
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/BackServer;->client:Ljava/net/Socket;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_2
    move-exception v0

    .line 200
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v1, v1, [J

    .line 203
    .line 204
    fill-array-data v1, :array_4

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {p0, v1, v0}, Lcom/tknetwork/tunnel/thread/BackServer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :array_0
    .array-data 8
        0x4c3b315973ee0656L    # 1.7069179124040707E59
        -0x3c8bff8579bd849bL    # -9.0080412363634256E16
        -0x39aad3f0caec70c3L    # -6.70970855106087E30
    .end array-data

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
    :array_1
    .array-data 8
        0x591a5f9fcf1451c4L    # 1.702576260309342E121
        -0x2802633fcc33d612L    # -7.292402090219159E115
        -0x338beacf8ebe80edL    # -2.0169854891220734E60
    .end array-data

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
    .line 256
    .line 257
    :array_2
    .array-data 8
        -0x17ac11f3ee99da3L
        -0x3e1ce27dd7f666a1L    # -2.565607744299972E9
        0x114b14a23beea095L    # 2.286291210274874E-225
        -0x73465c8b0a834350L
        0xc493d4e3beeece2L
    .end array-data

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
    :array_3
    .array-data 8
        0x24e0ffd94809f466L    # 4.789892018693546E-131
        0xaa908ced0c1bebeL
        -0x1b43855de8777c4fL    # -1.8031952293222512E177
        -0x37510ec79c739db0L    # -1.3477257910166165E42
        0x1194c639a94a64e3L    # 5.6124178362086E-224
    .end array-data

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
    :array_4
    .array-data 8
        -0x21fabd557b3af55cL    # -8.296208482095477E144
        0x6cc7858a896913a4L    # 1.013571994695981E216
        -0x9892db4c586a976L    # -4.491378634774569E262
    .end array-data
.end method
