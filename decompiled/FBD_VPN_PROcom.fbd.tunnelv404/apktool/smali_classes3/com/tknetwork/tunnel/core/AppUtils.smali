.class public Lcom/tknetwork/tunnel/core/AppUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mConfig:Lconfig/ConfigUtil;

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sput-object p1, Lcom/tknetwork/tunnel/core/AppUtils;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->getPrivateSharedPreferences()Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sput-object p1, Lcom/tknetwork/tunnel/core/AppUtils;->mConfig:Lconfig/ConfigUtil;

    .line 18
    .line 19
    return-void
.end method

.method private static mContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/AppUtils;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->getApp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public static 主()Z
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v4, v3, [J

    .line 20
    .line 21
    fill-array-data v4, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v5, v3, [J

    .line 34
    .line 35
    fill-array-data v5, :array_2

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v4, v3, [J

    .line 52
    .line 53
    fill-array-data v4, :array_3

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    new-array v5, v3, [J

    .line 66
    .line 67
    fill-array-data v5, :array_4

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v4, v3, [J

    .line 84
    .line 85
    fill-array-data v4, :array_5

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v5, v3, [J

    .line 98
    .line 99
    fill-array-data v5, :array_6

    .line 100
    .line 101
    .line 102
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v4, v3, [J

    .line 116
    .line 117
    fill-array-data v4, :array_7

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v5, v3, [J

    .line 130
    .line 131
    fill-array-data v5, :array_8

    .line 132
    .line 133
    .line 134
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v4, v3, [J

    .line 148
    .line 149
    fill-array-data v4, :array_9

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v5, v3, [J

    .line 162
    .line 163
    fill-array-data v5, :array_a

    .line 164
    .line 165
    .line 166
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v4, v3, [J

    .line 180
    .line 181
    fill-array-data v4, :array_b

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v5, v3, [J

    .line 194
    .line 195
    fill-array-data v5, :array_c

    .line 196
    .line 197
    .line 198
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v4, v3, [J

    .line 212
    .line 213
    fill-array-data v4, :array_d

    .line 214
    .line 215
    .line 216
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v5, v3, [J

    .line 226
    .line 227
    fill-array-data v5, :array_e

    .line 228
    .line 229
    .line 230
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array v4, v3, [J

    .line 244
    .line 245
    fill-array-data v4, :array_f

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v5, v3, [J

    .line 258
    .line 259
    fill-array-data v5, :array_10

    .line 260
    .line 261
    .line 262
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 274
    .line 275
    new-array v4, v3, [J

    .line 276
    .line 277
    fill-array-data v4, :array_11

    .line 278
    .line 279
    .line 280
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v5, v3, [J

    .line 290
    .line 291
    fill-array-data v5, :array_12

    .line 292
    .line 293
    .line 294
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v4, v3, [J

    .line 308
    .line 309
    fill-array-data v4, :array_13

    .line 310
    .line 311
    .line 312
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 320
    .line 321
    new-array v5, v3, [J

    .line 322
    .line 323
    fill-array-data v5, :array_14

    .line 324
    .line 325
    .line 326
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v4, v3, [J

    .line 340
    .line 341
    fill-array-data v4, :array_15

    .line 342
    .line 343
    .line 344
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 352
    .line 353
    new-array v5, v3, [J

    .line 354
    .line 355
    fill-array-data v5, :array_16

    .line 356
    .line 357
    .line 358
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v4, v3, [J

    .line 372
    .line 373
    fill-array-data v4, :array_17

    .line 374
    .line 375
    .line 376
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 384
    .line 385
    new-array v5, v3, [J

    .line 386
    .line 387
    fill-array-data v5, :array_18

    .line 388
    .line 389
    .line 390
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 402
    .line 403
    new-array v4, v3, [J

    .line 404
    .line 405
    fill-array-data v4, :array_19

    .line 406
    .line 407
    .line 408
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 416
    .line 417
    new-array v5, v3, [J

    .line 418
    .line 419
    fill-array-data v5, :array_1a

    .line 420
    .line 421
    .line 422
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    new-array v4, v3, [J

    .line 436
    .line 437
    fill-array-data v4, :array_1b

    .line 438
    .line 439
    .line 440
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 448
    .line 449
    new-array v5, v3, [J

    .line 450
    .line 451
    fill-array-data v5, :array_1c

    .line 452
    .line 453
    .line 454
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 466
    .line 467
    new-array v4, v3, [J

    .line 468
    .line 469
    fill-array-data v4, :array_1d

    .line 470
    .line 471
    .line 472
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 480
    .line 481
    new-array v5, v3, [J

    .line 482
    .line 483
    fill-array-data v5, :array_1e

    .line 484
    .line 485
    .line 486
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 498
    .line 499
    new-array v4, v3, [J

    .line 500
    .line 501
    fill-array-data v4, :array_1f

    .line 502
    .line 503
    .line 504
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 512
    .line 513
    new-array v5, v3, [J

    .line 514
    .line 515
    fill-array-data v5, :array_20

    .line 516
    .line 517
    .line 518
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 530
    .line 531
    new-array v4, v3, [J

    .line 532
    .line 533
    fill-array-data v4, :array_21

    .line 534
    .line 535
    .line 536
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 544
    .line 545
    new-array v5, v3, [J

    .line 546
    .line 547
    fill-array-data v5, :array_22

    .line 548
    .line 549
    .line 550
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 562
    .line 563
    new-array v4, v3, [J

    .line 564
    .line 565
    fill-array-data v4, :array_23

    .line 566
    .line 567
    .line 568
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 576
    .line 577
    new-array v5, v3, [J

    .line 578
    .line 579
    fill-array-data v5, :array_24

    .line 580
    .line 581
    .line 582
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 594
    .line 595
    new-array v4, v3, [J

    .line 596
    .line 597
    fill-array-data v4, :array_25

    .line 598
    .line 599
    .line 600
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 608
    .line 609
    new-array v5, v3, [J

    .line 610
    .line 611
    fill-array-data v5, :array_26

    .line 612
    .line 613
    .line 614
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 626
    .line 627
    new-array v4, v3, [J

    .line 628
    .line 629
    fill-array-data v4, :array_27

    .line 630
    .line 631
    .line 632
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 640
    .line 641
    new-array v5, v3, [J

    .line 642
    .line 643
    fill-array-data v5, :array_28

    .line 644
    .line 645
    .line 646
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 658
    .line 659
    new-array v4, v3, [J

    .line 660
    .line 661
    fill-array-data v4, :array_29

    .line 662
    .line 663
    .line 664
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 672
    .line 673
    new-array v5, v3, [J

    .line 674
    .line 675
    fill-array-data v5, :array_2a

    .line 676
    .line 677
    .line 678
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 690
    .line 691
    new-array v4, v3, [J

    .line 692
    .line 693
    fill-array-data v4, :array_2b

    .line 694
    .line 695
    .line 696
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 704
    .line 705
    new-array v5, v3, [J

    .line 706
    .line 707
    fill-array-data v5, :array_2c

    .line 708
    .line 709
    .line 710
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 722
    .line 723
    new-array v4, v3, [J

    .line 724
    .line 725
    fill-array-data v4, :array_2d

    .line 726
    .line 727
    .line 728
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v2

    .line 735
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 736
    .line 737
    new-array v5, v3, [J

    .line 738
    .line 739
    fill-array-data v5, :array_2e

    .line 740
    .line 741
    .line 742
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 754
    .line 755
    new-array v4, v3, [J

    .line 756
    .line 757
    fill-array-data v4, :array_2f

    .line 758
    .line 759
    .line 760
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 768
    .line 769
    new-array v5, v3, [J

    .line 770
    .line 771
    fill-array-data v5, :array_30

    .line 772
    .line 773
    .line 774
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 786
    .line 787
    new-array v4, v3, [J

    .line 788
    .line 789
    fill-array-data v4, :array_31

    .line 790
    .line 791
    .line 792
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 800
    .line 801
    new-array v5, v3, [J

    .line 802
    .line 803
    fill-array-data v5, :array_32

    .line 804
    .line 805
    .line 806
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 818
    .line 819
    new-array v4, v3, [J

    .line 820
    .line 821
    fill-array-data v4, :array_33

    .line 822
    .line 823
    .line 824
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 832
    .line 833
    new-array v3, v3, [J

    .line 834
    .line 835
    fill-array-data v3, :array_34

    .line 836
    .line 837
    .line 838
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-static {}, Lcom/tknetwork/tunnel/core/AppUtils;->mContext()Landroid/content/Context;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    const v3, 0x7f130024

    .line 854
    .line 855
    .line 856
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 861
    .line 862
    const/4 v4, 0x3

    .line 863
    new-array v4, v4, [J

    .line 864
    .line 865
    fill-array-data v4, :array_35

    .line 866
    .line 867
    .line 868
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_0

    .line 880
    .line 881
    invoke-static {}, Lcom/tknetwork/tunnel/core/AppUtils;->mContext()Landroid/content/Context;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    const v3, 0x7f13003b

    .line 886
    .line 887
    .line 888
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 893
    .line 894
    new-array v1, v1, [J

    .line 895
    .line 896
    fill-array-data v1, :array_36

    .line 897
    .line 898
    .line 899
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    if-eqz v1, :cond_0

    .line 911
    .line 912
    invoke-static {}, Lcom/tknetwork/tunnel/core/AppUtils;->mContext()Landroid/content/Context;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    if-eqz v0, :cond_0

    .line 925
    .line 926
    const/4 v0, 0x1

    .line 927
    goto :goto_0

    .line 928
    :cond_0
    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0

    .line 930
    nop

    .line 931
    :array_0
    .array-data 8
        -0x59c9361065245aadL
        0xa65f783fe691253L
        0x5db6aec87427f0b1L    # 2.7660089847072132E143
        0x29a7c0e7ffa8c358L    # 5.057080972893425E-108
        0x76e2ae5c8c378ceL
        0x11485f449ce40b7aL    # 2.057628340404956E-225
    .end array-data

    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
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
    :array_1
    .array-data 8
        0x6e55f772a2a5488cL
        -0x647c8c17338d6c82L    # -3.840378405204677E-176
    .end array-data

    .line 960
    .line 961
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
    :array_2
    .array-data 8
        0x4b220c680dc1a935L    # 8.643496456049759E53
        0x7bc914b2a35397edL    # 1.9095372399526596E288
    .end array-data

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
    :array_3
    .array-data 8
        0x73494bb096118dcfL    # 2.210815640661516E247
        0x42e377f27bd80af6L    # 1.712471219077997E14
    .end array-data

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
    .line 994
    .line 995
    :array_4
    .array-data 8
        0x6640c73218f52d1fL    # 3.564596280168188E184
        -0x19d71123fb29b6baL    # -1.3242887328403167E184
    .end array-data

    .line 996
    :array_5
    .array-data 8
        -0x4594a49b95a585e6L    # -2.762351174118321E-27
        -0x4caf8df90d8341c5L    # -1.599063915848371E-61
    .end array-data

    :array_6
    .array-data 8
        0x616f0e087b276438L    # 2.1830147529259449E161
        0x1d0f4b19f1e82baeL
    .end array-data

    :array_7
    .array-data 8
        -0x673dc039abe9fb49L
        -0xc9c3e6616c8c5aeL    # -6.90670753716259E247
    .end array-data

    :array_8
    .array-data 8
        0x560ea7f70b3b5964L    # 3.5154876758884203E106
        -0x5bc033364971514bL    # -4.375104384908178E-134
    .end array-data

    :array_9
    .array-data 8
        0x16646b3e360b85cdL    # 8.336152025436045E-201
        -0x34695a7950cd6cefL    # -1.3882317051341378E56
    .end array-data

    :array_a
    .array-data 8
        -0x21ba5372d1370f57L    # -1.3532173895530968E146
        -0x631a5f7f70292a95L    # -1.790803609046493E-169
    .end array-data

    :array_b
    .array-data 8
        -0x707a9fb78c21f9d6L    # -6.722982221268076E-234
        -0xa8a3862d8d4e676L    # -6.54047109794481E257
    .end array-data

    :array_c
    .array-data 8
        0xc5d5e909470280cL
        0x3205059a836fe6d8L    # 9.746814968384365E-68
    .end array-data

    :array_d
    .array-data 8
        0x5a8f1fd42cad51c5L    # 1.6854978531134065E128
        0x142c2fdbfb3e12a5L
    .end array-data

    :array_e
    .array-data 8
        0x7bd9a82401164cc2L    # 3.906774476520566E288
        0x362bae66b1c84a7fL    # 9.47014145796437E-48
    .end array-data

    :array_f
    .array-data 8
        -0x6165d6a3af729cb6L
        0x7e2ecf198d2c95e4L    # 6.4476740513437704E299
    .end array-data

    :array_10
    .array-data 8
        -0x1ae6d747dd11facbL    # -1.0195108390633472E179
        0x4dd6ca9b5df42f06L    # 9.600872248030668E66
    .end array-data

    :array_11
    .array-data 8
        0x41e27db31be6a5a2L    # 2.481821919207719E9
        -0x64d7dce1812fafbeL    # -7.445590961103694E-178
    .end array-data

    :array_12
    .array-data 8
        -0x38ad54dd1f50e95eL    # -3.877295951587517E35
        0x27270e1b29739f2aL
    .end array-data

    :array_13
    .array-data 8
        -0x65412ce0c19e4e38L    # -7.42850459987736E-180
        0x52b77b07b5e4b196L    # 2.989424953048204E90
    .end array-data

    :array_14
    .array-data 8
        -0x52828d89dd5bc074L
        -0xe7527d01aae313eL    # -8.740204376379631E238
    .end array-data

    :array_15
    .array-data 8
        0x4cefc749743b8accL    # 4.085281896402594E62
        0x2b130bbd750a90ccL    # 3.401433972126146E-101
    .end array-data

    :array_16
    .array-data 8
        -0x664b6d498ba6b1e6L    # -7.565233463328548E-185
        0x13c06466eb0f8985L    # 1.521634005941293E-213
    .end array-data

    :array_17
    .array-data 8
        -0x2008417e84b66510L    # -1.989732375474097E154
        -0xf02c3d8f02971d9L    # -1.8590851671046696E236
    .end array-data

    :array_18
    .array-data 8
        0x241f950d95450bf8L
        -0x56e5e1d627fde396L
    .end array-data

    :array_19
    .array-data 8
        0x4b67e850415d31e0L    # 1.8319049108262183E55
        -0x7f713da37d2c947fL
    .end array-data

    :array_1a
    .array-data 8
        -0x17aa79e9c43eefd2L    # -3.9280381324629394E194
        -0x1864006a3edf2b5bL    # -1.247470124610314E191
    .end array-data

    :array_1b
    .array-data 8
        0x2a973664d774c664L
        -0x45dde726c34ca628L    # -1.1420853520366213E-28
    .end array-data

    :array_1c
    .array-data 8
        -0x7a58dfc7d202765bL    # -1.990636225454185E-281
        -0x3b535ac5e0b5802aL    # -6.7637081220301766E22
    .end array-data

    :array_1d
    .array-data 8
        0x86e36dcf5f69e80L
        -0x7ae8dc9a01e502baL    # -3.890049081090313E-284
    .end array-data

    :array_1e
    .array-data 8
        -0x5e3a1b5fe5945c96L
        0x1cd8ea0fcf0e469eL
    .end array-data

    :array_1f
    .array-data 8
        -0x66a5435f2f318b9fL    # -1.536217093002695E-186
        0x79bb1efe73285e75L    # 2.403824914055544E278
    .end array-data

    :array_20
    .array-data 8
        0x74fd50121ab1ab8fL    # 3.438533765477164E255
        -0x167dc7f528541fa5L    # -1.743209781280002E200
    .end array-data

    :array_21
    .array-data 8
        -0x16a4406e6a59f2a4L    # -3.318744096766846E199
        -0x393c529f86ea4e64L    # -7.98204223055525E32
    .end array-data

    :array_22
    .array-data 8
        -0xb58c2718884a33L
        -0x7937143bb0b6ddc0L    # -5.623398051521559E-276
    .end array-data

    :array_23
    .array-data 8
        0x7a13b6196ff8e0a3L    # 1.1181287582712223E280
        0xfb24d8aa040da0cL    # 4.605143725231946E-233
    .end array-data

    :array_24
    .array-data 8
        -0x1123f1f2b96245e6L    # -1.0384493927077313E226
        0x57a2310b7321e081L    # 1.399970284517044E114
    .end array-data

    :array_25
    .array-data 8
        -0x6b7f1dcba95566dL
        0x1f50e6359c278642L    # 7.692895861617552E-158
    .end array-data

    :array_26
    .array-data 8
        -0xc6f27be944acbf7L    # -4.711085218846989E248
        -0x9b698c1a5e522cL
    .end array-data

    :array_27
    .array-data 8
        -0x2534264d44f61369L    # -2.4131223186574617E129
        0x3e2f14d9b5f5a0abL    # 3.6183566556844047E-9
    .end array-data

    :array_28
    .array-data 8
        -0x32cd28ac5e899c7dL    # -7.750787145953047E63
        -0x5948fb7a346b7aa0L
    .end array-data

    :array_29
    .array-data 8
        -0x66b35905635b8a4aL    # -8.231360226943999E-187
        0x5ea3a5a0cf84ba3cL    # 7.850617218669507E147
    .end array-data

    :array_2a
    .array-data 8
        0x269d930b49c6b24cL
        0x6da59106f54afc58L    # 1.5226033031035457E220
    .end array-data

    :array_2b
    .array-data 8
        -0x5aaccbca4fde3f8aL    # -6.926156496324248E-129
        -0x7922f7876bc500f6L
    .end array-data

    :array_2c
    .array-data 8
        0x726ca4468b972a1fL    # 1.5278662284319027E243
        -0x68e20b84105db323L
    .end array-data

    :array_2d
    .array-data 8
        0x1c343744a28190b7L    # 8.173637738575301E-173
        0x50e8f05af26b269dL    # 5.914062673311333E81
    .end array-data

    :array_2e
    .array-data 8
        0x1df17f920b088134L    # 1.899147888231738E-164
        0x2bcbb2500539028L
    .end array-data

    :array_2f
    .array-data 8
        -0x3e912abe9434ec25L    # -1.6165387368539741E7
        -0x2849f732647ca72L
    .end array-data

    :array_30
    .array-data 8
        -0x350689b7012c2265L    # -1.524237504368593E53
        0x65e8259347c4badbL    # 8.015794689072234E182
    .end array-data

    :array_31
    .array-data 8
        -0x1bc740b7cf1b7a27L    # -6.120733748150863E174
        0x20bfe5159ec7e7e4L    # 6.089798195736046E-151
    .end array-data

    :array_32
    .array-data 8
        0x4ebac533cc68314aL    # 1.847619695250218E71
        0x57665cfbb1f77deL
    .end array-data

    :array_33
    .array-data 8
        -0x7fd56b8d83209633L    # -7.392772278396188E-308
        -0x4120758286ae10e9L    # -7.519954938857928E-6
    .end array-data

    :array_34
    .array-data 8
        0x7883665117af16ebL    # 3.2795974852883335E272
        -0x193f547285c3cd40L    # -9.066637387417126E186
    .end array-data

    :array_35
    .array-data 8
        0x382fca81e3b49bc3L    # 4.6712741456099265E-38
        -0x17d3f0569b8b161cL    # -6.401373022186506E193
        -0x15522d1c44af74a0L
    .end array-data

    :array_36
    .array-data 8
        -0x3ddf063a4df28aceL    # -3.64549798467289E10
        0x6771347754a97d76L    # 1.9164195247612356E190
        -0x23db2f9859307c4aL    # -7.564240258023031E135
        -0x32944095a49024c8L    # -9.131798834546219E64
        0x79eaa7ecc83787c4L    # 1.890080376191756E279
        -0x32d4a84654efc9cfL    # -5.624062415025145E63
    .end array-data
.end method
