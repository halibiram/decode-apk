.class final Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/service/V2RayServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiveMessageHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/v2ray/ang/service/V2RayServiceManager$ReceiveMessageHandler;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x3

    .line 6
    sget-object v4, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 7
    .line 8
    invoke-virtual {v4}, Lcom/v2ray/ang/service/V2RayServiceManager;->getServiceControl()Ljava/lang/ref/SoftReference;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    if-eqz v5, :cond_12

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lcom/v2ray/ang/service/ServiceControl;

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_7

    .line 23
    .line 24
    :cond_0
    const/4 v6, 0x0

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v8, p1, [J

    .line 30
    .line 31
    fill-array-data v8, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {p2, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v7, v6

    .line 51
    :goto_0
    if-nez v7, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-ne v8, v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/v2ray/ang/service/V2RayServiceManager;->getCoreController()Llibv2ray/CoreController;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Llibv2ray/CoreController;->getIsRunning()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    sget-object p1, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 71
    .line 72
    invoke-interface {v5}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    const-wide v7, -0x6ec2972e6b67dabL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    aput-wide v7, v0, v1

    .line 86
    .line 87
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/16 v1, 0xb

    .line 95
    .line 96
    invoke-virtual {p1, v4, v1, v0}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_3
    sget-object p1, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 102
    .line 103
    invoke-interface {v5}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    const-wide v7, 0x4e2b21bc76c86ae1L    # 3.65735697614527E68

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    aput-wide v7, v0, v1

    .line 117
    .line 118
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/16 v1, 0xc

    .line 126
    .line 127
    invoke-virtual {p1, v4, v1, v0}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2UI(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_6

    .line 131
    .line 132
    :cond_4
    :goto_1
    if-nez v7, :cond_5

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eq v0, p1, :cond_c

    .line 140
    .line 141
    :goto_2
    if-nez v7, :cond_6

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eq v0, v3, :cond_c

    .line 149
    .line 150
    :goto_3
    if-nez v7, :cond_7

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    const/4 v1, 0x4

    .line 158
    if-ne v0, v1, :cond_8

    .line 159
    .line 160
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v0, v3, [J

    .line 163
    .line 164
    fill-array-data v0, :array_1

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v0, v3, [J

    .line 176
    .line 177
    fill-array-data v0, :array_2

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    invoke-interface {v5}, Lcom/v2ray/ang/service/ServiceControl;->stopService()V

    .line 187
    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_8
    :goto_4
    if-nez v7, :cond_9

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-ne v0, v2, :cond_a

    .line 198
    .line 199
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v1, v3, [J

    .line 202
    .line 203
    fill-array-data v1, :array_3

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v1, v3, [J

    .line 215
    .line 216
    fill-array-data v1, :array_4

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    invoke-interface {v5}, Lcom/v2ray/ang/service/ServiceControl;->stopService()V

    .line 226
    .line 227
    .line 228
    const-wide/16 v0, 0x1f4

    .line 229
    .line 230
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v5}, Lcom/v2ray/ang/service/ServiceControl;->getService()Landroid/app/Service;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0, v6, p1, v6}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVService$default(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_a
    :goto_5
    if-nez v7, :cond_b

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    const/4 v0, 0x6

    .line 249
    if-ne p1, v0, :cond_c

    .line 250
    .line 251
    invoke-static {v4}, Lcom/v2ray/ang/service/V2RayServiceManager;->access$measureV2rayDelay(Lcom/v2ray/ang/service/V2RayServiceManager;)V

    .line 252
    .line 253
    .line 254
    :cond_c
    :goto_6
    if-eqz p2, :cond_d

    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    :cond_d
    if-eqz v6, :cond_12

    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    const p2, -0x7ed8ea7f

    .line 267
    .line 268
    .line 269
    if-eq p1, p2, :cond_10

    .line 270
    .line 271
    const p2, -0x56ac2893

    .line 272
    .line 273
    .line 274
    if-eq p1, p2, :cond_e

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_e
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    new-array p2, v2, [J

    .line 280
    .line 281
    fill-array-data p2, :array_5

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-nez p1, :cond_f

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_f
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array p2, v3, [J

    .line 301
    .line 302
    fill-array-data p2, :array_6

    .line 303
    .line 304
    .line 305
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array p2, v2, [J

    .line 314
    .line 315
    fill-array-data p2, :array_7

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    sget-object p1, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 325
    .line 326
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->access$getCurrentConfig$p()Lcom/v2ray/ang/dto/ProfileItem;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/service/NotificationService;->startSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 335
    .line 336
    new-array p2, v2, [J

    .line 337
    .line 338
    fill-array-data p2, :array_8

    .line 339
    .line 340
    .line 341
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-nez p1, :cond_11

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 356
    .line 357
    new-array p2, v3, [J

    .line 358
    .line 359
    fill-array-data p2, :array_9

    .line 360
    .line 361
    .line 362
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 369
    .line 370
    new-array p2, v2, [J

    .line 371
    .line 372
    fill-array-data p2, :array_a

    .line 373
    .line 374
    .line 375
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    sget-object p1, Lcom/v2ray/ang/service/NotificationService;->INSTANCE:Lcom/v2ray/ang/service/NotificationService;

    .line 382
    .line 383
    invoke-static {}, Lcom/v2ray/ang/service/V2RayServiceManager;->access$getCurrentConfig$p()Lcom/v2ray/ang/dto/ProfileItem;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/service/NotificationService;->stopSpeedNotification(Lcom/v2ray/ang/dto/ProfileItem;)V

    .line 388
    .line 389
    .line 390
    :cond_12
    :goto_7
    return-void

    .line 391
    :array_0
    .array-data 8
        0x79acc2ceb49892a9L    # 1.2745870232895146E278
        0x1ab2912d6a64016aL    # 4.474522128830458E-180
    .end array-data

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
    :array_1
    .array-data 8
        0x15be159a822b4d80L
        0x43648b90cacde4c9L    # 4.6263628226045512E16
        -0x462feec73196e71cL    # -3.168710889720205E-30
    .end array-data

    .line 404
    .line 405
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
    :array_2
    .array-data 8
        0x6f458a0c8f7ad1caL    # 1.0205103080513666E228
        -0x3bdf7e36ab09b83cL    # -1.5225000234865354E20
        0x33d27da53e79a66fL    # 4.60274190161049E-59
    .end array-data

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
    :array_3
    .array-data 8
        -0x6bb1afbc41fb18f6L    # -7.203600399366121E-211
        -0x26b8cd675f56c699L    # -1.1980421341650126E122
        -0x1e2201f5167e90eeL
    .end array-data

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
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_4
    .array-data 8
        0x41a8b26c0c02be45L    # 2.071731260053579E8
        -0x380f6a11b7ce0ccdL    # -3.527381295656398E38
        -0x1e8777779da23d84L
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_5
    .array-data 8
        -0xaff10ab3c6a5102L    # -3.973092195087123E255
        -0x583a73cb96156b7dL    # -4.272401976250001E-117
        -0x40fde8cd689aa894L    # -3.4505111147594244E-5
        0x317ef795bf4af5c1L    # 2.8042837960415913E-70
        0x36657460a8356addL    # 1.1743866347737762E-46
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_6
    .array-data 8
        0x20806cf4f62f1695L    # 3.920250147749905E-152
        0x6fdbf8ea5ec7df96L    # 6.785553518527156E230
        0x682ec161cfdbe4a7L    # 7.015984021560191E193
    .end array-data

    :array_7
    .array-data 8
        0x60618a1e553c8a66L    # 1.8813326959751175E156
        0x43ca2b678d11251L    # 2.93839652240526E-288
        0x2bec79a4a333efd6L    # 4.1659850838553674E-97
        -0x4141999d24c91f61L    # -1.8119779782010601E-6
        0x1eeed4f00c03104dL
    .end array-data

    :array_8
    .array-data 8
        -0xa7ba1dde0e7f23bL
        -0x4a071971c736a04aL    # -1.0648554454525035E-48
        0x1fbe431ae4c5bf32L
        -0x31d6c0bf2bb2a2e0L    # -3.4033000514164394E68
        -0x5fd8bdd936ee7080L    # -8.673455213609323E-154
    .end array-data

    :array_9
    .array-data 8
        -0x424c50847ef94915L    # -1.7903838189901954E-11
        0x5d0ba8c5b87c13cdL    # 1.6469054525392786E140
        0x649bf1be56849249L    # 4.423345634461505E176
    .end array-data

    :array_a
    .array-data 8
        0x643924f4ce1435e9L    # 6.218964759390663E174
        -0x6ee78c137affdf54L
        -0x71c806df421a18c2L    # -3.595246544735298E-240
        0x4fd49e8fa95b832cL    # 3.730564129398508E76
        0x74148d15bdbeae46L    # 1.471403376149726E251
    .end array-data
.end method
