.class Lcom/tknetwork/tunnel/activities/ActivityUi$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;->startPinger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

.field final synthetic val$timePing:I


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ActivityUi;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    iput p2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->val$timePing:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private declared-synchronized MakePinger()V
    .locals 7

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v1, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v5, v1, [J

    .line 27
    .line 28
    fill-array-data v5, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mConfig:Lconfig/ConfigUtil;

    .line 45
    .line 46
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getPingThread()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Lcom/v2ray/ang/util/SpeedtestUtil;->getPing(Ljava/lang/String;Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    const-wide/16 v4, 0x190

    .line 59
    .line 60
    cmp-long v6, v2, v4

    .line 61
    .line 62
    if-gez v6, :cond_1

    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    cmp-long v6, v2, v4

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    const-wide/16 v4, 0x1

    .line 71
    .line 72
    cmp-long v6, v2, v4

    .line 73
    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    const-wide/16 v4, -0x1

    .line 77
    .line 78
    cmp-long v6, v2, v4

    .line 79
    .line 80
    if-nez v6, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_2

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v1, [J

    .line 111
    .line 112
    fill-array-data v2, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v0, v0, [J

    .line 141
    .line 142
    fill-array-data v0, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v2, v1, [J

    .line 161
    .line 162
    fill-array-data v2, :array_5

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_1
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 180
    .line 181
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    const/4 v4, 0x4

    .line 192
    new-array v4, v4, [J

    .line 193
    .line 194
    fill-array-data v4, :array_6

    .line 195
    .line 196
    .line 197
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catch_0
    :try_start_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array v2, v1, [J

    .line 219
    .line 220
    fill-array-data v2, :array_7

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 230
    .line 231
    new-array v2, v1, [J

    .line 232
    .line 233
    fill-array-data v2, :array_8

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    :goto_2
    iget v0, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->val$timePing:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .line 244
    if-nez v0, :cond_2

    .line 245
    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 248
    :cond_2
    if-lez v0, :cond_3

    .line 249
    .line 250
    int-to-long v0, v0

    .line 251
    const-wide/16 v2, 0x3e8

    .line 252
    .line 253
    mul-long v0, v0, v2

    .line 254
    .line 255
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .line 257
    .line 258
    monitor-exit p0

    .line 259
    return-void

    .line 260
    :cond_3
    :try_start_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v1, v1, [J

    .line 263
    .line 264
    fill-array-data v1, :array_9

    .line 265
    .line 266
    .line 267
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Ljava/lang/InterruptedException;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    throw v0

    .line 285
    :array_0
    .array-data 8
        -0xb2b732437fb53a3L    # -6.026608868219638E254
        -0x814ec6d2d1308d6L
        -0x4c0023bcc860aa73L    # -3.1722841604798636E-58
    .end array-data

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
    :array_1
    .array-data 8
        -0x1a2982c1170616dcL    # -3.7327782565792866E182
        -0x7775c767d1e32c43L
        0x1b6143d0b5db0e0eL    # 8.521120504848539E-177
    .end array-data

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
    :array_2
    .array-data 8
        0x14f761d9c7b8a4fL
        -0x7aa41c28b54fd5eeL
        -0x4d2368ad1d87fe41L    # -1.0859552295861958E-63
        0x50a6ca822b425582L    # 3.377949628565314E80
        -0x1c67b39eba0d67eeL    # -5.86887007208779E171
        0x4a931739f143d954L    # 1.785672323625032E51
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
    .line 342
    .line 343
    .line 344
    .line 345
    :array_3
    .array-data 8
        0x242c4c0d4e00ee9L
        -0x4498228d6c89ba9dL    # -1.5792551803703235E-22
        0x5034da9b508212a7L    # 2.4147204026789818E78
    .end array-data

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
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_4
    .array-data 8
        -0x711635ffc613c802L    # -7.920799752653644E-237
        0x751fb606b9d22783L    # 1.4879447963987207E256
        0x5edcc33cd5a507a8L    # 9.19447056502569E148
        -0x1b87549882578a45L    # -9.762446696078865E175
        -0x50f03c2eb48e7c1L    # -1.578589920981183E284
        -0x2a7811b36c5df58eL    # -1.0719801765840146E104
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
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
    :array_5
    .array-data 8
        0x5e488a34c05b9836L
        -0x6a94c513b7633a13L
        0x6863a755ebb0b345L    # 7.173490633825278E194
    .end array-data

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
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_6
    .array-data 8
        -0x5b5a896009e0daf3L    # -3.779810201082382E-132
        -0x55d867614d6f1f62L
        -0x4471cb570fc8785fL    # -7.995382956875881E-22
        0x4834afaa0626a10dL    # 7.039145052902051E39
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
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
    :array_7
    .array-data 8
        -0x2e5570f73835073aL    # -2.5797407088008464E85
        -0x1cae12c3b3438092L    # -2.706187892014761E170
        0x27d5bd6a21347577L    # 8.621031785336027E-117
    .end array-data

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
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_8
    .array-data 8
        -0x1281a80e36c1bd94L    # -2.6778300333807395E219
        -0x194fe82c792b5ed5L    # -4.376392518084594E186
        -0x3d9e6928a55f575bL    # -6.043611189812701E11
    .end array-data

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
    :array_9
    .array-data 8
        0x7fde21d70cecd67cL    # 8.46381670232031E307
        -0x80e3430f27b240eL    # -5.875998227434863E269
        0x531560e72c48cdebL    # 1.7419531790097894E92
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    :goto_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴듼둔뒛딟돨듼땅땻돛듐땸뒘됫딀딐돳돠뎬딟딝뒉둬듐땠땐된땫땩딅땟뎬뒝딻땹돸듌듬딽뎡둬뒾땳뒛뒝딐딄뒋뒝땰듸따딀둣딻둑딎듰돵땸땁돼땜딨돛듸뎰딄뒀뒻뒬딸뒨뎡뎽딠뒀뒤딜땅돛듔땲뒻뎡땧둣둘뎽듸땭뎡듸두땃땩둣뎨딜둠딁뒝뎬땃딟뒾디땃든땱됐따되땸땲듸딐돵디듸듼돝뎹듰딟딃딀딄땄딅()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨따땐딸뒤따뎽되됫뒘둠딁둥드돴땯됫들땅되됴됨뒐듔땮딽딄뎨땁딠듔돨둔땰땲돛뎠됐땨돸뎡딻땔돵뒬돶땬뒝둡될돶돛땧땰따땳돠딄됴둥딻돰딌뒐됨둑됐뎨딁들듸듔땋딁땍땣듨딁딟뒈땅딄땥뒙딎디땄둘뒋딐딁됐돸뒋됨땩땣될뎻땭땡둘뎹딹땳땳뒬듐딌땡뎡돰땀땔됐둠땸뎬듸뒻땲땪뒻뎻둡돠땔땸딸딽(Lcom/tknetwork/tunnel/activities/ActivityUi;)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    add-int/2addr v5, v4

    .line 24
    invoke-static {v2, v5}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬(Lcom/tknetwork/tunnel/activities/ActivityUi;I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v6, v1, [J

    .line 36
    .line 37
    fill-array-data v6, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돨따땐딸뒤따뎽되됫뒘둠딁둥드돴땯됫들땅되됴됨뒐듔땮딽딄뎨땁딠듔돨둔땰땲돛뎠됐땨돸뎡딻땔돵뒬돶땬뒝둡될돶돛땧땰따땳돠딄됴둥딻돰딌뒐됨둑됐뎨딁들듸듔땋딁땍땣듨딁딟뒈땅딄땥뒙딎디땄둘뒋딐딁됐돸뒋됨땩땣될뎻땭땡둘뎹딹땳땳뒬듐딌땡뎡돰땀땔됐둠땸뎬듸뒻땲땪뒻뎻둡돠땔땸딸딽(Lcom/tknetwork/tunnel/activities/ActivityUi;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 60
    .line 61
    invoke-static {v5}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v7, v0, [J

    .line 68
    .line 69
    fill-array-data v7, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v8, 0x2

    .line 82
    new-array v8, v8, [J

    .line 83
    .line 84
    fill-array-data v8, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-ne v2, v5, :cond_0

    .line 103
    .line 104
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    const/4 v5, 0x6

    .line 107
    new-array v5, v5, [J

    .line 108
    .line 109
    fill-array-data v5, :array_3

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳땨뎰뎰뒵뒾딻땦듰땦뎨땡듽돤땭둡딟땤둬딤땅돼뎹땭따둡땡뎠딤듨딽뎡뒀땅땀땟돰땸듌땻땱듬딝뎻뒉땄땬돷땅뒋땐될땃들뒾따딄돝뎽땱땍뒼돴땬듨딎뒻뎻딜땲되듰땲뒼딎도득듽뎠돠땟됩땨된뎡듨뎻딃뒵딄딝돰돴땨도땨땬따땧뎽딝땃디뒹듻뒬될뒻됨땝땥둥뒬땐듟둘득따딃땄듔딁땩뒤딎뎽뒉땱돛땔(Lcom/tknetwork/tunnel/activities/ActivityUi;)Ljava/lang/Thread;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 132
    .line 133
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뒻돸땯땥땯돳들도땻땜딟딌땟딐딹뎸뎸된땜땲뒀땟딻땻땄뎽딨딐돰된땵딝땧뒐됫듐딨딹딠돶딅땅땱두딌땦듽뎸돼뒝땳둥뒈딜들뒼땱딤뒙듬땠돝뒈돝돨땀땤둘둡뒐딜뒷딄듌돳됩뎡뒼돷뎽땠뒬뒷돶땋둔딅땄됐돝땃뎰땋둣뎠땤땥딠돰땧듟딤둬뒵딃땟도돨돠뎸땹땍뒹뒛땯됩듟딤따둠뒼뎸들돸둔땐땮땦땹(Lcom/tknetwork/tunnel/activities/ActivityUi;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->MakePinger()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :catch_0
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 143
    .line 144
    invoke-static {v2, v3}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뎬땐땰딽딞드딨뎸땸뎸도땀듬땩뒝땅뒹돴땀땵돷됩뎻땵땡땸땜딄딅뒘된땤드둣딄드딠뎡돸땀뒤돸됫땦듻듬딠딽땩딄듌둘땸듐돴딹땬딄땐돵들딻땵돰돶땰땥듼둡뎠땄들땬땫뒵딤뎡뒀뒹땭뒉딜두뎬뒻뒋돼둘돼딝땥돶듬땪듟뎡딀따땬뎸딅둥땐됩땅도딌땱둘딽딀뒈땤뎹땰돛돷듽둑딄드뒐딝땅땱됩딃뎰둬(Lcom/tknetwork/tunnel/activities/ActivityUi;I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$2;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v1, v1, [J

    .line 160
    .line 161
    fill-array-data v1, :array_4

    .line 162
    .line 163
    .line 164
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v0, v0, [J

    .line 181
    .line 182
    fill-array-data v0, :array_5

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :array_0
    .array-data 8
        0x367075b36f7168L
        -0x470ac3e01b7e7e47L    # -2.556053493884927E-34
        -0x602db9844c0d7bc4L
        -0x5215d3d785a80ef2L    # -1.6445851213856551E-87
    .end array-data

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
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        0x1d094f79ef7b8600L    # 8.3832493175073E-169
        0x26d2fcce4e3fc898L
        -0x75be7895b74fb9cdL    # -2.850165170342859E-259
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
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
    :array_2
    .array-data 8
        -0xa03ff573544f277L
        0x6509d58d855e10c5L    # 5.234344554281749E178
    .end array-data

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
    :array_3
    .array-data 8
        0x41b9676feb34e3d1L    # 4.262092592066012E8
        -0x19ff8cfb20e5e943L    # -2.184211127848643E183
        0x6c66effb3cd2fee1L    # 1.544371007940706E214
        0x1f9a317d06baf3eaL    # 1.907799420798272E-156
        -0x3fa976c2ce5b61bfL    # -90.14435998035425
        -0x15756a212769cfa1L    # -1.6670582684735314E205
    .end array-data

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
    :array_4
    .array-data 8
        -0x13982c6a08af3b01L    # -1.6042325138688577E214
        -0x468eec71f5ac1cdbL    # -5.262067737303757E-32
        -0x4fada4d123037485L    # -6.341083902026453E-76
        0x6c02f66f9e84fdccL    # 1.994921339958244E212
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
    :array_5
    .array-data 8
        0x3be063944789e676L    # 2.7764014291172626E-20
        0x53e7f988be2619f9L    # 1.600304367675745E96
        -0x7e838356118a3cf9L    # -1.661615674247887E-301
    .end array-data
.end method
