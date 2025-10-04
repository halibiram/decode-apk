.class public abstract Lcom/google/android/gms/internal/ads/zzari;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarj;


# static fields
.field private static final zzb:Ljava/util/logging/Logger;


# instance fields
.field final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzari;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzari;->zzb:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarh;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Lcom/google/android/gms/internal/ads/zzari;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzarm;
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhgp;Lcom/google/android/gms/internal/ads/zzarn;)Lcom/google/android/gms/internal/ads/zzarm;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x3

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const/16 v9, 0x8

    .line 27
    .line 28
    invoke-virtual {v8, v9}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzhgp;->zza(Ljava/nio/ByteBuffer;)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-eq v8, v9, :cond_1

    .line 44
    .line 45
    if-ltz v8, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzhgp;->zze(J)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Ljava/io/EOFException;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 66
    .line 67
    .line 68
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzarl;->zze(Ljava/nio/ByteBuffer;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    const-wide/16 v10, 0x8

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const-wide/16 v12, 0x1

    .line 84
    .line 85
    cmp-long v14, v5, v10

    .line 86
    .line 87
    if-gez v14, :cond_3

    .line 88
    .line 89
    cmp-long v10, v5, v12

    .line 90
    .line 91
    if-gtz v10, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzari;->zzb:Ljava/util/logging/Logger;

    .line 95
    .line 96
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const/16 v9, 0x50

    .line 101
    .line 102
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .line 104
    .line 105
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 v10, 0x7

    .line 108
    new-array v10, v10, [J

    .line 109
    .line 110
    fill-array-data v10, :array_0

    .line 111
    .line 112
    .line 113
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v4, v4, [J

    .line 129
    .line 130
    fill-array-data v4, :array_1

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-static {v5, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    const/4 v5, 0x6

    .line 143
    new-array v5, v5, [J

    .line 144
    .line 145
    fill-array-data v5, :array_2

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v3, v3, [J

    .line 158
    .line 159
    fill-array-data v3, :array_3

    .line 160
    .line 161
    .line 162
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v0, v1, v4, v3, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object v8

    .line 173
    :cond_3
    :goto_1
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    check-cast v10, Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    const/4 v11, 0x4

    .line 182
    new-array v11, v11, [B

    .line 183
    .line 184
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    .line 187
    :try_start_0
    new-instance v10, Ljava/lang/String;

    .line 188
    .line 189
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v4, v4, [J

    .line 192
    .line 193
    fill-array-data v4, :array_4

    .line 194
    .line 195
    .line 196
    invoke-direct {v14, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-direct {v10, v11, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    .line 206
    const-wide/16 v14, -0x10

    .line 207
    .line 208
    const/16 v4, 0x10

    .line 209
    .line 210
    cmp-long v11, v5, v12

    .line 211
    .line 212
    if-nez v11, :cond_4

    .line 213
    .line 214
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    .line 224
    .line 225
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzhgp;->zza(Ljava/nio/ByteBuffer;)I

    .line 234
    .line 235
    .line 236
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 237
    .line 238
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 243
    .line 244
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    .line 246
    .line 247
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzarl;->zzf(Ljava/nio/ByteBuffer;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    add-long/2addr v5, v14

    .line 260
    goto :goto_2

    .line 261
    :cond_4
    const-wide/16 v11, 0x0

    .line 262
    .line 263
    cmp-long v9, v5, v11

    .line 264
    .line 265
    if-nez v9, :cond_5

    .line 266
    .line 267
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzc()J

    .line 268
    .line 269
    .line 270
    move-result-wide v5

    .line 271
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 272
    .line 273
    .line 274
    move-result-wide v11

    .line 275
    sub-long/2addr v5, v11

    .line 276
    goto :goto_2

    .line 277
    :cond_5
    const-wide/16 v11, -0x8

    .line 278
    .line 279
    add-long/2addr v5, v11

    .line 280
    :goto_2
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 281
    .line 282
    new-array v3, v3, [J

    .line 283
    .line 284
    fill-array-data v3, :array_5

    .line 285
    .line 286
    .line 287
    invoke-direct {v9, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_7

    .line 299
    .line 300
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 301
    .line 302
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 315
    .line 316
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    add-int/2addr v8, v4

    .line 321
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 322
    .line 323
    .line 324
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 325
    .line 326
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 331
    .line 332
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzhgp;->zza(Ljava/nio/ByteBuffer;)I

    .line 333
    .line 334
    .line 335
    new-array v8, v4, [B

    .line 336
    .line 337
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    add-int/lit8 v3, v3, -0x10

    .line 350
    .line 351
    :goto_3
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    if-ge v3, v4, :cond_6

    .line 364
    .line 365
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    add-int/lit8 v4, v4, -0x10

    .line 378
    .line 379
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 380
    .line 381
    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 386
    .line 387
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    sub-int v4, v3, v4

    .line 392
    .line 393
    aput-byte v9, v8, v4

    .line 394
    .line 395
    add-int/2addr v3, v2

    .line 396
    goto :goto_3

    .line 397
    :cond_6
    add-long/2addr v5, v14

    .line 398
    :cond_7
    move-wide v4, v5

    .line 399
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzarm;

    .line 400
    .line 401
    if-eqz v3, :cond_8

    .line 402
    .line 403
    move-object v2, v1

    .line 404
    check-cast v2, Lcom/google/android/gms/internal/ads/zzarm;

    .line 405
    .line 406
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzarm;->zza()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    goto :goto_4

    .line 411
    :cond_8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 412
    .line 413
    new-array v2, v2, [J

    .line 414
    .line 415
    const-wide v11, -0x23eb7e4b37e7b808L    # -3.7262595131770963E135

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    const/4 v6, 0x0

    .line 421
    aput-wide v11, v2, v6

    .line 422
    .line 423
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    :goto_4
    invoke-virtual {v7, v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzarm;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzarm;->zzc(Lcom/google/android/gms/internal/ads/zzarn;)V

    .line 435
    .line 436
    .line 437
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 438
    .line 439
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 446
    .line 447
    .line 448
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzari;->zza:Ljava/lang/ThreadLocal;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    move-object v3, v1

    .line 455
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 456
    .line 457
    move-object v1, v8

    .line 458
    move-object/from16 v2, p1

    .line 459
    .line 460
    move-object/from16 v6, p0

    .line 461
    .line 462
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Lcom/google/android/gms/internal/ads/zzhgp;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzarj;)V

    .line 463
    .line 464
    .line 465
    return-object v8

    .line 466
    :catch_0
    move-exception v0

    .line 467
    new-instance v1, Ljava/lang/RuntimeException;

    .line 468
    .line 469
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 470
    .line 471
    .line 472
    throw v1

    .line 473
    :array_0
    .array-data 8
        0x495a8969fe322b3L
        -0x42349b2add85f3aL    # -4.372009363285962E288
        -0x79cd61061dac3e95L    # -8.206671202815989E-279
        0x4e3582625d69b31aL    # 5.798899428974556E68
        -0x66c6fecd38c40d65L
        0x79f18842fc892a92L    # 2.486303816308071E279
        -0x5c15ccfdce65b1f2L
    .end array-data

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
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_1
    .array-data 8
        0x54e4c1e7a799ca04L    # 9.080345583151594E100
        0x595194e1dd0d5a70L    # 1.8160004245072855E122
        0x361c4529c5f21063L    # 4.835808584938617E-48
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
    :array_2
    .array-data 8
        0x64f8e4a03b50e39cL    # 2.521830597670074E178
        0x3e4959f24979bb84L    # 1.1805143792384884E-8
        -0x103c0eabc3571d74L    # -2.418858556578087E230
        0x3d942c24eda62b8cL
        -0x60688ec95ccfbfc2L
        -0x600d49ef3a9a53daL    # -8.722153494525686E-155
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
    .line 546
    .line 547
    .line 548
    .line 549
    :array_3
    .array-data 8
        0x6f76e644cb8be4cdL    # 8.679655329330699E228
        -0x18dd692c28cc4308L    # -6.470640864831986E188
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
    :array_4
    .array-data 8
        0x16a5529f74454810L
        0x3a6866077403d43eL    # 2.4636240904525343E-27
        -0x14a7fe4025281798L    # -1.2331953901149225E209
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
    :array_5
    .array-data 8
        -0x45824f1471ec893L    # -4.540648888123437E287
        -0x597a7658fd9ad089L    # -4.072594762656105E-123
    .end array-data
.end method
