.class public final Lcom/google/android/gms/internal/ads/zzaos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzadb;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzd:I

.field private zze:J

.field private zzf:Lcom/google/android/gms/internal/ads/zzaoq;

.field private zzg:I

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaoo;->zza:Lcom/google/android/gms/internal/ads/zzaoo;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaos;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzadr;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x5

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x3

    .line 9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget v6, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 15
    .line 16
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    const/4 v8, 0x4

    .line 20
    const/4 v9, 0x1

    .line 21
    const/4 v10, 0x0

    .line 22
    if-eqz v6, :cond_f

    .line 23
    .line 24
    const-wide/16 v11, -0x1

    .line 25
    .line 26
    if-eq v6, v9, :cond_d

    .line 27
    .line 28
    if-eq v6, v4, :cond_5

    .line 29
    .line 30
    if-eq v6, v5, :cond_2

    .line 31
    .line 32
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    .line 33
    .line 34
    cmp-long v4, v2, v11

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v9, 0x0

    .line 40
    :goto_0
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 41
    .line 42
    .line 43
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v2, v4

    .line 50
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaoq;->zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    return v7

    .line 62
    :cond_1
    return v10

    .line 63
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzacv;)Landroid/util/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v6, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:I

    .line 76
    .line 77
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:J

    .line 86
    .line 87
    cmp-long v2, v13, v11

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    const-wide v15, 0xffffffffL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    cmp-long v2, v6, v15

    .line 97
    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    move-wide v6, v13

    .line 101
    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:I

    .line 102
    .line 103
    int-to-long v13, v2

    .line 104
    add-long/2addr v13, v6

    .line 105
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    .line 106
    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzd()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    cmp-long v6, v1, v11

    .line 112
    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    cmp-long v6, v13, v1

    .line 116
    .line 117
    if-lez v6, :cond_4

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v3, v3, [J

    .line 127
    .line 128
    fill-array-data v3, :array_0

    .line 129
    .line 130
    .line 131
    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v4, v4, [J

    .line 147
    .line 148
    fill-array-data v4, :array_1

    .line 149
    .line 150
    .line 151
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-static {v3, v6, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v5, v5, [J

    .line 161
    .line 162
    fill-array-data v5, :array_2

    .line 163
    .line 164
    .line 165
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:J

    .line 176
    .line 177
    move-wide v13, v1

    .line 178
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:I

    .line 184
    .line 185
    invoke-interface {v1, v2, v13, v14}, Lcom/google/android/gms/internal/ads/zzaoq;->zza(IJ)V

    .line 186
    .line 187
    .line 188
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 189
    .line 190
    return v10

    .line 191
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaov;->zzb(Lcom/google/android/gms/internal/ads/zzacv;)Lcom/google/android/gms/internal/ads/zzaot;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaot;->zza:I

    .line 196
    .line 197
    const/16 v6, 0x11

    .line 198
    .line 199
    if-ne v4, v6, :cond_6

    .line 200
    .line 201
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaop;

    .line 202
    .line 203
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 204
    .line 205
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 206
    .line 207
    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaop;-><init>(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzaot;)V

    .line 208
    .line 209
    .line 210
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_6
    const/4 v6, 0x6

    .line 215
    if-ne v4, v6, :cond_7

    .line 216
    .line 217
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaor;

    .line 218
    .line 219
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 220
    .line 221
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 222
    .line 223
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v7, v5, [J

    .line 226
    .line 227
    fill-array-data v7, :array_3

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
    move-result-object v19

    .line 237
    const/16 v20, -0x1

    .line 238
    .line 239
    move-object v15, v2

    .line 240
    move-object/from16 v16, v3

    .line 241
    .line 242
    move-object/from16 v17, v4

    .line 243
    .line 244
    move-object/from16 v18, v1

    .line 245
    .line 246
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzaot;Ljava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_7
    if-ne v4, v2, :cond_8

    .line 253
    .line 254
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaor;

    .line 255
    .line 256
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 257
    .line 258
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 259
    .line 260
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 261
    .line 262
    new-array v7, v5, [J

    .line 263
    .line 264
    fill-array-data v7, :array_4

    .line 265
    .line 266
    .line 267
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v19

    .line 274
    const/16 v20, -0x1

    .line 275
    .line 276
    move-object v15, v2

    .line 277
    move-object/from16 v16, v3

    .line 278
    .line 279
    move-object/from16 v17, v4

    .line 280
    .line 281
    move-object/from16 v18, v1

    .line 282
    .line 283
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzaot;Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_8
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaot;->zze:I

    .line 290
    .line 291
    if-eq v4, v9, :cond_b

    .line 292
    .line 293
    if-eq v4, v5, :cond_a

    .line 294
    .line 295
    const v6, 0xfffe

    .line 296
    .line 297
    .line 298
    if-eq v4, v6, :cond_b

    .line 299
    .line 300
    :cond_9
    const/16 v20, 0x0

    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_a
    const/16 v6, 0x20

    .line 304
    .line 305
    if-ne v2, v6, :cond_9

    .line 306
    .line 307
    const/16 v20, 0x4

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzk(I)I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    move/from16 v20, v8

    .line 315
    .line 316
    :goto_1
    if-eqz v20, :cond_c

    .line 317
    .line 318
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaor;

    .line 319
    .line 320
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 321
    .line 322
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 323
    .line 324
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    new-array v7, v5, [J

    .line 327
    .line 328
    fill-array-data v7, :array_5

    .line 329
    .line 330
    .line 331
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v19

    .line 338
    move-object v15, v2

    .line 339
    move-object/from16 v16, v3

    .line 340
    .line 341
    move-object/from16 v17, v4

    .line 342
    .line 343
    move-object/from16 v18, v1

    .line 344
    .line 345
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzaot;Ljava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 349
    .line 350
    :goto_2
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 351
    .line 352
    return v10

    .line 353
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v3, v3, [J

    .line 361
    .line 362
    fill-array-data v3, :array_6

    .line 363
    .line 364
    .line 365
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    throw v1

    .line 387
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 388
    .line 389
    const/16 v3, 0x8

    .line 390
    .line 391
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 392
    .line 393
    .line 394
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaou;->zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaou;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaou;->zza:I

    .line 399
    .line 400
    const v7, 0x64733634

    .line 401
    .line 402
    .line 403
    if-eq v6, v7, :cond_e

    .line 404
    .line 405
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 406
    .line 407
    .line 408
    goto :goto_3

    .line 409
    :cond_e
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 410
    .line 411
    invoke-virtual {v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzack;->zzl(IZ)Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    invoke-virtual {v1, v6, v10, v3, v10}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzr()J

    .line 425
    .line 426
    .line 427
    move-result-wide v11

    .line 428
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/zzaou;->zzb:J

    .line 429
    .line 430
    long-to-int v2, v5

    .line 431
    add-int/2addr v2, v3

    .line 432
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 433
    .line 434
    .line 435
    :goto_3
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:J

    .line 436
    .line 437
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 438
    .line 439
    return v10

    .line 440
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 441
    .line 442
    .line 443
    move-result-wide v3

    .line 444
    const-wide/16 v5, 0x0

    .line 445
    .line 446
    cmp-long v11, v3, v5

    .line 447
    .line 448
    if-nez v11, :cond_10

    .line 449
    .line 450
    const/4 v3, 0x1

    .line 451
    goto :goto_4

    .line 452
    :cond_10
    const/4 v3, 0x0

    .line 453
    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 454
    .line 455
    .line 456
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:I

    .line 457
    .line 458
    if-eq v3, v7, :cond_11

    .line 459
    .line 460
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 461
    .line 462
    invoke-virtual {v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 463
    .line 464
    .line 465
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaov;->zzc(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_12

    .line 473
    .line 474
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 475
    .line 476
    .line 477
    move-result-wide v2

    .line 478
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 479
    .line 480
    .line 481
    move-result-wide v4

    .line 482
    sub-long/2addr v2, v4

    .line 483
    check-cast v1, Lcom/google/android/gms/internal/ads/zzack;

    .line 484
    .line 485
    long-to-int v3, v2

    .line 486
    invoke-virtual {v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 487
    .line 488
    .line 489
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 490
    .line 491
    :goto_5
    return v10

    .line 492
    :cond_12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 493
    .line 494
    new-array v2, v2, [J

    .line 495
    .line 496
    fill-array-data v2, :array_7

    .line 497
    .line 498
    .line 499
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    const/4 v2, 0x0

    .line 507
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    throw v1

    .line 512
    nop

    .line 513
    :array_0
    .array-data 8
        0x374c7bee0659df3fL    # 2.554542502214366E-42
        -0x29f9909f547d2fc5L    # -2.572739964025892E106
        0x1d077aa67f3a754eL    # 7.776674884188658E-169
        0x5ba5f7fe1f211c06L
        -0x74bacd69944b3cfdL    # -2.2588142760399986E-254
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
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_1
    .array-data 8
        0x1ba5d17ba04ca836L    # 1.722952477745846E-175
        0x2022168b55aa0531L    # 6.745347066490184E-154
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
    :array_2
    .array-data 8
        -0x50b0befcfc2db1e7L    # -8.237133779287228E-81
        0x11bc158c8450e1a2L
        0x4196f31c0e393102L    # 9.625779555585101E7
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
    .line 562
    .line 563
    .line 564
    .line 565
    :array_3
    .array-data 8
        0x719f206fe8e6a4eeL    # 2.0268880427272632E239
        0xa1f0b8c848e477dL
        -0xfe12a0aef91e26cL
    .end array-data

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
    .line 578
    .line 579
    .line 580
    .line 581
    :array_4
    .array-data 8
        0x54caff5ac6dc4eb0L    # 2.9525127639140153E100
        -0x3e4d86bade559706L    # -3.099374416656643E8
        -0x72bbef33f2ef1069L    # -9.183452375014615E-245
    .end array-data

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
    :array_5
    .array-data 8
        -0x305309a4627a8a55L    # -6.550018221975533E75
        0x4c79525030ae89e0L    # 2.5431337316161268E60
        -0x4f4c392d7ee8742fL    # -4.372338659432063E-74
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
    .line 610
    .line 611
    .line 612
    .line 613
    :array_6
    .array-data 8
        -0x7876d6b336244d69L    # -2.325559690445168E-272
        0x38e0cb2ed69186a4L    # 1.010733056891839E-34
        0x4f27be68b6553286L    # 2.0975818666065837E73
        0x9822da042ef6094L
        0x2336c7702fcd5edfL
    .end array-data

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
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_7
    .array-data 8
        -0xc6592c1176d1171L    # -7.390946297709613E248
        0x1b16eb8c281e78adL    # 3.535079812190047E-178
        0x43c9ff6586c40933L    # 3.7466551989967519E18
        -0x6c37a9bf68b64daeL
        -0x709bedf0961ba38eL
        0x1d6b852275f43519L    # 5.833668485606476E-167
        -0x2ed87e62d591131L    # -2.948916970306644E294
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:Lcom/google/android/gms/internal/ads/zzacx;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzaea;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzD()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzd(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:Lcom/google/android/gms/internal/ads/zzaoq;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaoq;->zzb(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaov;->zzc(Lcom/google/android/gms/internal/ads/zzacv;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
