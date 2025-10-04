.class public final Lcom/google/android/gms/internal/ads/zzagq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzago;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzagn;->zza:Lcom/google/android/gms/internal/ads/zzagn;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagq;->zza:Lcom/google/android/gms/internal/ads/zzago;

    return-void
.end method

.method public static final zza([BILcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzafr;)Lcom/google/android/gms/internal/ads/zzby;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p3, 0x7

    .line 2
    const/4 v0, 0x3

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([BI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p1, 0x2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v7, 0xa

    .line 23
    .line 24
    if-ge p0, v7, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v8, v0, [J

    .line 29
    .line 30
    fill-array-data v8, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v9, 0x5

    .line 43
    new-array v9, v9, [J

    .line 44
    .line 45
    fill-array-data v9, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    move-object v10, v6

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const v8, 0x494433

    .line 66
    .line 67
    .line 68
    if-eq p0, v8, :cond_1

    .line 69
    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-array v8, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p0, v8, v3

    .line 77
    .line 78
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v9, p1, [J

    .line 81
    .line 82
    fill-array-data v9, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/16 v9, 0x8

    .line 99
    .line 100
    new-array v9, v9, [J

    .line 101
    .line 102
    fill-array-data v9, :array_3

    .line 103
    .line 104
    .line 105
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v10, v0, [J

    .line 115
    .line 116
    fill-array-data v10, :array_4

    .line 117
    .line 118
    .line 119
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v9, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzl()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-ne p0, p1, :cond_2

    .line 150
    .line 151
    and-int/lit8 v10, v8, 0x40

    .line 152
    .line 153
    if-eqz v10, :cond_5

    .line 154
    .line 155
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v8, v0, [J

    .line 158
    .line 159
    fill-array-data v8, :array_5

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v9, v7, [J

    .line 172
    .line 173
    fill-array-data v9, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_2
    if-ne p0, v0, :cond_3

    .line 189
    .line 190
    and-int/lit8 v10, v8, 0x40

    .line 191
    .line 192
    if-eqz v10, :cond_5

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 199
    .line 200
    .line 201
    add-int/2addr v10, v5

    .line 202
    sub-int/2addr v9, v10

    .line 203
    goto :goto_1

    .line 204
    :cond_3
    if-ne p0, v5, :cond_7

    .line 205
    .line 206
    and-int/lit8 v10, v8, 0x40

    .line 207
    .line 208
    if-eqz v10, :cond_4

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzl()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    add-int/lit8 v11, v10, -0x4

    .line 215
    .line 216
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 217
    .line 218
    .line 219
    sub-int/2addr v9, v10

    .line 220
    :cond_4
    and-int/lit8 v10, v8, 0x10

    .line 221
    .line 222
    if-eqz v10, :cond_5

    .line 223
    .line 224
    add-int/lit8 v9, v9, -0xa

    .line 225
    .line 226
    :cond_5
    :goto_1
    if-ge p0, v5, :cond_6

    .line 227
    .line 228
    and-int/lit16 v8, v8, 0x80

    .line 229
    .line 230
    if-eqz v8, :cond_6

    .line 231
    .line 232
    const/4 v8, 0x1

    .line 233
    goto :goto_2

    .line 234
    :cond_6
    const/4 v8, 0x0

    .line 235
    :goto_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzagp;

    .line 236
    .line 237
    invoke-direct {v10, p0, v8, v9}, Lcom/google/android/gms/internal/ads/zzagp;-><init>(IZI)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v10, p3, [J

    .line 249
    .line 250
    fill-array-data v10, :array_7

    .line 251
    .line 252
    .line 253
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v8, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v9, v0, [J

    .line 263
    .line 264
    fill-array-data v9, :array_8

    .line 265
    .line 266
    .line 267
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :goto_3
    if-nez v10, :cond_8

    .line 280
    .line 281
    return-object v6

    .line 282
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-ne v8, p1, :cond_9

    .line 291
    .line 292
    const/4 v7, 0x6

    .line 293
    :cond_9
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zza(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzc(Lcom/google/android/gms/internal/ads/zzagp;)Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-eqz v8, :cond_a

    .line 302
    .line 303
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zza(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzagq;->zze(Lcom/google/android/gms/internal/ads/zzfp;I)I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    :cond_a
    add-int/2addr p0, p1

    .line 312
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 313
    .line 314
    .line 315
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    invoke-static {v2, p0, v7, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzk(Lcom/google/android/gms/internal/ads/zzfp;IIZ)Z

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    if-nez p0, :cond_c

    .line 324
    .line 325
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 326
    .line 327
    .line 328
    move-result p0

    .line 329
    if-ne p0, v5, :cond_b

    .line 330
    .line 331
    invoke-static {v2, v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzagq;->zzk(Lcom/google/android/gms/internal/ads/zzfp;IIZ)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    if-eqz p0, :cond_b

    .line 336
    .line 337
    const/4 v3, 0x1

    .line 338
    goto :goto_4

    .line 339
    :cond_b
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 349
    .line 350
    new-array p3, p3, [J

    .line 351
    .line 352
    fill-array-data p3, :array_9

    .line 353
    .line 354
    .line 355
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 356
    .line 357
    .line 358
    invoke-static {p2, p1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array p2, v0, [J

    .line 365
    .line 366
    fill-array-data p2, :array_a

    .line 367
    .line 368
    .line 369
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    return-object v6

    .line 380
    :cond_c
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 381
    .line 382
    .line 383
    move-result p0

    .line 384
    if-lt p0, v7, :cond_d

    .line 385
    .line 386
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzagp;->zzb(Lcom/google/android/gms/internal/ads/zzagp;)I

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    invoke-static {p0, v2, v3, v7, p2}, Lcom/google/android/gms/internal/ads/zzagq;->zzf(ILcom/google/android/gms/internal/ads/zzfp;ZILcom/google/android/gms/internal/ads/zzago;)Lcom/google/android/gms/internal/ads/zzagr;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    if-eqz p0, :cond_c

    .line 395
    .line 396
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzby;

    .line 401
    .line 402
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzby;-><init>(Ljava/util/List;)V

    .line 403
    .line 404
    .line 405
    return-object p0

    .line 406
    nop

    .line 407
    :array_0
    .array-data 8
        -0x7d33dc4be3c93ffbL
        0x125eee278ba6e86eL
        -0x6d999fd05d9c7fcL
    .end array-data

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
    :array_1
    .array-data 8
        0x70c494dbe50ace5L
        0x4af674a157cf4e15L    # 1.3442612027385245E53
        -0x7bd9b84298514b92L
        -0x2334ab6845530a64L    # -1.0170789013620433E139
        0x2f3d4c88ced7a89bL    # 3.86094328075197E-81
    .end array-data

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
    :array_2
    .array-data 8
        0x23217cf61552e1a4L
        0x1b6f632cf26e0e9L
    .end array-data

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
    :array_3
    .array-data 8
        0x1825a3d47f680edcL    # 2.37153346431686E-192
        -0x40b8b55e4f842a83L    # -7.108010767910424E-4
        -0x21180c1094e5ec8L    # -3.988996141300159E298
        -0x11dd49f60a72b2eL
        0x4d1af6dd7af047aeL    # 2.7731191588511547E63
        0x1a1a510a9a992715L    # 6.193439465961741E-183
        0x2d898a2164607573L    # 2.5075229224884778E-89
        0x2c7bb47dc36efbe2L    # 2.0752967902117806E-94
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
    :array_4
    .array-data 8
        -0x71bf14d4e61c3054L    # -5.074562027838995E-240
        -0x3927a07977aeb6d2L    # -1.9773845668623374E33
        -0x45da33778f9ebdecL    # -1.3757075894416126E-28
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
    .line 508
    .line 509
    .line 510
    .line 511
    :array_5
    .array-data 8
        -0x3c6ccbe86cd1aecbL    # -3.4593922660357254E17
        -0x274ffd5bec762e83L    # -1.6149467505002744E119
        0x665984c8cbc438b9L    # 1.084315616270668E185
    .end array-data

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
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_6
    .array-data 8
        -0x39d509d60584652fL    # -1.0680581433086269E30
        0x234dd690a9a51cfcL
        -0x371b44cb0a9f56dcL    # -1.444759132142755E43
        -0xaf0d9f22a994634L
        -0x3433c0f29ecb5057L    # -1.3851944188879408E57
        0x163f7819ee41b2cdL
        -0x33b7a641c96198d1L    # -3.0570186823865223E59
        -0x3b9e37ddcf32a239L    # -2.624126334947647E21
        -0x66e5eb324cf25c2eL    # -9.365939431764559E-188
        -0xa11c56959e6fbc6L
    .end array-data

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
    :array_7
    .array-data 8
        -0x6c35b11eb74d1614L
        0x547dd5958b471aeeL    # 1.0196112964970777E99
        0xf7ae1cc1ccebcb9L
        -0x6dc489f045c6a744L    # -7.597003846735317E-221
        0x6b20d0bf75671f74L
        0x1c22b0ccac49bc0aL
        0x6338f08d433929c6L    # 9.412132273019374E169
    .end array-data

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
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    :array_8
    .array-data 8
        -0x41e819e4968e04f8L    # -1.3910964930156807E-9
        -0x30c999f0e6f08b13L    # -3.9575020590862926E73
        -0x7a3cd828d7387ee3L    # -6.595540962628153E-281
    .end array-data

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_9
    .array-data 8
        0x4642c2bf44b17bdbL    # 2.9727564927771294E30
        0x55e36931ebf9c9baL    # 5.564864194840658E105
        0x768ac535d82806a5L    # 1.0537081217088715E263
        0x43c12c0c9422de4aL    # 2.4747556559994604E18
        -0x597bd79df28bbc71L    # -3.811656485030224E-123
        -0x3c6147d0a931f946L    # -5.5339281668070976E17
        0x774bd2ecb9ba1cb2L    # 4.485848151969298E266
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
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
    .line 648
    .line 649
    .line 650
    .line 651
    :array_a
    .array-data 8
        0x8a4bdac7d32ccc7L
        -0x2205bc392c06640fL    # -5.124497089455422E144
        -0x71d38a5078a1af09L
    .end array-data
.end method

.method private static zzb(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzc([BII)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p2, v1, :cond_3

    .line 9
    .line 10
    :goto_0
    array-length p2, p0

    .line 11
    add-int/lit8 v1, p2, -0x1

    .line 12
    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    add-int/lit8 p2, v0, 0x1

    .line 16
    .line 17
    sub-int v1, v0, p1

    .line 18
    .line 19
    rem-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    aget-byte v1, p0, p2

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    return v0

    .line 29
    :cond_1
    :goto_1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return p2

    .line 35
    :cond_3
    return v0
.end method

.method private static zzd([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-ge p1, v0, :cond_1

    .line 3
    .line 4
    aget-byte v0, p0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    return v0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzfp;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    move v1, p0

    .line 10
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 11
    .line 12
    add-int v3, p0, p1

    .line 13
    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    aget-byte v3, v0, v1

    .line 17
    .line 18
    const/16 v4, 0xff

    .line 19
    .line 20
    and-int/2addr v3, v4

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    aget-byte v3, v0, v2

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    sub-int v3, v1, p0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    sub-int v3, p1, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, -0x2

    .line 34
    .line 35
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p1, p1, -0x1

    .line 39
    .line 40
    :cond_0
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return p1
.end method

.method private static zzf(ILcom/google/android/gms/internal/ads/zzfp;ZILcom/google/android/gms/internal/ads/zzago;)Lcom/google/android/gms/internal/ads/zzagr;
    .locals 35
    .param p4    # Lcom/google/android/gms/internal/ads/zzago;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v8, 0x4

    const/16 v9, 0x8

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v13

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v14

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v15

    const/4 v7, 0x3

    if-lt v1, v7, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v18

    move/from16 v5, v18

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v1, v8, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    move-result v6

    if-nez v3, :cond_3

    and-int/lit16 v11, v6, 0xff

    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v12, v6, 0x10

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v6, v6, 0x18

    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v10, v11

    shl-int/lit8 v11, v12, 0xe

    or-int/2addr v10, v11

    shl-int/lit8 v6, v6, 0x15

    or-int/2addr v6, v10

    goto :goto_1

    :cond_1
    if-ne v1, v7, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    move-result v6

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    move-result v6

    :cond_3
    :goto_1
    if-lt v1, v7, :cond_4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    if-nez v13, :cond_6

    if-nez v14, :cond_6

    if-nez v15, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v10, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    move-result v1

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    return-object v11

    .line 11
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    move-result v9

    if-le v12, v9, :cond_7

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v7, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x6

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    move-result v1

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    return-object v11

    :cond_7
    if-nez p4, :cond_3e

    if-ne v1, v7, :cond_b

    and-int/lit8 v9, v10, 0x40

    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    :goto_6
    move/from16 v22, v7

    const/4 v11, 0x1

    :goto_7
    const/16 v24, 0x0

    goto :goto_d

    :cond_b
    if-ne v1, v8, :cond_10

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_8
    const/16 v9, 0x8

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    :goto_9
    and-int/lit8 v22, v10, 0x8

    if-eqz v22, :cond_d

    const/4 v9, 0x1

    goto :goto_a

    :cond_d
    const/4 v9, 0x0

    :goto_a
    and-int/lit8 v22, v10, 0x4

    const/16 v21, 0x2

    if-eqz v22, :cond_e

    const/16 v22, 0x1

    goto :goto_b

    :cond_e
    const/16 v22, 0x0

    :goto_b
    and-int/lit8 v23, v10, 0x2

    const/4 v11, 0x1

    if-eqz v23, :cond_f

    const/16 v20, 0x1

    goto :goto_c

    :cond_f
    const/16 v20, 0x0

    :goto_c
    and-int/2addr v10, v11

    move/from16 v24, v20

    move/from16 v34, v10

    move v10, v7

    move v7, v9

    move/from16 v9, v22

    move/from16 v22, v34

    goto :goto_d

    :cond_10
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_7

    :goto_d
    if-nez v7, :cond_11

    if-eqz v9, :cond_12

    :cond_11
    move-object v8, v2

    const/4 v3, 0x3

    goto/16 :goto_48

    :cond_12
    if-eqz v10, :cond_13

    .line 14
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    const/4 v7, -0x1

    add-int/2addr v6, v7

    :cond_13
    if-eqz v22, :cond_14

    .line 15
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    add-int/lit8 v6, v6, -0x4

    :cond_14
    if-eqz v24, :cond_15

    .line 16
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzagq;->zze(Lcom/google/android/gms/internal/ads/zzfp;I)I

    move-result v6

    :cond_15
    const/16 v7, 0x54

    const/16 v9, 0x58

    if-ne v13, v7, :cond_18

    if-ne v14, v9, :cond_18

    if-ne v15, v9, :cond_18

    const/4 v10, 0x2

    if-eq v1, v10, :cond_16

    if-ne v5, v9, :cond_18

    :cond_16
    if-gtz v6, :cond_17

    :goto_e
    move-object v8, v2

    move v3, v5

    move/from16 v24, v13

    move v2, v14

    move v4, v15

    :goto_f
    const/4 v7, 0x0

    goto/16 :goto_42

    .line 17
    :cond_17
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v3

    const/4 v4, -0x1

    add-int/lit8 v11, v6, -0x1

    new-array v4, v11, [B

    const/4 v7, 0x0

    .line 18
    invoke-virtual {v2, v4, v7, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 19
    invoke-static {v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, v4, v7, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v7

    add-int/2addr v8, v7

    .line 21
    invoke-static {v4, v3, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzg([BII)Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagz;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [J

    fill-array-data v8, :array_2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-direct {v4, v7, v9, v3}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_10
    move-object v8, v2

    move-object v7, v4

    :goto_11
    move v3, v5

    move/from16 v24, v13

    :goto_12
    move v2, v14

    move v4, v15

    goto/16 :goto_42

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v2

    goto/16 :goto_45

    :catch_0
    move-exception v0

    :goto_13
    move-object v8, v2

    move v3, v5

    move/from16 v24, v13

    :goto_14
    move v2, v14

    move v4, v15

    :goto_15
    move-object v5, v0

    goto/16 :goto_46

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    :goto_16
    move-object v3, v0

    goto :goto_17

    :catch_3
    move-exception v0

    goto :goto_16

    :goto_17
    move-object v8, v2

    move/from16 v24, v13

    :goto_18
    move v2, v14

    move v4, v15

    move/from16 v34, v5

    move-object v5, v3

    move/from16 v3, v34

    goto/16 :goto_46

    :cond_18
    if-ne v13, v7, :cond_1a

    .line 23
    invoke-static {v1, v7, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzagq;->zzi(IIIII)Ljava/lang/String;

    move-result-object v3

    if-gtz v6, :cond_19

    goto :goto_e

    .line 24
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v4

    const/4 v7, -0x1

    add-int/lit8 v11, v6, -0x1

    new-array v7, v11, [B

    const/4 v8, 0x0

    .line 25
    invoke-virtual {v2, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 26
    invoke-static {v7, v4, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzg([BII)Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object v4

    new-instance v7, Lcom/google/android/gms/internal/ads/zzagz;

    const/4 v8, 0x0

    .line 27
    invoke-direct {v7, v3, v8, v4}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v8, v2

    goto :goto_11

    :cond_1a
    const/16 v10, 0x57

    if-ne v13, v10, :cond_1e

    if-ne v14, v9, :cond_1b

    if-ne v15, v9, :cond_1b

    const/4 v11, 0x2

    if-eq v1, v11, :cond_1c

    if-ne v5, v9, :cond_1b

    goto :goto_19

    :cond_1b
    const/16 v9, 0x57

    goto :goto_1a

    :cond_1c
    :goto_19
    if-gtz v6, :cond_1d

    goto/16 :goto_e

    .line 28
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v3

    const/4 v4, -0x1

    add-int/lit8 v11, v6, -0x1

    new-array v4, v11, [B

    const/4 v7, 0x0

    .line 29
    invoke-virtual {v2, v4, v7, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 30
    invoke-static {v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, v4, v7, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v3

    add-int/2addr v8, v3

    .line 32
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v3

    .line 33
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-static {v4, v8, v3, v7}, Lcom/google/android/gms/internal/ads/zzagq;->zzh([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahb;

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x2

    :try_start_3
    new-array v8, v8, [J

    fill-array-data v8, :array_3
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v9, v3}, Lcom/google/android/gms/internal/ads/zzahb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1e
    move v9, v13

    :goto_1a
    if-ne v9, v10, :cond_1f

    .line 34
    invoke-static {v1, v10, v14, v15, v5}, Lcom/google/android/gms/internal/ads/zzagq;->zzi(IIIII)Ljava/lang/String;

    move-result-object v3

    .line 35
    new-array v4, v6, [B

    const/4 v7, 0x0

    .line 36
    invoke-virtual {v2, v4, v7, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 37
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v8

    new-instance v9, Ljava/lang/String;

    .line 38
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v7, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahb;

    const/4 v7, 0x0

    invoke-direct {v4, v3, v7, v9}, Lcom/google/android/gms/internal/ads/zzahb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1f
    const/16 v10, 0x49

    const/16 v11, 0x50

    if-ne v9, v11, :cond_21

    const/16 v9, 0x52

    if-ne v14, v9, :cond_20

    if-ne v15, v10, :cond_20

    const/16 v9, 0x56

    if-ne v5, v9, :cond_20

    .line 39
    new-array v3, v6, [B

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 41
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    .line 42
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v4, 0x1

    add-int/2addr v7, v4

    .line 43
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzagq;->zzl([BII)[B

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagx;

    invoke-direct {v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzagx;-><init>(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_10

    :cond_20
    const/16 v9, 0x50

    :cond_21
    const/16 v7, 0x4f

    const/16 v8, 0x47

    if-ne v9, v8, :cond_24

    const/16 v9, 0x45

    if-ne v14, v9, :cond_22

    if-ne v15, v7, :cond_22

    const/16 v9, 0x42

    if-eq v5, v9, :cond_23

    const/4 v9, 0x2

    if-ne v1, v9, :cond_22

    goto :goto_1b

    :cond_22
    move/from16 v24, v13

    const/16 v9, 0x47

    goto :goto_1f

    .line 44
    :cond_23
    :goto_1b
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v3

    .line 45
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, -0x1

    add-int/lit8 v11, v6, -0x1

    .line 46
    new-array v7, v11, [B

    const/4 v8, 0x0

    .line 47
    invoke-virtual {v2, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 48
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v9

    new-instance v10, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move/from16 v24, v13

    .line 49
    :try_start_6
    sget-object v13, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v8, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 50
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzcb;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 51
    invoke-static {v7, v9, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v10

    invoke-static {v7, v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzagq;->zzh([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v13

    add-int/2addr v10, v13

    .line 52
    invoke-static {v7, v10, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v13

    invoke-static {v7, v10, v13, v4}, Lcom/google/android/gms/internal/ads/zzagq;->zzh([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v3

    add-int/2addr v13, v3

    .line 53
    invoke-static {v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzagq;->zzl([BII)[B

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/ads/zzagm;

    invoke-direct {v7, v8, v9, v4, v3}, Lcom/google/android/gms/internal/ads/zzagm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v8, v2

    move v3, v5

    goto/16 :goto_12

    :catch_4
    move-exception v0

    :goto_1c
    move-object v8, v2

    :goto_1d
    move v3, v5

    goto/16 :goto_14

    :catch_5
    move-exception v0

    goto :goto_1c

    :catch_6
    move-exception v0

    :goto_1e
    move/from16 v24, v13

    goto :goto_1c

    :catch_7
    move-exception v0

    goto :goto_1e

    :cond_24
    move/from16 v24, v13

    :goto_1f
    const/16 v8, 0x41

    const/16 v13, 0x43

    const/4 v7, 0x2

    if-ne v1, v7, :cond_26

    if-ne v9, v11, :cond_25

    if-ne v14, v10, :cond_25

    if-ne v15, v13, :cond_25

    goto :goto_20

    :cond_25
    move/from16 v19, v12

    goto/16 :goto_2d

    :cond_26
    if-ne v9, v8, :cond_25

    if-ne v14, v11, :cond_25

    if-ne v15, v10, :cond_25

    if-ne v5, v13, :cond_25

    .line 54
    :goto_20
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v3

    .line 55
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    move-result-object v4

    const/4 v7, -0x1

    add-int/lit8 v11, v6, -0x1

    .line 56
    new-array v7, v11, [B

    const/4 v8, 0x0

    .line 57
    invoke-virtual {v2, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_28

    :try_start_8
    new-instance v10, Ljava/lang/String;

    .line 58
    sget-object v13, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    const/4 v9, 0x3

    invoke-direct {v10, v7, v8, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v10, 0x2

    :try_start_9
    new-array v13, v10, [J

    fill-array-data v13, :array_4
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v10, 0x3

    :try_start_b
    new-array v13, v10, [J

    fill-array-data v13, :array_5
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v9, 0x3

    :try_start_d
    new-array v10, v9, [J

    fill-array-data v10, :array_6
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_27
    const/4 v9, 0x2

    :goto_21
    const/4 v10, 0x1

    goto :goto_24

    :catch_8
    move-exception v0

    :goto_22
    move-object v3, v0

    goto :goto_23

    :catch_9
    move-exception v0

    goto :goto_22

    :goto_23
    move-object v8, v2

    goto/16 :goto_18

    .line 60
    :cond_28
    :try_start_f
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v9

    new-instance v10, Ljava/lang/String;

    .line 61
    sget-object v13, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v10, v7, v8, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x2f

    .line 62
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v13, -0x1

    if-ne v10, v13, :cond_29

    :try_start_10
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move/from16 p2, v9

    const/4 v13, 0x2

    :try_start_11
    new-array v9, v13, [J

    fill-array-data v9, :array_7
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    invoke-direct {v10, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move/from16 v9, p2

    goto :goto_21

    :cond_29
    move/from16 p2, v9

    goto :goto_21

    :goto_24
    add-int/2addr v10, v9

    .line 63
    :try_start_13
    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v13, 0x2

    add-int/2addr v9, v13

    .line 64
    invoke-static {v7, v9, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v13
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move/from16 v19, v12

    :try_start_14
    new-instance v12, Ljava/lang/String;

    sub-int v2, v13, v9

    invoke-direct {v12, v7, v9, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v2

    add-int/2addr v13, v2

    .line 65
    invoke-static {v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzagq;->zzl([BII)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagc;

    invoke-direct {v3, v8, v12, v10, v2}, Lcom/google/android/gms/internal/ads/zzagc;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object/from16 v8, p1

    move-object v7, v3

    move v3, v5

    :goto_25
    move v2, v14

    move v4, v15

    :goto_26
    move/from16 v12, v19

    goto/16 :goto_42

    :catchall_1
    move-exception v0

    move-object/from16 v8, p1

    move-object v1, v0

    :goto_27
    move/from16 v12, v19

    goto/16 :goto_45

    :catch_a
    move-exception v0

    :goto_28
    move-object/from16 v8, p1

    move v3, v5

    :goto_29
    move v2, v14

    move v4, v15

    :goto_2a
    move/from16 v12, v19

    goto/16 :goto_15

    :catch_b
    move-exception v0

    goto :goto_28

    :catchall_2
    move-exception v0

    move/from16 v19, v12

    move-object/from16 v8, p1

    :goto_2b
    move-object v1, v0

    goto/16 :goto_45

    :catch_c
    move-exception v0

    :goto_2c
    move/from16 v19, v12

    move-object/from16 v8, p1

    goto/16 :goto_1d

    :catch_d
    move-exception v0

    goto :goto_2c

    :goto_2d
    const/16 v2, 0x4d

    if-ne v9, v13, :cond_2b

    const/16 v7, 0x4f

    if-ne v14, v7, :cond_2b

    if-ne v15, v2, :cond_2b

    if-eq v5, v2, :cond_2a

    const/4 v7, 0x2

    if-ne v1, v7, :cond_2b

    :cond_2a
    const/4 v2, 0x4

    goto :goto_2e

    :cond_2b
    move-object/from16 v10, p1

    goto/16 :goto_33

    :goto_2e
    if-ge v6, v2, :cond_2c

    move-object/from16 v8, p1

    move v3, v5

    move v2, v14

    move v4, v15

    move/from16 v12, v19

    goto/16 :goto_f

    .line 66
    :cond_2c
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v2

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    move-result-object v3

    const/4 v4, 0x3

    new-array v7, v4, [B
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v10, p1

    const/4 v8, 0x0

    .line 68
    :try_start_16
    invoke-virtual {v10, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v8, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v4, v6, -0x4

    new-array v7, v4, [B

    .line 69
    invoke-virtual {v10, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 70
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v4

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v7, v8, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    move-result v8

    add-int/2addr v4, v8

    .line 71
    invoke-static {v7, v4, v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    move-result v2

    invoke-static {v7, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzh([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagk;

    invoke-direct {v3, v9, v11, v2}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    :goto_2f
    move v3, v5

    move-object v8, v10

    goto/16 :goto_25

    :catchall_3
    move-exception v0

    :goto_30
    move-object v1, v0

    move-object v8, v10

    goto/16 :goto_27

    :catch_e
    move-exception v0

    :goto_31
    move v3, v5

    move-object v8, v10

    goto :goto_29

    :catch_f
    move-exception v0

    goto :goto_31

    :catchall_4
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_30

    :catch_10
    move-exception v0

    :goto_32
    move-object/from16 v10, p1

    goto :goto_31

    :catch_11
    move-exception v0

    goto :goto_32

    :goto_33
    if-ne v9, v13, :cond_31

    const/16 v7, 0x48

    if-ne v14, v7, :cond_31

    if-ne v15, v8, :cond_31

    if-ne v5, v11, :cond_31

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v7

    .line 72
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v9

    sub-int v11, v7, v2

    .line 73
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v2, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/4 v9, 0x1

    add-int/2addr v7, v9

    .line 74
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    move-result v27

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    move-result v28

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    move-result-wide v11

    const-wide v20, 0xffffffffL

    cmp-long v7, v11, v20

    if-nez v7, :cond_2d

    const-wide/16 v29, -0x1

    goto :goto_34

    :cond_2d
    move-wide/from16 v29, v11

    .line 78
    :goto_34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    move-result-wide v11

    cmp-long v7, v11, v20

    if-nez v7, :cond_2e

    const-wide/16 v31, -0x1

    goto :goto_35

    :cond_2e
    move-wide/from16 v31, v11

    :goto_35
    new-instance v7, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v2, v6

    :cond_2f
    :goto_36
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v9

    if-ge v9, v2, :cond_30

    const/4 v9, 0x0

    .line 80
    invoke-static {v1, v10, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzagq;->zzf(ILcom/google/android/gms/internal/ads/zzfp;ZILcom/google/android/gms/internal/ads/zzago;)Lcom/google/android/gms/internal/ads/zzagr;

    move-result-object v11

    if-eqz v11, :cond_2f

    .line 81
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_30
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzagr;

    .line 82
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, [Lcom/google/android/gms/internal/ads/zzagr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagg;

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    invoke-direct/range {v25 .. v33}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzagr;)V
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object v7, v2

    goto/16 :goto_2f

    :cond_31
    if-ne v9, v13, :cond_37

    const/16 v7, 0x54

    if-ne v14, v7, :cond_37

    const/16 v7, 0x4f

    if-ne v15, v7, :cond_37

    if-ne v5, v13, :cond_37

    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v7

    .line 83
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v9

    sub-int v11, v7, v2

    .line 84
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v2, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v20, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 85
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v7

    const/4 v9, 0x2

    and-int/2addr v9, v7

    if-eqz v9, :cond_32

    const/16 v27, 0x1

    goto :goto_37

    :cond_32
    const/16 v27, 0x0

    :goto_37
    and-int/lit8 v7, v7, 0x1

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v9

    new-array v11, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_38
    if-ge v12, v9, :cond_33

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v13

    move/from16 p4, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v9

    .line 88
    invoke-static {v9, v13}, Lcom/google/android/gms/internal/ads/zzagq;->zzd([BI)I

    move-result v9
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move/from16 v16, v5

    :try_start_18
    new-instance v5, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_17
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move/from16 v17, v15

    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    move-result-object v15
    :try_end_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_15
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_14
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move/from16 v21, v14

    sub-int v14, v9, v13

    move-object/from16 v18, v8

    :try_start_1a
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v5, v15, v13, v14, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 89
    aput-object v5, v11, v12

    const/4 v5, 0x1

    add-int/2addr v9, v5

    .line 90
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    add-int/2addr v12, v5

    move/from16 v9, p4

    move/from16 v5, v16

    move/from16 v15, v17

    move-object/from16 v8, v18

    move/from16 v14, v21

    goto :goto_38

    :catch_12
    move-exception v0

    :goto_39
    move-object v5, v0

    move-object v8, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v12, v19

    move/from16 v2, v21

    goto/16 :goto_46

    :catch_13
    move-exception v0

    goto :goto_39

    :catch_14
    move-exception v0

    :goto_3a
    move/from16 v21, v14

    goto :goto_39

    :catch_15
    move-exception v0

    goto :goto_3a

    :catch_16
    move-exception v0

    :goto_3b
    move/from16 v21, v14

    move/from16 v17, v15

    goto :goto_39

    :catch_17
    move-exception v0

    goto :goto_3b

    :catch_18
    move-exception v0

    :goto_3c
    move/from16 v16, v5

    goto :goto_3b

    :catch_19
    move-exception v0

    goto :goto_3c

    :cond_33
    move/from16 v16, v5

    move-object/from16 v18, v8

    move/from16 v21, v14

    move/from16 v17, v15

    new-instance v5, Ljava/util/ArrayList;

    .line 91
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v2, v6

    :cond_34
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    move-result v8

    if-ge v8, v2, :cond_35

    const/4 v8, 0x0

    .line 92
    invoke-static {v1, v10, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzagq;->zzf(ILcom/google/android/gms/internal/ads/zzfp;ZILcom/google/android/gms/internal/ads/zzago;)Lcom/google/android/gms/internal/ads/zzagr;

    move-result-object v9

    if-eqz v9, :cond_34

    .line 93
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_35
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzagr;

    .line 94
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, [Lcom/google/android/gms/internal/ads/zzagr;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagi;

    const/4 v2, 0x1

    if-eq v2, v7, :cond_36

    const/16 v28, 0x0

    goto :goto_3e

    :cond_36
    const/16 v28, 0x1

    :goto_3e
    move-object/from16 v25, v4

    move-object/from16 v26, v18

    move-object/from16 v29, v11

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzagr;)V
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    move-object v7, v4

    move-object v8, v10

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v12, v19

    move/from16 v2, v21

    goto/16 :goto_42

    :cond_37
    move/from16 v16, v5

    move/from16 v21, v14

    move/from16 v17, v15

    if-ne v9, v2, :cond_3b

    move/from16 v2, v21

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_3a

    move/from16 v4, v17

    if-ne v4, v3, :cond_39

    move/from16 v3, v16

    const/16 v5, 0x54

    if-ne v3, v5, :cond_3c

    .line 95
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    move-result v12

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    move-result v13

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    move-result v14

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v5

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    move-result v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfo;

    .line 100
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfo;-><init>()V

    .line 101
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)V

    add-int/lit8 v9, v6, -0xa

    const/16 v11, 0x8

    mul-int/lit8 v9, v9, 0x8

    add-int v11, v5, v7

    .line 102
    div-int/2addr v9, v11

    .line 103
    new-array v15, v9, [I

    .line 104
    new-array v11, v9, [I

    const/4 v10, 0x0

    :goto_3f
    if-ge v10, v9, :cond_38

    .line 105
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    move-result v16

    .line 106
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    move-result v17

    .line 107
    aput v16, v15, v10

    .line 108
    aput v17, v11, v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    :catch_1a
    move-exception v0

    :goto_40
    move-object/from16 v8, p1

    move-object v5, v0

    move/from16 v12, v19

    goto :goto_46

    :catch_1b
    move-exception v0

    goto :goto_40

    :cond_38
    new-instance v5, Lcom/google/android/gms/internal/ads/zzagv;

    move-object v7, v11

    move-object v11, v5

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzagv;-><init>(III[I[I)V
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-object/from16 v8, p1

    move-object v7, v5

    goto/16 :goto_26

    :cond_39
    move/from16 v3, v16

    goto :goto_41

    :cond_3a
    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_41

    :cond_3b
    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v2, v21

    .line 109
    :cond_3c
    :goto_41
    :try_start_1c
    invoke-static {v1, v9, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzi(IIIII)Ljava/lang/String;

    move-result-object v5

    .line 110
    new-array v7, v6, [B
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1e
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 111
    :try_start_1d
    invoke-virtual {v8, v7, v9, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzage;

    invoke-direct {v9, v5, v7}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Ljava/lang/String;[B)V
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object v7, v9

    goto/16 :goto_26

    .line 112
    :goto_42
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    move-object v11, v7

    const/4 v5, 0x0

    goto :goto_47

    :catchall_5
    move-exception v0

    :goto_43
    move/from16 v12, v19

    goto/16 :goto_2b

    :catch_1c
    move-exception v0

    goto/16 :goto_2a

    :catch_1d
    move-exception v0

    goto/16 :goto_2a

    :catchall_6
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_43

    :catch_1e
    move-exception v0

    :goto_44
    move-object/from16 v8, p1

    goto/16 :goto_2a

    :catch_1f
    move-exception v0

    goto :goto_44

    :goto_45
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 113
    throw v1

    .line 114
    :goto_46
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    const/4 v11, 0x0

    :goto_47
    if-nez v11, :cond_3d

    move/from16 v7, v24

    .line 115
    invoke-static {v1, v7, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzagq;->zzi(IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_8

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_9

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    invoke-static {v1, v2, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_a

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzff;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    return-object v11

    .line 119
    :goto_48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_b

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v3, 0x8

    new-array v3, v3, [J

    fill-array-data v3, :array_c

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    const/4 v1, 0x0

    return-object v1

    :cond_3e
    move-object v8, v2

    move-object v1, v11

    .line 122
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    return-object v1

    nop

    :array_0
    .array-data 8
        0x6356090f6960d6c1L    # 3.326429568336371E170
        0x5129439e052fe35dL    # 9.585906120864603E82
        -0x5ab3ad984258762aL
    .end array-data

    :array_1
    .array-data 8
        -0x6c820316248ebeccL
        -0x7030a31f4aaed279L
        0x5a075c26aab013d8L    # 4.941518175717714E125
        -0x1c431acb9f9b1bd1L    # -2.7916772193482827E172
        -0x3d0bd3e5bff4c92cL    # -3.5487442434135725E14
        -0x349d5129cd13247cL    # -1.4315773315915347E55
    .end array-data

    :array_2
    .array-data 8
        -0x4cc0c5b9542691d2L    # -7.591018990330851E-62
        -0x73264804be66543fL    # -9.19585678065488E-247
    .end array-data

    :array_3
    .array-data 8
        0x1dc50bb73829a9c9L    # 2.855203679448545E-165
        0x1dab2abf887a45e0L    # 9.214119529240167E-166
    .end array-data

    :array_4
    .array-data 8
        0x520dbaaf499f58fL
        -0x7af44975a7d7f30L    # -3.53578348547494E271
    .end array-data

    :array_5
    .array-data 8
        -0xfddea8fddb2c587L    # -1.4037668532258668E232
        -0x3d3fe78e8bea8e40L    # -3.53943373851875E13
        0x262d3c05fa496af8L
    .end array-data

    :array_6
    .array-data 8
        -0xfa6d4f0931215d0L    # -1.5629636901620947E233
        0x5e91e82c6d2cca9eL    # 3.577659276408041E147
        -0x411bdedb66b69cf4L    # -9.598476745130358E-6
    .end array-data

    :array_7
    .array-data 8
        -0x7e7ea6ddba53c6a3L    # -2.023803062021497E-301
        0x48a2ec068fb051e8L    # 8.241682534038224E41
    .end array-data

    :array_8
    .array-data 8
        0x6ced3f39552de074L    # 5.041128388325316E216
        -0x21d0a22ce7c1d350L    # -4.895916654094216E145
        0x3df10f7774284aL
        -0x5991b41dd844fe9eL
        -0x3947a8be87ce0876L    # -4.936909424590801E32
    .end array-data

    :array_9
    .array-data 8
        -0x475a714fd95bdaa4L    # -8.108983341620023E-36
        0x5fbce8e4685bc829L    # 1.5141256921524182E153
        0x2773621b50cc3e1dL
    .end array-data

    :array_a
    .array-data 8
        0xebbad1e2e073537L
        -0x115acbd9d1a6bf60L    # -9.810668130976699E224
        0x5d8dec5ea9e05231L    # 4.561185503839349E142
    .end array-data

    :array_b
    .array-data 8
        0x57f5ab4f1626ad3eL    # 5.33630617436708E115
        0x7bc4cb3485c41571L    # 1.5831392178593148E288
        0xf0e653f34ac100eL
    .end array-data

    :array_c
    .array-data 8
        -0x4514a1edf273845fL    # -7.074323368765556E-25
        0x559c4488069fc22bL    # 2.5324973508086336E104
        0x69ccf61347193fedL    # 4.433677950305785E201
        0x6eb5d156d65c900fL    # 2.018953713745451E225
        0x34ef7559e50b7afcL    # 1.0263782861184906E-53
        -0x3d54cded0631b37dL    # -1.4950940337958256E13
        0x69c99a91c371d046L    # 3.919686350812599E201
        0x62dcfa64af5f0627L    # 1.70878525209598E168
    .end array-data
.end method

.method private static zzg([BII)Lcom/google/android/gms/internal/ads/zzgaa;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    array-length v2, p0

    .line 4
    if-lt p2, v2, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array p1, v1, [J

    .line 9
    .line 10
    const-wide v1, -0x78079b82ca0c8f0bL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    aput-wide v1, p1, v0

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfzx;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfzx;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_0
    if-ge p2, v3, :cond_1

    .line 39
    .line 40
    new-instance v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagq;->zzj(I)Ljava/nio/charset/Charset;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    sub-int v6, v3, p2

    .line 47
    .line 48
    invoke-direct {v4, p0, p2, v6, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfzx;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagq;->zzb(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    add-int/2addr p2, v3

    .line 59
    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzagq;->zzc([BII)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfzx;->zzi()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array p1, v1, [J

    .line 77
    .line 78
    const-wide v1, 0x586987ea5a6e74c2L    # 8.047755648736211E117

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    aput-wide v1, p1, v0

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_2
    return-object p0
.end method

.method private static zzh([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p1, 0x1

    new-array p1, p1, [J

    const-wide p2, 0x1a5d42949b41263fL

    const/4 v0, 0x0

    aput-wide p2, p1, v0

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(IIIII)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne p0, v3, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-array p4, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, p4, v1

    .line 24
    .line 25
    aput-object p2, p4, v0

    .line 26
    .line 27
    aput-object p3, p4, v3

    .line 28
    .line 29
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array p2, v3, [J

    .line 32
    .line 33
    fill-array-data p2, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    const/4 v4, 0x4

    .line 67
    new-array v4, v4, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object p1, v4, v1

    .line 70
    .line 71
    aput-object p2, v4, v0

    .line 72
    .line 73
    aput-object p3, v4, v3

    .line 74
    .line 75
    aput-object p4, v4, v2

    .line 76
    .line 77
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array p2, v3, [J

    .line 80
    .line 81
    fill-array-data p2, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :goto_0
    return-object p0

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        -0xc5181f51c6ce6c6L    # -1.7056007548809998E249
        0xbde663fb775d962L
    .end array-data

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
    :array_1
    .array-data 8
        0x2674d77ced79a5a7L
        -0x68922777f3049817L    # -7.985395555170685E-196
    .end array-data
.end method

.method private static zzj(I)Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzb:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzd:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfwq;->zzf:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzfp;IIZ)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    move/from16 v5, p2

    .line 15
    .line 16
    if-lt v3, v5, :cond_c

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    if-lt v0, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzo()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    int-to-long v8, v8

    .line 47
    const/4 v10, 0x0

    .line 48
    :goto_1
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    cmp-long v7, v8, v11

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    if-nez v10, :cond_1

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    const/4 v7, 0x4

    .line 61
    if-ne v0, v7, :cond_3

    .line 62
    .line 63
    if-nez p3, :cond_3

    .line 64
    .line 65
    const-wide/32 v13, 0x808080

    .line 66
    .line 67
    .line 68
    and-long/2addr v13, v8

    .line 69
    cmp-long v15, v13, v11

    .line 70
    .line 71
    if-eqz v15, :cond_2

    .line 72
    .line 73
    :goto_2
    const/4 v4, 0x0

    .line 74
    goto :goto_7

    .line 75
    :cond_2
    const-wide/16 v11, 0xff

    .line 76
    .line 77
    and-long v13, v8, v11

    .line 78
    .line 79
    const/16 v15, 0x8

    .line 80
    .line 81
    shr-long v15, v8, v15

    .line 82
    .line 83
    const/16 v17, 0x10

    .line 84
    .line 85
    shr-long v17, v8, v17

    .line 86
    .line 87
    const/16 v19, 0x18

    .line 88
    .line 89
    shr-long v8, v8, v19

    .line 90
    .line 91
    and-long/2addr v15, v11

    .line 92
    and-long v11, v17, v11

    .line 93
    .line 94
    const/16 v17, 0x7

    .line 95
    .line 96
    shl-long v15, v15, v17

    .line 97
    .line 98
    or-long/2addr v13, v15

    .line 99
    const/16 v15, 0xe

    .line 100
    .line 101
    shl-long/2addr v11, v15

    .line 102
    or-long/2addr v11, v13

    .line 103
    const/16 v13, 0x15

    .line 104
    .line 105
    shl-long/2addr v8, v13

    .line 106
    or-long/2addr v8, v11

    .line 107
    :cond_3
    if-ne v0, v7, :cond_5

    .line 108
    .line 109
    and-int/lit8 v3, v10, 0x40

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    const/4 v4, 0x0

    .line 115
    :goto_3
    and-int/lit8 v3, v10, 0x1

    .line 116
    .line 117
    move/from16 v20, v4

    .line 118
    .line 119
    move v4, v3

    .line 120
    move/from16 v3, v20

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_5
    if-ne v0, v3, :cond_8

    .line 124
    .line 125
    and-int/lit8 v3, v10, 0x20

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    const/4 v3, 0x0

    .line 132
    :goto_4
    and-int/lit16 v7, v10, 0x80

    .line 133
    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_7
    :goto_5
    const/4 v4, 0x0

    .line 138
    goto :goto_6

    .line 139
    :cond_8
    const/4 v3, 0x0

    .line 140
    goto :goto_5

    .line 141
    :goto_6
    if-eqz v4, :cond_9

    .line 142
    .line 143
    add-int/lit8 v3, v3, 0x4

    .line 144
    .line 145
    :cond_9
    int-to-long v3, v3

    .line 146
    cmp-long v7, v8, v3

    .line 147
    .line 148
    if-gez v7, :cond_a

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    int-to-long v3, v3

    .line 156
    cmp-long v7, v3, v8

    .line 157
    .line 158
    if-gez v7, :cond_b

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_b
    long-to-int v3, v8

    .line 162
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_c
    :goto_7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 168
    .line 169
    .line 170
    return v4

    .line 171
    :goto_8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method private static zzl([BII)[B
    .locals 0

    .line 1
    if-gt p2, p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
