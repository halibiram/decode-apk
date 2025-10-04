.class public Lcom/tknetwork/tunnel/service/c_05$ProfileList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/tknetwork/tunnel/service/c_05$Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_05;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private invalidate_epki_alias(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/service/c_05$Profile;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private load_profiles(Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x6

    .line 6
    const/4 v9, 0x1

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v10, 0x2

    .line 10
    new-array v2, v10, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v11, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v10, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v4, v9, [J

    .line 56
    .line 57
    const-wide v5, 0x5a7d7e1d5d060c44L    # 7.985677420694568E127

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    aput-wide v5, v4, v11

    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v12, v1

    .line 76
    move-object v13, v2

    .line 77
    const/4 v14, 0x0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v2, v10, [J

    .line 82
    .line 83
    fill-array-data v2, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v2, 0x4

    .line 102
    new-array v2, v2, [J

    .line 103
    .line 104
    fill-array-data v2, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v12, v1

    .line 121
    move-object v13, v2

    .line 122
    const/4 v14, 0x1

    .line 123
    :goto_0
    array-length v15, v13

    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_1
    if-ge v6, v15, :cond_3

    .line 126
    .line 127
    aget-object v4, v13, v6

    .line 128
    .line 129
    invoke-static {v4}, Lcom/tknetwork/tunnel/service/c_05$ProfileFN;->has_ovpn_ext(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    :try_start_0
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 136
    .line 137
    invoke-virtual {v1, v7, v4}, Lcom/tknetwork/tunnel/service/c_05;->read_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_2

    .line 142
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v2, v10, [J

    .line 145
    .line 146
    fill-array-data v2, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    new-array v1, v10, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v4, v1, v11

    .line 158
    .line 159
    aput-object v12, v1, v9

    .line 160
    .line 161
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v3, v8, [J

    .line 164
    .line 165
    fill-array-data v3, :array_5

    .line 166
    .line 167
    .line 168
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    :goto_2
    :try_start_1
    new-instance v2, Lnet/openvpn/openvpn/ClientAPI_Config;

    .line 180
    .line 181
    invoke-direct {v2}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v1}, Lnet/openvpn/openvpn/ClientAPI_Config;->setContent(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->eval_config_static(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 188
    .line 189
    .line 190
    move-result-object v16

    .line 191
    invoke-virtual/range {v16 .. v16}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getError()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_1

    .line 196
    .line 197
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v2, v10, [J

    .line 200
    .line 201
    fill-array-data v2, :array_6

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {v16 .. v16}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-array v2, v10, [Ljava/lang/Object;

    .line 215
    .line 216
    aput-object v4, v2, v11

    .line 217
    .line 218
    aput-object v1, v2, v9

    .line 219
    .line 220
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    const/4 v3, 0x5

    .line 223
    new-array v3, v3, [J

    .line 224
    .line 225
    fill-array-data v3, :array_7

    .line 226
    .line 227
    .line 228
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_1
    new-instance v5, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 240
    .line 241
    iget-object v2, v0, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 242
    .line 243
    move-object v1, v5

    .line 244
    move-object/from16 v3, p1

    .line 245
    .line 246
    move-object v11, v5

    .line 247
    move v5, v14

    .line 248
    move/from16 v17, v6

    .line 249
    .line 250
    move-object/from16 v6, v16

    .line 251
    .line 252
    invoke-direct/range {v1 .. v6}, Lcom/tknetwork/tunnel/service/c_05$Profile;-><init>(Lcom/tknetwork/tunnel/service/c_05;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ClientAPI_EvalConfig;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v11}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :catch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v2, v10, [J

    .line 262
    .line 263
    fill-array-data v2, :array_8

    .line 264
    .line 265
    .line 266
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v2, v8, [J

    .line 275
    .line 276
    fill-array-data v2, :array_9

    .line 277
    .line 278
    .line 279
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_2
    :goto_3
    move/from16 v17, v6

    .line 287
    .line 288
    :goto_4
    add-int/lit8 v6, v17, 0x1

    .line 289
    .line 290
    const/4 v11, 0x0

    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_3
    return-void

    .line 294
    :cond_4
    new-instance v1, Lcom/tknetwork/tunnel/service/c_05$InternalError;

    .line 295
    .line 296
    invoke-direct {v1}, Lcom/tknetwork/tunnel/service/c_05$InternalError;-><init>()V

    .line 297
    .line 298
    .line 299
    throw v1

    .line 300
    nop

    .line 301
    :array_0
    .array-data 8
        -0x6f2efb17d63301bL    # -1.25781546536789E275
        -0xfaec0e32a989854L    # -1.0710222249400167E233
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
    :array_1
    .array-data 8
        0x5f184ef05f83fc42L    # 1.243292842824345E150
        0x5edda05c5980ac04L    # 9.470586858943587E148
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
    :array_2
    .array-data 8
        0x678513fb07f57c69L    # 4.695671275444106E190
        -0x485668782e28a3a5L    # -1.4689039508206862E-40
    .end array-data

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
    :array_3
    .array-data 8
        0xd6391844c1665c9L
        -0x2410b7909eabdc0dL    # -7.1055184769633624E134
        -0x47b6cf115db082f0L    # -1.4806022124625475E-37
        0x3eb1f59ca3dbffd7L    # 1.0704649321957495E-6
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
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
    .line 356
    .line 357
    :array_4
    .array-data 8
        -0x7082bfe48736fa84L
        0x4b7dd9ce0b7d1195L    # 4.574621826722789E55
    .end array-data

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
    .line 368
    .line 369
    :array_5
    .array-data 8
        0x27012bfa3a8d8540L    # 8.31241540710579E-121
        -0x557783bbd7b14f71L    # -8.540808293304645E-104
        0x780d07b61b6edde6L
        0x3fd2ac6620456fcdL    # 0.29177239562500007
        -0x6edda8ae867aa5cfL
        0x18178d590fe7dfc4L
    .end array-data

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
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_6
    .array-data 8
        -0x62c28d60784cdfcL
        -0x534f49b8bf8872bdL    # -2.0029514484360176E-93
    .end array-data

    .line 398
    .line 399
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
    :array_7
    .array-data 8
        -0x51badca3ac833403L    # -8.50076006399118E-86
        -0x2b3703a4ee2d31b8L    # -2.7325065878608574E100
        -0x7aff68508354bae0L
        0x1f86f52225c07f1bL    # 8.36060778322426E-157
        -0x64a9cfc6c00fc9d6L    # -5.475553507469531E-177
    .end array-data

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
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_8
    .array-data 8
        -0x375152c9e42d7e5bL    # -1.3361546751017474E42
        0x3cb0292ecca02ab7L    # 2.24277129519892E-16
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :array_9
    .array-data 8
        -0x72524c153a104cd3L    # -8.700233628963272E-243
        -0x21e925b4bc216c50L    # -1.7835104323260815E145
        0x1056fd02bc608780L    # 5.922848335160963E-230
        -0x930f325c3077914L
        -0x55ad0744fd1e7cabL    # -8.27190539074319E-105
        -0x2f18c5033f5878cL    # -2.431085276666876E294
    .end array-data
.end method

.method private sort()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList$CustomComparator;-><init>(Lcom/tknetwork/tunnel/service/c_05$ProfileList;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_05$ProfileList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->invalidate_epki_alias(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$ProfileList;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->load_profiles(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05$ProfileList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ProfileList;->sort()V

    return-void
.end method


# virtual methods
.method public get_profile_by_name(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$Profile;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public profile_names()[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/tknetwork/tunnel/service/c_05$Profile;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/tknetwork/tunnel/service/c_05$Profile;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05$Profile;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method
