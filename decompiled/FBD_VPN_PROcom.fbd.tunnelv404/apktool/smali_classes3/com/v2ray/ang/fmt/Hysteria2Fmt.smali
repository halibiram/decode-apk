.class public final Lcom/v2ray/ang/fmt/Hysteria2Fmt;
.super Lcom/v2ray/ang/fmt/FmtBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0005\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/v2ray/ang/fmt/Hysteria2Fmt;",
        "Lcom/v2ray/ang/fmt/FmtBase;",
        "<init>",
        "()V",
        "parse",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "str",
        "",
        "toUri",
        "config",
        "toNativeConfig",
        "Lcom/v2ray/ang/dto/Hysteria2Bean;",
        "socksPort",
        "",
        "toOutbound",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "profileItem",
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
        "SMAP\nHysteria2Fmt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hysteria2Fmt.kt\ncom/v2ray/ang/fmt/Hysteria2Fmt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/fmt/Hysteria2Fmt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/fmt/Hysteria2Fmt;

    invoke-direct {v0}, Lcom/v2ray/ang/fmt/Hysteria2Fmt;-><init>()V

    sput-object v0, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->INSTANCE:Lcom/v2ray/ang/fmt/Hysteria2Fmt;

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
    .locals 11
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
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 22
    .line 23
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    new-array v5, v5, [J

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
    const/4 v5, 0x0

    .line 39
    invoke-virtual {v2, v4, v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sget-object v4, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 44
    .line 45
    sget-object v6, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 46
    .line 47
    invoke-virtual {v4, v6}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v6, Ljava/net/URI;

    .line 52
    .line 53
    sget-object v7, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 54
    .line 55
    invoke-virtual {v7, p1}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {v6, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v8, v1, [J

    .line 71
    .line 72
    const-wide v9, 0x52fc5bb5f166bbb3L    # 5.776676524886509E91

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    aput-wide v9, v8, v5

    .line 78
    .line 79
    invoke-direct {p1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_0
    invoke-virtual {v7, p1}, Lcom/v2ray/ang/util/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v7, v3, [J

    .line 99
    .line 100
    fill-array-data v7, :array_2

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :cond_1
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v6}, Lcom/v2ray/ang/extension/_ExtKt;->getIdnHost(Ljava/net/URI;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/net/URI;->getPort()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPassword(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v7, v3, [J

    .line 141
    .line 142
    fill-array-data v7, :array_3

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setSecurity(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_2

    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_2
    invoke-virtual {p0, v6}, Lcom/v2ray/ang/fmt/FmtBase;->getQueryParam(Ljava/net/URI;)Ljava/util/Map;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v7, v3, [J

    .line 176
    .line 177
    fill-array-data v7, :array_4

    .line 178
    .line 179
    .line 180
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Ljava/lang/String;

    .line 192
    .line 193
    if-nez v6, :cond_3

    .line 194
    .line 195
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v7, v3, [J

    .line 198
    .line 199
    fill-array-data v7, :array_5

    .line 200
    .line 201
    .line 202
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    :cond_3
    invoke-virtual {v4, v6}, Lcom/v2ray/ang/dto/ProfileItem;->setSecurity(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v7, v3, [J

    .line 215
    .line 216
    fill-array-data v7, :array_6

    .line 217
    .line 218
    .line 219
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Ljava/lang/CharSequence;

    .line 231
    .line 232
    if-eqz v6, :cond_6

    .line 233
    .line 234
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-nez v6, :cond_4

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v6, v3, [J

    .line 244
    .line 245
    fill-array-data v6, :array_7

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Ljava/lang/String;

    .line 260
    .line 261
    if-nez v2, :cond_5

    .line 262
    .line 263
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 264
    .line 265
    new-array v1, v1, [J

    .line 266
    .line 267
    const-wide v6, -0x3956af320b80ed05L    # -2.5673111654871847E32

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    aput-wide v6, v1, v5

    .line 273
    .line 274
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    :cond_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 282
    .line 283
    new-array v5, v3, [J

    .line 284
    .line 285
    fill-array-data v5, :array_8

    .line 286
    .line 287
    .line 288
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    goto :goto_1

    .line 304
    :cond_6
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :goto_1
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setInsecure(Ljava/lang/Boolean;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v2, v3, [J

    .line 314
    .line 315
    fill-array-data v2, :array_9

    .line 316
    .line 317
    .line 318
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setSni(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 335
    .line 336
    new-array v2, v3, [J

    .line 337
    .line 338
    fill-array-data v2, :array_a

    .line 339
    .line 340
    .line 341
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setAlpn(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 358
    .line 359
    new-array v2, v0, [J

    .line 360
    .line 361
    fill-array-data v2, :array_b

    .line 362
    .line 363
    .line 364
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    check-cast v1, Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setObfsPassword(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 381
    .line 382
    new-array v2, v3, [J

    .line 383
    .line 384
    fill-array-data v2, :array_c

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setPortHopping(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v0, v0, [J

    .line 406
    .line 407
    fill-array-data v0, :array_d

    .line 408
    .line 409
    .line 410
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v4, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setPinSHA256(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_7
    :goto_2
    return-object v4

    .line 427
    :array_0
    .array-data 8
        0x1b95a9cd972725edL    # 8.55356225849734E-176
        -0x368a4898a7a595e9L    # -7.748677824319523E45
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
    :array_1
    .array-data 8
        -0x7bc9502b16f73a39L
        -0x704f8e45d2badc6bL
        0x79e819e37fed8d30L    # 1.7089264051743803E279
        0x281e07224eb12179L    # 1.905224513795164E-115
    .end array-data

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
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_2
    .array-data 8
        0x272ccec3363267c1L
        -0x16283e32af9dc991L    # -7.273935145207103E201
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_3
    .array-data 8
        0x12aca9eab7c4ededL    # 1.0149998611640506E-218
        0x57cd5a6094dbfa79L    # 9.035691522529352E114
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_4
    .array-data 8
        0x469fdb9a097febc4L    # 1.6153833436994005E32
        -0x22f89b2032872becL    # -1.3929426254642819E140
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :array_5
    .array-data 8
        -0x2f96490a627027c9L    # -2.3820457074865192E79
        0x2829623e01cfae65L    # 3.2211251536735E-115
    .end array-data

    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_6
    .array-data 8
        0x529ef7d1f93deb70L    # 9.856723010508412E89
        0x5b177e6cb630c26L
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_7
    .array-data 8
        0x35f4cb0b18235eb2L    # 8.892026488506134E-49
        -0x58999c82e35acdb0L
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_8
    .array-data 8
        -0x1a10585818fe435aL    # -1.0508201934921808E183
        0x21a0a6c657466405L    # 1.041800452149525E-146
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_9
    .array-data 8
        -0x59124b3f4b4c9402L    # -3.594983403595785E-121
        0x65b216502480a75L
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_a
    .array-data 8
        -0x6361256d913712d1L    # -7.983826448243833E-171
        0x361dfe4df777b046L    # 5.130575363526149E-48
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_b
    .array-data 8
        0x73ab5229bc2108fL
        -0x3130b4f7331adb46L    # -4.319541190756578E71
        0x4eaeb23f37a4812aL    # 1.0592895923744056E71
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    :array_c
    .array-data 8
        -0x6834b834a7ea6903L
        0x10943861b584548fL    # 8.335461115798228E-229
    .end array-data

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_d
    .array-data 8
        0x6724924d84bebefaL    # 7.160661766036922E188
        -0x7b69b36d5411aa86L
        -0x2ac1d2bfa48292daL    # -4.2242654287721006E102
    .end array-data
.end method

.method public final toNativeConfig(Lcom/v2ray/ang/dto/ProfileItem;I)Lcom/v2ray/ang/dto/Hysteria2Bean;
    .locals 20
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object/from16 v3, p1

    .line 19
    .line 20
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getObfsPassword()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    .line 38
    .line 39
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    new-array v6, v6, [J

    .line 43
    .line 44
    fill-array-data v6, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    new-instance v6, Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getObfsPassword()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-direct {v6, v7}, Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v5, v6}, Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean$SalamanderBean;)V

    .line 64
    .line 65
    .line 66
    move-object v12, v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    move-object v12, v4

    .line 69
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHopping()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    new-instance v1, Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    .line 83
    .line 84
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v6, v2, [J

    .line 87
    .line 88
    fill-array-data v6, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    new-instance v6, Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;

    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHoppingInterval()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v2, v2, [J

    .line 109
    .line 110
    fill-array-data v2, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    :cond_3
    const-string v2, "s"

    .line 121
    .line 122
    invoke-static {v7, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v6, v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v5, v6}, Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean$TransportUdpBean;)V

    .line 130
    .line 131
    .line 132
    move-object/from16 v16, v1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    :goto_2
    move-object/from16 v16, v4

    .line 136
    .line 137
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getBandwidthDown()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_5

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getBandwidthUp()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_6

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    new-instance v1, Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getBandwidthDown()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getBandwidthUp()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-direct {v1, v2, v5}, Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v17, v1

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_7
    :goto_4
    move-object/from16 v17, v4

    .line 180
    .line 181
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHopping()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_8

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_8
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/util/Utils;->getIpv6Address(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHopping()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v5, ":"

    .line 209
    .line 210
    invoke-static {v1, v5, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    :goto_6
    move-object v9, v1

    .line 215
    goto :goto_8

    .line 216
    :cond_9
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerAddressAndPort()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    goto :goto_6

    .line 221
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    new-instance v13, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 226
    .line 227
    const-string v1, "127.0.0.1:"

    .line 228
    .line 229
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-direct {v13, v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v14, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 237
    .line 238
    invoke-static {v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v14, v0}, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v15, Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSni()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-nez v0, :cond_a

    .line 252
    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getInsecure()Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPinSHA256()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    if-eqz v2, :cond_c

    .line 266
    .line 267
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_b

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPinSHA256()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    :cond_c
    :goto_9
    invoke-direct {v15, v0, v1, v4}, Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Lcom/v2ray/ang/dto/Hysteria2Bean;

    .line 282
    .line 283
    const/16 v18, 0x4

    .line 284
    .line 285
    const/16 v19, 0x0

    .line 286
    .line 287
    const/4 v11, 0x0

    .line 288
    move-object v8, v0

    .line 289
    invoke-direct/range {v8 .. v19}, Lcom/v2ray/ang/dto/Hysteria2Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 290
    .line 291
    .line 292
    return-object v0

    .line 293
    :array_0
    .array-data 8
        -0x1fd6036a44fc1f40L    # -1.7421207104304536E155
        -0x596accd623f84ec7L    # -8.01742154826949E-123
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
    :array_1
    .array-data 8
        0x636fbbcc987c2236L    # 9.580910291919583E170
        0x53f2689c4625aa2aL    # 2.457537797030007E96
        0x7ea4e98bc8769a86L    # 1.120384892093116E302
    .end array-data

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
    .line 318
    .line 319
    .line 320
    .line 321
    :array_2
    .array-data 8
        0x5e5bdaee72a688f9L    # 3.4782773243177176E146
        0x7c898379dfbecaf2L    # 7.956410657916397E291
    .end array-data

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
    :array_3
    .array-data 8
        0x79d576b00b093577L    # 7.60955127860287E278
        -0x79f6498404f274bdL
    .end array-data
.end method

.method public final toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 2
    .param p1    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 20
    .line 21
    sget-object v0, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->createInitOutbound(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0xe884a28c24e0fe7L
        0x1033ea0e1e0339afL    # 1.282708266698895E-230
        0x5d324faed4787d8cL    # 8.72240506985685E140
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
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

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
    new-instance v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSecurity()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v7, v4, [J

    .line 36
    .line 37
    fill-array-data v7, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getSni()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v7, v4, [J

    .line 63
    .line 64
    fill-array-data v7, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v2, [J

    .line 79
    .line 80
    const-wide v8, 0x7911f590c71f2f99L    # 1.5544759874894416E275

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    aput-wide v8, v7, v1

    .line 86
    .line 87
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :cond_1
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getAlpn()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v7, v4, [J

    .line 110
    .line 111
    fill-array-data v7, :array_3

    .line 112
    .line 113
    .line 114
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v7, v2, [J

    .line 126
    .line 127
    const-wide v8, -0x5e8efc2b299a35b2L

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    aput-wide v8, v7, v1

    .line 133
    .line 134
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :cond_3
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getInsecure()Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v7, v4, [J

    .line 151
    .line 152
    fill-array-data v7, :array_4

    .line 153
    .line 154
    .line 155
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_5

    .line 169
    .line 170
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    new-array v7, v4, [J

    .line 173
    .line 174
    fill-array-data v7, :array_5

    .line 175
    .line 176
    .line 177
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 178
    .line 179
    .line 180
    :goto_0
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    goto :goto_1

    .line 185
    :cond_5
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v7, v4, [J

    .line 188
    .line 189
    fill-array-data v7, :array_6

    .line 190
    .line 191
    .line 192
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :goto_1
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getObfsPassword()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v6, v4, [J

    .line 212
    .line 213
    fill-array-data v6, :array_7

    .line 214
    .line 215
    .line 216
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v7, v0, [J

    .line 226
    .line 227
    fill-array-data v7, :array_8

    .line 228
    .line 229
    .line 230
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v6, v0, [J

    .line 243
    .line 244
    fill-array-data v6, :array_9

    .line 245
    .line 246
    .line 247
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getObfsPassword()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    if-nez v6, :cond_6

    .line 259
    .line 260
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v7, v2, [J

    .line 263
    .line 264
    const-wide v8, -0x4f884b9c33b028c4L    # -3.275477342770297E-75

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    aput-wide v8, v7, v1

    .line 270
    .line 271
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    :cond_6
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_7
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHopping()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v5}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_9

    .line 290
    .line 291
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array v4, v4, [J

    .line 294
    .line 295
    fill-array-data v4, :array_a

    .line 296
    .line 297
    .line 298
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPortHopping()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    if-nez v5, :cond_8

    .line 310
    .line 311
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 312
    .line 313
    new-array v6, v2, [J

    .line 314
    .line 315
    const-wide v7, 0x55cb25a47b88a929L    # 1.9456781589669512E105

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    aput-wide v7, v6, v1

    .line 321
    .line 322
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    :cond_8
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    :cond_9
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPinSHA256()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-static {v4}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_b

    .line 341
    .line 342
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array v0, v0, [J

    .line 345
    .line 346
    fill-array-data v0, :array_b

    .line 347
    .line 348
    .line 349
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPinSHA256()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    if-nez v4, :cond_a

    .line 361
    .line 362
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array v2, v2, [J

    .line 365
    .line 366
    const-wide v5, -0x31ce44d6d818a6aeL    # -4.78029422428078E68

    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    aput-wide v5, v2, v1

    .line 372
    .line 373
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    :cond_a
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_b
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getPassword()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p0, p1, v0, v3}, Lcom/v2ray/ang/fmt/FmtBase;->toUri(Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    return-object p1

    .line 392
    nop

    .line 393
    :array_0
    .array-data 8
        0x2a9009e0ff505861L
        -0x701713bc7de5ee19L    # -5.016629358688969E-232
    .end array-data

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
    :array_1
    .array-data 8
        -0x6ad6e815194426a8L    # -9.76996443202498E-207
        -0x744b0c46cac78ac3L
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
    :array_2
    .array-data 8
        0x8e0897595d8f3d8L
        0x53c0c98882c3b330L    # 2.8013535456589674E95
    .end array-data

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
    :array_3
    .array-data 8
        -0x5ea85c09c2c2d5bfL    # -4.62208959826944E-148
        -0x212721acf065242bL    # -7.949625657620246E148
    .end array-data

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
    :array_4
    .array-data 8
        -0x5018f34a94ff985dL    # -6.220643874084971E-78
        -0x18c3caa6c9076518L
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
    :array_5
    .array-data 8
        0x56e413ee36c6a15cL    # 3.772295533281776E110
        -0x7d4d0ade21e26564L    # -1.159488462628136E-295
    .end array-data

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
    :array_6
    .array-data 8
        -0x3aa257e8cce30e2cL    # -1.4341053718457812E26
        -0x69a5aeea2dd97a3cL    # -5.371987357458348E-201
    .end array-data

    .line 466
    .line 467
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
    :array_7
    .array-data 8
        -0xabb6fb64ee4d0efL    # -7.719087830211316E256
        0x25b791d655768f41L    # 5.440458030718513E-127
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_8
    .array-data 8
        0x2e770cf73bd89130L    # 7.415908463686605E-85
        -0x459bf4c2e19d54b1L    # -2.0239168206014253E-27
        -0x42bb1f954eb86e13L    # -1.4833736371376776E-13
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_9
    .array-data 8
        0x13abf5d6b5dab32L
        -0x63f7d2465ce64b1dL
        -0x250f4d078abe4d1aL    # -1.157527466531571E130
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_a
    .array-data 8
        -0x16ff5a660119805bL    # -6.221857276262393E197
        -0x7bb3a0874234e21bL    # -5.822888022708496E-288
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_b
    .array-data 8
        0x43a29b585d7a8165L    # 6.7038123629167885E17
        -0x20ffac4c9e06396cL    # -4.1753518860395505E149
        0x773672d6de596e6bL    # 1.8096111950297165E266
    .end array-data
.end method
