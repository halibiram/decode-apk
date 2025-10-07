.class public final Lcom/jcraft/jzlib/Deflate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final BL_CODES:I = 0x13

.field private static final BUSY_STATE:I = 0x71

.field private static final BlockDone:I = 0x1

.field private static final Buf_size:I = 0x10

.field private static final DEF_MEM_LEVEL:I = 0x8

.field private static final DYN_TREES:I = 0x2

.field private static final D_CODES:I = 0x1e

.field private static final END_BLOCK:I = 0x100

.field private static final FAST:I = 0x1

.field private static final FINISH_STATE:I = 0x29a

.field private static final FinishDone:I = 0x3

.field private static final FinishStarted:I = 0x2

.field private static final HEAP_SIZE:I = 0x23d

.field private static final INIT_STATE:I = 0x2a

.field private static final LENGTH_CODES:I = 0x1d

.field private static final LITERALS:I = 0x100

.field private static final L_CODES:I = 0x11e

.field private static final MAX_BITS:I = 0xf

.field private static final MAX_MATCH:I = 0x102

.field private static final MAX_MEM_LEVEL:I = 0x9

.field private static final MAX_WBITS:I = 0xf

.field private static final MIN_LOOKAHEAD:I = 0x106

.field private static final MIN_MATCH:I = 0x3

.field private static final NeedMore:I = 0x0

.field private static final PRESET_DICT:I = 0x20

.field private static final REPZ_11_138:I = 0x12

.field private static final REPZ_3_10:I = 0x11

.field private static final REP_3_6:I = 0x10

.field private static final SLOW:I = 0x2

.field private static final STATIC_TREES:I = 0x1

.field private static final STORED:I = 0x0

.field private static final STORED_BLOCK:I = 0x0

.field private static final Z_ASCII:I = 0x1

.field private static final Z_BINARY:I = 0x0

.field private static final Z_BUF_ERROR:I = -0x5

.field private static final Z_DATA_ERROR:I = -0x3

.field private static final Z_DEFAULT_COMPRESSION:I = -0x1

.field private static final Z_DEFAULT_STRATEGY:I = 0x0

.field private static final Z_DEFLATED:I = 0x8

.field private static final Z_ERRNO:I = -0x1

.field private static final Z_FILTERED:I = 0x1

.field private static final Z_FINISH:I = 0x4

.field private static final Z_FULL_FLUSH:I = 0x3

.field private static final Z_HUFFMAN_ONLY:I = 0x2

.field private static final Z_MEM_ERROR:I = -0x4

.field private static final Z_NEED_DICT:I = 0x2

.field private static final Z_NO_FLUSH:I = 0x0

.field private static final Z_OK:I = 0x0

.field private static final Z_PARTIAL_FLUSH:I = 0x1

.field private static final Z_STREAM_END:I = 0x1

.field private static final Z_STREAM_ERROR:I = -0x2

.field private static final Z_SYNC_FLUSH:I = 0x2

.field private static final Z_UNKNOWN:I = 0x2

.field private static final Z_VERSION_ERROR:I = -0x6

