.class final Lcom/google/android/gms/internal/ads/zzaer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaej;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzgaa;

.field private final zzb:I


# direct methods
.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzgaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    return-void
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaer;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x7

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x3

    .line 7
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfzx;

    .line 8
    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfzx;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v7, -0x2

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const/16 v9, 0x8

    .line 22
    .line 23
    if-le v8, v9, :cond_11

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    add-int/2addr v10, v9

    .line 38
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 39
    .line 40
    .line 41
    const v9, 0x5453494c

    .line 42
    .line 43
    .line 44
    const/4 v11, 0x2

    .line 45
    const/4 v12, 0x1

    .line 46
    if-ne v8, v9, :cond_0

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzaer;->zzc(ILcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_0
    sparse-switch v8, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 v8, 0x0

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :sswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaet;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaet;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :sswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaep;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaep;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :sswitch_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaeo;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaeo;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :sswitch_3
    if-ne v7, v11, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sparse-switch v14, :sswitch_data_1

    .line 103
    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    goto :goto_3

    .line 107
    :sswitch_4
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v9, v4, [J

    .line 110
    .line 111
    fill-array-data v9, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    goto :goto_3

    .line 122
    :sswitch_5
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v15, v4, [J

    .line 125
    .line 126
    fill-array-data v15, :array_1

    .line 127
    .line 128
    .line 129
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    goto :goto_3

    .line 137
    :sswitch_6
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v15, v4, [J

    .line 140
    .line 141
    fill-array-data v15, :array_2

    .line 142
    .line 143
    .line 144
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :sswitch_7
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v15, v4, [J

    .line 151
    .line 152
    fill-array-data v15, :array_3

    .line 153
    .line 154
    .line 155
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :sswitch_8
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 160
    .line 161
    new-array v15, v4, [J

    .line 162
    .line 163
    fill-array-data v15, :array_4

    .line 164
    .line 165
    .line 166
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :goto_3
    if-nez v9, :cond_1

    .line 171
    .line 172
    new-instance v8, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v13, v2, [J

    .line 180
    .line 181
    fill-array-data v13, :array_5

    .line 182
    .line 183
    .line 184
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-static {v9, v8, v14}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v13, v3, [J

    .line 194
    .line 195
    fill-array-data v13, :array_6

    .line 196
    .line 197
    .line 198
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_1
    new-instance v14, Lcom/google/android/gms/internal/ads/zzak;

    .line 211
    .line 212
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 222
    .line 223
    .line 224
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaes;

    .line 225
    .line 226
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_6

    .line 234
    .line 235
    :cond_2
    if-ne v7, v12, :cond_b

    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eq v8, v12, :cond_7

    .line 242
    .line 243
    const/16 v9, 0x55

    .line 244
    .line 245
    if-eq v8, v9, :cond_6

    .line 246
    .line 247
    const/16 v9, 0xff

    .line 248
    .line 249
    if-eq v8, v9, :cond_5

    .line 250
    .line 251
    const/16 v9, 0x2000

    .line 252
    .line 253
    if-eq v8, v9, :cond_4

    .line 254
    .line 255
    const/16 v9, 0x2001

    .line 256
    .line 257
    if-eq v8, v9, :cond_3

    .line 258
    .line 259
    const/4 v9, 0x0

    .line 260
    goto :goto_5

    .line 261
    :cond_3
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array v13, v4, [J

    .line 264
    .line 265
    fill-array-data v13, :array_7

    .line 266
    .line 267
    .line 268
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    :goto_4
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    goto :goto_5

    .line 276
    :cond_4
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v13, v4, [J

    .line 279
    .line 280
    fill-array-data v13, :array_8

    .line 281
    .line 282
    .line 283
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_5
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v13, v4, [J

    .line 290
    .line 291
    fill-array-data v13, :array_9

    .line 292
    .line 293
    .line 294
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_6
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v13, v4, [J

    .line 301
    .line 302
    fill-array-data v13, :array_a

    .line 303
    .line 304
    .line 305
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_7
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 310
    .line 311
    new-array v13, v4, [J

    .line 312
    .line 313
    fill-array-data v13, :array_b

    .line 314
    .line 315
    .line 316
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :goto_5
    if-nez v9, :cond_8

    .line 321
    .line 322
    new-instance v9, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v14, v2, [J

    .line 330
    .line 331
    fill-array-data v14, :array_c

    .line 332
    .line 333
    .line 334
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-static {v13, v9, v8}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v13, v3, [J

    .line 344
    .line 345
    fill-array-data v13, :array_d

    .line 346
    .line 347
    .line 348
    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzi()I

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 372
    .line 373
    .line 374
    move-result v14

    .line 375
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfy;->zzk(I)I

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzk()I

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    new-array v11, v15, [B

    .line 384
    .line 385
    const/4 v12, 0x0

    .line 386
    invoke-virtual {v0, v11, v12, v15}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 387
    .line 388
    .line 389
    new-instance v12, Lcom/google/android/gms/internal/ads/zzak;

    .line 390
    .line 391
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 401
    .line 402
    .line 403
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v13, v4, [J

    .line 406
    .line 407
    fill-array-data v13, :array_e

    .line 408
    .line 409
    .line 410
    invoke-direct {v8, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v8

    .line 421
    if-eqz v8, :cond_9

    .line 422
    .line 423
    if-eqz v14, :cond_9

    .line 424
    .line 425
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 426
    .line 427
    .line 428
    :cond_9
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 429
    .line 430
    new-array v13, v4, [J

    .line 431
    .line 432
    fill-array-data v13, :array_f

    .line 433
    .line 434
    .line 435
    invoke-direct {v8, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    if-eqz v8, :cond_a

    .line 447
    .line 448
    if-lez v15, :cond_a

    .line 449
    .line 450
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 455
    .line 456
    .line 457
    :cond_a
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaes;

    .line 458
    .line 459
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 464
    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_b
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 468
    .line 469
    new-array v9, v2, [J

    .line 470
    .line 471
    fill-array-data v9, :array_10

    .line 472
    .line 473
    .line 474
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfy;->zzB(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v9

    .line 485
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 486
    .line 487
    new-array v12, v3, [J

    .line 488
    .line 489
    fill-array-data v12, :array_11

    .line 490
    .line 491
    .line 492
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v11

    .line 499
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    invoke-static {v11, v8}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_1

    .line 507
    .line 508
    :goto_6
    if-eqz v8, :cond_10

    .line 509
    .line 510
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaej;->zza()I

    .line 511
    .line 512
    .line 513
    move-result v9

    .line 514
    const v11, 0x68727473

    .line 515
    .line 516
    .line 517
    if-ne v9, v11, :cond_f

    .line 518
    .line 519
    move-object v7, v8

    .line 520
    check-cast v7, Lcom/google/android/gms/internal/ads/zzaep;

    .line 521
    .line 522
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzaep;->zza:I

    .line 523
    .line 524
    const v9, 0x73646976

    .line 525
    .line 526
    .line 527
    if-eq v7, v9, :cond_e

    .line 528
    .line 529
    const v9, 0x73647561

    .line 530
    .line 531
    .line 532
    if-eq v7, v9, :cond_d

    .line 533
    .line 534
    const v9, 0x73747874

    .line 535
    .line 536
    .line 537
    if-eq v7, v9, :cond_c

    .line 538
    .line 539
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 548
    .line 549
    new-array v11, v1, [J

    .line 550
    .line 551
    fill-array-data v11, :array_12

    .line 552
    .line 553
    .line 554
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v9

    .line 561
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 562
    .line 563
    new-array v12, v3, [J

    .line 564
    .line 565
    fill-array-data v12, :array_13

    .line 566
    .line 567
    .line 568
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    const/4 v7, -0x1

    .line 583
    goto :goto_7

    .line 584
    :cond_c
    const/4 v7, 0x3

    .line 585
    goto :goto_7

    .line 586
    :cond_d
    const/4 v7, 0x1

    .line 587
    goto :goto_7

    .line 588
    :cond_e
    const/4 v7, 0x2

    .line 589
    :cond_f
    :goto_7
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzfzx;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 590
    .line 591
    .line 592
    :cond_10
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_0

    .line 599
    .line 600
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaer;

    .line 601
    .line 602
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfzx;->zzi()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    move/from16 v2, p0

    .line 607
    .line 608
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>(ILcom/google/android/gms/internal/ads/zzgaa;)V

    .line 609
    .line 610
    .line 611
    return-object v0

    .line 612
    nop

    .line 613
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

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
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch

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
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
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
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_0
    .array-data 8
        0x2617f3280d13cacbL    # 3.538052275058657E-125
        0x24408da42f4d9ca3L    # 4.554871928965281E-134
        -0x49231d9c35769560L    # -2.023778727397174E-44
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
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
    :array_1
    .array-data 8
        -0x1639ed86f5bd999eL
        -0x65e3b5bd7a86a4e9L    # -6.657892562373803E-183
        0x4804614fe1b96340L    # 8.668746529614772E38
    .end array-data

    .line 706
    .line 707
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
    .line 720
    .line 721
    :array_2
    .array-data 8
        -0x206000d999b3a153L    # -4.189505230123399E152
        -0x65a403fa3bd24bd9L
        0x58f1e2e2e9dc6e34L    # 2.8866769528679605E120
    .end array-data

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
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :array_3
    .array-data 8
        0x61d867559d56d10cL
        0x6cfd601afbd2f36eL    # 1.0126534764652733E217
        -0x1ffc6fd9318656c8L
    .end array-data

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
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_4
    .array-data 8
        0x1a6cc2367725173aL
        0x6dc876c683aa179L
        -0x8195acd4fb81f7bL    # -3.738559570974259E269
    .end array-data

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
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_5
    .array-data 8
        -0x4d56177a38d650b3L    # -1.2300696756041861E-64
        0x3df50b402c5ca1bdL    # 3.0622974673565316E-10
        0x63877f65cbe2a5a1L    # 2.8377355840469195E171
        -0x569cdc2c4d3664b7L    # -2.546785444652924E-109
        -0x26fe1c0cf5bd1e9cL    # -5.774694197302403E120
        0x2c891adb6339291aL    # 3.7610580464070295E-94
        0x20712901c485ac66L
    .end array-data

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
    :array_6
    .array-data 8
        -0x4e7b7a2a348cb443L    # -3.7169566344974917E-70
        -0x2abcd47b950496dbL    # -5.366985339085113E102
        0x48105124135cd9edL    # 1.3880931634506798E39
        -0x1873b49a808e1bffL    # -6.303323038331741E190
    .end array-data

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
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_7
    .array-data 8
        0x6aed8147c6c8d165L    # 1.1840844537409452E207
        0x496e5354bff05d4fL    # 5.410252116301337E45
        0x3aa2e282dd3859cL
    .end array-data

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
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_8
    .array-data 8
        0x675b40410d891315L    # 7.588564186816707E189
        0x280ed8fc33f5c4f7L    # 9.786176292060866E-116
        -0x2b5ef5fb83f9b38eL    # -4.658606433882865E99
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
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
    :array_9
    .array-data 8
        0xac95f3d68d17825L    # 1.0561094701129994E-256
        0x763461be3863c3c3L    # 2.50702679940979E261
        0x26c5bcb2cd76cdL
    .end array-data

    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
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
    :array_a
    .array-data 8
        0x28c16b9f2a5ee3bbL
        0x6b40393d429ef8cdL    # 4.166908862706848E208
        0x6ee2daffca1259ecL    # 1.3958669368174316E226
    .end array-data

    .line 870
    .line 871
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
    :array_b
    .array-data 8
        0x72d17133e4e088acL    # 1.1909614449438757E245
        0xf675d88a086e9bL
        -0x5cb64b920fd95456L
    .end array-data

    .line 886
    .line 887
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
    .line 900
    .line 901
    :array_c
    .array-data 8
        0x4408783a7733b0eL
        -0x143cdb648b4ce34L
        0x70731fd1bafe98aeL    # 4.750529985688122E233
        -0x3289ac939947e61cL    # -1.4694930189749855E65
        0x29733b98ae62c975L    # 5.118280221214551E-109
        0x28705ec06f123d98L    # 6.64742753504181E-114
        -0x6936ef96d0c7539bL    # -6.548850492960729E-199
    .end array-data

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
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    :array_d
    .array-data 8
        -0x30d045ee5ac685ffL    # -2.802822977394946E73
        0x79eeed6d56663b34L    # 2.1929569484189893E279
        0x4a922e13127b65e2L    # 1.7004843757813904E51
        0x31d7bef0214f0c68L    # 1.3762227935702349E-68
    .end array-data

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
    :array_e
    .array-data 8
        -0x30720d69f6111f39L    # -1.6932106410424283E75
        0x5467c1fe3c9f9564L    # 4.059705762795042E98
        0x5fbcaa7b5d53a6efL    # 1.5013573565074167E153
    .end array-data

    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
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
    :array_f
    .array-data 8
        -0x1e6fccebb4a334a7L    # -9.110035232955298E161
        0x42f4e7e02fcd2bd5L    # 3.677780996799333E14
        0x6dbe40e331dbd71aL    # 4.2718106153962855E220
    .end array-data

    .line 970
    .line 971
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
    .line 984
    .line 985
    :array_10
    .array-data 8
        0x2c6d7ccc59198512L    # 1.1044071937828286E-94
        0x229e5c80a67dee1fL
        0x25cdda89a164def0L
        -0xd7812c6a783b4b4L    # -5.105385259938797E243
        -0x38e5aae85baefcf0L    # -3.41813990598582E34
        -0x345bd5d09d1aae2aL    # -2.4721955159795105E56
        -0x12d17f627320faf2L    # -8.412032689929463E217
    .end array-data

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
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    :array_11
    .array-data 8
        0x67cc6a251342005fL    # 1.0128129214021922E192
        0x1fde2501521d34fbL    # 3.512942743031605E-155
        0x1bef96a54d1bf14L
        -0x8de1f5f40370567L    # -7.205627872240839E265
    .end array-data

    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    :array_12
    .array-data 8
        0x477148c659100d45L    # 1.4359215172208666E36
        -0x61c1454e7d791ba1L    # -5.336230950858021E-163
        -0x60c9582bbfa4d339L    # -2.578324178619138E-158
        -0x54f95eb8440f85adL    # -2.020766063196867E-101
        -0x6cf0c35ae2cf31a1L    # -7.079147884525545E-217
        -0xb17b2332782fccbL    # -1.4254843000616743E255
    .end array-data

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    :array_13
    .array-data 8
        -0x226d1c824140dbd7L    # -5.758357093089083E142
        0x5aab2095ab8d73deL    # 5.876171690172238E128
        0x9e43f8e6f71a676L
        0x35f73c78bb66b296L    # 9.936790623060315E-49
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zzb:I

    return v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaej;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaer;->zza:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/zzaej;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method
