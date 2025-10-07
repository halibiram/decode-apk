.class public Lcom/tknetwork/tunnel/thread/ProxyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field LoopingThread:Z

.field autoReplace:Z

.field buffReq:Ljava/lang/String;

.field buffRes:Ljava/lang/String;

.field clientToServer:Z

.field incoming:Ljava/net/Socket;

.field outgoing:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->LoopingThread:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->autoReplace:Z

    .line 9
    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v2, v1, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->buffReq:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->incoming:Ljava/net/Socket;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->outgoing:Ljava/net/Socket;

    .line 43
    .line 44
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->clientToServer:Z

    .line 45
    .line 46
    iput-object p4, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->buffReq:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p5, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->buffRes:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean p6, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->autoReplace:Z

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0x441ddefdbf90ca76L    # 1.3775594695292443E20
        -0x7f69db9c8a2f203cL    # -7.882864442423768E-306
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        -0x66163da7e2fe49fcL    # -7.577820333046497E-184
        -0x37e2eeab1c3fecdL    # -5.556148532483995E291
    .end array-data
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/utils/VPNUtil;->getService()Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->log_message(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    new-instance v7, Lcom/tknetwork/tunnel/thread/ProxyThread;

    .line 2
    .line 3
    const/4 v3, 0x1

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    move-object/from16 v4, p2

    .line 9
    .line 10
    move-object/from16 v5, p3

    .line 11
    .line 12
    move/from16 v6, p4

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/tknetwork/tunnel/thread/ProxyThread;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/tknetwork/tunnel/thread/ProxyThread;

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    move-object v8, v0

    .line 24
    move-object/from16 v9, p1

    .line 25
    .line 26
    move-object v10, p0

    .line 27
    move-object/from16 v12, p2

    .line 28
    .line 29
    move-object/from16 v13, p3

    .line 30
    .line 31
    move/from16 v14, p4

    .line 32
    .line 33
    invoke-direct/range {v8 .. v14}, Lcom/tknetwork/tunnel/thread/ProxyThread;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-boolean v3, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->clientToServer:Z

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->buffReq:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    new-array v3, v3, [B

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->buffRes:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    new-array v3, v3, [B

    .line 25
    .line 26
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->incoming:Ljava/net/Socket;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->outgoing:Ljava/net/Socket;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    :catch_0
    :cond_1
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 39
    .line 40
    .line 41
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    const/4 v7, -0x1

    .line 43
    if-ne v6, v7, :cond_2

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v7, v3, v1, v6}, Ljava/lang/String;-><init>([BII)V

    .line 50
    .line 51
    .line 52
    iget-boolean v8, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->clientToServer:Z

    .line 53
    .line 54
    if-eqz v8, :cond_3

    .line 55
    .line 56
    invoke-virtual {v5, v3, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v9, v2, [J

    .line 66
    .line 67
    fill-array-data v9, :array_0

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    aget-object v8, v7, v1

    .line 82
    .line 83
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v10, v2, [J

    .line 86
    .line 87
    fill-array-data v10, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    aget-object v7, v7, v1

    .line 104
    .line 105
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v9, v0, [J

    .line 108
    .line 109
    fill-array-data v9, :array_2

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
    const/16 v9, 0xc

    .line 120
    .line 121
    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    const/16 v10, 0xd

    .line 130
    .line 131
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v11, 0x4

    .line 138
    new-array v11, v11, [J

    .line 139
    .line 140
    fill-array-data v11, :array_3

    .line 141
    .line 142
    .line 143
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    new-array v12, v2, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v11, v12, v1

    .line 157
    .line 158
    const/4 v11, 0x1

    .line 159
    aput-object v7, v12, v11

    .line 160
    .line 161
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-direct {p0, v7}, Lcom/tknetwork/tunnel/thread/ProxyThread;->Log(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/16 v7, 0xc8

    .line 169
    .line 170
    if-ne v9, v7, :cond_4

    .line 171
    .line 172
    invoke-direct {p0, v8}, Lcom/tknetwork/tunnel/thread/ProxyThread;->Log(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v3, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 v7, 0x6

    .line 186
    new-array v7, v7, [J

    .line 187
    .line 188
    fill-array-data v7, :array_4

    .line 189
    .line 190
    .line 191
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_5
    invoke-virtual {v5, v3, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :catchall_0
    :try_start_2
    iget-object v6, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->incoming:Ljava/net/Socket;

    .line 219
    .line 220
    if-eqz v6, :cond_6

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 223
    .line 224
    .line 225
    :cond_6
    iget-object v6, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->outgoing:Ljava/net/Socket;

    .line 226
    .line 227
    if-eqz v6, :cond_1

    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :catch_1
    :try_start_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->incoming:Ljava/net/Socket;

    .line 235
    .line 236
    if-eqz v0, :cond_7

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 239
    .line 240
    .line 241
    :cond_7
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/ProxyThread;->outgoing:Ljava/net/Socket;

    .line 242
    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    .line 247
    .line 248
    :catch_2
    :cond_8
    :goto_2
    return-void

    .line 249
    :array_0
    .array-data 8
        -0x5cec78daea877729L
        -0x71a496d9e093dbd1L
    .end array-data

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
    :array_1
    .array-data 8
        -0x2d68584cc7a0fcf1L    # -7.529100904920511E89
        -0x1a2db2d69dec8c1cL    # -3.0376798782650994E182
    .end array-data

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
    :array_2
    .array-data 8
        -0x11e0f02f7446fe16L
        0x7e6f756cab94db46L
        -0xdd28e4c37811813L    # -9.816700699401452E241
        -0x6a32fc8fc3b61ca2L
        -0x788d2bc202e77471L    # -8.701474007187151E-273
        0x16e75bb3b6cb4fd9L
        0x320fbf485c2bbd9L
        -0x5570e98cdbeb363L    # -7.244264520936172E282
        0x5d7127deb9542a9L
    .end array-data

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
    :array_3
    .array-data 8
        -0x1d4c775c83129c82L    # -2.8796725877107105E167
        0x5dd81ec3b74e3b1cL    # 1.17651746677562E144
        0x4a306373a4d740f7L    # 2.3951795228965793E49
        0x23054a303223236fL    # 5.586805652986684E-140
    .end array-data

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
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_4
    .array-data 8
        -0x537adb38e1e114cdL    # -3.1676092318971556E-94
        -0x6606bb693e3dec8dL
        0x4759be7902ec26d5L    # 5.346826672007545E35
        -0x5a9a0e58f1189fcdL
        0x6d78f61f4010b9f7L    # 2.2028557040072532E219
        0x659f41e719a8c16L    # 4.57531971309085E-278
    .end array-data
.end method
