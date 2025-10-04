.class final enum Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/crypto/digest/MessageMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Hmac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_MD5:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_MD5_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA1:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA1_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA2_256:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

.field public static final enum HMAC_SHA2_512:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private length:I

.field private type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 3
    .line 4
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_256:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    sget-object v1, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_512:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v7, 0x3

    .line 6
    new-array v1, v7, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v7, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v8, 0x2

    .line 35
    new-array v2, v8, [J

    .line 36
    .line 37
    fill-array-data v2, :array_2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/16 v5, 0x10

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    move-object v0, v6

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v6, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 55
    .line 56
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 57
    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v8, [J

    .line 61
    .line 62
    fill-array-data v2, :array_3

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v8, [J

    .line 75
    .line 76
    fill-array-data v2, :array_4

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v2, v8, [J

    .line 89
    .line 90
    fill-array-data v2, :array_5

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    const/16 v14, 0x10

    .line 101
    .line 102
    const/4 v11, 0x1

    .line 103
    move-object v9, v0

    .line 104
    invoke-direct/range {v9 .. v14}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_MD5:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 108
    .line 109
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 110
    .line 111
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v2, v7, [J

    .line 114
    .line 115
    fill-array-data v2, :array_6

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v3, v7, [J

    .line 128
    .line 129
    fill-array-data v3, :array_7

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v3, v8, [J

    .line 142
    .line 143
    fill-array-data v3, :array_8

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    const/16 v6, 0x14

    .line 154
    .line 155
    const/4 v3, 0x2

    .line 156
    move-object v1, v0

    .line 157
    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1_96:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 161
    .line 162
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 163
    .line 164
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v2, v7, [J

    .line 167
    .line 168
    fill-array-data v2, :array_9

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v2, v7, [J

    .line 181
    .line 182
    fill-array-data v2, :array_a

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v2, v8, [J

    .line 195
    .line 196
    fill-array-data v2, :array_b

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const/16 v14, 0x14

    .line 207
    .line 208
    const/4 v11, 0x3

    .line 209
    move-object v9, v0

    .line 210
    invoke-direct/range {v9 .. v14}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA1:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 214
    .line 215
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 216
    .line 217
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v2, v7, [J

    .line 220
    .line 221
    fill-array-data v2, :array_c

    .line 222
    .line 223
    .line 224
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    new-array v3, v7, [J

    .line 234
    .line 235
    fill-array-data v3, :array_d

    .line 236
    .line 237
    .line 238
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v3, v7, [J

    .line 248
    .line 249
    fill-array-data v3, :array_e

    .line 250
    .line 251
    .line 252
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    const/16 v6, 0x20

    .line 260
    .line 261
    const/4 v3, 0x4

    .line 262
    move-object v1, v0

    .line 263
    invoke-direct/range {v1 .. v6}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_256:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 267
    .line 268
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 269
    .line 270
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 271
    .line 272
    new-array v2, v7, [J

    .line 273
    .line 274
    fill-array-data v2, :array_f

    .line 275
    .line 276
    .line 277
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    new-array v2, v7, [J

    .line 287
    .line 288
    fill-array-data v2, :array_10

    .line 289
    .line 290
    .line 291
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v11

    .line 298
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v2, v7, [J

    .line 301
    .line 302
    fill-array-data v2, :array_11

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    const/16 v13, 0x40

    .line 313
    .line 314
    const/4 v10, 0x5

    .line 315
    move-object v8, v0

    .line 316
    invoke-direct/range {v8 .. v13}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->HMAC_SHA2_512:Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 320
    .line 321
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->$values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    sput-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->$VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 326
    .line 327
    return-void

    .line 328
    nop

    .line 329
    :array_0
    .array-data 8
        -0x3a8a805dbb1923d9L    # -4.1584281748270877E26
        -0x38961c5188abbed2L    # -1.0754028085940067E36
        0x1376fb0e0a7ddd93L    # 6.666318151238752E-215
    .end array-data

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
    :array_1
    .array-data 8
        0x6f904a1e5d9ff871L    # 2.46970542851979E229
        -0x1403fc0d701c6a86L    # -1.4736491629386468E212
        -0x4ee5bf287a99d1b5L    # -3.714708691290999E-72
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
    :array_2
    .array-data 8
        -0x587fa5069a9cbe63L
        -0x6e1565f94bae4a1fL
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
    :array_3
    .array-data 8
        0x1a9c7d24535ec563L
        0x33f9861e2fee994L
    .end array-data

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
    :array_4
    .array-data 8
        0x6292efb9d874d5feL    # 6.979040380677096E166
        0x2687ff8a9e3680d6L
    .end array-data

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
    :array_5
    .array-data 8
        0x2cf3310af9b33b9aL    # 3.6802042634146414E-92
        0x45b6f2bc6d870c83L    # 7.102120089741512E27
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
    :array_6
    .array-data 8
        0x60a8a0c10e0fc0c8L    # 4.2266466148680713E157
        -0x2b2b172bb5a3100dL    # -4.573429561678287E100
        -0x27e2be0fdc805544L    # -2.8820174328943373E116
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
    :array_7
    .array-data 8
        -0x55d0d290bb840c21L
        0x70b198c4d84c40d6L    # 6.993735258385036E234
        -0x5c016f4ff5d893bdL    # -2.628264112314049E-135
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
        0x3bf26a0775dba278L    # 6.238965621394057E-20
        -0x6fe230a11cdfd0d7L
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
    :array_9
    .array-data 8
        -0x792252d6f09bfdb2L
        0x14458ddcf3b14a14L
        0x7c54092036a8a5b9L    # 7.810147165089818E290
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
    .line 466
    .line 467
    .line 468
    .line 469
    :array_a
    .array-data 8
        0x721bd9231275bd04L    # 4.642303555939264E241
        -0x2b9eb4eadf8e0a92L    # -2.955059650993579E98
        -0x4771822e220a8826L    # -2.8674053344670654E-36
    .end array-data

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
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :array_b
    .array-data 8
        0x7690018f8d4225cfL    # 1.2600322572916005E263
        0x454032d775f99208L    # 3.916581197787946E25
    .end array-data

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
    .line 496
    .line 497
    :array_c
    .array-data 8
        -0x265f18cab49391f4L    # -5.586966400370738E123
        0x49efaaf2537d0ed1L    # 1.4463276012972128E48
        -0x443a9eaae9b93b59L    # -9.054868846967322E-21
    .end array-data

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
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_d
    .array-data 8
        0x190aebba77f86871L
        0x6a56cc1022f9d8c1L    # 1.7868869872307733E204
        -0x31092a75b7316d64L    # -2.521527221068437E72
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
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
    :array_e
    .array-data 8
        0x3280c7966e77b2e1L    # 1.9916525040530583E-65
        -0x1e73ae8b7b72ab07L    # -7.962566837497246E161
        -0x101837ac3feba750L    # -1.1538376527926766E231
    .end array-data

    .line 530
    .line 531
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
    .line 544
    .line 545
    :array_f
    .array-data 8
        0xb877b45f12eb114L
        0x28d5d2bfacb2eee6L    # 5.671537333485511E-112
        -0x30615caa6692a524L    # -3.4644930784711507E75
    .end array-data

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
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    :array_10
    .array-data 8
        0xeea7020c769f1a1L    # 8.120112049476386E-237
        0x1c623a36f5faf65aL    # 5.895725241253422E-172
        0xf51cfaa646e59b2L
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
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
    :array_11
    .array-data 8
        0x11609729b83f003eL    # 5.602633425547084E-225
        0x7bbc3ff9d522ae7eL
        -0x219e754b7dfed85eL    # -4.380891300942646E146
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->algorithm:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->length:I

    .line 9
    .line 10
    return-void
.end method

.method private static getHmac(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 5

    .line 1
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    fill-array-data v3, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :array_0
    .array-data 8
        0x3d8eb52028308805L    # 3.49104106211773E-12
        0x3f9477807cb799aeL    # 0.01998711358273802
        0x4f26ce9f9947ba08L    # 2.014834897318533E73
        -0x366284d7709be8e8L
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 1

    .line 1
    sget-object v0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->$VALUES:[Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    .line 8
    .line 9
    return-object v0
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->getHmac(Ljava/lang/String;)Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->algorithm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->length:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MessageMac$Hmac;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
