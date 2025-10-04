.class public Lcom/tknetwork/tunnel/core/TunnelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BBCODES_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static lastPayload:Ljava/lang/String;

.field private static final lastRotateList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastRotateList:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    const-wide v2, -0x4a3ce8ddc5bf55f5L    # -1.020481132070945E-49

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-wide v2, v1, v4

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastPayload:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static formatCustomPayload(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    new-array v3, v2, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v4, v2, [J

    .line 26
    .line 27
    fill-array-data v4, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 41
    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v3, v2, [J

    .line 45
    .line 46
    fill-array-data v3, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v3, v2, [J

    .line 64
    .line 65
    fill-array-data v3, :array_3

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 83
    .line 84
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v3, 0x3

    .line 87
    new-array v4, v3, [J

    .line 88
    .line 89
    fill-array-data v4, :array_4

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v5, v2, [J

    .line 102
    .line 103
    fill-array-data v5, :array_5

    .line 104
    .line 105
    .line 106
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    new-array v6, v2, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    aput-object p0, v6, v7

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    aput-object v5, v6, v8

    .line 124
    .line 125
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 133
    .line 134
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v4, v3, [J

    .line 137
    .line 138
    fill-array-data v4, :array_6

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v5, v2, [J

    .line 151
    .line 152
    fill-array-data v5, :array_7

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 166
    .line 167
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v4, v2, [J

    .line 170
    .line 171
    fill-array-data v4, :array_8

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v5, v2, [J

    .line 184
    .line 185
    fill-array-data v5, :array_9

    .line 186
    .line 187
    .line 188
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    new-array v5, v2, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object p0, v5, v7

    .line 202
    .line 203
    aput-object p1, v5, v8

    .line 204
    .line 205
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 213
    .line 214
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v0, v2, [J

    .line 217
    .line 218
    fill-array-data v0, :array_a

    .line 219
    .line 220
    .line 221
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v1, v2, [J

    .line 231
    .line 232
    fill-array-data v1, :array_b

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 246
    .line 247
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v0, v2, [J

    .line 250
    .line 251
    fill-array-data v0, :array_c

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v1, v2, [J

    .line 264
    .line 265
    fill-array-data v1, :array_d

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 279
    .line 280
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v0, v2, [J

    .line 283
    .line 284
    fill-array-data v0, :array_e

    .line 285
    .line 286
    .line 287
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v1, v2, [J

    .line 297
    .line 298
    fill-array-data v1, :array_f

    .line 299
    .line 300
    .line 301
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 312
    .line 313
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v0, v2, [J

    .line 316
    .line 317
    fill-array-data v0, :array_10

    .line 318
    .line 319
    .line 320
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v1, v2, [J

    .line 330
    .line 331
    fill-array-data v1, :array_11

    .line 332
    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 345
    .line 346
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array v0, v2, [J

    .line 349
    .line 350
    fill-array-data v0, :array_12

    .line 351
    .line 352
    .line 353
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 361
    .line 362
    new-array v1, v2, [J

    .line 363
    .line 364
    fill-array-data v1, :array_13

    .line 365
    .line 366
    .line 367
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 378
    .line 379
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 380
    .line 381
    new-array v0, v2, [J

    .line 382
    .line 383
    fill-array-data v0, :array_14

    .line 384
    .line 385
    .line 386
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 394
    .line 395
    new-array v1, v2, [J

    .line 396
    .line 397
    fill-array-data v1, :array_15

    .line 398
    .line 399
    .line 400
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 411
    .line 412
    new-array p1, v3, [J

    .line 413
    .line 414
    fill-array-data p1, :array_16

    .line 415
    .line 416
    .line 417
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    sget-object p1, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 429
    .line 430
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 431
    .line 432
    new-array v1, v2, [J

    .line 433
    .line 434
    fill-array-data v1, :array_17

    .line 435
    .line 436
    .line 437
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    if-nez p0, :cond_0

    .line 445
    .line 446
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 447
    .line 448
    const/16 v1, 0xf

    .line 449
    .line 450
    new-array v1, v1, [J

    .line 451
    .line 452
    fill-array-data v1, :array_18

    .line 453
    .line 454
    .line 455
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    :cond_0
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 466
    .line 467
    .line 468
    move-result p0

    .line 469
    if-nez p0, :cond_2

    .line 470
    .line 471
    sget-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 472
    .line 473
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    if-eqz p1, :cond_1

    .line 486
    .line 487
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    check-cast p1, Ljava/lang/String;

    .line 492
    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->BBCODES_LIST:Ljava/util/Map;

    .line 498
    .line 499
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    check-cast v0, Ljava/lang/CharSequence;

    .line 504
    .line 505
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    goto :goto_0

    .line 510
    :cond_1
    invoke-static {p2}, Lcom/tknetwork/tunnel/core/TunnelUtils;->parseRotate(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/TunnelUtils;->parseRandom(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p2

    .line 518
    :cond_2
    return-object p2

    .line 519
    :array_0
    .array-data 8
        0x1f61db3b941600faL    # 1.625719606863979E-157
        -0x27824da48849541dL    # -1.8721758078868365E118
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
    :array_1
    .array-data 8
        -0xb1f806b0a205b25L    # -9.67670044476672E254
        0x521c85cccb12064cL    # 3.546244916495985E87
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
    :array_2
    .array-data 8
        -0x97c462049f288d7L    # -7.764380277712925E262
        0x7e786e48f547d984L    # 1.6361133304342863E301
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
    :array_3
    .array-data 8
        -0x704fa53f7486c1f2L    # -4.114912921013274E-233
        0x2a23b0db0503a6cL
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
    :array_4
    .array-data 8
        0x31457bcb89ce2ae5L    # 2.4318544515014753E-71
        -0x9b17a7969b697d6L    # -7.50850251718168E261
        -0x48a1062e8f8a0dd8L    # -5.556020978552174E-42
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
    :array_5
    .array-data 8
        0x9bbe391b011beb9L
        0x2a49b78f9542c2aL
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
    :array_6
    .array-data 8
        0x5de705a1c054df19L    # 2.245902912075948E144
        0x62054989decd0b20L    # 1.5323127614459818E164
        0x11b3fb12c45ffa2eL    # 2.159211193978033E-223
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_7
    .array-data 8
        -0x15d8f9e611332d52L    # -2.2558214445421606E203
        0x70501bce066a2cdbL    # 1.0003564903782288E233
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_8
    .array-data 8
        -0xe6dfcc641b2ef2L
        0x51aaafdb54e8e48dL    # 2.592194455524039E85
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_9
    .array-data 8
        -0x1d8bf7ad121213cL
        0x656f2e714c6b5178L
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_a
    .array-data 8
        0x124e896f3d1944faL
        -0x1e4a3644cfc34c44L    # -4.901119503805426E162
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_b
    .array-data 8
        -0x18554f0d9295d8bbL    # -2.3784572486035607E191
        0x64542c9b23502f3L
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    :array_c
    .array-data 8
        0x2c56c1f78c9749f3L    # 4.261764358688935E-95
        0x4af28191a08525eL
    .end array-data

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_d
    .array-data 8
        -0x5a074c8f91faea3bL    # -9.122527926320465E-126
        -0x1eb12c9ac7833956L    # -5.4172832630263545E160
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    :array_e
    .array-data 8
        -0x362faad90ced79e7L    # -3.729712346206379E47
        -0x44495d1893a98f64L    # -4.79343223780156E-21
    .end array-data

    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_f
    .array-data 8
        -0x621e71af26713f4cL    # -9.526996432410903E-165
        -0x52c0ae43265669a2L    # -9.609331965626912E-91
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
    :array_10
    .array-data 8
        -0x1d832cc34d8cc191L    # -2.6558841258478427E166
        0x7fc1e48a1478a4b6L    # 2.5129407312513336E307
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
    :array_11
    .array-data 8
        -0x7fc69edebf595375L
        0x12bca4f43dba38d9L    # 2.028626787445166E-218
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
    :array_12
    .array-data 8
        0x194ec0c1708169bdL    # 8.834856640939973E-187
        0x673ba79b1bf0fae0L
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_13
    .array-data 8
        -0x6e54bc58670253edL
        -0x5df4b18f22d77a9cL
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_14
    .array-data 8
        -0x6f3458f1a0be57b2L    # -9.119450750500239E-228
        -0x2d62b2bf37a8ffd4L    # -9.326368618519814E89
    .end array-data

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_15
    .array-data 8
        -0x35835d6601e1107bL    # -6.696053840192255E50
        -0x8ac322bf5b19d26L
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :array_16
    .array-data 8
        0x625511e8b3b6764bL    # 4.853346314302781E165
        0x7ef5a537668cca5cL    # 3.710913172519069E303
        -0x503a54d0e2fa4960L
    .end array-data

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
    :array_17
    .array-data 8
        -0x83d671bd360c720L    # -7.675637329791892E268
        0x6e98c543e195501eL    # 5.73050282566002E224
    .end array-data

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
    .line 818
    .line 819
    :array_18
    .array-data 8
        0x752e5db1a755419fL    # 2.849664952309322E256
        -0x5927c394f9797412L
        0x40b95b327b0e436L
        0xfdd2a60a5e0bae9L    # 2.935305691391677E-232
        0x45ae8b4b5efff6e4L    # 4.726473456745562E27
        0xf4e86c69f8440c4L    # 6.000534771631372E-235
        -0x6efc3ddf0389f34bL
        0x9cacf4312af56fbL    # 1.7028029335000456E-261
        -0x56f39ade5e330a9L
        0x7a191024e9b5a374L    # 1.4217071085324013E280
        -0x214808e7ad00e2L
        0xa84b4d17fc60fc4L
        0x19397287d97f4b3L
        0x1e602beb9eb719b1L    # 2.246592839421829E-162
        0x40945e4fdcfe238aL    # 1303.577991457862
    .end array-data
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/net/NetworkInterface;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/net/InetAddress;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object v0

    .line 48
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v1, 0x4

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x6e3ab6e91cb30b4cL    # -4.60041689783335E-223
        0x12f4bc7209d4afbcL
        -0x14eef5ff4444982fL    # -5.47044941676828E207
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        0x41416089ce2cb422L    # 2277651.610739247
        -0x5b5791042394f25dL    # -4.302869139317177E-132
        0x59d59b0bbafbacddL    # 5.7130169597030635E124
        -0x6a35eee1d950c07L
    .end array-data
.end method

.method private static injectSimpleSplit(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    array-length v1, p0

    .line 47
    if-ge v3, v1, :cond_0

    .line 48
    .line 49
    :try_start_0
    aget-object v1, p0, v3

    .line 50
    .line 51
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    aget-object v1, p0, v3

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 71
    .line 72
    .line 73
    add-int/2addr v3, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return v0

    .line 76
    :cond_1
    return v3

    .line 77
    :array_0
    .array-data 8
        -0x177210a209457172L
        0x478e2e2300f3038cL    # 5.014549436073169E36
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        -0x2d73d7bf002ee43L    # -7.906665921192323E294
        -0x6400769c5f2aba9fL    # -7.969268099646096E-174
    .end array-data
.end method

.method public static injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    array-length v2, p0

    .line 47
    if-ge v1, v2, :cond_2

    .line 48
    .line 49
    aget-object v2, p0, v1

    .line 50
    .line 51
    invoke-static {v2, p1}, Lcom/tknetwork/tunnel/core/TunnelUtils;->injectSimpleSplit(Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    :try_start_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 75
    .line 76
    .line 77
    :cond_0
    :try_start_1
    array-length v2, p0

    .line 78
    sub-int/2addr v2, v0

    .line 79
    if-eq v1, v2, :cond_1

    .line 80
    .line 81
    const-wide/16 v2, 0x3e8

    .line 82
    .line 83
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    :catch_1
    :cond_1
    add-int/2addr v1, v0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return v0

    .line 89
    :cond_3
    invoke-static {p0, p1}, Lcom/tknetwork/tunnel/core/TunnelUtils;->injectSimpleSplit(Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0xcad2a54f2402ad8L
        -0x77ad74c6063c3549L    # -1.404054162609336E-268
        -0x226528e5eaa44edfL    # -8.182469314264549E142
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_1
    .array-data 8
        -0x4565ce29cd10f477L    # -2.1159889684051179E-26
        0x4df972f628c76aceL    # 4.288159574928379E67
        -0x4ba62b82e6f8e7f1L    # -1.64598471901679E-56
    .end array-data
.end method

.method public static parseRandom(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

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
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [J

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    array-length v2, v1

    .line 55
    if-gtz v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Ljava/util/Random;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 61
    .line 62
    .line 63
    array-length v3, v1

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    array-length v3, v1

    .line 69
    const/4 v4, 0x0

    .line 70
    if-ge v2, v3, :cond_1

    .line 71
    .line 72
    if-gez v2, :cond_2

    .line 73
    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 75
    :cond_2
    aget-object v1, v1, v2

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object p0

    .line 87
    :array_0
    .array-data 8
        -0x50b66353de73c6deL    # -6.750169741366443E-81
        0x563d47da07593e1eL    # 2.6862071002238436E107
        0x2ab233e5286e5e98L    # 5.07946147829752E-103
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        -0x5185312871e829aaL    # -8.624725215764881E-85
        0x70d8c8ac28292d0dL    # 3.9400875308164476E235
    .end array-data
.end method

.method public static parseRotate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastPayload:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/tknetwork/tunnel/core/TunnelUtils;->restartRotateAndRandom()V

    .line 34
    .line 35
    .line 36
    sput-object p0, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastPayload:Ljava/lang/String;

    .line 37
    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    new-array v6, v6, [J

    .line 54
    .line 55
    fill-array-data v6, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    array-length v5, v4

    .line 70
    if-gtz v5, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget-object v5, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastRotateList:Ljava/util/Map;

    .line 74
    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    add-int/2addr v6, v0

    .line 100
    array-length v7, v4

    .line 101
    if-lt v6, v7, :cond_3

    .line 102
    .line 103
    :cond_2
    const/4 v6, 0x0

    .line 104
    :cond_3
    aget-object v4, v4, v6

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    add-int/2addr v3, v0

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    return-object p0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        0x1457a79e1690b2b3L
        -0x3a8b4f5ca58b311fL    # -4.002026596899789E26
        -0xe3cad1b7743786fL    # -1.0066513671185424E240
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_1
    .array-data 8
        0x125095378bca44d4L    # 1.835029750428792E-220
        -0x12b997cf43bfe306L    # -2.4717837038686624E218
    .end array-data
.end method

.method public static restartRotateAndRandom()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/TunnelUtils;->lastRotateList:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
