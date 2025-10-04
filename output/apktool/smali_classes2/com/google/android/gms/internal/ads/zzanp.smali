.class public final Lcom/google/android/gms/internal/ads/zzanp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaol;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfo;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfw;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfo;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:I

    return-void
.end method

.method private final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfp;[BI)Z
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x3

    .line 9
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanp;->zze:Lcom/google/android/gms/internal/ads/zzfw;

    .line 10
    .line 11
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    and-int/lit8 v7, p2, 0x1

    .line 16
    .line 17
    const/4 v8, -0x1

    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v7, :cond_4

    .line 21
    .line 22
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:I

    .line 23
    .line 24
    if-eqz v7, :cond_3

    .line 25
    .line 26
    if-eq v7, v6, :cond_3

    .line 27
    .line 28
    if-eq v7, v9, :cond_2

    .line 29
    .line 30
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 31
    .line 32
    if-eq v7, v8, :cond_0

    .line 33
    .line 34
    new-instance v11, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v13, v4, [J

    .line 42
    .line 43
    fill-array-data v13, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v12, v5, [J

    .line 62
    .line 63
    fill-array-data v12, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v7, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-static {v7, v11}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v12, v5, [J

    .line 76
    .line 77
    fill-array-data v12, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zze()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    const/4 v7, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v7, 0x0

    .line 99
    :goto_0
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 100
    .line 101
    invoke-interface {v11, v7}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v11, v5, [J

    .line 108
    .line 109
    fill-array-data v11, :array_3

    .line 110
    .line 111
    .line 112
    invoke-direct {v7, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v12, v3, [J

    .line 122
    .line 123
    fill-array-data v12, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-static {v7, v11}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_1
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzanp;->zzd(I)V

    .line 137
    .line 138
    .line 139
    :cond_4
    move/from16 v7, p2

    .line 140
    .line 141
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-lez v11, :cond_11

    .line 146
    .line 147
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:I

    .line 148
    .line 149
    if-eqz v11, :cond_10

    .line 150
    .line 151
    if-eq v11, v6, :cond_c

    .line 152
    .line 153
    if-eq v11, v9, :cond_8

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 160
    .line 161
    if-ne v12, v8, :cond_5

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    sub-int v12, v11, v12

    .line 166
    .line 167
    :goto_3
    if-lez v12, :cond_6

    .line 168
    .line 169
    sub-int/2addr v11, v12

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    add-int/2addr v12, v11

    .line 175
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzfp;->zzJ(I)V

    .line 176
    .line 177
    .line 178
    :cond_6
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 179
    .line 180
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Lcom/google/android/gms/internal/ads/zzfp;)V

    .line 181
    .line 182
    .line 183
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 184
    .line 185
    if-eq v12, v8, :cond_7

    .line 186
    .line 187
    sub-int/2addr v12, v11

    .line 188
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 189
    .line 190
    if-nez v12, :cond_7

    .line 191
    .line 192
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 193
    .line 194
    invoke-interface {v11, v10}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(Z)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzanp;->zzd(I)V

    .line 198
    .line 199
    .line 200
    :cond_7
    const/4 v2, -0x1

    .line 201
    const/4 v3, 0x0

    .line 202
    const/4 v4, 0x1

    .line 203
    const/4 v6, 0x5

    .line 204
    const/4 v8, 0x2

    .line 205
    const/16 v9, 0x8

    .line 206
    .line 207
    const/4 v10, 0x3

    .line 208
    const/4 v11, 0x6

    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :cond_8
    const/16 v11, 0xa

    .line 212
    .line 213
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzi:I

    .line 214
    .line 215
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 220
    .line 221
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    .line 222
    .line 223
    invoke-direct {v0, v1, v12, v11}, Lcom/google/android/gms/internal/ads/zzanp;->zze(Lcom/google/android/gms/internal/ads/zzfp;[BI)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_7

    .line 228
    .line 229
    const/4 v11, 0x0

    .line 230
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzi:I

    .line 231
    .line 232
    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzanp;->zze(Lcom/google/android/gms/internal/ads/zzfp;[BI)Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    if-eqz v11, :cond_7

    .line 237
    .line 238
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 239
    .line 240
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 241
    .line 242
    .line 243
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzf:Z

    .line 244
    .line 245
    const/4 v12, 0x4

    .line 246
    if-eqz v11, :cond_a

    .line 247
    .line 248
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 249
    .line 250
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 251
    .line 252
    .line 253
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 254
    .line 255
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    int-to-long v13, v11

    .line 260
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 261
    .line 262
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 263
    .line 264
    .line 265
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 266
    .line 267
    const/16 v15, 0xf

    .line 268
    .line 269
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    shl-int/2addr v11, v15

    .line 274
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 275
    .line 276
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 277
    .line 278
    .line 279
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 280
    .line 281
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    int-to-long v3, v4

    .line 286
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 287
    .line 288
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 289
    .line 290
    .line 291
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzh:Z

    .line 292
    .line 293
    const/16 v16, 0x1e

    .line 294
    .line 295
    if-nez v9, :cond_9

    .line 296
    .line 297
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzg:Z

    .line 298
    .line 299
    if-eqz v9, :cond_9

    .line 300
    .line 301
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 302
    .line 303
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 304
    .line 305
    .line 306
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 307
    .line 308
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    int-to-long v8, v9

    .line 313
    shl-long v8, v8, v16

    .line 314
    .line 315
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 316
    .line 317
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 318
    .line 319
    .line 320
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 321
    .line 322
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    shl-int/2addr v12, v15

    .line 327
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 328
    .line 329
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 333
    .line 334
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    move/from16 v17, v11

    .line 339
    .line 340
    int-to-long v10, v2

    .line 341
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 342
    .line 343
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zze:Lcom/google/android/gms/internal/ads/zzfw;

    .line 347
    .line 348
    int-to-long v5, v12

    .line 349
    or-long/2addr v5, v8

    .line 350
    or-long/2addr v5, v10

    .line 351
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzfw;->zzb(J)J

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x1

    .line 355
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzh:Z

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_9
    move/from16 v17, v11

    .line 359
    .line 360
    :goto_4
    shl-long v5, v13, v16

    .line 361
    .line 362
    move/from16 v2, v17

    .line 363
    .line 364
    int-to-long v8, v2

    .line 365
    or-long/2addr v5, v8

    .line 366
    or-long v2, v5, v3

    .line 367
    .line 368
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanp;->zze:Lcom/google/android/gms/internal/ads/zzfw;

    .line 369
    .line 370
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzfw;->zzb(J)J

    .line 371
    .line 372
    .line 373
    move-result-wide v2

    .line 374
    goto :goto_5

    .line 375
    :cond_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    :goto_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzk:Z

    .line 381
    .line 382
    const/4 v5, 0x1

    .line 383
    if-eq v5, v4, :cond_b

    .line 384
    .line 385
    const/4 v12, 0x0

    .line 386
    goto :goto_6

    .line 387
    :cond_b
    const/4 v12, 0x4

    .line 388
    :goto_6
    or-int/2addr v7, v12

    .line 389
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 390
    .line 391
    invoke-interface {v4, v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(JI)V

    .line 392
    .line 393
    .line 394
    const/4 v2, 0x3

    .line 395
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzanp;->zzd(I)V

    .line 396
    .line 397
    .line 398
    :goto_7
    const/16 v3, 0x8

    .line 399
    .line 400
    const/4 v4, 0x6

    .line 401
    const/4 v5, 0x3

    .line 402
    const/4 v6, 0x1

    .line 403
    const/4 v8, -0x1

    .line 404
    const/4 v9, 0x2

    .line 405
    const/4 v10, 0x0

    .line 406
    goto/16 :goto_2

    .line 407
    .line 408
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 409
    .line 410
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    .line 411
    .line 412
    const/16 v3, 0x9

    .line 413
    .line 414
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzanp;->zze(Lcom/google/android/gms/internal/ads/zzfp;[BI)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_7

    .line 419
    .line 420
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 421
    .line 422
    const/4 v3, 0x0

    .line 423
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 427
    .line 428
    const/16 v4, 0x18

    .line 429
    .line 430
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    const/4 v4, 0x1

    .line 435
    if-eq v2, v4, :cond_d

    .line 436
    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 443
    .line 444
    const/4 v8, 0x5

    .line 445
    new-array v9, v8, [J

    .line 446
    .line 447
    fill-array-data v9, :array_5

    .line 448
    .line 449
    .line 450
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 451
    .line 452
    .line 453
    invoke-static {v6, v5, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 458
    .line 459
    const/4 v6, 0x3

    .line 460
    new-array v8, v6, [J

    .line 461
    .line 462
    fill-array-data v8, :array_6

    .line 463
    .line 464
    .line 465
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const/4 v2, -0x1

    .line 476
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 477
    .line 478
    const/4 v5, 0x0

    .line 479
    const/4 v6, 0x5

    .line 480
    const/4 v8, 0x2

    .line 481
    const/16 v9, 0x8

    .line 482
    .line 483
    :goto_8
    const/4 v10, 0x3

    .line 484
    const/4 v11, 0x6

    .line 485
    goto/16 :goto_a

    .line 486
    .line 487
    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 488
    .line 489
    const/16 v5, 0x8

    .line 490
    .line 491
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 495
    .line 496
    const/16 v5, 0x10

    .line 497
    .line 498
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    const/4 v6, 0x5

    .line 503
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 507
    .line 508
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzk:Z

    .line 513
    .line 514
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 515
    .line 516
    const/4 v8, 0x2

    .line 517
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 518
    .line 519
    .line 520
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 521
    .line 522
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzf:Z

    .line 527
    .line 528
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzg:Z

    .line 535
    .line 536
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 537
    .line 538
    const/4 v9, 0x6

    .line 539
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 540
    .line 541
    .line 542
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzfo;

    .line 543
    .line 544
    const/16 v9, 0x8

    .line 545
    .line 546
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzi:I

    .line 551
    .line 552
    if-nez v5, :cond_e

    .line 553
    .line 554
    const/4 v10, -0x1

    .line 555
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 556
    .line 557
    const/4 v2, -0x1

    .line 558
    const/4 v5, 0x2

    .line 559
    goto :goto_8

    .line 560
    :cond_e
    add-int/lit8 v5, v5, -0x3

    .line 561
    .line 562
    sub-int/2addr v5, v2

    .line 563
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 564
    .line 565
    if-gez v5, :cond_f

    .line 566
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 573
    .line 574
    const/4 v11, 0x6

    .line 575
    new-array v12, v11, [J

    .line 576
    .line 577
    fill-array-data v12, :array_7

    .line 578
    .line 579
    .line 580
    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 581
    .line 582
    .line 583
    invoke-static {v10, v2, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 588
    .line 589
    const/4 v10, 0x3

    .line 590
    new-array v12, v10, [J

    .line 591
    .line 592
    fill-array-data v12, :array_8

    .line 593
    .line 594
    .line 595
    invoke-direct {v5, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    const/4 v2, -0x1

    .line 606
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzanp;->zzj:I

    .line 607
    .line 608
    :goto_9
    const/4 v5, 0x2

    .line 609
    goto :goto_a

    .line 610
    :cond_f
    const/4 v2, -0x1

    .line 611
    const/4 v10, 0x3

    .line 612
    const/4 v11, 0x6

    .line 613
    goto :goto_9

    .line 614
    :goto_a
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzanp;->zzd(I)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_7

    .line 618
    .line 619
    :cond_10
    const/4 v2, -0x1

    .line 620
    const/4 v3, 0x0

    .line 621
    const/4 v4, 0x1

    .line 622
    const/4 v6, 0x5

    .line 623
    const/4 v8, 0x2

    .line 624
    const/16 v9, 0x8

    .line 625
    .line 626
    const/4 v10, 0x3

    .line 627
    const/4 v11, 0x6

    .line 628
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 629
    .line 630
    .line 631
    move-result v5

    .line 632
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_7

    .line 636
    .line 637
    :cond_11
    return-void

    .line 638
    nop

    .line 639
    :array_0
    .array-data 8
        0x7fe9ba2caeae3792L    # 1.4453028266975361E308
        0x7c53eb41eb5d293cL    # 7.764666490511836E290
        -0x7d78cdc2540fcf6dL
        0x237cd677cc518d3aL    # 9.686426783748883E-138
        0x24cf5616ada28aefL
        -0x2535df6d85fed572L    # -2.2638185259012058E129
    .end array-data

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
    :array_1
    .array-data 8
        0x5a202861a5e87798L    # 1.3671898193275285E126
        -0x377da06a81aca47fL    # -2.0006833531507993E41
        0x434a62db40672f2cL    # 1.4854086424682072E16
    .end array-data

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
    :array_2
    .array-data 8
        0x3e18b887afa68f98L    # 1.4389411317019699E-9
        -0x5103a52667b9691aL    # -2.335334269018459E-82
        -0x77c69463fc214fafL    # -4.811775979794979E-269
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
    .line 696
    .line 697
    .line 698
    .line 699
    :array_3
    .array-data 8
        -0x1fe12934b2cd5cbaL
        0x1cecd40ea56d707bL    # 2.387108796255545E-169
        -0x5ecb7fe8455c5e1cL
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
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
    :array_4
    .array-data 8
        -0x333817590c24b474L    # -7.683991257109419E61
        0x71ffd5288550db7aL
        -0x6e444b1de8190c34L
        -0x2ded2ba5c35b3df9L    # -2.341087206926148E87
        -0x532277d620f403ddL    # -1.415769558997314E-92
        0x23552511ab319e37L
        0x749ecccad17fd56dL    # 5.6452951982136774E253
        -0xf88bfbba1250fb7L    # -5.775626450043378E233
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
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
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_5
    .array-data 8
        0x1c1a2fbbddf70463L
        -0xb287250c5ef1f19L    # -6.907342178989302E254
        -0x402094291568c671L    # -0.49095700177431295
        -0x31193ee360108324L    # -1.2563576309917384E72
        0x1b7881891eec3cfaL
    .end array-data

    .line 752
    .line 753
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
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_6
    .array-data 8
        0x513ff13bd09fa525L    # 2.4239589600195082E83
        0x6a0e4a8084bfb845L    # 7.419609483517459E202
        0x5a8594201ce237b1L    # 1.16856195038094E128
    .end array-data

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
    :array_7
    .array-data 8
        0x4ac58ff55e9d2f9eL    # 1.6134856698261972E52
        0x1fcf1833481249bL
        0x6cfce8aba52e816fL    # 9.965704329187064E216
        0x40306ef4c68057fL
        0x5e6df0cfe3d6f0abL    # 7.4773799902887435E146
        0x22c713f7bc671c24L    # 3.785037534781687E-141
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
    :array_8
    .array-data 8
        0xdda5d5a16a551deL
        -0x6de78beb1f07c019L
        -0xd7e4aefcbb71c15L    # -3.778316436862404E243
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zze:Lcom/google/android/gms/internal/ads/zzfw;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzd:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzh:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzamy;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zze()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
