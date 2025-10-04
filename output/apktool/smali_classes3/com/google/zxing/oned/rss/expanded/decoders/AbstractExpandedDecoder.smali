.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 5
    .line 6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 12
    .line 13
    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-static {p0, v2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v3, v0, :cond_5

    .line 33
    .line 34
    const/4 v4, 0x5

    .line 35
    if-eq v3, v4, :cond_4

    .line 36
    .line 37
    invoke-static {p0, v2, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v4, 0xc

    .line 42
    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0xd

    .line 46
    .line 47
    if-eq v3, v4, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x7

    .line 50
    invoke-static {p0, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    packed-switch v2, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v0, v0, [J

    .line 67
    .line 68
    fill-array-data v0, :array_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :pswitch_0
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 93
    .line 94
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v3, v1, [J

    .line 97
    .line 98
    fill-array-data v3, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v1, v1, [J

    .line 111
    .line 112
    fill-array-data v1, :array_2

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :pswitch_1
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 127
    .line 128
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v3, v1, [J

    .line 131
    .line 132
    fill-array-data v3, :array_3

    .line 133
    .line 134
    .line 135
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v1, v1, [J

    .line 145
    .line 146
    fill-array-data v1, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v0

    .line 160
    :pswitch_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 161
    .line 162
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v3, v1, [J

    .line 165
    .line 166
    fill-array-data v3, :array_5

    .line 167
    .line 168
    .line 169
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v1, v1, [J

    .line 179
    .line 180
    fill-array-data v1, :array_6

    .line 181
    .line 182
    .line 183
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :pswitch_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 195
    .line 196
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v3, v1, [J

    .line 199
    .line 200
    fill-array-data v3, :array_7

    .line 201
    .line 202
    .line 203
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v1, v1, [J

    .line 213
    .line 214
    fill-array-data v1, :array_8

    .line 215
    .line 216
    .line 217
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :pswitch_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 229
    .line 230
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v3, v1, [J

    .line 233
    .line 234
    fill-array-data v3, :array_9

    .line 235
    .line 236
    .line 237
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v1, v1, [J

    .line 247
    .line 248
    fill-array-data v1, :array_a

    .line 249
    .line 250
    .line 251
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 263
    .line 264
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v3, v1, [J

    .line 267
    .line 268
    fill-array-data v3, :array_b

    .line 269
    .line 270
    .line 271
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v1, v1, [J

    .line 281
    .line 282
    fill-array-data v1, :array_c

    .line 283
    .line 284
    .line 285
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object v0

    .line 296
    :pswitch_6
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 297
    .line 298
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v3, v1, [J

    .line 301
    .line 302
    fill-array-data v3, :array_d

    .line 303
    .line 304
    .line 305
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v1, v1, [J

    .line 315
    .line 316
    fill-array-data v1, :array_e

    .line 317
    .line 318
    .line 319
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    return-object v0

    .line 330
    :pswitch_7
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    .line 331
    .line 332
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 333
    .line 334
    new-array v3, v1, [J

    .line 335
    .line 336
    fill-array-data v3, :array_f

    .line 337
    .line 338
    .line 339
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    new-array v1, v1, [J

    .line 349
    .line 350
    fill-array-data v1, :array_10

    .line 351
    .line 352
    .line 353
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-direct {v0, p0, v2, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    return-object v0

    .line 364
    :cond_2
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;

    .line 365
    .line 366
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 367
    .line 368
    .line 369
    return-object v0

    .line 370
    :cond_3
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;

    .line 371
    .line 372
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 373
    .line 374
    .line 375
    return-object v0

    .line 376
    :cond_4
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;

    .line 377
    .line 378
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 379
    .line 380
    .line 381
    return-object v0

    .line 382
    :cond_5
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;

    .line 383
    .line 384
    invoke-direct {v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    nop

    .line 389
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 406
    .line 407
    .line 408
    .line 409
    :array_0
    .array-data 8
        -0x1aebf6d61b389d80L    # -8.119027866034786E178
        -0x458d66ff35863193L    # -3.755769206971099E-27
        -0x3e896b822c0ee024L    # -2.3676893246368274E7
        -0x65156bdaea4c3d8L
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
    :array_1
    .array-data 8
        0x50e9b8a39de4b9b8L    # 6.099592972051226E81
        -0x12ffe0fa2cf9d7f8L    # -1.1114854676585903E217
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
    :array_2
    .array-data 8
        -0x417aaf384512460bL    # -1.5881320566562828E-7
        0x48bfc0982a9e684bL    # 2.766017342278099E42
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
    :array_3
    .array-data 8
        -0x33c088c44fd109e9L    # -1.9751374230215447E59
        -0x6b55801a7d0442e8L    # -4.030252649877154E-209
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
    :array_4
    .array-data 8
        0x546653a9a3357f2L
        -0x19d412988a7530b4L
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
    :array_5
    .array-data 8
        0x6910ec5aa4e5da23L    # 1.2650309259722167E198
        0x1ca07e0473fb41a1L    # 8.535176770810166E-171
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
    :array_6
    .array-data 8
        -0x1d9b3118b6a22d09L    # -9.586111789177262E165
        0x34bfd5ad41cd8c9bL    # 1.2983184165041964E-54
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
    :array_7
    .array-data 8
        0x488d9e4604d40f9fL    # 3.2251424712806953E41
        0x720493836e81005aL    # 1.715032002407251E241
    .end array-data

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
    :array_8
    .array-data 8
        0x43f9a414af2bbdeL
        0x204f42050cfb65aL
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
    :array_9
    .array-data 8
        -0x27ed3b33b898a110L    # -1.8488152262797623E116
        0x3bc13f162bf390a1L    # 7.304148090000982E-21
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_a
    .array-data 8
        0x28d820df18dc4885L    # 6.270616214111519E-112
        -0x1db372421809b735L    # -3.288589831174136E165
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_b
    .array-data 8
        -0x59c18b49d7c6b88dL    # -1.799671776046973E-124
        0x54a2935db8ea9c6bL    # 5.078700173373838E99
    .end array-data

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
    :array_c
    .array-data 8
        0x546f0a1f772f6c04L    # 5.304004852081779E98
        0x8379d685697a718L
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
    :array_d
    .array-data 8
        -0x57c5d52969fab571L    # -6.641117889368416E-115
        0x4b39592929026bb5L    # 2.427883291597635E54
    .end array-data

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
    .line 584
    .line 585
    :array_e
    .array-data 8
        -0x54cc18119a691a7fL
        0x414cb8094f4694d1L    # 3764242.6193414708
    .end array-data

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
    .line 596
    .line 597
    :array_f
    .array-data 8
        0x1874fba60e3b6e9eL    # 7.358518588052626E-191
        0x6e958ad31927ee3dL    # 4.983661330422166E224
    .end array-data

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
    :array_10
    .array-data 8
        0x6fc2bd2f144504e5L    # 2.272862183094108E230
        -0x6efc4ec4a14b277cL
    .end array-data
.end method


# virtual methods
.method public final getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInformation()Lcom/google/zxing/common/BitArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
.end method
