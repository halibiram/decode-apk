.class final Lcom/google/android/gms/internal/ads/zzahr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaht;


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/ArrayDeque;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaia;

.field private zzd:Lcom/google/android/gms/internal/ads/zzahs;

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaia;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaia;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzaia;

    .line 23
    .line 24
    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzacv;I)J
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 7
    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, p2, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x8

    .line 14
    .line 15
    shl-long/2addr v2, p1

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 17
    .line 18
    aget-byte p1, p1, v1

    .line 19
    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-long v4, p1

    .line 23
    or-long/2addr v2, v4

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzahs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzaia;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaia;->zze()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x4

    .line 5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    .line 6
    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/google/android/gms/internal/ads/zzahq;

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(Lcom/google/android/gms/internal/ads/zzahq;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    cmp-long v4, v5, v7

    .line 29
    .line 30
    if-gez v4, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/ads/zzahq;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahq;->zza(Lcom/google/android/gms/internal/ads/zzahq;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahw;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahy;->zzh(I)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 56
    .line 57
    if-nez v4, :cond_6

    .line 58
    .line 59
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzaia;

    .line 60
    .line 61
    invoke-virtual {v4, p1, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzacv;ZZI)J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    const-wide/16 v6, -0x2

    .line 66
    .line 67
    cmp-long v8, v4, v6

    .line 68
    .line 69
    if-nez v8, :cond_4

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 75
    .line 76
    move-object v5, p1

    .line 77
    check-cast v5, Lcom/google/android/gms/internal/ads/zzack;

    .line 78
    .line 79
    invoke-virtual {v5, v4, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzm([BIIZ)Z

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 83
    .line 84
    aget-byte v4, v4, v1

    .line 85
    .line 86
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(I)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eq v4, v0, :cond_3

    .line 91
    .line 92
    if-gt v4, v3, :cond_3

    .line 93
    .line 94
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:[B

    .line 95
    .line 96
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzaia;->zzc([BIZ)J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    long-to-int v7, v6

    .line 101
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    .line 102
    .line 103
    check-cast v6, Lcom/google/android/gms/internal/ads/zzahw;

    .line 104
    .line 105
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 106
    .line 107
    const v6, 0x1549a966

    .line 108
    .line 109
    .line 110
    if-eq v7, v6, :cond_2

    .line 111
    .line 112
    const v6, 0x1f43b675

    .line 113
    .line 114
    .line 115
    if-eq v7, v6, :cond_2

    .line 116
    .line 117
    const v6, 0x1c53bb6b

    .line 118
    .line 119
    .line 120
    if-eq v7, v6, :cond_2

    .line 121
    .line 122
    const v6, 0x1654ae6b

    .line 123
    .line 124
    .line 125
    if-ne v7, v6, :cond_3

    .line 126
    .line 127
    const v7, 0x1654ae6b

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 131
    .line 132
    .line 133
    int-to-long v4, v7

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    :goto_3
    const-wide/16 v6, -0x1

    .line 140
    .line 141
    cmp-long v8, v4, v6

    .line 142
    .line 143
    if-nez v8, :cond_5

    .line 144
    .line 145
    return v1

    .line 146
    :cond_5
    long-to-int v5, v4

    .line 147
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    .line 148
    .line 149
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_6
    if-ne v4, v2, :cond_7

    .line 153
    .line 154
    :goto_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzc:Lcom/google/android/gms/internal/ads/zzaia;

    .line 155
    .line 156
    const/16 v5, 0x8

    .line 157
    .line 158
    invoke-virtual {v4, p1, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzacv;ZZI)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 163
    .line 164
    const/4 v4, 0x2

    .line 165
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 166
    .line 167
    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    .line 168
    .line 169
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    .line 170
    .line 171
    check-cast v4, Lcom/google/android/gms/internal/ads/zzahw;

    .line 172
    .line 173
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 174
    .line 175
    const-wide/16 v7, 0x8

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    sparse-switch v5, :sswitch_data_0

    .line 179
    .line 180
    .line 181
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 182
    .line 183
    long-to-int v5, v4

    .line 184
    move-object v4, p1

    .line 185
    check-cast v4, Lcom/google/android/gms/internal/ads/zzack;

    .line 186
    .line 187
    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 188
    .line 189
    .line 190
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :sswitch_0
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 195
    .line 196
    const-wide/16 v12, 0x4

    .line 197
    .line 198
    cmp-long v0, v10, v12

    .line 199
    .line 200
    if-eqz v0, :cond_9

    .line 201
    .line 202
    cmp-long v0, v10, v7

    .line 203
    .line 204
    if-nez v0, :cond_8

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v1, v3, [J

    .line 215
    .line 216
    fill-array-data v1, :array_0

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    throw p1

    .line 241
    :cond_9
    :goto_5
    long-to-int v0, v10

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzd(Lcom/google/android/gms/internal/ads/zzacv;I)J

    .line 243
    .line 244
    .line 245
    move-result-wide v6

    .line 246
    if-ne v0, v3, :cond_a

    .line 247
    .line 248
    long-to-int p1, v6

    .line 249
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    float-to-double v6, p1

    .line 254
    goto :goto_6

    .line 255
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 256
    .line 257
    .line 258
    move-result-wide v6

    .line 259
    :goto_6
    iget-object p1, v4, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 260
    .line 261
    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzahy;->zzi(ID)V

    .line 262
    .line 263
    .line 264
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 265
    .line 266
    return v2

    .line 267
    :sswitch_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 268
    .line 269
    long-to-int v0, v3

    .line 270
    invoke-virtual {v6, v5, v0, p1}, Lcom/google/android/gms/internal/ads/zzahy;->zzg(IILcom/google/android/gms/internal/ads/zzacv;)V

    .line 271
    .line 272
    .line 273
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 274
    .line 275
    return v2

    .line 276
    :sswitch_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 281
    .line 282
    add-long/2addr v6, v3

    .line 283
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzb:Ljava/util/ArrayDeque;

    .line 284
    .line 285
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahq;

    .line 286
    .line 287
    invoke-direct {v0, v5, v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(IJLcom/google/android/gms/internal/ads/zzahp;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzd:Lcom/google/android/gms/internal/ads/zzahs;

    .line 294
    .line 295
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzf:I

    .line 296
    .line 297
    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 298
    .line 299
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahw;

    .line 300
    .line 301
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 302
    .line 303
    move-wide v9, v3

    .line 304
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzahy;->zzk(IJJ)V

    .line 305
    .line 306
    .line 307
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 308
    .line 309
    return v2

    .line 310
    :sswitch_3
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 311
    .line 312
    const-wide/32 v10, 0x7fffffff

    .line 313
    .line 314
    .line 315
    cmp-long v8, v6, v10

    .line 316
    .line 317
    if-gtz v8, :cond_d

    .line 318
    .line 319
    long-to-int v3, v6

    .line 320
    if-nez v3, :cond_b

    .line 321
    .line 322
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 323
    .line 324
    new-array v0, v2, [J

    .line 325
    .line 326
    const-wide v6, -0x7eb41541697041fbL    # -2.035460393824064E-302

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    aput-wide v6, v0, v1

    .line 332
    .line 333
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    goto :goto_8

    .line 341
    :cond_b
    new-array v6, v3, [B

    .line 342
    .line 343
    check-cast p1, Lcom/google/android/gms/internal/ads/zzack;

    .line 344
    .line 345
    invoke-virtual {p1, v6, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzack;->zzn([BIIZ)Z

    .line 346
    .line 347
    .line 348
    :goto_7
    if-lez v3, :cond_c

    .line 349
    .line 350
    add-int/lit8 p1, v3, -0x1

    .line 351
    .line 352
    aget-byte v7, v6, p1

    .line 353
    .line 354
    if-nez v7, :cond_c

    .line 355
    .line 356
    move v3, p1

    .line 357
    goto :goto_7

    .line 358
    :cond_c
    new-instance p1, Ljava/lang/String;

    .line 359
    .line 360
    invoke-direct {p1, v6, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 361
    .line 362
    .line 363
    :goto_8
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 364
    .line 365
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzahy;->zzl(ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 369
    .line 370
    return v2

    .line 371
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 377
    .line 378
    new-array v1, v3, [J

    .line 379
    .line 380
    fill-array-data v1, :array_1

    .line 381
    .line 382
    .line 383
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    throw p1

    .line 405
    :sswitch_4
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzg:J

    .line 406
    .line 407
    cmp-long v0, v10, v7

    .line 408
    .line 409
    if-gtz v0, :cond_e

    .line 410
    .line 411
    long-to-int v0, v10

    .line 412
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzd(Lcom/google/android/gms/internal/ads/zzacv;I)J

    .line 413
    .line 414
    .line 415
    move-result-wide v6

    .line 416
    iget-object p1, v4, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzahy;

    .line 417
    .line 418
    invoke-virtual {p1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzahy;->zzj(IJ)V

    .line 419
    .line 420
    .line 421
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zze:I

    .line 422
    .line 423
    return v2

    .line 424
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 430
    .line 431
    new-array v1, v3, [J

    .line 432
    .line 433
    fill-array-data v1, :array_2

    .line 434
    .line 435
    .line 436
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    throw p1

    .line 458
    nop

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

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
    :array_0
    .array-data 8
        0x4c0934b7ec6da69L
        -0x10f5790532c2acefL    # -7.855235665815379E226
        -0x50b9ebceb5247c12L    # -5.818997330017231E-81
        -0x7ca5465c3c675a43L
    .end array-data

    .line 834
    .line 835
    .line 836
    .line 837
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
    :array_1
    .array-data 8
        -0xc29353ef314507fL    # -1.019903333467396E250
        -0x16315f85c9e92123L    # -4.6886699002520604E201
        0x71baf3287b11e653L    # 7.019605403372796E239
        0x299d4c45e19b3e6aL    # 3.118736436644943E-108
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
    .line 870
    .line 871
    .line 872
    .line 873
    :array_2
    .array-data 8
        -0x2c0af2cf4bc9a585L    # -2.8103614520826723E96
        0x5a891508952d9d34L    # 1.3582920122715588E128
        -0xa3e7549452fd44aL    # -1.685705466853797E259
        0x471b8f7841370452L    # 3.57754818290753E34
    .end array-data
.end method
