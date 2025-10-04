.class public Lcom/tknetwork/tunnel/thread/PayloadInjector;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static status:I


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/net/Socket;

.field private c:Z

.field private config:Lconfig/ConfigUtil;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->a:Ljava/net/Socket;

    .line 4
    iput-object p2, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->b:Ljava/net/Socket;

    .line 5
    iput-boolean p3, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->d:Z

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/thread/PayloadInjector;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/tknetwork/tunnel/thread/PayloadInjector;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/tknetwork/tunnel/thread/PayloadInjector;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/tknetwork/tunnel/thread/PayloadInjector;-><init>(Ljava/net/Socket;Ljava/net/Socket;ZZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public interrupt()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->a:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->b:Ljava/net/Socket;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_1
    return-void
.end method

.method public final run()V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3
    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->c:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x4000

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v1, 0x8000

    .line 13
    .line 14
    .line 15
    :goto_0
    new-array v1, v1, [B

    .line 16
    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->a:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->b:Ljava/net/Socket;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :catch_0
    :cond_1
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    const/4 v5, -0x1

    .line 34
    if-ne v4, v5, :cond_2

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/String;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-direct {v5, v1, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 42
    .line 43
    .line 44
    iget-boolean v7, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->c:Z

    .line 45
    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v8, v0, [J

    .line 58
    .line 59
    fill-array-data v8, :array_0

    .line 60
    .line 61
    .line 62
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aget-object v7, v5, v6

    .line 74
    .line 75
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v9, v0, [J

    .line 78
    .line 79
    fill-array-data v9, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    aget-object v7, v5, v6

    .line 96
    .line 97
    const/16 v8, 0x9

    .line 98
    .line 99
    const/16 v9, 0xc

    .line 100
    .line 101
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual {p0, v7}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->addLog(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v7, 0xc8

    .line 113
    .line 114
    if-ne v8, v7, :cond_4

    .line 115
    .line 116
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_4
    iget-boolean v4, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->d:Z

    .line 125
    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    aget-object v5, v5, v6

    .line 134
    .line 135
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v9, v0, [J

    .line 138
    .line 139
    fill-array-data v9, :array_2

    .line 140
    .line 141
    .line 142
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    aget-object v5, v5, v6

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v6, v0, [J

    .line 161
    .line 162
    fill-array-data v6, :array_3

    .line 163
    .line 164
    .line 165
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {p0, v4}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->addLog(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 183
    .line 184
    const/4 v5, 0x4

    .line 185
    new-array v5, v5, [J

    .line 186
    .line 187
    fill-array-data v5, :array_4

    .line 188
    .line 189
    .line 190
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    aget-object v5, v5, v6

    .line 214
    .line 215
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v9, v0, [J

    .line 218
    .line 219
    fill-array-data v9, :array_5

    .line 220
    .line 221
    .line 222
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    aget-object v5, v5, v6

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    const/4 v6, 0x5

    .line 241
    new-array v6, v6, [J

    .line 242
    .line 243
    fill-array-data v6, :array_6

    .line 244
    .line 245
    .line 246
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {p0, v4}, Lcom/tknetwork/tunnel/thread/PayloadInjector;->addLog(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    const/4 v5, 0x6

    .line 266
    new-array v5, v5, [J

    .line 267
    .line 268
    fill-array-data v5, :array_7

    .line 269
    .line 270
    .line 271
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 286
    .line 287
    .line 288
    :goto_2
    sput v8, Lcom/tknetwork/tunnel/thread/PayloadInjector;->status:I

    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :cond_6
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :catchall_0
    :try_start_2
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->a:Ljava/net/Socket;

    .line 301
    .line 302
    if-eqz v4, :cond_7

    .line 303
    .line 304
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 305
    .line 306
    .line 307
    :cond_7
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->b:Ljava/net/Socket;

    .line 308
    .line 309
    if-eqz v4, :cond_1

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :catch_1
    :try_start_3
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->a:Ljava/net/Socket;

    .line 317
    .line 318
    if-eqz v0, :cond_8

    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 321
    .line 322
    .line 323
    :cond_8
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/PayloadInjector;->b:Ljava/net/Socket;

    .line 324
    .line 325
    if-eqz v0, :cond_9

    .line 326
    .line 327
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    .line 329
    .line 330
    :catch_2
    :cond_9
    :goto_3
    return-void

    .line 331
    :array_0
    .array-data 8
        -0x46010ee3c18a12f8L    # -2.4408805717811898E-29
        -0x1a40c77e105502b8L    # -1.2955091628234642E182
    .end array-data

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
    .line 342
    .line 343
    :array_1
    .array-data 8
        0x31173060706a13e9L    # 3.281123194875523E-72
        -0x5100a26be928fb29L    # -2.5832948507214287E-82
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_2
    .array-data 8
        0x22df831a11a80baeL
        -0x18b388459f347203L    # -3.9636881849160183E189
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_3
    .array-data 8
        0x3e6ad91e43c603cfL    # 5.000851685793513E-8
        -0x2d7a12348b4c71a2L    # -3.489838216684547E89
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_4
    .array-data 8
        0x70846242ff91c96bL    # 1.0126807148150921E234
        0x2982793cbd2a5ad4L
        -0x6876aed2ad8ecd50L
        -0x7d8bea655cb59279L    # -7.677555207132463E-297
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_5
    .array-data 8
        -0x26c71fdca164487eL    # -6.423485934917402E121
        -0x77784f41a9b54c2fL
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_6
    .array-data 8
        0x559fa070b1feca47L    # 2.8334311568946515E104
        -0x46397dfdc8103dc5L    # -2.2194450059429253E-30
        0x894eef3c512cafbL
        -0x285364645c8b7e45L    # -2.201575060525833E114
        -0x31fdec71ef23cde6L    # -6.091730200692482E67
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
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
    :array_7
    .array-data 8
        -0x743a8d5130c37887L    # -5.850864380201568E-252
        -0x45556db007a8d648L
        -0x457fb961f7b23fcfL    # -6.573763012385992E-27
        0x28da59ff8914ca70L    # 6.84838041171683E-112
        -0x9ec38f76b6afc1dL    # -6.081729493608313E260
        -0xf353b0e5616b5e2L    # -2.1278639087602112E235
    .end array-data
.end method
