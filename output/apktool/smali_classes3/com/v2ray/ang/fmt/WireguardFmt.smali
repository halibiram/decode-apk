.class public final Lcom/v2ray/ang/fmt/WireguardFmt;
.super Lcom/v2ray/ang/fmt/FmtBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/v2ray/ang/fmt/WireguardFmt;",
        "Lcom/v2ray/ang/fmt/FmtBase;",
        "<init>",
        "()V",
        "parse",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "str",
        "",
        "parseWireguardConfFile",
        "toOutbound",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "profileItem",
        "toUri",
        "config",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWireguardFmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WireguardFmt.kt\ncom/v2ray/ang/fmt/WireguardFmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1#2:151\n1869#3:152\n1563#3:153\n1634#3,3:154\n1870#3:157\n774#3:158\n865#3,2:159\n1563#3:161\n1634#3,3:162\n*S KotlinDebug\n*F\n+ 1 WireguardFmt.kt\ncom/v2ray/ang/fmt/WireguardFmt\n*L\n56#1:152\n68#1:153\n68#1:154,3\n56#1:157\n120#1:158\n120#1:159,2\n120#1:161\n120#1:162,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/fmt/WireguardFmt;

    invoke-direct {v0}, Lcom/v2ray/ang/fmt/WireguardFmt;-><init>()V

    sput-object v0, Lcom/v2ray/ang/fmt/WireguardFmt;->INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/fmt/FmtBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 23
    .line 24
    sget-object v5, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v5, Ljava/net/URI;

    .line 31
    .line 32
    sget-object v6, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 33
    .line 34
    invoke-virtual {v6, p1}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz p1, :cond_9

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, v5}, Lcom/v2ray/ang/fmt/FmtBase;->getQueryParam(Ljava/net/URI;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    if-nez v8, :cond_1

    .line 65
    .line 66
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v9, v1, [J

    .line 69
    .line 70
    const-wide v10, 0x75a7b093ec52df6cL    # 5.691240009876272E258

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    aput-wide v10, v9, v2

    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    :cond_1
    invoke-virtual {v6, v8}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_2

    .line 93
    .line 94
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v9, v4, [J

    .line 97
    .line 98
    fill-array-data v9, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    :cond_2
    invoke-virtual {v3, v8}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->getIdnHost(Ljava/net/URI;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v3, v8}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v3, v8}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-nez v5, :cond_3

    .line 134
    .line 135
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v8, v1, [J

    .line 138
    .line 139
    const-wide v9, 0xff6ddd5394a0faL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    aput-wide v9, v8, v2

    .line 145
    .line 146
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    :cond_3
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setSecretKey(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v8, v4, [J

    .line 159
    .line 160
    fill-array-data v8, :array_2

    .line 161
    .line 162
    .line 163
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Ljava/lang/String;

    .line 175
    .line 176
    if-nez v5, :cond_4

    .line 177
    .line 178
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v8, v0, [J

    .line 181
    .line 182
    fill-array-data v8, :array_3

    .line 183
    .line 184
    .line 185
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    :cond_4
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setLocalAddress(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v8, v0, [J

    .line 198
    .line 199
    fill-array-data v8, :array_4

    .line 200
    .line 201
    .line 202
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/String;

    .line 214
    .line 215
    if-nez v5, :cond_5

    .line 216
    .line 217
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v1, v1, [J

    .line 220
    .line 221
    const-wide v8, 0x7b939daa8e0367afL    # 1.8668256479813785E287

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    aput-wide v8, v1, v2

    .line 227
    .line 228
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    :cond_5
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setPublicKey(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array v0, v0, [J

    .line 241
    .line 242
    fill-array-data v0, :array_5

    .line 243
    .line 244
    .line 245
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Ljava/lang/String;

    .line 257
    .line 258
    if-eqz v0, :cond_6

    .line 259
    .line 260
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-lez v1, :cond_6

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_6
    move-object v0, v7

    .line 268
    :goto_0
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setPreSharedKey(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array v1, v4, [J

    .line 274
    .line 275
    fill-array-data v1, :array_6

    .line 276
    .line 277
    .line 278
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Ljava/lang/String;

    .line 290
    .line 291
    if-nez v0, :cond_7

    .line 292
    .line 293
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 294
    .line 295
    new-array v1, v4, [J

    .line 296
    .line 297
    fill-array-data v1, :array_7

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    :cond_7
    invoke-static {v6, v0, v2, v4, v7}, Lcom/v2ray/ang/util/Utils;->parseInt$default(Lcom/v2ray/ang/util/Utils;Ljava/lang/String;IILjava/lang/Object;)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setMtu(Ljava/lang/Integer;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v1, v4, [J

    .line 321
    .line 322
    fill-array-data v1, :array_8

    .line 323
    .line 324
    .line 325
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    check-cast p1, Ljava/lang/String;

    .line 337
    .line 338
    if-nez p1, :cond_8

    .line 339
    .line 340
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array v0, v4, [J

    .line 343
    .line 344
    fill-array-data v0, :array_9

    .line 345
    .line 346
    .line 347
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    :cond_8
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setReserved(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-object v3

    .line 358
    :cond_9
    :goto_1
    return-object v7

    .line 359
    :array_0
    .array-data 8
        -0xcd02831f5fc63daL    # -6.957613098132565E246
        0x5f6198f9c724a93eL    # 2.880184595429295E151
    .end array-data

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
    .line 370
    .line 371
    :array_1
    .array-data 8
        0x186cf890bfb033edL    # 5.079905448717726E-191
        0x7b4dae56a12f5cf6L    # 8.8272325567635E285
    .end array-data

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
    :array_2
    .array-data 8
        0x6f9a923c2ba9363dL    # 4.028546512438276E229
        0xde8e2c5ba252192L
    .end array-data

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
    :array_3
    .array-data 8
        0x220d8f5f24257f43L
        -0x672c81234a6d2d8L
        -0x44bb102413b86d3aL    # -3.4637277438312E-23
    .end array-data

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
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_4
    .array-data 8
        -0x738e0b5e48c0687dL
        0x631f11a25a9a3aeaL    # 2.931319979750466E169
        -0x2163ccac04cfd779L    # -5.6342317198161396E147
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
    :array_5
    .array-data 8
        0x7b391bf63bcd18eL
        0x65006dc930989f13L    # 3.328699886736266E178
        -0x2a31a153189e7e43L    # -2.1766610452267579E105
    .end array-data

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
    .line 442
    .line 443
    :array_6
    .array-data 8
        -0x309cdc91b9d9cb4aL    # -2.705170266771022E74
        -0x63ce6c500781b229L    # -7.106649140080203E-173
    .end array-data

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
    :array_7
    .array-data 8
        0x385095995ff1829dL    # 1.949483508471307E-37
        -0x330b708cb1b682e4L    # -5.286274195767431E62
    .end array-data

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
    :array_8
    .array-data 8
        0x4e1d1e5437ef5fc6L    # 1.9625811689432428E68
        0x4f67757aa4364d67L    # 3.3158634575620203E74
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_9
    .array-data 8
        0xe906d93676f7d3eL
        0x427d6528d0724669L    # 2.0200196032364006E12
    .end array-data
.end method

.method public final parseWireguardConfFile(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object/from16 v5, p1

    .line 20
    .line 21
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 25
    .line 26
    sget-object v6, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 27
    .line 28
    invoke-virtual {v3, v6}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v9, v8

    .line 54
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_7

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-nez v10, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v12, v4, [J

    .line 84
    .line 85
    fill-array-data v12, :array_1

    .line 86
    .line 87
    .line 88
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-static {v11, v10, v0, v4, v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v12, v2, [J

    .line 105
    .line 106
    fill-array-data v12, :array_2

    .line 107
    .line 108
    .line 109
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-static {v11, v10, v1}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_3

    .line 121
    .line 122
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v10, v2, [J

    .line 125
    .line 126
    fill-array-data v10, :array_3

    .line 127
    .line 128
    .line 129
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v12, v4, [J

    .line 140
    .line 141
    fill-array-data v12, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    invoke-static {v11, v10, v1}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz v10, :cond_4

    .line 156
    .line 157
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v10, v4, [J

    .line 160
    .line 161
    fill-array-data v10, :array_5

    .line 162
    .line 163
    .line 164
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    if-eqz v9, :cond_0

    .line 173
    .line 174
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v12, v4, [J

    .line 177
    .line 178
    fill-array-data v12, :array_6

    .line 179
    .line 180
    .line 181
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    filled-new-array {v10}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const/4 v15, 0x2

    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    const/4 v13, 0x0

    .line 196
    const/4 v14, 0x2

    .line 197
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Ljava/lang/Iterable;

    .line 202
    .line 203
    new-instance v11, Ljava/util/ArrayList;

    .line 204
    .line 205
    const/16 v12, 0xa

    .line 206
    .line 207
    invoke-static {v10, v12}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v10

    .line 218
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_5

    .line 223
    .line 224
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    check-cast v12, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v12}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-ne v10, v4, :cond_0

    .line 247
    .line 248
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Ljava/lang/String;

    .line 253
    .line 254
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 255
    .line 256
    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v13, v2, [J

    .line 263
    .line 264
    fill-array-data v13, :array_7

    .line 265
    .line 266
    .line 267
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    check-cast v11, Ljava/lang/String;

    .line 282
    .line 283
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 284
    .line 285
    new-array v13, v2, [J

    .line 286
    .line 287
    fill-array-data v13, :array_8

    .line 288
    .line 289
    .line 290
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    if-eqz v12, :cond_6

    .line 302
    .line 303
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_6
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v13, v4, [J

    .line 311
    .line 312
    fill-array-data v13, :array_9

    .line 313
    .line 314
    .line 315
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-eqz v12, :cond_0

    .line 327
    .line 328
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_7
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v9, v2, [J

    .line 336
    .line 337
    fill-array-data v9, :array_a

    .line 338
    .line 339
    .line 340
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Ljava/lang/String;

    .line 352
    .line 353
    if-nez v5, :cond_8

    .line 354
    .line 355
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 356
    .line 357
    new-array v9, v1, [J

    .line 358
    .line 359
    const-wide v10, -0x1f3b110823a4b850L    # -1.437040328207675E158

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    aput-wide v10, v9, v0

    .line 365
    .line 366
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    :cond_8
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setSecretKey(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 377
    .line 378
    .line 379
    move-result-wide v9

    .line 380
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 388
    .line 389
    new-array v9, v4, [J

    .line 390
    .line 391
    fill-array-data v9, :array_b

    .line 392
    .line 393
    .line 394
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    check-cast v5, Ljava/lang/String;

    .line 406
    .line 407
    if-nez v5, :cond_9

    .line 408
    .line 409
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    new-array v9, v2, [J

    .line 412
    .line 413
    fill-array-data v9, :array_c

    .line 414
    .line 415
    .line 416
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    :cond_9
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setLocalAddress(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 427
    .line 428
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 429
    .line 430
    new-array v10, v4, [J

    .line 431
    .line 432
    fill-array-data v10, :array_d

    .line 433
    .line 434
    .line 435
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v6

    .line 446
    check-cast v6, Ljava/lang/String;

    .line 447
    .line 448
    if-nez v6, :cond_a

    .line 449
    .line 450
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    new-array v9, v4, [J

    .line 453
    .line 454
    fill-array-data v9, :array_e

    .line 455
    .line 456
    .line 457
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    :cond_a
    invoke-static {v5, v6, v0, v4, v8}, Lcom/v2ray/ang/util/Utils;->parseInt$default(Lcom/v2ray/ang/util/Utils;Ljava/lang/String;IILjava/lang/Object;)I

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setMtu(Ljava/lang/Integer;)V

    .line 473
    .line 474
    .line 475
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 476
    .line 477
    new-array v6, v2, [J

    .line 478
    .line 479
    fill-array-data v6, :array_f

    .line 480
    .line 481
    .line 482
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v5

    .line 493
    check-cast v5, Ljava/lang/String;

    .line 494
    .line 495
    if-nez v5, :cond_b

    .line 496
    .line 497
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 498
    .line 499
    new-array v6, v1, [J

    .line 500
    .line 501
    const-wide v9, -0x54ab440e55b2beddL    # -5.92471979606894E-100

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    aput-wide v9, v6, v0

    .line 507
    .line 508
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v5

    .line 515
    :cond_b
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/ProfileItem;->setPublicKey(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 519
    .line 520
    new-array v2, v2, [J

    .line 521
    .line 522
    fill-array-data v2, :array_10

    .line 523
    .line 524
    .line 525
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    check-cast v2, Ljava/lang/String;

    .line 537
    .line 538
    if-eqz v2, :cond_c

    .line 539
    .line 540
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    if-lez v5, :cond_c

    .line 545
    .line 546
    move-object v8, v2

    .line 547
    :cond_c
    invoke-virtual {v3, v8}, Lcom/v2ray/ang/dto/ProfileItem;->setPreSharedKey(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 551
    .line 552
    new-array v5, v4, [J

    .line 553
    .line 554
    fill-array-data v5, :array_11

    .line 555
    .line 556
    .line 557
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Ljava/lang/String;

    .line 569
    .line 570
    if-nez v2, :cond_d

    .line 571
    .line 572
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 573
    .line 574
    new-array v5, v1, [J

    .line 575
    .line 576
    const-wide v8, 0x302ba7281a890da9L    # 1.194077931633079E-76

    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    aput-wide v8, v5, v0

    .line 582
    .line 583
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    :cond_d
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 591
    .line 592
    new-array v6, v4, [J

    .line 593
    .line 594
    fill-array-data v6, :array_12

    .line 595
    .line 596
    .line 597
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    filled-new-array {v5}, [Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v9

    .line 608
    const/4 v12, 0x2

    .line 609
    const/4 v13, 0x0

    .line 610
    const/4 v10, 0x0

    .line 611
    const/4 v11, 0x2

    .line 612
    move-object v8, v2

    .line 613
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    if-ne v6, v4, :cond_e

    .line 622
    .line 623
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    check-cast v0, Ljava/lang/String;

    .line 628
    .line 629
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    check-cast v0, Ljava/lang/String;

    .line 637
    .line 638
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto :goto_2

    .line 642
    :cond_e
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 646
    .line 647
    new-array v1, v1, [J

    .line 648
    .line 649
    const-wide v5, 0x9c554716043ba9bL

    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    aput-wide v5, v1, v0

    .line 655
    .line 656
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 667
    .line 668
    new-array v1, v4, [J

    .line 669
    .line 670
    fill-array-data v1, :array_13

    .line 671
    .line 672
    .line 673
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    check-cast v0, Ljava/lang/String;

    .line 685
    .line 686
    if-nez v0, :cond_f

    .line 687
    .line 688
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 689
    .line 690
    new-array v1, v4, [J

    .line 691
    .line 692
    fill-array-data v1, :array_14

    .line 693
    .line 694
    .line 695
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    :cond_f
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/ProfileItem;->setReserved(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    return-object v3

    .line 706
    nop

    .line 707
    :array_0
    .array-data 8
        0x6ae747555b56a2e1L    # 9.342105298623124E206
        -0x24ad1d0ba681534eL    # -8.37858236780736E131
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :array_1
    .array-data 8
        -0x5d787a0b14cd14ddL
        0x38dd576754aa2e25L    # 8.82961254043119E-35
    .end array-data

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_2
    .array-data 8
        0x9039bef960bc4adL
        0x52514ec4f923c30dL    # 3.4430071734489894E88
        -0x39320e2c2854d0a0L    # -1.2146988554727165E33
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_3
    .array-data 8
        0x22154dcfed61c359L
        0xcaf400766bdae4fL
        0x38f1af9d2810d187L    # 2.1288738213842136E-34
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_4
    .array-data 8
        0x541099f7781590f9L    # 8.865111057836346E96
        0x2206bc5df7dc06faL    # 9.103795707159765E-145
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_5
    .array-data 8
        -0x15104a5ac93dd7deL
        -0x704963e3cc5417a1L    # -5.688793740473136E-233
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_6
    .array-data 8
        0xc677ee3e4933fbdL
        -0x119b0e1ff5f080e3L    # -6.05680411134696E223
    .end array-data

    .line 788
    .line 789
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
    :array_7
    .array-data 8
        0x41434af84a5af6fdL    # 2528752.5809010253
        0x4dea6c52dcb14af4L    # 2.2261450885275015E67
        -0x5275028410f62060L    # -2.6499455721376814E-89
    .end array-data

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
    :array_8
    .array-data 8
        0xe82be41d0b684b3L    # 8.99491358945054E-239
        -0x2fda607abd68bbecL    # -1.2518935335806876E78
        -0x7de68f6c55a6dd08L
    .end array-data

    .line 816
    .line 817
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
    :array_9
    .array-data 8
        0x440b75834b86d840L    # 6.331622309463379E19
        0xb486993a41d9d5fL
    .end array-data

    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_a
    .array-data 8
        0x5007a43a5e3ed4d3L    # 3.4218756090172145E77
        0x6f214a5f63fc4dd0L    # 2.0480226203490314E227
        0x7aab9931305f7453L    # 8.015487808463904E282
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
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
    :array_b
    .array-data 8
        -0x75833cf3f62f8e49L    # -3.741289695712455E-258
        -0x2ed292ab61ebe829L    # -1.1165441047097572E83
    .end array-data

    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_c
    .array-data 8
        -0x601342d54d800dbL
        -0x5bf0974110e426b7L    # -5.401673433875451E-135
        0x4e874123a4d1472dL    # 2.006203953021748E70
    .end array-data

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
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :array_d
    .array-data 8
        -0x2c5c0ef39519c8dL
        0x761fd3931f505784L    # 9.78688866374026E260
    .end array-data

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
    :array_e
    .array-data 8
        0x4831799771c3476aL    # 5.946423169355446E39
        0x7f88e6673505ad90L    # 2.185672910049612E306
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_f
    .array-data 8
        -0x364a6989e7b92e19L    # -1.2324420547773281E47
        -0x701bff01ba3c1b66L
        -0x41cad56ea99d7ee1L    # -4.928158636518836E-9
    .end array-data

    .line 912
    :array_10
    .array-data 8
        0x717add11e120742eL    # 4.373207183690793E238
        0xde842e079fc39cL
        -0x4b6cc275417e77bfL    # -1.9617102673449114E-55
    .end array-data

    :array_11
    .array-data 8
        -0x5f05be5e6c1e25f6L
        0x34a8dab42491abf2L    # 5.0681858851592756E-55
    .end array-data

    :array_12
    .array-data 8
        0x74cb262d51a1acaaL    # 3.980909041766102E254
        0x4800f68b07ec5657L    # 7.215287309578594E38
    .end array-data

    :array_13
    .array-data 8
        -0xef1384170323daeL    # -3.9147026289294053E236
        -0x946d44d1e86935eL    # -7.925952811439318E263
    .end array-data

    :array_14
    .array-data 8
        0x6dbe616e5782a924L    # 4.289760502204095E220
        -0xddfbb0ae38832bL
    .end array-data
.end method

.method public final toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 13
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x3

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 23
    .line 24
    sget-object v5, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->createInitOutbound(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_9

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_9

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSecretKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->setSecretKey(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getLocalAddress()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v4, [J

    .line 54
    .line 55
    fill-array-data v4, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :cond_0
    move-object v7, v6

    .line 66
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v6, v2, [J

    .line 69
    .line 70
    fill-array-data v6, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    filled-new-array {v4}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const/4 v11, 0x6

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->setAddress(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getPeers()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const/4 v6, 0x0

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPublicKey()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    if-nez v7, :cond_1

    .line 115
    .line 116
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v8, v1, [J

    .line 119
    .line 120
    const-wide v9, 0x1938a1b626c1425cL    # 3.538154875159133E-187

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    aput-wide v9, v8, v0

    .line 126
    .line 127
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    :cond_1
    invoke-virtual {v4, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;->setPublicKey(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPreSharedKey()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-eqz v7, :cond_3

    .line 142
    .line 143
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-lez v8, :cond_2

    .line 148
    .line 149
    const/4 v0, 0x1

    .line 150
    :cond_2
    if-eqz v0, :cond_3

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    move-object v7, v6

    .line 154
    :goto_0
    invoke-virtual {v4, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;->setPreSharedKey(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/util/Utils;->getIpv6Address(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, ":"

    .line 180
    .line 181
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v4, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;->setEndpoint(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMtu()Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v5, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->setMtu(Ljava/lang/Integer;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getReserved()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_5

    .line 212
    .line 213
    move-object v7, p1

    .line 214
    goto :goto_1

    .line 215
    :cond_5
    move-object v7, v6

    .line 216
    :goto_1
    if-eqz v7, :cond_8

    .line 217
    .line 218
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v0, v2, [J

    .line 221
    .line 222
    fill-array-data v0, :array_3

    .line 223
    .line 224
    .line 225
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    filled-new-array {p1}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    const/4 v11, 0x6

    .line 237
    const/4 v12, 0x0

    .line 238
    const/4 v9, 0x0

    .line 239
    const/4 v10, 0x0

    .line 240
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    if-eqz p1, :cond_8

    .line 245
    .line 246
    check-cast p1, Ljava/lang/Iterable;

    .line 247
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    move-object v2, v1

    .line 268
    check-cast v2, Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_6

    .line 275
    .line 276
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    .line 281
    .line 282
    const/16 p1, 0xa

    .line 283
    .line 284
    invoke-static {v0, p1}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_8

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_8
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->setReserved(Ljava/util/List;)V

    .line 328
    .line 329
    .line 330
    :cond_9
    return-object v3

    .line 331
    :array_0
    .array-data 8
        -0x3d2058579cb9b03fL    # -1.3921978031135902E14
        -0x10ae3b3f112817c2L    # -1.6837173296080315E228
        0x33c4b49710511bd4L    # 2.57700415068028E-59
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
    .line 344
    .line 345
    .line 346
    .line 347
    :array_1
    .array-data 8
        0x2b0b8860799eae7eL
        0x77dcd5dddd572ccfL    # 2.3802488924141747E269
        -0x404ff0cb7762fe90L    # -0.06273201308522913
    .end array-data

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
    .line 362
    .line 363
    :array_2
    .array-data 8
        -0x5783431a4d19597aL
        -0x310a26ac439d20d9L    # -2.4127328020348303E72
    .end array-data

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
    :array_3
    .array-data 8
        -0x6a09aec019be4d04L    # -7.118134079889876E-203
        0x1aaa8f7334ee42dfL    # 3.200415955159412E-180
    .end array-data
.end method

.method public final toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;
    .locals 10
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v6, v5, [J

    .line 30
    .line 31
    fill-array-data v6, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPublicKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    if-nez v6, :cond_0

    .line 46
    .line 47
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v7, v1, [J

    .line 50
    .line 51
    const-wide v8, 0x761522a938405fbbL    # 6.499300579505706E260

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    aput-wide v8, v7, v0

    .line 57
    .line 58
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :cond_0
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getReserved()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v6, v3, [J

    .line 77
    .line 78
    fill-array-data v6, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getReserved()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v6}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v6, :cond_1

    .line 97
    .line 98
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v7, v1, [J

    .line 101
    .line 102
    const-wide v8, 0x4858c874f94bcd61L    # 3.3732919072083046E40

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    aput-wide v8, v7, v0

    .line 108
    .line 109
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    :cond_1
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v6, v3, [J

    .line 122
    .line 123
    fill-array-data v6, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getLocalAddress()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-static {v6}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-nez v6, :cond_3

    .line 142
    .line 143
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v7, v1, [J

    .line 146
    .line 147
    const-wide v8, 0x1676ae8088e4e3c3L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    aput-wide v8, v7, v0

    .line 153
    .line 154
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    :cond_3
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMtu()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v3, v3, [J

    .line 173
    .line 174
    fill-array-data v3, :array_4

    .line 175
    .line 176
    .line 177
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getMtu()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_4
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPreSharedKey()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_6

    .line 200
    .line 201
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v4, v5, [J

    .line 204
    .line 205
    fill-array-data v4, :array_5

    .line 206
    .line 207
    .line 208
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPreSharedKey()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v4}, Lcom/v2ray/ang/extension/_ExtKt;->removeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    if-nez v4, :cond_5

    .line 224
    .line 225
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v1, v1, [J

    .line 228
    .line 229
    const-wide v5, 0x5f6546924b87ba8eL

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    aput-wide v5, v1, v0

    .line 235
    .line 236
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    :cond_5
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSecretKey()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p0, p1, v0, v2}, Lcom/v2ray/ang/fmt/FmtBase;->toUri(Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1

    .line 255
    :array_0
    .array-data 8
        -0x64c5b0fe5e1ff436L
        -0x56ab056f9a702d00L
    .end array-data

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
    :array_1
    .array-data 8
        0x215a9b17c9dab5ccL    # 5.20186386202496E-148
        0x92504d92982bc6aL
        -0x785288f85af5a194L
    .end array-data

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
    .line 282
    .line 283
    :array_2
    .array-data 8
        -0x125fcfa9a75a45bbL    # -1.142936167674124E220
        -0x4f13336a599cae54L    # -5.093670642745708E-73
    .end array-data

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
    :array_3
    .array-data 8
        0x12481f3b72adfbccL
        0x743cb5a68674720aL    # 8.222106804384183E251
    .end array-data

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
    :array_4
    .array-data 8
        0x32b1a84872e0b0c8L    # 1.6766661517184285E-64
        0x71614d349e745612L    # 1.4082911723010166E238
    .end array-data

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
    .line 318
    .line 319
    :array_5
    .array-data 8
        0x393af31040aa596eL    # 5.190278498943426E-33
        -0x70de3ae83a187248L    # -8.732492894151635E-236
        -0x3a4fec50da82e447L    # -4.975556853393234E27
    .end array-data
.end method
