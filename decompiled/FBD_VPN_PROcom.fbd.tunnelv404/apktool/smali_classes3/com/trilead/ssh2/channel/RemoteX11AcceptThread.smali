.class public Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# instance fields
.field c:Lcom/trilead/ssh2/channel/Channel;

.field remoteOriginatorAddress:Ljava/lang/String;

.field remoteOriginatorPort:I

.field s:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorAddress:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->remoteOriginatorPort:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x6

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x2

    .line 8
    const/16 v7, 0x8

    .line 9
    .line 10
    :try_start_0
    iget-object v9, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 11
    .line 12
    iget-object v10, v9, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 13
    .line 14
    invoke-virtual {v10, v9}, Lcom/trilead/ssh2/channel/ChannelManager;->sendOpenConfirmation(Lcom/trilead/ssh2/channel/Channel;)V

    .line 15
    .line 16
    .line 17
    iget-object v9, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 18
    .line 19
    invoke-virtual {v9}, Lcom/trilead/ssh2/channel/Channel;->getStdinStream()Lcom/trilead/ssh2/channel/ChannelOutputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    iget-object v9, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 24
    .line 25
    invoke-virtual {v9}, Lcom/trilead/ssh2/channel/Channel;->getStdoutStream()Lcom/trilead/ssh2/channel/ChannelInputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    new-array v10, v3, [B

    .line 30
    .line 31
    invoke-virtual {v9, v10}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([B)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-ne v11, v3, :cond_11

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    aget-byte v12, v10, v11

    .line 39
    .line 40
    const/16 v13, 0x42

    .line 41
    .line 42
    if-eq v12, v13, :cond_1

    .line 43
    .line 44
    const/16 v14, 0x6c

    .line 45
    .line 46
    if-ne v12, v14, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 50
    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v3, v3, [J

    .line 54
    .line 55
    fill-array-data v3, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_1
    :goto_0
    if-ne v12, v13, :cond_2

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v12, 0x1

    .line 77
    :goto_1
    new-array v13, v3, [B

    .line 78
    .line 79
    invoke-virtual {v9, v13}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    if-ne v14, v3, :cond_10

    .line 84
    .line 85
    aget-byte v14, v13, v12

    .line 86
    .line 87
    and-int/lit16 v14, v14, 0xff

    .line 88
    .line 89
    shl-int/2addr v14, v7

    .line 90
    rsub-int/lit8 v16, v12, 0x1

    .line 91
    .line 92
    aget-byte v0, v13, v16

    .line 93
    .line 94
    and-int/lit16 v0, v0, 0xff

    .line 95
    .line 96
    or-int/2addr v0, v14

    .line 97
    add-int/lit8 v14, v12, 0x2

    .line 98
    .line 99
    aget-byte v14, v13, v14

    .line 100
    .line 101
    and-int/lit16 v14, v14, 0xff

    .line 102
    .line 103
    shl-int/2addr v14, v7

    .line 104
    rsub-int/lit8 v12, v12, 0x3

    .line 105
    .line 106
    aget-byte v12, v13, v12

    .line 107
    .line 108
    and-int/lit16 v12, v12, 0xff

    .line 109
    .line 110
    or-int/2addr v12, v14

    .line 111
    const/16 v14, 0x100

    .line 112
    .line 113
    if-gt v0, v14, :cond_f

    .line 114
    .line 115
    if-gt v12, v14, :cond_f

    .line 116
    .line 117
    rem-int/lit8 v14, v0, 0x4

    .line 118
    .line 119
    rsub-int/lit8 v14, v14, 0x4

    .line 120
    .line 121
    rem-int/2addr v14, v5

    .line 122
    rem-int/lit8 v16, v12, 0x4

    .line 123
    .line 124
    rsub-int/lit8 v16, v16, 0x4

    .line 125
    .line 126
    rem-int/lit8 v7, v16, 0x4

    .line 127
    .line 128
    new-array v8, v0, [B

    .line 129
    .line 130
    new-array v2, v12, [B

    .line 131
    .line 132
    new-array v3, v5, [B

    .line 133
    .line 134
    invoke-virtual {v9, v8}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([B)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ne v4, v0, :cond_e

    .line 139
    .line 140
    invoke-virtual {v9, v3, v11, v14}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-ne v0, v14, :cond_d

    .line 145
    .line 146
    invoke-virtual {v9, v2}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([B)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-ne v0, v12, :cond_c

    .line 151
    .line 152
    invoke-virtual {v9, v3, v11, v7}, Lcom/trilead/ssh2/channel/ChannelInputStream;->read([BII)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-ne v0, v7, :cond_b

    .line 157
    .line 158
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v4, v5, [J

    .line 161
    .line 162
    fill-array-data v4, :array_1

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v4, Ljava/lang/String;

    .line 173
    .line 174
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-direct {v4, v8, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    const/16 v0, 0x10

    .line 186
    .line 187
    if-ne v12, v0, :cond_9

    .line 188
    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const/16 v5, 0x20

    .line 192
    .line 193
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    .line 195
    .line 196
    const/4 v5, 0x0

    .line 197
    :goto_2
    if-ge v5, v12, :cond_4

    .line 198
    .line 199
    aget-byte v11, v2, v5

    .line 200
    .line 201
    and-int/lit16 v11, v11, 0xff

    .line 202
    .line 203
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-ne v0, v6, :cond_3

    .line 212
    .line 213
    move-object/from16 v20, v2

    .line 214
    .line 215
    move/from16 v21, v12

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    move-object/from16 v20, v2

    .line 224
    .line 225
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    move/from16 v21, v12

    .line 228
    .line 229
    new-array v12, v6, [J

    .line 230
    .line 231
    fill-array-data v12, :array_2

    .line 232
    .line 233
    .line 234
    invoke-direct {v2, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v11

    .line 251
    :goto_3
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const/4 v2, 0x1

    .line 255
    add-int/2addr v5, v2

    .line 256
    move-object/from16 v2, v20

    .line 257
    .line 258
    move/from16 v12, v21

    .line 259
    .line 260
    const/16 v0, 0x10

    .line 261
    .line 262
    const/4 v11, 0x0

    .line 263
    goto :goto_2

    .line 264
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 269
    .line 270
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 272
    .line 273
    iput-object v0, v4, Lcom/trilead/ssh2/channel/Channel;->hexX11FakeCookie:Ljava/lang/String;

    .line 274
    .line 275
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :try_start_2
    iget-object v2, v4, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 277
    .line 278
    invoke-virtual {v2, v0}, Lcom/trilead/ssh2/channel/ChannelManager;->checkX11Cookie(Ljava/lang/String;)Lcom/trilead/ssh2/channel/X11ServerData;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_8

    .line 283
    .line 284
    new-instance v2, Ljava/net/Socket;

    .line 285
    .line 286
    iget-object v4, v0, Lcom/trilead/ssh2/channel/X11ServerData;->hostname:Ljava/lang/String;

    .line 287
    .line 288
    iget v5, v0, Lcom/trilead/ssh2/channel/X11ServerData;->port:I

    .line 289
    .line 290
    invoke-direct {v2, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    iput-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    iget-object v4, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write([B)V

    .line 306
    .line 307
    .line 308
    iget-object v5, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    .line 309
    .line 310
    if-nez v5, :cond_5

    .line 311
    .line 312
    const/4 v10, 0x6

    .line 313
    new-array v0, v10, [B

    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_5
    array-length v5, v5

    .line 320
    const/16 v10, 0x10

    .line 321
    .line 322
    if-ne v5, v10, :cond_7

    .line 323
    .line 324
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write([B)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 328
    .line 329
    .line 330
    const/4 v5, 0x0

    .line 331
    invoke-virtual {v2, v3, v5, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 332
    .line 333
    .line 334
    iget-object v0, v0, Lcom/trilead/ssh2/channel/X11ServerData;->x11_magic_cookie:[B

    .line 335
    .line 336
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v3, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 340
    .line 341
    .line 342
    :goto_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 343
    .line 344
    .line 345
    new-instance v0, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 346
    .line 347
    iget-object v3, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 348
    .line 349
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 350
    .line 351
    const/4 v7, 0x3

    .line 352
    new-array v8, v7, [J

    .line 353
    .line 354
    fill-array-data v8, :array_3

    .line 355
    .line 356
    .line 357
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v22

    .line 364
    const/16 v18, 0x0

    .line 365
    .line 366
    const/16 v19, 0x0

    .line 367
    .line 368
    move-object/from16 v16, v0

    .line 369
    .line 370
    move-object/from16 v17, v3

    .line 371
    .line 372
    move-object/from16 v20, v9

    .line 373
    .line 374
    move-object/from16 v21, v2

    .line 375
    .line 376
    invoke-direct/range {v16 .. v22}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    new-instance v2, Lcom/trilead/ssh2/channel/StreamForwarder;

    .line 380
    .line 381
    iget-object v11, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 382
    .line 383
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 384
    .line 385
    const/4 v5, 0x3

    .line 386
    new-array v5, v5, [J

    .line 387
    .line 388
    fill-array-data v5, :array_4

    .line 389
    .line 390
    .line 391
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v16

    .line 398
    const/4 v12, 0x0

    .line 399
    const/4 v13, 0x0

    .line 400
    move-object v10, v2

    .line 401
    move-object v14, v4

    .line 402
    invoke-direct/range {v10 .. v16}, Lcom/trilead/ssh2/channel/StreamForwarder;-><init>(Lcom/trilead/ssh2/channel/Channel;Lcom/trilead/ssh2/channel/StreamForwarder;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    const/4 v3, 0x1

    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Lcom/trilead/ssh2/channel/StreamForwarder;->run()V

    .line 413
    .line 414
    .line 415
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 416
    .line 417
    .line 418
    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 419
    if-eqz v2, :cond_6

    .line 420
    .line 421
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 422
    .line 423
    .line 424
    goto :goto_5

    .line 425
    :catch_1
    :try_start_4
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 426
    .line 427
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 428
    .line 429
    .line 430
    throw v0

    .line 431
    :cond_6
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 432
    .line 433
    iget-object v2, v0, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 434
    .line 435
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 436
    .line 437
    const/4 v4, 0x5

    .line 438
    new-array v5, v4, [J

    .line 439
    .line 440
    fill-array-data v5, :array_5

    .line 441
    .line 442
    .line 443
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    const/4 v4, 0x1

    .line 451
    invoke-virtual {v2, v0, v3, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_7

    .line 460
    .line 461
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 462
    .line 463
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 464
    .line 465
    const/4 v3, 0x7

    .line 466
    new-array v3, v3, [J

    .line 467
    .line 468
    fill-array-data v3, :array_6

    .line 469
    .line 470
    .line 471
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v0

    .line 482
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 483
    .line 484
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 485
    .line 486
    const/4 v3, 0x5

    .line 487
    new-array v4, v3, [J

    .line 488
    .line 489
    fill-array-data v4, :array_7

    .line 490
    .line 491
    .line 492
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 503
    :catchall_0
    move-exception v0

    .line 504
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 505
    :try_start_6
    throw v0

    .line 506
    :cond_9
    new-instance v0, Ljava/io/IOException;

    .line 507
    .line 508
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 509
    .line 510
    const/4 v3, 0x7

    .line 511
    new-array v3, v3, [J

    .line 512
    .line 513
    fill-array-data v3, :array_8

    .line 514
    .line 515
    .line 516
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0

    .line 527
    :cond_a
    new-instance v0, Ljava/io/IOException;

    .line 528
    .line 529
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 530
    .line 531
    const/4 v3, 0x6

    .line 532
    new-array v3, v3, [J

    .line 533
    .line 534
    fill-array-data v3, :array_9

    .line 535
    .line 536
    .line 537
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    throw v0

    .line 548
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 549
    .line 550
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 551
    .line 552
    const/16 v3, 0x8

    .line 553
    .line 554
    new-array v3, v3, [J

    .line 555
    .line 556
    fill-array-data v3, :array_a

    .line 557
    .line 558
    .line 559
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v0

    .line 570
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 571
    .line 572
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 573
    .line 574
    const/16 v3, 0x8

    .line 575
    .line 576
    new-array v3, v3, [J

    .line 577
    .line 578
    fill-array-data v3, :array_b

    .line 579
    .line 580
    .line 581
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    throw v0

    .line 592
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 593
    .line 594
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 595
    .line 596
    const/16 v3, 0x8

    .line 597
    .line 598
    new-array v3, v3, [J

    .line 599
    .line 600
    fill-array-data v3, :array_c

    .line 601
    .line 602
    .line 603
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v0

    .line 614
    :cond_e
    new-instance v0, Ljava/io/IOException;

    .line 615
    .line 616
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 617
    .line 618
    const/16 v3, 0x8

    .line 619
    .line 620
    new-array v3, v3, [J

    .line 621
    .line 622
    fill-array-data v3, :array_d

    .line 623
    .line 624
    .line 625
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v0

    .line 636
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 637
    .line 638
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 639
    .line 640
    const/4 v3, 0x5

    .line 641
    new-array v4, v3, [J

    .line 642
    .line 643
    fill-array-data v4, :array_e

    .line 644
    .line 645
    .line 646
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    throw v0

    .line 657
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 658
    .line 659
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 660
    .line 661
    const/4 v3, 0x5

    .line 662
    new-array v4, v3, [J

    .line 663
    .line 664
    fill-array-data v4, :array_f

    .line 665
    .line 666
    .line 667
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    throw v0

    .line 678
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 679
    .line 680
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 681
    .line 682
    const/4 v3, 0x5

    .line 683
    new-array v4, v3, [J

    .line 684
    .line 685
    fill-array-data v4, :array_10

    .line 686
    .line 687
    .line 688
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v2

    .line 695
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 699
    :goto_6
    sget-object v2, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->log:Lcom/trilead/ssh2/log/Logger;

    .line 700
    .line 701
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 702
    .line 703
    const/4 v4, 0x5

    .line 704
    new-array v5, v4, [J

    .line 705
    .line 706
    fill-array-data v5, :array_11

    .line 707
    .line 708
    .line 709
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    const/16 v4, 0x32

    .line 717
    .line 718
    invoke-virtual {v2, v4, v3, v0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    .line 720
    .line 721
    :try_start_7
    iget-object v2, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->c:Lcom/trilead/ssh2/channel/Channel;

    .line 722
    .line 723
    iget-object v3, v2, Lcom/trilead/ssh2/channel/Channel;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 724
    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 731
    .line 732
    const/4 v7, 0x5

    .line 733
    new-array v7, v7, [J

    .line 734
    .line 735
    fill-array-data v7, :array_12

    .line 736
    .line 737
    .line 738
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 756
    .line 757
    new-array v5, v6, [J

    .line 758
    .line 759
    fill-array-data v5, :array_13

    .line 760
    .line 761
    .line 762
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    const/4 v4, 0x1

    .line 777
    invoke-virtual {v3, v2, v0, v4}, Lcom/trilead/ssh2/channel/ChannelManager;->closeChannel(Lcom/trilead/ssh2/channel/Channel;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 778
    .line 779
    .line 780
    :catch_2
    :try_start_8
    iget-object v0, v1, Lcom/trilead/ssh2/channel/RemoteX11AcceptThread;->s:Ljava/net/Socket;

    .line 781
    .line 782
    if-eqz v0, :cond_12

    .line 783
    .line 784
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 785
    .line 786
    .line 787
    :catch_3
    :cond_12
    :goto_7
    return-void

    .line 788
    nop

    .line 789
    :array_0
    .array-data 8
        -0x61d24d617ff07f29L
        0x71afc3fbec1bc163L    # 4.1369771695379783E239
        -0x7c8e4a9ec0cfd070L
        -0x1242615ae315d835L    # -4.1823232902608444E220
        -0x1a3779c1262bc46L
        0x7b98e689b6855377L    # 2.3697614256102485E287
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_1
    .array-data 8
        -0x1b2335b908bc3918L    # -7.291574485725292E177
        0x2d0d262ebcc3736aL    # 1.1179367578264161E-91
        -0x6c56ec875ec84df0L
        0x3f467284e8622cfL
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_2
    .array-data 8
        0x5fe5d3c1c4cc71fbL    # 9.145455492823173E153
        -0x5699c5a73fbd1e79L
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_3
    .array-data 8
        0x351763b6e54689adL    # 6.104946837830504E-53
        0x18e7698c3cf8f821L
        0x45391edddff02fd6L    # 3.036890935174217E25
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    :array_4
    .array-data 8
        -0x1c42d3db73eb21d2L    # -2.8184490168780923E172
        -0x332e390aee34de9L
        0x24c1b27ed9ef97caL    # 1.246630197731599E-131
    .end array-data

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    :array_5
    .array-data 8
        -0x254698540d6bd5daL    # -1.1006184900206622E129
        0x3d39b87163f8ae91L    # 9.137750183869522E-14
        0x26dcad558cb54111L    # 1.735228966249378E-121
        0x37b920fe9e52aafdL    # 2.8846545467637236E-40
        0x786463e15b5c4794L    # 8.617606924472924E271
    .end array-data

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    :array_6
    .array-data 8
        0x6e8ea786aa65f136L    # 3.5458436914279865E224
        0x5f745e4c73881126L    # 6.667357885926745E151
        0x721ca48b3c17390eL    # 4.774756685480082E241
        0x65161535baa90784L    # 8.948548282230327E178
        0x2b4d528b6d73a8eL
        -0x2d55da113958ba59L    # -1.6645241419892158E90
        -0x5b16cb10b2cae196L    # -7.102466675089769E-131
    .end array-data

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    :array_7
    .array-data 8
        0x69a3edeecaa893c6L    # 7.627494307608754E200
        -0x551701281b77d4dL    # -8.876276239601577E282
        0x671a851acef8db07L    # 4.615617861562143E188
        -0x67621a0acc748113L    # -4.194004075472137E-190
        0x638aae4cf5d4f84cL    # 3.22216223914079E171
    .end array-data

    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    :array_8
    .array-data 8
        0x4e6511881b81f74fL    # 4.544041442612921E69
        -0x5d558bb4e1dfa8feL
        -0x4bda146600e57beL    # -5.463306042864403E285
        -0x2e8453197eff10ccL    # -3.3602577204922054E84
        -0x2d540e01e509d2f7L    # -1.778923376268738E90
        0x6b37d61ff8fb2057L    # 3.0611044144501404E208
        -0x5db78407b125bf86L    # -1.568624585550758E-143
    .end array-data

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    :array_9
    .array-data 8
        0x681d30567af69baeL    # 3.3293064013812705E193
        0x4f38c16704df5f40L    # 4.3739143987257626E73
        0x376df691598141eeL    # 1.0748754839384223E-41
        0x7881a59b29486abeL    # 2.983283244695062E272
        0x5485316726470a3eL    # 1.4485737898084044E99
        0x1e57d0624f7db91cL
    .end array-data

    .line 994
    .line 995
    .line 996
    :array_a
    .array-data 8
        -0x58a94f9f3b537691L    # -3.514605888294846E-119
        0x5b354672b1508be4L    # 2.359562712563838E131
        0x3cc64ea16f1079f0L
        0x7f63380887e7387eL    # 4.217486443205976E305
        0x21bd1b7c82968744L
        0x5a2347a8640687acL    # 1.631373016454024E126
        0x4cf7d8e60779c1b6L    # 6.131371086785931E62
        0x681722130b1788deL    # 2.6385852273817197E193
    .end array-data

    :array_b
    .array-data 8
        -0x36fb47067df9ab84L    # -5.776605846549081E43
        0x5c6934e53ddffb90L    # 1.4656919735446395E137
        -0x502c818c4ff2a2c1L    # -2.6305165904833486E-78
        0x18cb8a9f80b279dfL    # 3.090724306758242E-189
        0x2dbf08536a303c88L    # 2.4374648789193378E-88
        -0x6d6cfa0051a13bf7L    # -3.368154852036452E-219
        -0x30b8d96b8dd233a5L    # -8.180750189525836E73
        -0x7158ddea17dc7769L    # -4.4406664330279E-238
    .end array-data

    :array_c
    .array-data 8
        0x3ce98458895425d4L    # 2.832953422833963E-15
        0x5759537f209b51aeL    # 6.090707131964473E112
        0x38404c4b1ba81e12L    # 9.57911584142395E-38
        -0x113358a06327051dL    # -5.3030904626634194E225
        -0x46b3678504010828L    # -1.1014634706562224E-32
        0x7d0b3bd256f092a2L    # 2.1741629153425705E294
        -0x465fa612617a272fL    # -4.030902232829735E-31
        -0x4d0408622f0901b9L    # -4.249038951415262E-63
    .end array-data

    :array_d
    .array-data 8
        0x394f7f490b5c76d8L    # 1.2132283333148677E-32
        0x5f1d9e7bb4d7c975L    # 1.5149187856262235E150
        0xde9a74e67434828L
        -0x4b94099af95140b7L    # -3.563743933398224E-56
        -0x7483a7581c2c42f9L    # -2.416463387825355E-253
        0x370f5aa0214e3f61L    # 1.7574528122432204E-43
        -0x5070f3244a27b94aL    # -1.3093505785229022E-79
        -0x533d6a9f86780756L    # -4.45449974593774E-93
    .end array-data

    :array_e
    .array-data 8
        -0x4d2907a26862f2efL    # -8.724595292843148E-64
        0x19621d189047d0d8L
        -0x39adaf77efab67c7L    # -5.804120868289169E30
        -0x42800f9f52ff79a7L    # -1.815520542747648E-12
        0x2eb1b5c8fa26eb1cL    # 9.116374894820346E-84
    .end array-data

    :array_f
    .array-data 8
        0x2b3d34fd1ae19848L
        -0x7f0063a0b8c8472fL    # -7.202450316807912E-304
        0x7265c291454a3fb0L    # 1.1607695076925754E243
        0x1a80a64aac1afb30L    # 5.015518267220738E-181
        -0x7d00acce67cfaf95L    # -3.065455311464941E-294
    .end array-data

    :array_10
    .array-data 8
        0x7cddb0a32f0ea97cL    # 2.9628239403316738E293
        -0x7770689f9c58aaddL    # -1.913557694608495E-267
        0x201107cdcd72996aL
        0x7708b45e5701aa9aL    # 2.4893353130082045E265
        -0x755233a7f39873caL
    .end array-data

    :array_11
    .array-data 8
        0x52833c1335b25e27L    # 3.0610711678390335E89
        -0x6e42fb82f88b444dL    # -3.135766454963114E-223
        -0x411c89d41867debdL    # -9.280017581950731E-6
        -0x515a5ae223285316L    # -5.570940834215373E-84
        0x7b11d7fd93ba6bd8L    # 6.633475746007405E284
    .end array-data

    :array_12
    .array-data 8
        0x651c2bae6d8bdbeaL    # 1.1415475493302528E179
        -0x72fb74334d33803cL    # -5.87709598744575E-246
        -0x48d9d838a8e9913fL    # -4.967409214941915E-43
        -0x2b4eec3476ab18bcL    # -9.338097580972501E99
        -0x50a6d71b4bf4dd7dL    # -1.3261947824503108E-80
    .end array-data

    :array_13
    .array-data 8
        0x451091b015190ba6L    # 5.007701100266574E24
        0x4f8b0c7e4794bf5fL    # 1.5293150782982983E75
    .end array-data
.end method