.field private static final config_table:[Lcom/jcraft/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field bi_buf:S

.field bi_valid:I

.field bl_count:[S

.field bl_desc:Lcom/jcraft/jzlib/Tree;

.field bl_tree:[S

.field block_start:I

.field d_buf:I

.field d_desc:Lcom/jcraft/jzlib/Tree;

.field data_type:B

.field depth:[B

.field dyn_dtree:[S

.field dyn_ltree:[S

.field gheader:Lcom/jcraft/jzlib/GZIPHeader;

.field good_match:I

.field hash_bits:I

.field hash_mask:I

.field hash_shift:I

.field hash_size:I

.field head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field ins_h:I

.field l_buf:[B

.field l_desc:Lcom/jcraft/jzlib/Tree;

.field last_eob_len:I

.field last_flush:I

.field last_lit:I

.field level:I

.field lit_bufsize:I

.field lookahead:I

.field match_available:I

.field match_length:I

.field match_start:I

.field matches:I

.field max_chain_length:I

.field max_lazy_match:I

.field method:B

.field next_code:[S

.field nice_match:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field pending_buf_size:I

.field pending_out:I

.field prev:[S

.field prev_length:I

.field prev_match:I

.field static_len:I

.field status:I

.field strategy:I

.field strm:Lcom/jcraft/jzlib/ZStream;

.field strstart:I

.field w_bits:I

.field w_mask:I

.field w_size:I

.field window:[B

.field window_size:I

.field wrap:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/jcraft/jzlib/Deflate$Config;

    .line 4
    .line 5
    sput-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 6
    .line 7
    new-instance v7, Lcom/jcraft/jzlib/Deflate$Config;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-object v7, v0, v1

    .line 20
    .line 21
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 22
    .line 23
    const/4 v12, 0x4

    .line 24
    const/4 v13, 0x1

    .line 25
    const/4 v9, 0x4

    .line 26
    const/4 v10, 0x4

    .line 27
    const/16 v11, 0x8

    .line 28
    .line 29
    move-object v8, v2

    .line 30
    invoke-direct/range {v8 .. v13}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    aput-object v2, v0, v3

    .line 35
    .line 36
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 37
    .line 38
    const/16 v8, 0x8

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x5

    .line 43
    const/16 v7, 0x10

    .line 44
    .line 45
    move-object v4, v2

    .line 46
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 47
    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    aput-object v2, v0, v4

    .line 51
    .line 52
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 53
    .line 54
    const/16 v9, 0x20

    .line 55
    .line 56
    const/4 v10, 0x1

    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x6

    .line 59
    const/16 v8, 0x20

    .line 60
    .line 61
    move-object v5, v2

    .line 62
    invoke-direct/range {v5 .. v10}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 63
    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    aput-object v2, v0, v4

    .line 67
    .line 68
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 69
    .line 70
    const/16 v9, 0x10

    .line 71
    .line 72
    const/4 v10, 0x2

    .line 73
    const/4 v7, 0x4

    .line 74
    const/16 v8, 0x10

    .line 75
    .line 76
    move-object v5, v2

    .line 77
    invoke-direct/range {v5 .. v10}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x4

    .line 81
    aput-object v2, v0, v5

    .line 82
    .line 83
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 84
    .line 85
    const/16 v10, 0x20

    .line 86
    .line 87
    const/4 v11, 0x2

    .line 88
    const/16 v7, 0x8

    .line 89
    .line 90
    const/16 v9, 0x20

    .line 91
    .line 92
    move-object v6, v2

    .line 93
    invoke-direct/range {v6 .. v11}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x5

    .line 97
    aput-object v2, v0, v6

    .line 98
    .line 99
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 100
    .line 101
    const/16 v11, 0x80

    .line 102
    .line 103
    const/4 v12, 0x2

    .line 104
    const/16 v8, 0x8

    .line 105
    .line 106
    const/16 v9, 0x10

    .line 107
    .line 108
    const/16 v10, 0x80

    .line 109
    .line 110
    move-object v7, v2

    .line 111
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x6

    .line 115
    aput-object v2, v0, v6

    .line 116
    .line 117
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 118
    .line 119
    const/16 v11, 0x100

    .line 120
    .line 121
    const/16 v9, 0x20

    .line 122
    .line 123
    move-object v7, v2

    .line 124
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x7

    .line 128
    aput-object v2, v0, v6

    .line 129
    .line 130
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 131
    .line 132
    const/16 v11, 0x400

    .line 133
    .line 134
    const/16 v8, 0x20

    .line 135
    .line 136
    const/16 v9, 0x80

    .line 137
    .line 138
    const/16 v10, 0x102

    .line 139
    .line 140
    move-object v7, v2

    .line 141
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 142
    .line 143
    .line 144
    const/16 v6, 0x8

    .line 145
    .line 146
    aput-object v2, v0, v6

    .line 147
    .line 148
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 149
    .line 150
    const/16 v11, 0x1000

    .line 151
    .line 152
    const/16 v9, 0x102

    .line 153
    .line 154
    move-object v7, v2

    .line 155
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 156
    .line 157
    .line 158
    const/16 v6, 0x9

    .line 159
    .line 160
    aput-object v2, v0, v6

    .line 161
    .line 162
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v2, v4, [J

    .line 165
    .line 166
    fill-array-data v2, :array_0

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v2, v4, [J

    .line 179
    .line 180
    fill-array-data v2, :array_1

    .line 181
    .line 182
    .line 183
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v2, v3, [J

    .line 193
    .line 194
    const-wide v8, -0xbd1d4ea77c2b7eaL

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    aput-wide v8, v2, v1

    .line 200
    .line 201
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 209
    .line 210
    new-array v2, v4, [J

    .line 211
    .line 212
    fill-array-data v2, :array_2

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v2, v4, [J

    .line 225
    .line 226
    fill-array-data v2, :array_3

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v2, v4, [J

    .line 239
    .line 240
    fill-array-data v2, :array_4

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v2, v5, [J

    .line 253
    .line 254
    fill-array-data v2, :array_5

    .line 255
    .line 256
    .line 257
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v2, v4, [J

    .line 267
    .line 268
    fill-array-data v2, :array_6

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v2, v5, [J

    .line 281
    .line 282
    fill-array-data v2, :array_7

    .line 283
    .line 284
    .line 285
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 293
    .line 294
    new-array v2, v3, [J

    .line 295
    .line 296
    const-wide v3, -0xcdc5b0b465f5b35L    # -4.292243316044926E246

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    aput-wide v3, v2, v1

    .line 302
    .line 303
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v15

    .line 310
    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sput-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 315
    .line 316
    return-void

    .line 317
    :array_0
    .array-data 8
        -0x5e33eba87f2c4721L    # -7.027176571868696E-146
        0x34abdc07343505f0L
        -0x6da6150ee169a83eL
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
    :array_1
    .array-data 8
        0x2461bfdbf36e2b56L
        -0x29edd3e6b36f4775L    # -4.167805552945591E106
        -0x22c0c5c817182d51L    # -1.4874899204753892E141
    .end array-data

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
    :array_2
    .array-data 8
        0x3ae0582d08365d66L    # 4.224937975364389E-25
        -0x2cf76d8f13dc89cbL    # -1.0010824089224182E92
        -0x50cdde695cb2ab09L    # -2.38928437463888E-81
    .end array-data

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
    .line 364
    .line 365
    :array_3
    .array-data 8
        0x563f8dd3f20c00f2L    # 2.8947636150921804E107
        -0x222f3517e0b58683L    # -8.190982571042832E143
        -0x4d195ae69b79fd11L    # -1.7202108777700484E-63
    .end array-data

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
    :array_4
    .array-data 8
        0x2098d33d8d045588L
        0x462c5defce76eee2L    # 1.1237302822925495E30
        0x998e9818feecd39L
    .end array-data

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
    :array_5
    .array-data 8
        -0x62215a4f733799b9L    # -8.315599113095259E-165
        0x34f4310e42912781L    # 1.3175649326419021E-53
        0x62de30c11c486591L    # 1.7802751746567535E168
        -0x492f79a8390d35efL    # -1.1578072227650337E-44
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
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    :array_6
    .array-data 8
        0x5cd0a9402a369f2fL    # 1.2400597347906899E139
        0x1cbefca890941e24L
        -0x342bd1cfb5abc314L    # -1.9792902612849135E57
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
    .line 430
    .line 431
    .line 432
    .line 433
    :array_7
    .array-data 8
        0x2a693a168c415be5L
        -0x272e7a32564e6842L    # -7.069986088121365E119
        -0x38f144f226dab96L
        -0x6c7d327f7a07e05eL
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jzlib/ZStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 6
    .line 7
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 13
    .line 14
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 20
    .line 21
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 27
    .line 28
    const/16 v0, 0x10

    .line 29
    .line 30
    new-array v1, v0, [S

    .line 31
    .line 32
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 33
    .line 34
    new-array v0, v0, [S

    .line 35
    .line 36
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->next_code:[S

    .line 37
    .line 38
    const/16 v0, 0x23d

    .line 39
    .line 40
    new-array v1, v0, [I

    .line 41
    .line 42
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 43
    .line 44
    new-array v0, v0, [B

    .line 45
    .line 46
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 52
    .line 53
    const/16 p1, 0x47a

    .line 54
    .line 55
    new-array p1, p1, [S

    .line 56
    .line 57
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 58
    .line 59
    const/16 p1, 0x7a

    .line 60
    .line 61
    new-array p1, p1, [S

    .line 62
    .line 63
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 64
    .line 65
    const/16 p1, 0x4e

    .line 66
    .line 67
    new-array p1, p1, [S

    .line 68
    .line 69
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 70
    .line 71
    return-void
.end method

.method public static deflateCopy(Lcom/jcraft/jzlib/ZStream;Lcom/jcraft/jzlib/ZStream;)I
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x2

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 16
    .line 17
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 24
    .line 25
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 26
    .line 27
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 28
    .line 29
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 30
    .line 31
    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 34
    .line 35
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    array-length v0, v0

    .line 40
    new-array v0, v0, [B

    .line 41
    .line 42
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 43
    .line 44
    iget-object v2, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 45
    .line 46
    array-length v3, v2

    .line 47
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 51
    .line 52
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 53
    .line 54
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 55
    .line 56
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 57
    .line 58
    iget-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 59
    .line 60
    iput-wide v2, p0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 61
    .line 62
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 65
    .line 66
    iget v0, p1, Lcom/jcraft/jzlib/ZStream;->data_type:I

    .line 67
    .line 68
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->data_type:I

    .line 69
    .line 70
    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->copy()Lcom/jcraft/jzlib/Checksum;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 77
    .line 78
    :try_start_0
    iget-object p1, p1, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/jcraft/jzlib/Deflate;->clone()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/jcraft/jzlib/Deflate;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 87
    .line 88
    iput-object p0, p1, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    :catch_0
    return v1
.end method

.method private deflateInit(IIIII)I
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x6

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    :cond_0
    const/16 v1, 0xf

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gez p3, :cond_1

    neg-int p3, p3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-le p3, v1, :cond_2

    add-int/lit8 p3, p3, -0x10

    .line 5
    new-instance v5, Lcom/jcraft/jzlib/CRC32;

    invoke-direct {v5}, Lcom/jcraft/jzlib/CRC32;-><init>()V

    iput-object v5, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-lt p4, v4, :cond_4

    const/16 v5, 0x9

    if-gt p4, v5, :cond_4

    const/16 v6, 0x8

    if-ne p2, v6, :cond_4

    if-lt p3, v5, :cond_4

    if-gt p3, v1, :cond_4

    if-ltz p1, :cond_4

    if-gt p1, v5, :cond_4

    if-ltz p5, :cond_4

    if-le p5, v3, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iput-object p0, v1, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 7
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 8
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    shl-int p3, v4, p3

    .line 9
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit8 v0, p3, -0x1

    .line 10
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    add-int/lit8 v0, p4, 0x7

    .line 11
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    shl-int v0, v4, v0

    .line 12
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v1, v0, -0x1

    .line 13
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    add-int/lit8 v1, p4, 0x9

    .line 14
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    mul-int/lit8 v1, p3, 0x2

    .line 15
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 16
    new-array p3, p3, [S

    iput-object p3, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 17
    new-array p3, v0, [S

    iput-object p3, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    add-int/2addr p4, v2

    shl-int p3, v4, p4

    .line 18
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 p4, p3, 0x3

    .line 19
    new-array p4, p4, [B

    iput-object p4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    mul-int/lit8 p4, p3, 0x3

    .line 20
    iput p4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 21
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 22
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 23
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 24
    iput p5, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    int-to-byte p1, p2

    .line 25
    iput-byte p1, p0, Lcom/jcraft/jzlib/Deflate;->method:B

    .line 26
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->deflateReset()I

    move-result p1

    return p1

    :cond_4
    :goto_1
    const/4 p1, -0x2

    return p1
.end method

.method private dup([B)[B
    .locals 3

    .line 1
    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private dup([I)[I
    .locals 3

    .line 5
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private dup([S)[S
    .locals 3

    .line 3
    array-length v0, p1

    new-array v1, v0, [S

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static smaller([SII[B)Z
    .locals 2

    .line 1
    mul-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    aget-short v0, p0, v0

    .line 4
    .line 5
    mul-int/lit8 v1, p2, 0x2

    .line 6
    .line 7
    aget-short p0, p0, v1

    .line 8
    .line 9
    if-lt v0, p0, :cond_1

    .line 10
    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    aget-byte p0, p3, p1

    .line 14
    .line 15
    aget-byte p1, p3, p2

    .line 16
    .line 17
    if-gt p0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method


# virtual methods
.method public _tr_align()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    .line 7
    .line 8
    const/16 v3, 0x100

    .line 9
    .line 10
    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 14
    .line 15
    .line 16
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 17
    .line 18
    add-int/lit8 v4, v4, 0xb

    .line 19
    .line 20
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    if-ge v4, v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x7

    .line 37
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 38
    .line 39
    return-void
.end method

.method public _tr_flush_block(IIZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    iget-byte v0, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->set_data_type()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->build_bl_tree()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0xa

    .line 31
    .line 32
    ushr-int/2addr v2, v1

    .line 33
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0xa

    .line 36
    .line 37
    ushr-int/2addr v3, v1

    .line 38
    if-gt v3, v2, :cond_2

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-int/lit8 v2, p2, 0x5

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    move v3, v2

    .line 46
    :cond_2
    :goto_0
    add-int/lit8 v4, p2, 0x4

    .line 47
    .line 48
    if-gt v4, v2, :cond_3

    .line 49
    .line 50
    const/4 v4, -0x1

    .line 51
    if-eq p1, v4, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    if-ne v3, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 p1, p3, 0x2

    .line 60
    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    .line 65
    .line 66
    sget-object p2, Lcom/jcraft/jzlib/StaticTree;->static_dtree:[S

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    add-int/lit8 p1, p3, 0x4

    .line 73
    .line 74
    invoke-virtual {p0, p1, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 78
    .line 79
    iget p1, p1, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    iget-object p2, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 84
    .line 85
    iget p2, p2, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 86
    .line 87
    add-int/lit8 p2, p2, 0x1

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jzlib/Deflate;->send_all_trees(III)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 95
    .line 96
    iget-object p2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 97
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 102
    .line 103
    .line 104
    if-eqz p3, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-void
.end method

.method public _tr_stored_block(IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p3, v0}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 3
    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jzlib/Deflate;->copy_block(IIZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public _tr_tally(II)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 6
    .line 7
    mul-int/lit8 v3, v2, 0x2

    .line 8
    .line 9
    add-int/2addr v3, v1

    .line 10
    ushr-int/lit8 v4, p1, 0x8

    .line 11
    .line 12
    int-to-byte v4, v4

    .line 13
    aput-byte v4, v0, v3

    .line 14
    .line 15
    mul-int/lit8 v3, v2, 0x2

    .line 16
    .line 17
    add-int/2addr v3, v1

    .line 18
    const/4 v1, 0x1

    .line 19
    add-int/2addr v3, v1

    .line 20
    int-to-byte v4, p1

    .line 21
    aput-byte v4, v0, v3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 24
    .line 25
    int-to-byte v3, p2

    .line 26
    aput-byte v3, v0, v2

    .line 27
    .line 28
    add-int/2addr v2, v1

    .line 29
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 35
    .line 36
    mul-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    aget-short v2, p1, p2

    .line 39
    .line 40
    add-int/2addr v2, v1

    .line 41
    int-to-short v2, v2

    .line 42
    aput-short v2, p1, p2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, -0x1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 53
    .line 54
    sget-object v3, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 55
    .line 56
    aget-byte p2, v3, p2

    .line 57
    .line 58
    add-int/lit16 p2, p2, 0x101

    .line 59
    .line 60
    mul-int/lit8 p2, p2, 0x2

    .line 61
    .line 62
    aget-short v3, v2, p2

    .line 63
    .line 64
    add-int/2addr v3, v1

    .line 65
    int-to-short v3, v3

    .line 66
    aput-short v3, v2, p2

    .line 67
    .line 68
    iget-object p2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 69
    .line 70
    invoke-static {p1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    mul-int/lit8 p1, p1, 0x2

    .line 75
    .line 76
    aget-short v2, p2, p1

    .line 77
    .line 78
    add-int/2addr v2, v1

    .line 79
    int-to-short v2, v2

    .line 80
    aput-short v2, p2, p1

    .line 81
    .line 82
    :goto_0
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 83
    .line 84
    and-int/lit16 p2, p1, 0x1fff

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    iget p2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 90
    .line 91
    if-le p2, v0, :cond_2

    .line 92
    .line 93
    mul-int/lit8 p1, p1, 0x8

    .line 94
    .line 95
    iget p2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 96
    .line 97
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 98
    .line 99
    sub-int/2addr p2, v3

    .line 100
    const/4 v3, 0x0

    .line 101
    :goto_1
    const/16 v4, 0x1e

    .line 102
    .line 103
    if-ge v3, v4, :cond_1

    .line 104
    .line 105
    int-to-long v4, p1

    .line 106
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 107
    .line 108
    mul-int/lit8 v6, v3, 0x2

    .line 109
    .line 110
    aget-short p1, p1, v6

    .line 111
    .line 112
    int-to-long v6, p1

    .line 113
    sget-object p1, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 114
    .line 115
    aget p1, p1, v3

    .line 116
    .line 117
    int-to-long v8, p1

    .line 118
    const-wide/16 v10, 0x5

    .line 119
    .line 120
    add-long/2addr v8, v10

    .line 121
    mul-long v8, v8, v6

    .line 122
    .line 123
    add-long/2addr v8, v4

    .line 124
    long-to-int p1, v8

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    .line 129
    .line 130
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 131
    .line 132
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 133
    .line 134
    div-int/2addr v4, v0

    .line 135
    if-ge v3, v4, :cond_2

    .line 136
    .line 137
    div-int/2addr p2, v0

    .line 138
    if-ge p1, p2, :cond_2

    .line 139
    .line 140
    return v1

    .line 141
    :cond_2
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 142
    .line 143
    iget p2, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    .line 144
    .line 145
    sub-int/2addr p2, v1

    .line 146
    if-ne p1, p2, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const/4 v1, 0x0

    .line 150
    :goto_2
    return v1
.end method

.method public bi_flush()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 14
    .line 15
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 23
    .line 24
    int-to-byte v0, v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 26
    .line 27
    .line 28
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 29
    .line 30
    ushr-int/2addr v0, v1

    .line 31
    int-to-short v0, v0

    .line 32
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 33
    .line 34
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public bi_windup()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-lez v0, :cond_1

    .line 14
    .line 15
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 16
    .line 17
    int-to-byte v0, v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 23
    .line 24
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 25
    .line 26
    return-void
.end method

.method public build_bl_tree()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 4
    .line 5
    iget v1, v1, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 11
    .line 12
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 13
    .line 14
    iget v1, v1, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x12

    .line 25
    .line 26
    :goto_0
    const/4 v1, 0x3

    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 30
    .line 31
    sget-object v3, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 32
    .line 33
    aget-byte v3, v3, v0

    .line 34
    .line 35
    mul-int/lit8 v3, v3, 0x2

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    aget-short v2, v2, v3

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 48
    .line 49
    add-int/lit8 v3, v0, 0x1

    .line 50
    .line 51
    mul-int/lit8 v3, v3, 0x3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0xe

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 57
    .line 58
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/jcraft/jzlib/Deflate;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 8
    .line 9
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([B)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 14
    .line 15
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 16
    .line 17
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 18
    .line 19
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 20
    .line 21
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([B)[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 26
    .line 27
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([B)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 34
    .line 35
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 42
    .line 43
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 44
    .line 45
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 50
    .line 51
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 58
    .line 59
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 66
    .line 67
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 74
    .line 75
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 76
    .line 77
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 82
    .line 83
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->next_code:[S

    .line 84
    .line 85
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([S)[S

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->next_code:[S

    .line 90
    .line 91
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([I)[I

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 98
    .line 99
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 100
    .line 101
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->dup([B)[B

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 106
    .line 107
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 110
    .line 111
    iput-object v2, v1, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 112
    .line 113
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 114
    .line 115
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 116
    .line 117
    iput-object v2, v1, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 118
    .line 119
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 120
    .line 121
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 122
    .line 123
    iput-object v2, v1, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 124
    .line 125
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 126
    .line 127
    if-eqz v1, :cond_0

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/jcraft/jzlib/GZIPHeader;->clone()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/jcraft/jzlib/GZIPHeader;

    .line 134
    .line 135
    iput-object v1, v0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 136
    .line 137
    :cond_0
    return-object v0
.end method

.method public compress_block([S[S)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 7
    .line 8
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 9
    .line 10
    mul-int/lit8 v3, v0, 0x2

    .line 11
    .line 12
    add-int v4, v2, v3

    .line 13
    .line 14
    aget-byte v4, v1, v4

    .line 15
    .line 16
    shl-int/lit8 v4, v4, 0x8

    .line 17
    .line 18
    const v5, 0xff00

    .line 19
    .line 20
    .line 21
    and-int/2addr v4, v5

    .line 22
    add-int/2addr v2, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    aget-byte v1, v1, v2

    .line 26
    .line 27
    and-int/lit16 v1, v1, 0xff

    .line 28
    .line 29
    or-int/2addr v1, v4

    .line 30
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 31
    .line 32
    aget-byte v2, v2, v0

    .line 33
    .line 34
    and-int/lit16 v2, v2, 0xff

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v2, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v3, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 45
    .line 46
    aget-byte v3, v3, v2

    .line 47
    .line 48
    add-int/lit16 v4, v3, 0x101

    .line 49
    .line 50
    invoke-virtual {p0, v4, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 54
    .line 55
    aget v4, v4, v3

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 60
    .line 61
    aget v3, v5, v3

    .line 62
    .line 63
    sub-int/2addr v2, v3

    .line 64
    invoke-virtual {p0, v2, v4}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 65
    .line 66
    .line 67
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    invoke-static {v1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p0, v2, p2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 74
    .line 75
    .line 76
    sget-object v3, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 77
    .line 78
    aget v3, v3, v2

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    sget-object v4, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    .line 83
    .line 84
    aget v2, v4, v2

    .line 85
    .line 86
    sub-int/2addr v1, v2

    .line 87
    invoke-virtual {p0, v1, v3}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_0
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 91
    .line 92
    if-lt v0, v1, :cond_0

    .line 93
    .line 94
    :cond_4
    const/16 p2, 0x100

    .line 95
    .line 96
    invoke-virtual {p0, p2, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 97
    .line 98
    .line 99
    const/16 p2, 0x201

    .line 100
    .line 101
    aget-short p1, p1, p2

    .line 102
    .line 103
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 104
    .line 105
    return-void
.end method

.method public copy_block(IIZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    int-to-short p3, p2

    .line 11
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 12
    .line 13
    .line 14
    not-int p3, p2

    .line 15
    int-to-short p3, p3

    .line 16
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 20
    .line 21
    invoke-virtual {p0, p3, p1, p2}, Lcom/jcraft/jzlib/Deflate;->put_byte([BII)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public deflate(I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x2

    .line 6
    const/4 v3, 0x4

    .line 7
    if-gt v1, v3, :cond_1e

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 14
    .line 15
    iget-object v5, v4, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 16
    .line 17
    if-eqz v5, :cond_1d

    .line 18
    .line 19
    iget-object v5, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    iget v5, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 24
    .line 25
    if-nez v5, :cond_1d

    .line 26
    .line 27
    :cond_1
    iget v5, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 28
    .line 29
    const/16 v6, 0x29a

    .line 30
    .line 31
    if-ne v5, v6, :cond_2

    .line 32
    .line 33
    if-eq v1, v3, :cond_2

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_2
    iget v2, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 38
    .line 39
    const/4 v7, -0x5

    .line 40
    const/4 v8, 0x7

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 44
    .line 45
    aget-object v1, v1, v8

    .line 46
    .line 47
    iput-object v1, v4, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 48
    .line 49
    return v7

    .line 50
    :cond_3
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 51
    .line 52
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 53
    .line 54
    const/16 v4, 0x2a

    .line 55
    .line 56
    const-wide/32 v9, 0xffff

    .line 57
    .line 58
    .line 59
    const/16 v11, 0x10

    .line 60
    .line 61
    const/4 v12, 0x3

    .line 62
    const/16 v13, 0x8

    .line 63
    .line 64
    const/4 v14, 0x2

    .line 65
    const/4 v15, 0x1

    .line 66
    if-ne v5, v4, :cond_8

    .line 67
    .line 68
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 69
    .line 70
    const/16 v5, 0x71

    .line 71
    .line 72
    if-ne v4, v14, :cond_4

    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lcom/jcraft/jzlib/GZIPHeader;->put(Lcom/jcraft/jzlib/Deflate;)V

    .line 79
    .line 80
    .line 81
    iput v5, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 82
    .line 83
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 86
    .line 87
    invoke-interface {v4}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    .line 92
    .line 93
    sub-int/2addr v4, v13

    .line 94
    shl-int/2addr v4, v3

    .line 95
    add-int/2addr v4, v13

    .line 96
    shl-int/2addr v4, v13

    .line 97
    iget v13, v0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 98
    .line 99
    sub-int/2addr v13, v15

    .line 100
    and-int/lit16 v13, v13, 0xff

    .line 101
    .line 102
    shr-int/2addr v13, v15

    .line 103
    if-le v13, v12, :cond_5

    .line 104
    .line 105
    const/4 v13, 0x3

    .line 106
    :cond_5
    shl-int/lit8 v13, v13, 0x6

    .line 107
    .line 108
    or-int/2addr v4, v13

    .line 109
    iget v13, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 110
    .line 111
    if-eqz v13, :cond_6

    .line 112
    .line 113
    or-int/lit8 v4, v4, 0x20

    .line 114
    .line 115
    :cond_6
    rem-int/lit8 v13, v4, 0x1f

    .line 116
    .line 117
    rsub-int/lit8 v13, v13, 0x1f

    .line 118
    .line 119
    add-int/2addr v13, v4

    .line 120
    iput v5, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 123
    .line 124
    .line 125
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 126
    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 132
    .line 133
    invoke-interface {v4}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    ushr-long v12, v4, v11

    .line 138
    .line 139
    long-to-int v13, v12

    .line 140
    invoke-virtual {v0, v13}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 141
    .line 142
    .line 143
    and-long/2addr v4, v9

    .line 144
    long-to-int v5, v4

    .line 145
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 149
    .line 150
    iget-object v4, v4, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 151
    .line 152
    invoke-interface {v4}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_0
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 156
    .line 157
    const/4 v5, -0x1

    .line 158
    const/4 v12, 0x0

    .line 159
    if-eqz v4, :cond_9

    .line 160
    .line 161
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 167
    .line 168
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 169
    .line 170
    if-nez v2, :cond_a

    .line 171
    .line 172
    iput v5, v0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 173
    .line 174
    return v12

    .line 175
    :cond_9
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 176
    .line 177
    iget v13, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 178
    .line 179
    if-nez v13, :cond_a

    .line 180
    .line 181
    if-gt v1, v2, :cond_a

    .line 182
    .line 183
    if-eq v1, v3, :cond_a

    .line 184
    .line 185
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 186
    .line 187
    aget-object v1, v1, v8

    .line 188
    .line 189
    iput-object v1, v4, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 190
    .line 191
    return v7

    .line 192
    :cond_a
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 193
    .line 194
    if-ne v2, v6, :cond_b

    .line 195
    .line 196
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 197
    .line 198
    iget v13, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 199
    .line 200
    if-eqz v13, :cond_b

    .line 201
    .line 202
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 203
    .line 204
    aget-object v1, v1, v8

    .line 205
    .line 206
    iput-object v1, v4, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 207
    .line 208
    return v7

    .line 209
    :cond_b
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 210
    .line 211
    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 212
    .line 213
    if-nez v4, :cond_c

    .line 214
    .line 215
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 216
    .line 217
    if-nez v4, :cond_c

    .line 218
    .line 219
    if-eqz v1, :cond_15

    .line 220
    .line 221
    if-eq v2, v6, :cond_15

    .line 222
    .line 223
    :cond_c
    sget-object v2, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 224
    .line 225
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 226
    .line 227
    aget-object v2, v2, v4

    .line 228
    .line 229
    iget v2, v2, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 230
    .line 231
    if-eqz v2, :cond_f

    .line 232
    .line 233
    if-eq v2, v15, :cond_e

    .line 234
    .line 235
    if-eq v2, v14, :cond_d

    .line 236
    .line 237
    const/4 v2, -0x1

    .line 238
    goto :goto_1

    .line 239
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jzlib/Deflate;->deflate_slow(I)I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    goto :goto_1

    .line 244
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jzlib/Deflate;->deflate_fast(I)I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    goto :goto_1

    .line 249
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/jcraft/jzlib/Deflate;->deflate_stored(I)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    :goto_1
    if-eq v2, v14, :cond_10

    .line 254
    .line 255
    const/4 v4, 0x3

    .line 256
    if-ne v2, v4, :cond_11

    .line 257
    .line 258
    :cond_10
    iput v6, v0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 259
    .line 260
    :cond_11
    if-eqz v2, :cond_1b

    .line 261
    .line 262
    if-ne v2, v14, :cond_12

    .line 263
    .line 264
    goto/16 :goto_5

    .line 265
    .line 266
    :cond_12
    if-ne v2, v15, :cond_15

    .line 267
    .line 268
    if-ne v1, v15, :cond_13

    .line 269
    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jzlib/Deflate;->_tr_align()V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_13
    invoke-virtual {v0, v12, v12, v12}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 275
    .line 276
    .line 277
    const/4 v2, 0x3

    .line 278
    if-ne v1, v2, :cond_14

    .line 279
    .line 280
    const/4 v2, 0x0

    .line 281
    :goto_2
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 282
    .line 283
    if-ge v2, v4, :cond_14

    .line 284
    .line 285
    iget-object v4, v0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 286
    .line 287
    aput-short v12, v4, v2

    .line 288
    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_14
    :goto_3
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 295
    .line 296
    .line 297
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 298
    .line 299
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 300
    .line 301
    if-nez v2, :cond_15

    .line 302
    .line 303
    iput v5, v0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 304
    .line 305
    return v12

    .line 306
    :cond_15
    if-eq v1, v3, :cond_16

    .line 307
    .line 308
    return v12

    .line 309
    :cond_16
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 310
    .line 311
    if-gtz v1, :cond_17

    .line 312
    .line 313
    return v15

    .line 314
    :cond_17
    if-ne v1, v14, :cond_18

    .line 315
    .line 316
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 317
    .line 318
    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 319
    .line 320
    invoke-interface {v1}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 321
    .line 322
    .line 323
    move-result-wide v1

    .line 324
    const-wide/16 v3, 0xff

    .line 325
    .line 326
    and-long v5, v1, v3

    .line 327
    .line 328
    long-to-int v6, v5

    .line 329
    int-to-byte v5, v6

    .line 330
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 331
    .line 332
    .line 333
    const/16 v5, 0x8

    .line 334
    .line 335
    shr-long v6, v1, v5

    .line 336
    .line 337
    and-long v5, v6, v3

    .line 338
    .line 339
    long-to-int v6, v5

    .line 340
    int-to-byte v5, v6

    .line 341
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 342
    .line 343
    .line 344
    shr-long v5, v1, v11

    .line 345
    .line 346
    and-long/2addr v5, v3

    .line 347
    long-to-int v6, v5

    .line 348
    int-to-byte v5, v6

    .line 349
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 350
    .line 351
    .line 352
    const/16 v5, 0x18

    .line 353
    .line 354
    shr-long v6, v1, v5

    .line 355
    .line 356
    and-long/2addr v6, v3

    .line 357
    long-to-int v7, v6

    .line 358
    int-to-byte v6, v7

    .line 359
    invoke-virtual {v0, v6}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 360
    .line 361
    .line 362
    iget-object v6, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 363
    .line 364
    iget-wide v6, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 365
    .line 366
    and-long/2addr v6, v3

    .line 367
    long-to-int v7, v6

    .line 368
    int-to-byte v6, v7

    .line 369
    invoke-virtual {v0, v6}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 370
    .line 371
    .line 372
    iget-object v6, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 373
    .line 374
    iget-wide v6, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 375
    .line 376
    const/16 v8, 0x8

    .line 377
    .line 378
    shr-long/2addr v6, v8

    .line 379
    and-long/2addr v6, v3

    .line 380
    long-to-int v7, v6

    .line 381
    int-to-byte v6, v7

    .line 382
    invoke-virtual {v0, v6}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 383
    .line 384
    .line 385
    iget-object v6, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 386
    .line 387
    iget-wide v6, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 388
    .line 389
    shr-long/2addr v6, v11

    .line 390
    and-long/2addr v6, v3

    .line 391
    long-to-int v7, v6

    .line 392
    int-to-byte v6, v7

    .line 393
    invoke-virtual {v0, v6}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 394
    .line 395
    .line 396
    iget-object v6, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 397
    .line 398
    iget-wide v6, v6, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 399
    .line 400
    shr-long v5, v6, v5

    .line 401
    .line 402
    and-long/2addr v3, v5

    .line 403
    long-to-int v4, v3

    .line 404
    int-to-byte v3, v4

    .line 405
    invoke-virtual {v0, v3}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jzlib/Deflate;->getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3, v1, v2}, Lcom/jcraft/jzlib/GZIPHeader;->setCRC(J)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_18
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 417
    .line 418
    iget-object v1, v1, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 419
    .line 420
    invoke-interface {v1}, Lcom/jcraft/jzlib/Checksum;->getValue()J

    .line 421
    .line 422
    .line 423
    move-result-wide v1

    .line 424
    ushr-long v3, v1, v11

    .line 425
    .line 426
    long-to-int v4, v3

    .line 427
    invoke-virtual {v0, v4}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 428
    .line 429
    .line 430
    and-long/2addr v1, v9

    .line 431
    long-to-int v2, v1

    .line 432
    invoke-virtual {v0, v2}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 433
    .line 434
    .line 435
    :goto_4
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 438
    .line 439
    .line 440
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 441
    .line 442
    if-lez v1, :cond_19

    .line 443
    .line 444
    neg-int v1, v1

    .line 445
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 446
    .line 447
    :cond_19
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 448
    .line 449
    if-eqz v1, :cond_1a

    .line 450
    .line 451
    const/4 v15, 0x0

    .line 452
    :cond_1a
    return v15

    .line 453
    :cond_1b
    :goto_5
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 454
    .line 455
    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 456
    .line 457
    if-nez v1, :cond_1c

    .line 458
    .line 459
    iput v5, v0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 460
    .line 461
    :cond_1c
    return v12

    .line 462
    :cond_1d
    :goto_6
    sget-object v1, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 463
    .line 464
    aget-object v1, v1, v3

    .line 465
    .line 466
    iput-object v1, v4, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 467
    .line 468
    :cond_1e
    :goto_7
    return v2
.end method

.method public deflateEnd()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 2
    .line 3
    const/16 v1, 0x2a

    .line 4
    .line 5
    const/16 v2, 0x71

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x29a

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, -0x2

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 19
    .line 20
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:[B

    .line 21
    .line 22
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 23
    .line 24
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 25
    .line 26
    iput-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 27
    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    const/4 v0, -0x3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public deflateInit(I)I
    .locals 1

    const/16 v0, 0xf

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jzlib/Deflate;->deflateInit(II)I

    move-result p1

    return p1
.end method

.method public deflateInit(II)I
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v2, 0x8

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jzlib/Deflate;->deflateInit(IIIII)I

    move-result p1

    return p1
.end method

.method public deflateInit(III)I
    .locals 6

    const/16 v2, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jzlib/Deflate;->deflateInit(IIIII)I

    move-result p1

    return p1
.end method

.method public deflateParams(II)I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x6

    .line 5
    :cond_0
    if-ltz p1, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    if-gt p1, v0, :cond_4

    .line 10
    .line 11
    if-ltz p2, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-le p2, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 18
    .line 19
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 20
    .line 21
    aget-object v1, v0, v1

    .line 22
    .line 23
    iget v1, v1, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 24
    .line 25
    aget-object v2, v0, p1

    .line 26
    .line 27
    iget v2, v2, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 28
    .line 29
    if-eq v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 32
    .line 33
    iget-wide v2, v1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long v6, v2, v4

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 49
    .line 50
    if-eq v2, p1, :cond_3

    .line 51
    .line 52
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 53
    .line 54
    aget-object p1, v0, p1

    .line 55
    .line 56
    iget v0, p1, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 57
    .line 58
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 59
    .line 60
    iget v0, p1, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 61
    .line 62
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 63
    .line 64
    iget v0, p1, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 65
    .line 66
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 67
    .line 68
    iget p1, p1, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 69
    .line 70
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 71
    .line 72
    :cond_3
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    .line 73
    .line 74
    return v1

    .line 75
    :cond_4
    :goto_1
    const/4 p1, -0x2

    .line 76
    return p1
.end method

.method public deflateReset()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_out:J

    .line 6
    .line 7
    iput-wide v1, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iput v1, v0, Lcom/jcraft/jzlib/ZStream;->data_type:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 17
    .line 18
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 19
    .line 20
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    neg-int v2, v2

    .line 25
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 26
    .line 27
    :cond_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->wrap:I

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const/16 v2, 0x71

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v2, 0x2a

    .line 35
    .line 36
    :goto_0
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 37
    .line 38
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/jcraft/jzlib/Checksum;->reset()V

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->tr_init()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->lm_init()V

    .line 49
    .line 50
    .line 51
    return v1
.end method

.method public deflateSetDictionary([BI)I
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 4
    .line 5
    const/16 v1, 0x2a

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->adler:Lcom/jcraft/jzlib/Checksum;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, p1, v1, p2}, Lcom/jcraft/jzlib/Checksum;->update([BII)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-ge p2, v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 23
    .line 24
    add-int/lit16 v3, v2, -0x106

    .line 25
    .line 26
    if-le p2, v3, :cond_2

    .line 27
    .line 28
    add-int/lit16 v2, v2, -0x106

    .line 29
    .line 30
    sub-int/2addr p2, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move v2, p2

    .line 33
    const/4 p2, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 35
    .line 36
    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 40
    .line 41
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 42
    .line 43
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 44
    .line 45
    aget-byte p2, p1, v1

    .line 46
    .line 47
    and-int/lit16 p2, p2, 0xff

    .line 48
    .line 49
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 50
    .line 51
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 52
    .line 53
    shl-int/2addr p2, v3

    .line 54
    const/4 v3, 0x1

    .line 55
    aget-byte p1, p1, v3

    .line 56
    .line 57
    and-int/lit16 p1, p1, 0xff

    .line 58
    .line 59
    xor-int/2addr p1, p2

    .line 60
    iget p2, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 61
    .line 62
    and-int/2addr p1, p2

    .line 63
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    :goto_1
    add-int/lit8 p2, v2, -0x3

    .line 67
    .line 68
    if-gt p1, p2, :cond_3

    .line 69
    .line 70
    iget p2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 71
    .line 72
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 73
    .line 74
    shl-int/2addr p2, v3

    .line 75
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 76
    .line 77
    add-int/lit8 v4, p1, 0x2

    .line 78
    .line 79
    aget-byte v3, v3, v4

    .line 80
    .line 81
    and-int/lit16 v3, v3, 0xff

    .line 82
    .line 83
    xor-int/2addr p2, v3

    .line 84
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 85
    .line 86
    and-int/2addr p2, v3

    .line 87
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 88
    .line 89
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 90
    .line 91
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 92
    .line 93
    and-int/2addr v4, p1

    .line 94
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 95
    .line 96
    aget-short v6, v5, p2

    .line 97
    .line 98
    aput-short v6, v3, v4

    .line 99
    .line 100
    int-to-short v3, p1

    .line 101
    aput-short v3, v5, p2

    .line 102
    .line 103
    add-int/lit8 p1, p1, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    return v1

    .line 107
    :cond_4
    :goto_2
    const/4 p1, -0x2

    .line 108
    return p1
.end method

.method public deflate_fast(I)I
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 4
    .line 5
    const/16 v3, 0x106

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x1

    .line 10
    if-ge v2, v3, :cond_6

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    if-nez v2, :cond_6

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v2, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 34
    .line 35
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 36
    .line 37
    if-nez v2, :cond_4

    .line 38
    .line 39
    if-ne p1, v1, :cond_3

    .line 40
    .line 41
    return v4

    .line 42
    :cond_3
    return v0

    .line 43
    :cond_4
    if-ne p1, v1, :cond_5

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_5
    const/4 v5, 0x1

    .line 47
    :goto_1
    return v5

    .line 48
    :cond_6
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 49
    .line 50
    const v7, 0xffff

    .line 51
    .line 52
    .line 53
    if-lt v2, v5, :cond_7

    .line 54
    .line 55
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 56
    .line 57
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 58
    .line 59
    shl-int/2addr v1, v2

    .line 60
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 61
    .line 62
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 63
    .line 64
    add-int/lit8 v9, v8, 0x2

    .line 65
    .line 66
    aget-byte v2, v2, v9

    .line 67
    .line 68
    and-int/lit16 v2, v2, 0xff

    .line 69
    .line 70
    xor-int/2addr v1, v2

    .line 71
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 72
    .line 73
    and-int/2addr v1, v2

    .line 74
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 77
    .line 78
    aget-short v9, v2, v1

    .line 79
    .line 80
    and-int v10, v9, v7

    .line 81
    .line 82
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 83
    .line 84
    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 85
    .line 86
    and-int/2addr v12, v8

    .line 87
    aput-short v9, v11, v12

    .line 88
    .line 89
    int-to-short v8, v8

    .line 90
    aput-short v8, v2, v1

    .line 91
    .line 92
    move v1, v10

    .line 93
    :cond_7
    int-to-long v8, v1

    .line 94
    const-wide/16 v10, 0x0

    .line 95
    .line 96
    cmp-long v2, v8, v10

    .line 97
    .line 98
    if-eqz v2, :cond_8

    .line 99
    .line 100
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 101
    .line 102
    sub-int/2addr v2, v1

    .line 103
    and-int/2addr v2, v7

    .line 104
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 105
    .line 106
    sub-int/2addr v8, v3

    .line 107
    if-gt v2, v8, :cond_8

    .line 108
    .line 109
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    .line 110
    .line 111
    if-eq v2, v4, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 118
    .line 119
    :cond_8
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 120
    .line 121
    if-lt v2, v5, :cond_b

    .line 122
    .line 123
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 124
    .line 125
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 126
    .line 127
    sub-int/2addr v3, v4

    .line 128
    add-int/lit8 v2, v2, -0x3

    .line 129
    .line 130
    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 135
    .line 136
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 137
    .line 138
    sub-int/2addr v3, v4

    .line 139
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 140
    .line 141
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 142
    .line 143
    if-gt v4, v8, :cond_a

    .line 144
    .line 145
    if-lt v3, v5, :cond_a

    .line 146
    .line 147
    add-int/lit8 v4, v4, -0x1

    .line 148
    .line 149
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 150
    .line 151
    :cond_9
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 152
    .line 153
    add-int/lit8 v3, v1, 0x1

    .line 154
    .line 155
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 156
    .line 157
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 158
    .line 159
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 160
    .line 161
    shl-int/2addr v4, v5

    .line 162
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 163
    .line 164
    add-int/lit8 v8, v1, 0x3

    .line 165
    .line 166
    aget-byte v5, v5, v8

    .line 167
    .line 168
    and-int/lit16 v5, v5, 0xff

    .line 169
    .line 170
    xor-int/2addr v4, v5

    .line 171
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 172
    .line 173
    and-int/2addr v4, v5

    .line 174
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 175
    .line 176
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 177
    .line 178
    aget-short v8, v5, v4

    .line 179
    .line 180
    and-int v9, v8, v7

    .line 181
    .line 182
    iget-object v10, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 183
    .line 184
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 185
    .line 186
    and-int/2addr v11, v3

    .line 187
    aput-short v8, v10, v11

    .line 188
    .line 189
    int-to-short v3, v3

    .line 190
    aput-short v3, v5, v4

    .line 191
    .line 192
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 193
    .line 194
    sub-int/2addr v3, v6

    .line 195
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 196
    .line 197
    if-nez v3, :cond_9

    .line 198
    .line 199
    add-int/lit8 v1, v1, 0x2

    .line 200
    .line 201
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 202
    .line 203
    move v1, v9

    .line 204
    goto :goto_2

    .line 205
    :cond_a
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 206
    .line 207
    add-int/2addr v3, v4

    .line 208
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 209
    .line 210
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 211
    .line 212
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 213
    .line 214
    aget-byte v5, v4, v3

    .line 215
    .line 216
    and-int/lit16 v5, v5, 0xff

    .line 217
    .line 218
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 219
    .line 220
    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 221
    .line 222
    shl-int/2addr v5, v7

    .line 223
    add-int/2addr v3, v6

    .line 224
    aget-byte v3, v4, v3

    .line 225
    .line 226
    and-int/lit16 v3, v3, 0xff

    .line 227
    .line 228
    xor-int/2addr v3, v5

    .line 229
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 230
    .line 231
    and-int/2addr v3, v4

    .line 232
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_b
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 236
    .line 237
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 238
    .line 239
    aget-byte v2, v2, v3

    .line 240
    .line 241
    and-int/lit16 v2, v2, 0xff

    .line 242
    .line 243
    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 248
    .line 249
    sub-int/2addr v3, v6

    .line 250
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 251
    .line 252
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 253
    .line 254
    add-int/2addr v3, v6

    .line 255
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 256
    .line 257
    :goto_2
    if-eqz v2, :cond_0

    .line 258
    .line 259
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 263
    .line 264
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 265
    .line 266
    if-nez v2, :cond_0

    .line 267
    .line 268
    return v0
.end method

.method public deflate_slow(I)I
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 4
    .line 5
    const/16 v3, 0x106

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    if-ge v2, v3, :cond_7

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 16
    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    if-nez v2, :cond_7

    .line 23
    .line 24
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 29
    .line 30
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 31
    .line 32
    sub-int/2addr v2, v6

    .line 33
    aget-byte v1, v1, v2

    .line 34
    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 38
    .line 39
    .line 40
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 41
    .line 42
    :cond_2
    const/4 v1, 0x4

    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    :goto_1
    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 52
    .line 53
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 54
    .line 55
    if-nez v2, :cond_5

    .line 56
    .line 57
    if-ne p1, v1, :cond_4

    .line 58
    .line 59
    return v5

    .line 60
    :cond_4
    return v0

    .line 61
    :cond_5
    if-ne p1, v1, :cond_6

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    const/4 v4, 0x1

    .line 65
    :goto_2
    return v4

    .line 66
    :cond_7
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 67
    .line 68
    const v7, 0xffff

    .line 69
    .line 70
    .line 71
    if-lt v2, v4, :cond_8

    .line 72
    .line 73
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 74
    .line 75
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 76
    .line 77
    shl-int/2addr v1, v2

    .line 78
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 79
    .line 80
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 81
    .line 82
    add-int/lit8 v9, v8, 0x2

    .line 83
    .line 84
    aget-byte v2, v2, v9

    .line 85
    .line 86
    and-int/lit16 v2, v2, 0xff

    .line 87
    .line 88
    xor-int/2addr v1, v2

    .line 89
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 90
    .line 91
    and-int/2addr v1, v2

    .line 92
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 93
    .line 94
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 95
    .line 96
    aget-short v9, v2, v1

    .line 97
    .line 98
    and-int v10, v9, v7

    .line 99
    .line 100
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 101
    .line 102
    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 103
    .line 104
    and-int/2addr v12, v8

    .line 105
    aput-short v9, v11, v12

    .line 106
    .line 107
    int-to-short v8, v8

    .line 108
    aput-short v8, v2, v1

    .line 109
    .line 110
    move v1, v10

    .line 111
    :cond_8
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 112
    .line 113
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 114
    .line 115
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 116
    .line 117
    iput v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    .line 118
    .line 119
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 120
    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 124
    .line 125
    if-ge v2, v8, :cond_b

    .line 126
    .line 127
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 128
    .line 129
    sub-int/2addr v2, v1

    .line 130
    and-int/2addr v2, v7

    .line 131
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 132
    .line 133
    sub-int/2addr v8, v3

    .line 134
    if-gt v2, v8, :cond_b

    .line 135
    .line 136
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    .line 137
    .line 138
    if-eq v2, v5, :cond_9

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 145
    .line 146
    :cond_9
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 147
    .line 148
    const/4 v3, 0x5

    .line 149
    if-gt v2, v3, :cond_b

    .line 150
    .line 151
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strategy:I

    .line 152
    .line 153
    if-eq v3, v6, :cond_a

    .line 154
    .line 155
    if-ne v2, v4, :cond_b

    .line 156
    .line 157
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 158
    .line 159
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 160
    .line 161
    sub-int/2addr v2, v3

    .line 162
    const/16 v3, 0x1000

    .line 163
    .line 164
    if-le v2, v3, :cond_b

    .line 165
    .line 166
    :cond_a
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 167
    .line 168
    :cond_b
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 169
    .line 170
    if-lt v2, v4, :cond_e

    .line 171
    .line 172
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 173
    .line 174
    if-gt v3, v2, :cond_e

    .line 175
    .line 176
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 177
    .line 178
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 179
    .line 180
    add-int/2addr v8, v3

    .line 181
    sub-int/2addr v8, v4

    .line 182
    sub-int/2addr v3, v6

    .line 183
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    .line 184
    .line 185
    sub-int/2addr v3, v4

    .line 186
    add-int/lit8 v2, v2, -0x3

    .line 187
    .line 188
    invoke-virtual {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 193
    .line 194
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 195
    .line 196
    add-int/lit8 v9, v4, -0x1

    .line 197
    .line 198
    sub-int/2addr v3, v9

    .line 199
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 200
    .line 201
    sub-int/2addr v4, v5

    .line 202
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 203
    .line 204
    :cond_c
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 205
    .line 206
    add-int/lit8 v4, v3, 0x1

    .line 207
    .line 208
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 209
    .line 210
    if-gt v4, v8, :cond_d

    .line 211
    .line 212
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 213
    .line 214
    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 215
    .line 216
    shl-int/2addr v1, v9

    .line 217
    iget-object v9, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 218
    .line 219
    add-int/lit8 v10, v3, 0x3

    .line 220
    .line 221
    aget-byte v9, v9, v10

    .line 222
    .line 223
    and-int/lit16 v9, v9, 0xff

    .line 224
    .line 225
    xor-int/2addr v1, v9

    .line 226
    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 227
    .line 228
    and-int/2addr v1, v9

    .line 229
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 230
    .line 231
    iget-object v9, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 232
    .line 233
    aget-short v10, v9, v1

    .line 234
    .line 235
    and-int v11, v10, v7

    .line 236
    .line 237
    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 238
    .line 239
    iget v13, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 240
    .line 241
    and-int/2addr v13, v4

    .line 242
    aput-short v10, v12, v13

    .line 243
    .line 244
    int-to-short v4, v4

    .line 245
    aput-short v4, v9, v1

    .line 246
    .line 247
    move v1, v11

    .line 248
    :cond_d
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 249
    .line 250
    sub-int/2addr v4, v6

    .line 251
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 252
    .line 253
    if-nez v4, :cond_c

    .line 254
    .line 255
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 256
    .line 257
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 258
    .line 259
    add-int/lit8 v3, v3, 0x2

    .line 260
    .line 261
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 262
    .line 263
    if-eqz v2, :cond_0

    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 269
    .line 270
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 271
    .line 272
    if-nez v2, :cond_0

    .line 273
    .line 274
    return v0

    .line 275
    :cond_e
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 276
    .line 277
    if-eqz v2, :cond_10

    .line 278
    .line 279
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 280
    .line 281
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 282
    .line 283
    sub-int/2addr v3, v6

    .line 284
    aget-byte v2, v2, v3

    .line 285
    .line 286
    and-int/lit16 v2, v2, 0xff

    .line 287
    .line 288
    invoke-virtual {p0, v0, v2}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_f

    .line 293
    .line 294
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 295
    .line 296
    .line 297
    :cond_f
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 298
    .line 299
    add-int/2addr v2, v6

    .line 300
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 301
    .line 302
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 303
    .line 304
    sub-int/2addr v2, v6

    .line 305
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 306
    .line 307
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 308
    .line 309
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 310
    .line 311
    if-nez v2, :cond_0

    .line 312
    .line 313
    return v0

    .line 314
    :cond_10
    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 315
    .line 316
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 317
    .line 318
    add-int/2addr v2, v6

    .line 319
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 320
    .line 321
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 322
    .line 323
    sub-int/2addr v2, v6

    .line 324
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 325
    .line 326
    goto/16 :goto_0
.end method

.method public deflate_stored(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x5

    .line 4
    .line 5
    const v2, 0xffff

    .line 6
    .line 7
    .line 8
    if-le v2, v1, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, v0, -0x5

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-gt v0, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    if-nez v0, :cond_6

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 40
    .line 41
    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    :cond_3
    return v3

    .line 49
    :cond_4
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    :cond_5
    return v1

    .line 53
    :cond_6
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 54
    .line 55
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 56
    .line 57
    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 59
    .line 60
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 61
    .line 62
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 63
    .line 64
    add-int/2addr v1, v2

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    if-lt v0, v1, :cond_8

    .line 68
    .line 69
    :cond_7
    sub-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 71
    .line 72
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 78
    .line 79
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 80
    .line 81
    if-nez v0, :cond_8

    .line 82
    .line 83
    return v3

    .line 84
    :cond_8
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 85
    .line 86
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 87
    .line 88
    sub-int/2addr v0, v1

    .line 89
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 90
    .line 91
    add-int/lit16 v1, v1, -0x106

    .line 92
    .line 93
    if-lt v0, v1, :cond_0

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 99
    .line 100
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 101
    .line 102
    if-nez v0, :cond_0

    .line 103
    .line 104
    return v3
.end method

.method public fill_window()V
    .locals 10

    .line 1
    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 7
    .line 8
    sub-int/2addr v0, v2

    .line 9
    const/16 v3, 0x106

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 27
    .line 28
    add-int v5, v4, v4

    .line 29
    .line 30
    sub-int/2addr v5, v3

    .line 31
    if-lt v2, v5, :cond_7

    .line 32
    .line 33
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v2, v4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 40
    .line 41
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 42
    .line 43
    sub-int/2addr v2, v4

    .line 44
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 45
    .line 46
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 47
    .line 48
    sub-int/2addr v2, v4

    .line 49
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 50
    .line 51
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 52
    .line 53
    sub-int/2addr v2, v4

    .line 54
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 55
    .line 56
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 57
    .line 58
    move v4, v2

    .line 59
    :cond_3
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 60
    .line 61
    add-int/2addr v2, v1

    .line 62
    aget-short v7, v6, v2

    .line 63
    .line 64
    const v8, 0xffff

    .line 65
    .line 66
    .line 67
    and-int/2addr v7, v8

    .line 68
    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 69
    .line 70
    if-lt v7, v9, :cond_4

    .line 71
    .line 72
    sub-int/2addr v7, v9

    .line 73
    int-to-short v7, v7

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v7, 0x0

    .line 76
    :goto_0
    aput-short v7, v6, v2

    .line 77
    .line 78
    add-int/2addr v4, v1

    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    move v2, v9

    .line 82
    :cond_5
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 83
    .line 84
    add-int/2addr v9, v1

    .line 85
    aget-short v6, v4, v9

    .line 86
    .line 87
    and-int/2addr v6, v8

    .line 88
    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 89
    .line 90
    if-lt v6, v7, :cond_6

    .line 91
    .line 92
    sub-int/2addr v6, v7

    .line 93
    int-to-short v6, v6

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const/4 v6, 0x0

    .line 96
    :goto_1
    aput-short v6, v4, v9

    .line 97
    .line 98
    add-int/2addr v2, v1

    .line 99
    if-nez v2, :cond_5

    .line 100
    .line 101
    add-int/2addr v0, v7

    .line 102
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 103
    .line 104
    iget v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 105
    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 110
    .line 111
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 112
    .line 113
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 114
    .line 115
    add-int/2addr v4, v5

    .line 116
    invoke-virtual {v1, v2, v4, v0}, Lcom/jcraft/jzlib/ZStream;->read_buf([BII)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 121
    .line 122
    add-int/2addr v1, v0

    .line 123
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 124
    .line 125
    const/4 v0, 0x3

    .line 126
    if-lt v1, v0, :cond_9

    .line 127
    .line 128
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 129
    .line 130
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 131
    .line 132
    aget-byte v4, v0, v2

    .line 133
    .line 134
    and-int/lit16 v4, v4, 0xff

    .line 135
    .line 136
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 137
    .line 138
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 139
    .line 140
    shl-int/2addr v4, v5

    .line 141
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    aget-byte v0, v0, v2

    .line 144
    .line 145
    and-int/lit16 v0, v0, 0xff

    .line 146
    .line 147
    xor-int/2addr v0, v4

    .line 148
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 149
    .line 150
    and-int/2addr v0, v2

    .line 151
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 152
    .line 153
    :cond_9
    if-ge v1, v3, :cond_a

    .line 154
    .line 155
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 156
    .line 157
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 158
    .line 159
    if-nez v0, :cond_0

    .line 160
    .line 161
    :cond_a
    return-void
.end method

.method public flush_block_only(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    move v1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, -0x1

    .line 8
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 9
    .line 10
    sub-int/2addr v2, v0

    .line 11
    invoke-virtual {p0, v1, v2, p1}, Lcom/jcraft/jzlib/Deflate;->_tr_flush_block(IIZ)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 15
    .line 16
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public declared-synchronized getGZIPHeader()Lcom/jcraft/jzlib/GZIPHeader;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/jcraft/jzlib/GZIPHeader;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/jcraft/jzlib/GZIPHeader;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->gheader:Lcom/jcraft/jzlib/GZIPHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public init_block()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0x11e

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 8
    .line 9
    mul-int/lit8 v3, v1, 0x2

    .line 10
    .line 11
    aput-short v0, v2, v3

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_1
    const/16 v2, 0x1e

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 22
    .line 23
    mul-int/lit8 v3, v1, 0x2

    .line 24
    .line 25
    aput-short v0, v2, v3

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_2
    const/16 v2, 0x13

    .line 32
    .line 33
    if-ge v1, v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 36
    .line 37
    mul-int/lit8 v3, v1, 0x2

    .line 38
    .line 39
    aput-short v0, v2, v3

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 45
    .line 46
    const/16 v2, 0x200

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    aput-short v3, v1, v2

    .line 50
    .line 51
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 52
    .line 53
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 54
    .line 55
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 56
    .line 57
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 58
    .line 59
    return-void
.end method

.method public lm_init()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 9
    .line 10
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-short v3, v0, v2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    if-ge v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 25
    .line 26
    aput-short v3, v2, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 32
    .line 33
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 34
    .line 35
    aget-object v0, v0, v2

    .line 36
    .line 37
    iget v2, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 38
    .line 39
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 40
    .line 41
    iget v2, v0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 42
    .line 43
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 44
    .line 45
    iget v2, v0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 46
    .line 47
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 48
    .line 49
    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 50
    .line 51
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 52
    .line 53
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 54
    .line 55
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 56
    .line 57
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 58
    .line 59
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 60
    .line 61
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 62
    .line 63
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 64
    .line 65
    iput v3, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 66
    .line 67
    return-void
.end method

.method public longest_match(I)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 6
    .line 7
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 8
    .line 9
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 10
    .line 11
    add-int/lit16 v5, v4, -0x106

    .line 12
    .line 13
    if-le v2, v5, :cond_0

    .line 14
    .line 15
    add-int/lit16 v4, v4, -0x106

    .line 16
    .line 17
    sub-int v4, v2, v4

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x0

    .line 21
    :goto_0
    iget v5, v0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 22
    .line 23
    iget v6, v0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 24
    .line 25
    add-int/lit16 v7, v2, 0x102

    .line 26
    .line 27
    iget-object v8, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 28
    .line 29
    add-int v9, v2, v3

    .line 30
    .line 31
    add-int/lit8 v10, v9, -0x1

    .line 32
    .line 33
    aget-byte v10, v8, v10

    .line 34
    .line 35
    aget-byte v8, v8, v9

    .line 36
    .line 37
    iget v9, v0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 38
    .line 39
    if-lt v3, v9, :cond_1

    .line 40
    .line 41
    shr-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    :cond_1
    iget v9, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 44
    .line 45
    move v11, v2

    .line 46
    if-le v5, v9, :cond_2

    .line 47
    .line 48
    :goto_1
    move v5, v3

    .line 49
    move v3, v1

    .line 50
    move/from16 v1, p1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v9, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_2
    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 56
    .line 57
    add-int v13, v1, v5

    .line 58
    .line 59
    aget-byte v14, v12, v13

    .line 60
    .line 61
    if-ne v14, v8, :cond_4

    .line 62
    .line 63
    add-int/lit8 v13, v13, -0x1

    .line 64
    .line 65
    aget-byte v13, v12, v13

    .line 66
    .line 67
    if-ne v13, v10, :cond_4

    .line 68
    .line 69
    aget-byte v13, v12, v1

    .line 70
    .line 71
    aget-byte v14, v12, v11

    .line 72
    .line 73
    if-ne v13, v14, :cond_4

    .line 74
    .line 75
    add-int/lit8 v13, v1, 0x1

    .line 76
    .line 77
    aget-byte v13, v12, v13

    .line 78
    .line 79
    add-int/lit8 v14, v11, 0x1

    .line 80
    .line 81
    aget-byte v12, v12, v14

    .line 82
    .line 83
    if-eq v13, v12, :cond_5

    .line 84
    .line 85
    :cond_4
    move/from16 p1, v8

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_5
    add-int/lit8 v11, v11, 0x2

    .line 90
    .line 91
    add-int/lit8 v12, v1, 0x2

    .line 92
    .line 93
    :goto_3
    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 94
    .line 95
    add-int/lit8 v14, v11, 0x1

    .line 96
    .line 97
    aget-byte v15, v13, v14

    .line 98
    .line 99
    add-int/lit8 v16, v12, 0x1

    .line 100
    .line 101
    move/from16 p1, v8

    .line 102
    .line 103
    aget-byte v8, v13, v16

    .line 104
    .line 105
    if-ne v15, v8, :cond_8

    .line 106
    .line 107
    add-int/lit8 v14, v11, 0x2

    .line 108
    .line 109
    aget-byte v8, v13, v14

    .line 110
    .line 111
    add-int/lit8 v15, v12, 0x2

    .line 112
    .line 113
    aget-byte v15, v13, v15

    .line 114
    .line 115
    if-ne v8, v15, :cond_8

    .line 116
    .line 117
    add-int/lit8 v14, v11, 0x3

    .line 118
    .line 119
    aget-byte v8, v13, v14

    .line 120
    .line 121
    add-int/lit8 v15, v12, 0x3

    .line 122
    .line 123
    aget-byte v15, v13, v15

    .line 124
    .line 125
    if-ne v8, v15, :cond_8

    .line 126
    .line 127
    add-int/lit8 v14, v11, 0x4

    .line 128
    .line 129
    aget-byte v8, v13, v14

    .line 130
    .line 131
    add-int/lit8 v15, v12, 0x4

    .line 132
    .line 133
    aget-byte v15, v13, v15

    .line 134
    .line 135
    if-ne v8, v15, :cond_8

    .line 136
    .line 137
    add-int/lit8 v14, v11, 0x5

    .line 138
    .line 139
    aget-byte v8, v13, v14

    .line 140
    .line 141
    add-int/lit8 v15, v12, 0x5

    .line 142
    .line 143
    aget-byte v15, v13, v15

    .line 144
    .line 145
    if-ne v8, v15, :cond_8

    .line 146
    .line 147
    add-int/lit8 v14, v11, 0x6

    .line 148
    .line 149
    aget-byte v8, v13, v14

    .line 150
    .line 151
    add-int/lit8 v15, v12, 0x6

    .line 152
    .line 153
    aget-byte v15, v13, v15

    .line 154
    .line 155
    if-ne v8, v15, :cond_8

    .line 156
    .line 157
    add-int/lit8 v14, v11, 0x7

    .line 158
    .line 159
    aget-byte v8, v13, v14

    .line 160
    .line 161
    add-int/lit8 v15, v12, 0x7

    .line 162
    .line 163
    aget-byte v15, v13, v15

    .line 164
    .line 165
    if-ne v8, v15, :cond_8

    .line 166
    .line 167
    add-int/lit8 v11, v11, 0x8

    .line 168
    .line 169
    aget-byte v8, v13, v11

    .line 170
    .line 171
    add-int/lit8 v12, v12, 0x8

    .line 172
    .line 173
    aget-byte v14, v13, v12

    .line 174
    .line 175
    if-ne v8, v14, :cond_7

    .line 176
    .line 177
    if-lt v11, v7, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    move/from16 v8, p1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    :goto_4
    move v14, v11

    .line 184
    :cond_8
    sub-int v8, v7, v14

    .line 185
    .line 186
    rsub-int v8, v8, 0x102

    .line 187
    .line 188
    if-le v8, v5, :cond_a

    .line 189
    .line 190
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 191
    .line 192
    if-lt v8, v9, :cond_9

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_9
    add-int v5, v2, v8

    .line 196
    .line 197
    add-int/lit8 v10, v5, -0x1

    .line 198
    .line 199
    aget-byte v10, v13, v10

    .line 200
    .line 201
    aget-byte v5, v13, v5

    .line 202
    .line 203
    move v11, v2

    .line 204
    move/from16 v17, v8

    .line 205
    .line 206
    move v8, v5

    .line 207
    move/from16 v5, v17

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_a
    move/from16 v8, p1

    .line 211
    .line 212
    move v11, v2

    .line 213
    goto :goto_6

    .line 214
    :goto_5
    move/from16 v8, p1

    .line 215
    .line 216
    :goto_6
    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 217
    .line 218
    and-int/2addr v1, v6

    .line 219
    aget-short v1, v12, v1

    .line 220
    .line 221
    const v12, 0xffff

    .line 222
    .line 223
    .line 224
    and-int/2addr v1, v12

    .line 225
    if-le v1, v4, :cond_b

    .line 226
    .line 227
    add-int/lit8 v3, v3, -0x1

    .line 228
    .line 229
    if-nez v3, :cond_3

    .line 230
    .line 231
    :cond_b
    move v8, v5

    .line 232
    :goto_7
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 233
    .line 234
    if-gt v8, v1, :cond_c

    .line 235
    .line 236
    return v8

    .line 237
    :cond_c
    return v1
.end method

.method public pqdownheap([SI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    shl-int/lit8 v1, p2, 0x1

    .line 6
    .line 7
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 8
    .line 9
    if-gt v1, v2, :cond_2

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 14
    .line 15
    add-int/lit8 v3, v1, 0x1

    .line 16
    .line 17
    aget v4, v2, v3

    .line 18
    .line 19
    aget v2, v2, v1

    .line 20
    .line 21
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 22
    .line 23
    invoke-static {p1, v4, v2, v5}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    move v1, v3

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 31
    .line 32
    aget v2, v2, v1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 35
    .line 36
    invoke-static {p1, v0, v2, v3}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 44
    .line 45
    aget v3, v2, v1

    .line 46
    .line 47
    aput v3, v2, p2

    .line 48
    .line 49
    shl-int/lit8 p2, v1, 0x1

    .line 50
    .line 51
    move v6, v1

    .line 52
    move v1, p2

    .line 53
    move p2, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 56
    .line 57
    aput v0, p1, p2

    .line 58
    .line 59
    return-void
.end method

.method public final putShortMSB(I)V
    .locals 1

    .line 1
    shr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 5
    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final put_byte(B)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final put_byte([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    return-void
.end method

.method public final put_short(I)V
    .locals 1

    .line 1
    int-to-byte v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 3
    .line 4
    .line 5
    ushr-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public scan_tree([SI)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    aget-short v1, p1, v0

    .line 3
    .line 4
    const/16 v2, 0x8a

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x7

    .line 8
    const/4 v5, 0x4

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/16 v6, 0x8a

    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v6, 0x7

    .line 16
    const/4 v7, 0x4

    .line 17
    :goto_0
    add-int/lit8 v8, p2, 0x1

    .line 18
    .line 19
    mul-int/lit8 v8, v8, 0x2

    .line 20
    .line 21
    add-int/2addr v8, v0

    .line 22
    const/4 v9, -0x1

    .line 23
    aput-short v9, p1, v8

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    :goto_1
    if-gt v10, p2, :cond_8

    .line 29
    .line 30
    add-int/lit8 v10, v10, 0x1

    .line 31
    .line 32
    mul-int/lit8 v12, v10, 0x2

    .line 33
    .line 34
    add-int/2addr v12, v0

    .line 35
    aget-short v12, p1, v12

    .line 36
    .line 37
    add-int/2addr v11, v0

    .line 38
    if-ge v11, v6, :cond_1

    .line 39
    .line 40
    if-ne v1, v12, :cond_1

    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_1
    if-ge v11, v7, :cond_2

    .line 44
    .line 45
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 46
    .line 47
    mul-int/lit8 v7, v1, 0x2

    .line 48
    .line 49
    aget-short v9, v6, v7

    .line 50
    .line 51
    add-int/2addr v9, v11

    .line 52
    int-to-short v9, v9

    .line 53
    aput-short v9, v6, v7

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eqz v1, :cond_4

    .line 57
    .line 58
    if-eq v1, v9, :cond_3

    .line 59
    .line 60
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 61
    .line 62
    mul-int/lit8 v7, v1, 0x2

    .line 63
    .line 64
    aget-short v9, v6, v7

    .line 65
    .line 66
    add-int/2addr v9, v0

    .line 67
    int-to-short v9, v9

    .line 68
    aput-short v9, v6, v7

    .line 69
    .line 70
    :cond_3
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 71
    .line 72
    const/16 v7, 0x20

    .line 73
    .line 74
    aget-short v9, v6, v7

    .line 75
    .line 76
    add-int/2addr v9, v0

    .line 77
    int-to-short v9, v9

    .line 78
    aput-short v9, v6, v7

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    const/16 v6, 0xa

    .line 82
    .line 83
    if-gt v11, v6, :cond_5

    .line 84
    .line 85
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 86
    .line 87
    const/16 v7, 0x22

    .line 88
    .line 89
    aget-short v9, v6, v7

    .line 90
    .line 91
    add-int/2addr v9, v0

    .line 92
    int-to-short v9, v9

    .line 93
    aput-short v9, v6, v7

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 97
    .line 98
    const/16 v7, 0x24

    .line 99
    .line 100
    aget-short v9, v6, v7

    .line 101
    .line 102
    add-int/2addr v9, v0

    .line 103
    int-to-short v9, v9

    .line 104
    aput-short v9, v6, v7

    .line 105
    .line 106
    :goto_2
    if-nez v12, :cond_6

    .line 107
    .line 108
    move v9, v1

    .line 109
    const/16 v6, 0x8a

    .line 110
    .line 111
    :goto_3
    const/4 v7, 0x3

    .line 112
    :goto_4
    const/4 v11, 0x0

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    if-ne v1, v12, :cond_7

    .line 115
    .line 116
    const/4 v6, 0x6

    .line 117
    move v9, v1

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    move v9, v1

    .line 120
    const/4 v6, 0x7

    .line 121
    const/4 v7, 0x4

    .line 122
    goto :goto_4

    .line 123
    :goto_5
    move v1, v12

    .line 124
    goto :goto_1

    .line 125
    :cond_8
    return-void
.end method

.method public send_all_trees(III)V
    .locals 3

    .line 1
    add-int/lit16 v0, p1, -0x101

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 p2, p2, -0x1

    .line 8
    .line 9
    invoke-virtual {p0, p2, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, p3, -0x4

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-ge v0, p3, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 22
    .line 23
    sget-object v2, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 24
    .line 25
    aget-byte v2, v2, v0

    .line 26
    .line 27
    mul-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    aget-short v1, v1, v2

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-virtual {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 41
    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    invoke-virtual {p0, p3, p1}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public send_bits(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 2
    .line 3
    rsub-int/lit8 v1, p2, 0x10

    .line 4
    .line 5
    const v2, 0xffff

    .line 6
    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iget-short v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 11
    .line 12
    shl-int v0, p1, v0

    .line 13
    .line 14
    and-int/2addr v0, v2

    .line 15
    or-int/2addr v0, v1

    .line 16
    int-to-short v0, v0

    .line 17
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 23
    .line 24
    rsub-int/lit8 v1, v0, 0x10

    .line 25
    .line 26
    ushr-int/2addr p1, v1

    .line 27
    int-to-short p1, p1

    .line 28
    iput-short p1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x10

    .line 31
    .line 32
    add-int/2addr p2, v0

    .line 33
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-short v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 37
    .line 38
    shl-int/2addr p1, v0

    .line 39
    and-int/2addr p1, v2

    .line 40
    or-int/2addr p1, v1

    .line 41
    int-to-short p1, p1

    .line 42
    iput-short p1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 43
    .line 44
    add-int/2addr v0, p2

    .line 45
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final send_code(I[S)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    aget-short v0, p2, p1

    .line 4
    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-short p1, p2, p1

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public send_tree([SI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-short v2, p1, v1

    .line 5
    .line 6
    const/16 v3, 0x8a

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x7

    .line 10
    const/4 v6, 0x4

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/16 v7, 0x8a

    .line 14
    .line 15
    const/4 v8, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v7, 0x7

    .line 18
    const/4 v8, 0x4

    .line 19
    :goto_0
    const/4 v9, -0x1

    .line 20
    const/4 v10, 0x0

    .line 21
    move/from16 v11, p2

    .line 22
    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v14, -0x1

    .line 26
    :goto_1
    if-gt v12, v11, :cond_9

    .line 27
    .line 28
    add-int/lit8 v12, v12, 0x1

    .line 29
    .line 30
    mul-int/lit8 v15, v12, 0x2

    .line 31
    .line 32
    add-int/2addr v15, v1

    .line 33
    aget-short v15, p1, v15

    .line 34
    .line 35
    add-int/lit8 v1, v13, 0x1

    .line 36
    .line 37
    if-ge v1, v7, :cond_1

    .line 38
    .line 39
    if-ne v2, v15, :cond_1

    .line 40
    .line 41
    move v13, v1

    .line 42
    goto :goto_6

    .line 43
    :cond_1
    if-ge v1, v8, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 46
    .line 47
    invoke-virtual {v0, v2, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 48
    .line 49
    .line 50
    add-int/2addr v1, v9

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    if-eqz v2, :cond_5

    .line 55
    .line 56
    if-eq v2, v14, :cond_4

    .line 57
    .line 58
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move v13, v1

    .line 65
    :goto_2
    const/16 v1, 0x10

    .line 66
    .line 67
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 68
    .line 69
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 70
    .line 71
    .line 72
    sub-int/2addr v13, v4

    .line 73
    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v13, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    const/16 v7, 0xa

    .line 79
    .line 80
    if-gt v1, v7, :cond_6

    .line 81
    .line 82
    const/16 v1, 0x11

    .line 83
    .line 84
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 85
    .line 86
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v13, v13, -0x2

    .line 90
    .line 91
    invoke-virtual {v0, v13, v4}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/16 v1, 0x12

    .line 96
    .line 97
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 98
    .line 99
    invoke-virtual {v0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v13, v13, -0xa

    .line 103
    .line 104
    invoke-virtual {v0, v13, v5}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 105
    .line 106
    .line 107
    :goto_3
    if-nez v15, :cond_7

    .line 108
    .line 109
    move v14, v2

    .line 110
    const/16 v7, 0x8a

    .line 111
    .line 112
    :goto_4
    const/4 v8, 0x3

    .line 113
    :goto_5
    const/4 v13, 0x0

    .line 114
    goto :goto_6

    .line 115
    :cond_7
    if-ne v2, v15, :cond_8

    .line 116
    .line 117
    const/4 v1, 0x6

    .line 118
    move v14, v2

    .line 119
    const/4 v7, 0x6

    .line 120
    goto :goto_4

    .line 121
    :cond_8
    move v14, v2

    .line 122
    const/4 v7, 0x7

    .line 123
    const/4 v8, 0x4

    .line 124
    goto :goto_5

    .line 125
    :goto_6
    move v2, v15

    .line 126
    const/4 v1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_9
    return-void
.end method

.method public set_data_type()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x7

    .line 5
    if-ge v1, v3, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 8
    .line 9
    mul-int/lit8 v4, v1, 0x2

    .line 10
    .line 11
    aget-short v3, v3, v4

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_1
    const/16 v4, 0x80

    .line 19
    .line 20
    if-ge v1, v4, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 23
    .line 24
    mul-int/lit8 v5, v1, 0x2

    .line 25
    .line 26
    aget-short v4, v4, v5

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_2
    const/16 v4, 0x100

    .line 33
    .line 34
    if-ge v1, v4, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 37
    .line 38
    mul-int/lit8 v5, v1, 0x2

    .line 39
    .line 40
    aget-short v4, v4, v5

    .line 41
    .line 42
    add-int/2addr v2, v4

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    ushr-int/lit8 v1, v3, 0x2

    .line 47
    .line 48
    if-le v2, v1, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    const/4 v0, 0x1

    .line 52
    :goto_3
    int-to-byte v0, v0

    .line 53
    iput-byte v0, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    .line 54
    .line 55
    return-void
.end method

.method public tr_init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 4
    .line 5
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 6
    .line 7
    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 14
    .line 15
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 16
    .line 17
    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 24
    .line 25
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 26
    .line 27
    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 33
    .line 34
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
