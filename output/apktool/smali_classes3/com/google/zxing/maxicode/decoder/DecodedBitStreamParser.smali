.class final Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COUNTRY_BYTES:[B

.field private static final ECI:C = '\ufffa'

.field private static final FS:C = '\u001c'

.field private static final GS:C = '\u001d'

.field private static final LATCHA:C = '\ufff7'

.field private static final LATCHB:C = '\ufff8'

.field private static final LOCK:C = '\ufff9'

.field private static final NS:C = '\ufffb'

.field private static final PAD:C = '\ufffc'

.field private static final POSTCODE_2_BYTES:[B

.field private static final POSTCODE_2_LENGTH_BYTES:[B

.field private static final POSTCODE_3_BYTES:[[B

.field private static final RS:C = '\u001e'

.field private static final SERVICE_CLASS_BYTES:[B

.field private static final SETS:[Ljava/lang/String;

.field private static final SHIFTA:C = '\ufff0'

.field private static final SHIFTB:C = '\ufff1'

.field private static final SHIFTC:C = '\ufff2'

.field private static final SHIFTD:C = '\ufff3'

.field private static final SHIFTE:C = '\ufff4'

.field private static final THREESHIFTA:C = '\ufff6'

.field private static final TWOSHIFTA:C = '\ufff5'


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->COUNTRY_BYTES:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SERVICE_CLASS_BYTES:[B

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    fill-array-data v1, :array_2

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_2_LENGTH_BYTES:[B

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x2

    .line 27
    const/16 v3, 0x1e

    .line 28
    .line 29
    const/16 v4, 0x12

    .line 30
    .line 31
    const/16 v5, 0xb

    .line 32
    .line 33
    const/16 v6, 0xc

    .line 34
    .line 35
    new-array v3, v3, [B

    .line 36
    .line 37
    fill-array-data v3, :array_3

    .line 38
    .line 39
    .line 40
    sput-object v3, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_2_BYTES:[B

    .line 41
    .line 42
    new-array v3, v0, [B

    .line 43
    .line 44
    fill-array-data v3, :array_4

    .line 45
    .line 46
    .line 47
    new-array v7, v0, [B

    .line 48
    .line 49
    fill-array-data v7, :array_5

    .line 50
    .line 51
    .line 52
    new-array v8, v0, [B

    .line 53
    .line 54
    fill-array-data v8, :array_6

    .line 55
    .line 56
    .line 57
    new-array v9, v0, [B

    .line 58
    .line 59
    fill-array-data v9, :array_7

    .line 60
    .line 61
    .line 62
    new-array v10, v0, [B

    .line 63
    .line 64
    fill-array-data v10, :array_8

    .line 65
    .line 66
    .line 67
    new-array v11, v0, [B

    .line 68
    .line 69
    fill-array-data v11, :array_9

    .line 70
    .line 71
    .line 72
    new-array v0, v0, [[B

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    aput-object v3, v0, v12

    .line 76
    .line 77
    aput-object v7, v0, v1

    .line 78
    .line 79
    aput-object v8, v0, v2

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    aput-object v9, v0, v1

    .line 83
    .line 84
    const/4 v1, 0x4

    .line 85
    aput-object v10, v0, v1

    .line 86
    .line 87
    const/4 v1, 0x5

    .line 88
    aput-object v11, v0, v1

    .line 89
    .line 90
    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_3_BYTES:[[B

    .line 91
    .line 92
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v1, v5, [J

    .line 95
    .line 96
    fill-array-data v1, :array_a

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v2, v6, [J

    .line 109
    .line 110
    fill-array-data v2, :array_b

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v3, v4, [J

    .line 123
    .line 124
    fill-array-data v3, :array_c

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v4, v4, [J

    .line 137
    .line 138
    fill-array-data v4, :array_d

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const-string v4, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa\ufffc\ufffc\u001b\ufffb\u001c\u001d\u001e\u001f\u009f\u00a0\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a9\u00ad\u00ae\u00b6\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8"

    .line 149
    .line 150
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    .line 155
    .line 156
    return-void

    .line 157
    :array_0
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    nop

    .line 167
    :array_1
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    nop

    .line 177
    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    nop

    .line 185
    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    nop

    .line 205
    :array_4
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    nop

    .line 213
    :array_5
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    nop

    .line 221
    :array_6
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    nop

    .line 229
    :array_7
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    nop

    .line 237
    :array_8
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_9
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    nop

    .line 253
    :array_a
    .array-data 8
        -0x3f78e3c50e5d575fL    # -739.5287811954223
        -0x6150b18a04f4b813L    # -6.958676954353924E-161
        -0x7559d84b81e6b0f3L
        0x6bcd528e111a8775L    # 1.9280028897191793E211
        0x22846f25d2b94147L
        0x4afa69e6ab305150L    # 1.581204712881282E53
        0xf5db6a5db2137a7L
        -0xe36c6f0a2fb3cbcL    # -1.3139578052163885E240
        -0x6e5d9b8ddc6e93eL
        -0x187fe82efae3ef44L    # -3.585132229755415E190
        -0xb989e173083aa30L    # -5.357183894654817E252
    .end array-data

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
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_b
    .array-data 8
        -0x3c374e67e9d731a1L    # -3.5587410974587448E18
        0x3c5f44dda683b194L    # 6.7803850896334615E-18
        0x349d9cd48b15d326L    # 3.0192398366495275E-55
        -0x685752bae4ec6c23L
        0x71783d118c59a16dL    # 3.9458738931552616E238
        0x231ea2d192433aeaL
        0x7968ca2600316d7aL    # 6.866197534439044E276
        -0x147d170bfa45e70dL    # -7.771018002376915E209
        -0x2a66e10c77c20f18L    # -2.250576461888225E104
        0x4811c66bea54f006L    # 1.5121369273496318E39
        -0x1f9a38926a8d4a97L    # -2.336070893055363E156
        -0x3f3daf7ab2faa79fL    # -9377.041412990717
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
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    :array_c
    .array-data 8
        -0x3db1bafe4ef73353L    # -2.6001351528159903E11
        -0x44a8f6b2092c1553L    # -7.62208748132601E-23
        -0x8d3f5e70b5c5df5L
        -0x666e85e6c413f9c5L    # -1.606675836993055E-185
        -0x418a595cbe6ea66eL    # -8.065599423185365E-8
        -0x43cc983e0334297bL    # -1.0519636249399625E-18
        0x1f84b80040162589L    # 7.545289331754129E-157
        -0x3bf18b8c3c51795eL    # -7.02241984870448E19
        -0x83326bfe50c0101L
        -0x3edc4afd95ea4538L    # -645761.2071970338
        0x22f685264f19b305L    # 2.954831012968072E-140
        0x79dff3e4e33ee477L    # 1.1328273289926173E279
        0x2d927ee49e957415L    # 3.631880078921185E-89
        0x4fe53d7888c4b168L    # 7.685743510422902E76
        0x6b327d4639aa01fdL    # 2.3744264763593344E208
        -0x38e284fab22ae8f0L    # -3.82679413768819E34
        0x2e0fcadad1522cfeL    # 7.990879740013538E-87
        0x560a6613d3502f50L
    .end array-data

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
    :array_d
    .array-data 8
        0x46da4f2f1b2f6de0L    # 2.1344650127760284E33
        0x1c2e6d5c9d5b6d76L
        -0x228e33d48c60f6fbL    # -1.356431604285724E142
        0x16a849d132e4da1bL
        0x116d31f5566a581eL
        0x414456501dbee947L    # 2665632.2323886487
        -0x2be34c19dedbefb8L    # -1.5327164925693296E97
        -0x7e6f2d2a6d75b850L    # -3.925206770088905E-301
        -0x1002263cd6d7c8e8L    # -2.8964781006843586E231
        0x2515e7158c915e8cL    # 4.937180357596681E-130
        -0x3d2bde6788ace75eL    # -8.853809773270653E13
        -0x256a18ff3d670577L    # -2.3721873791333283E128
        0x79013cf1f380495L
        -0x1bf971f6c7e062e7L    # -6.97311838439003E173
        0x4d4fc336bb30ac1eL    # 2.6132713582504205E64
        0x17a451b87f4acbaeL
        0xb003adee26f1c95L
        0x16e658d60f7dfee4L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decode([BI)Lcom/google/zxing/common/DecoderResult;
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/16 v3, 0x90

    .line 6
    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const/16 v0, 0x4d

    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    const/16 v0, 0x5d

    .line 35
    .line 36
    invoke-static {p0, v1, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 46
    const/16 v4, 0xa

    .line 47
    .line 48
    if-ne p1, v1, :cond_4

    .line 49
    .line 50
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2([B)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode2Length([B)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-gt v6, v4, :cond_3

    .line 59
    .line 60
    new-instance v7, Ljava/text/DecimalFormat;

    .line 61
    .line 62
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v0, v0, [J

    .line 65
    .line 66
    fill-array-data v0, :array_0

    .line 67
    .line 68
    .line 69
    invoke-direct {v8, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    int-to-long v5, v5

    .line 84
    invoke-virtual {v7, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0

    .line 94
    :cond_4
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getPostCode3([B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_0
    new-instance v5, Ljava/text/DecimalFormat;

    .line 99
    .line 100
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v7, v1, [J

    .line 103
    .line 104
    fill-array-data v7, :array_1

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getCountry([B)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    int-to-long v6, v6

    .line 122
    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-static {p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getServiceClass([B)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    int-to-long v7, v7

    .line 131
    invoke-virtual {v5, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const/16 v7, 0x54

    .line 136
    .line 137
    invoke-static {p0, v4, v7}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getMessage([BII)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v1, v1, [J

    .line 151
    .line 152
    fill-array-data v1, :array_2

    .line 153
    .line 154
    .line 155
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    const/16 v4, 0x1d

    .line 167
    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const/16 v1, 0x9

    .line 198
    .line 199
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    :goto_1
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const/4 v2, 0x0

    .line 240
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-object v0

    .line 248
    nop

    .line 249
    :array_0
    .array-data 8
        -0x16ee88cb38576d7dL    # -1.3055752093969773E198
        -0x20cbd552dcc00ddL    # -5.03850213901293E298
        -0xbf81d78b38b8c54L
    .end array-data

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
    :array_1
    .array-data 8
        0x20895b2571428911L    # 6.051647567387601E-152
        -0x6e562c424d1dbe5cL
    .end array-data

    .line 266
    .line 267
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
    :array_2
    .array-data 8
        -0x44fc8724be1bf410L    # -2.013367495990158E-24
        0x7818de338cef8fa4L    # 3.2844036791876336E270
    .end array-data
.end method

.method private static getBit(I[B)I
    .locals 1

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    div-int/lit8 v0, p0, 0x6

    .line 4
    .line 5
    aget-byte p1, p1, v0

    .line 6
    .line 7
    rem-int/lit8 p0, p0, 0x6

    .line 8
    .line 9
    rsub-int/lit8 p0, p0, 0x5

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    shl-int p0, v0, p0

    .line 13
    .line 14
    and-int/2addr p0, p1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    return v0
.end method

.method private static getCountry([B)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->COUNTRY_BYTES:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static getInt([B[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    aget-byte v2, p1, v0

    .line 7
    .line 8
    invoke-static {v2, p0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getBit(I[B)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    array-length v3, p1

    .line 13
    sub-int/2addr v3, v0

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 15
    .line 16
    shl-int/2addr v2, v3

    .line 17
    add-int/2addr v1, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v1
.end method

.method private static getMessage([BII)Ljava/lang/String;
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    move v6, p1

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, -0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    :goto_0
    add-int v10, p1, p2

    .line 16
    .line 17
    if-ge v6, v10, :cond_1

    .line 18
    .line 19
    sget-object v10, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    .line 20
    .line 21
    aget-object v10, v10, v7

    .line 22
    .line 23
    aget-byte v11, p0, v6

    .line 24
    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    packed-switch v10, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :pswitch_0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :pswitch_1
    add-int/lit8 v10, v6, 0x1

    .line 37
    .line 38
    aget-byte v10, p0, v10

    .line 39
    .line 40
    shl-int/lit8 v10, v10, 0x18

    .line 41
    .line 42
    add-int/lit8 v11, v6, 0x2

    .line 43
    .line 44
    aget-byte v11, p0, v11

    .line 45
    .line 46
    shl-int/lit8 v11, v11, 0x12

    .line 47
    .line 48
    add-int/2addr v10, v11

    .line 49
    add-int/lit8 v11, v6, 0x3

    .line 50
    .line 51
    aget-byte v11, p0, v11

    .line 52
    .line 53
    shl-int/lit8 v11, v11, 0xc

    .line 54
    .line 55
    add-int/2addr v10, v11

    .line 56
    add-int/lit8 v11, v6, 0x4

    .line 57
    .line 58
    aget-byte v11, p0, v11

    .line 59
    .line 60
    shl-int/lit8 v11, v11, 0x6

    .line 61
    .line 62
    add-int/2addr v10, v11

    .line 63
    add-int/lit8 v6, v6, 0x5

    .line 64
    .line 65
    aget-byte v11, p0, v6

    .line 66
    .line 67
    add-int/2addr v10, v11

    .line 68
    new-instance v11, Ljava/text/DecimalFormat;

    .line 69
    .line 70
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v13, v2, [J

    .line 73
    .line 74
    fill-array-data v13, :array_0

    .line 75
    .line 76
    .line 77
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-direct {v11, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    int-to-long v12, v10

    .line 88
    invoke-virtual {v11, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    :pswitch_2
    const/4 v8, -0x1

    .line 97
    goto :goto_2

    .line 98
    :pswitch_3
    const/4 v7, 0x1

    .line 99
    goto :goto_1

    .line 100
    :pswitch_4
    const/4 v7, 0x0

    .line 101
    goto :goto_1

    .line 102
    :pswitch_5
    move v9, v7

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v8, 0x3

    .line 105
    goto :goto_2

    .line 106
    :pswitch_6
    move v9, v7

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x2

    .line 109
    goto :goto_2

    .line 110
    :pswitch_7
    const v8, 0xfff0

    .line 111
    .line 112
    .line 113
    sub-int/2addr v10, v8

    .line 114
    move v9, v7

    .line 115
    move v7, v10

    .line 116
    const/4 v8, 0x1

    .line 117
    :goto_2
    add-int/lit8 v10, v8, -0x1

    .line 118
    .line 119
    if-nez v8, :cond_0

    .line 120
    .line 121
    move v7, v9

    .line 122
    :cond_0
    add-int/2addr v6, v1

    .line 123
    move v8, v10

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_2

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr v0, v1

    .line 136
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const v2, 0xfffc

    .line 141
    .line 142
    .line 143
    if-ne v0, v2, :cond_2

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    sub-int/2addr v0, v1

    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    return-object v0

    .line 159
    :pswitch_data_0
    .packed-switch 0xfff0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_0
    .array-data 8
        -0x112bb9f529246b88L    # -7.504257032797538E225
        0x80c8145cd6e9970L
        0x776f8cac6b1af155L    # 2.034598562588481E267
    .end array-data
.end method

.method private static getPostCode2([B)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_2_BYTES:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static getPostCode2Length([B)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_2_LENGTH_BYTES:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static getPostCode3([B)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->POSTCODE_3_BYTES:[[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v2, :cond_0

    .line 13
    .line 14
    aget-object v5, v1, v4

    .line 15
    .line 16
    sget-object v6, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SETS:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object v6, v6, v3

    .line 19
    .line 20
    invoke-static {p0, v5}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private static getServiceClass([B)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->SERVICE_CLASS_BYTES:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->getInt([B[B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
