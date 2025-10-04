.class public final Lcom/google/android/gms/internal/ads/zzamr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzaea;

.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzam;

.field private zzk:I

.field private zzl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfo;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfo;->zza:[B

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_b

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    if-eq v1, v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzk:I

    .line 27
    .line 28
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 29
    .line 30
    sub-int/2addr v2, v5

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 36
    .line 37
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 41
    .line 42
    add-int/2addr v2, v1

    .line 43
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 44
    .line 45
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzk:I

    .line 46
    .line 47
    if-ne v2, v1, :cond_0

    .line 48
    .line 49
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    .line 50
    .line 51
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    cmp-long v7, v1, v5

    .line 57
    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 66
    .line 67
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    .line 68
    .line 69
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzk:I

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v8, 0x1

    .line 74
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 75
    .line 76
    .line 77
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    .line 78
    .line 79
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzi:J

    .line 80
    .line 81
    add-long/2addr v1, v5

    .line 82
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    .line 83
    .line 84
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 98
    .line 99
    const/16 v6, 0x10

    .line 100
    .line 101
    rsub-int/lit8 v5, v5, 0x10

    .line 102
    .line 103
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 108
    .line 109
    invoke-virtual {p1, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzG([BII)V

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 113
    .line 114
    add-int/2addr v1, v3

    .line 115
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 116
    .line 117
    if-ne v1, v6, :cond_0

    .line 118
    .line 119
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaby;->zza(Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzabx;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Lcom/google/android/gms/internal/ads/zzam;

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    .line 135
    .line 136
    if-ne v5, v2, :cond_3

    .line 137
    .line 138
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzabx;->zza:I

    .line 139
    .line 140
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 141
    .line 142
    if-ne v5, v7, :cond_3

    .line 143
    .line 144
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v7, v0, [J

    .line 149
    .line 150
    fill-array-data v7, :array_0

    .line 151
    .line 152
    .line 153
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_4

    .line 165
    .line 166
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzak;

    .line 167
    .line 168
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzd:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 174
    .line 175
    .line 176
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v7, v0, [J

    .line 179
    .line 180
    fill-array-data v7, :array_1

    .line 181
    .line 182
    .line 183
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 194
    .line 195
    .line 196
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzabx;->zza:I

    .line 197
    .line 198
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 199
    .line 200
    .line 201
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzc:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Lcom/google/android/gms/internal/ads/zzam;

    .line 211
    .line 212
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 213
    .line 214
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 215
    .line 216
    .line 217
    :cond_4
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabx;->zzb:I

    .line 218
    .line 219
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzk:I

    .line 220
    .line 221
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzabx;->zzc:I

    .line 222
    .line 223
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzj:Lcom/google/android/gms/internal/ads/zzam;

    .line 224
    .line 225
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 226
    .line 227
    int-to-long v7, v1

    .line 228
    const-wide/32 v9, 0xf4240

    .line 229
    .line 230
    .line 231
    mul-long v7, v7, v9

    .line 232
    .line 233
    int-to-long v9, v3

    .line 234
    div-long/2addr v7, v9

    .line 235
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzi:J

    .line 236
    .line 237
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 243
    .line 244
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 245
    .line 246
    invoke-interface {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzaea;->zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 247
    .line 248
    .line 249
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-lez v1, :cond_0

    .line 258
    .line 259
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Z

    .line 260
    .line 261
    const/16 v5, 0xac

    .line 262
    .line 263
    if-nez v1, :cond_7

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ne v1, v5, :cond_6

    .line 270
    .line 271
    const/4 v1, 0x1

    .line 272
    goto :goto_3

    .line 273
    :cond_6
    const/4 v1, 0x0

    .line 274
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Z

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-ne v1, v5, :cond_8

    .line 282
    .line 283
    const/4 v5, 0x1

    .line 284
    goto :goto_4

    .line 285
    :cond_8
    const/4 v5, 0x0

    .line 286
    :goto_4
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Z

    .line 287
    .line 288
    const/16 v5, 0x40

    .line 289
    .line 290
    const/16 v6, 0x41

    .line 291
    .line 292
    if-eq v1, v5, :cond_9

    .line 293
    .line 294
    if-ne v1, v6, :cond_5

    .line 295
    .line 296
    const/16 v1, 0x41

    .line 297
    .line 298
    :cond_9
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    .line 299
    .line 300
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzb:Lcom/google/android/gms/internal/ads/zzfp;

    .line 301
    .line 302
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    const/16 v9, -0x54

    .line 307
    .line 308
    aput-byte v9, v8, v4

    .line 309
    .line 310
    if-ne v1, v6, :cond_a

    .line 311
    .line 312
    const/16 v5, 0x41

    .line 313
    .line 314
    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    aput-byte v5, v1, v3

    .line 319
    .line 320
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_b
    return-void

    .line 325
    :array_0
    .array-data 8
        0x5843e94d69d28febL    # 1.5690932858674827E117
        -0x59df4379a40e7db9L    # -4.9448657798999E-125
        -0x7cba468acd29cad2L    # -6.803038191057476E-293
    .end array-data

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
    :array_1
    .array-data 8
        0x579c8f76416b44d8L
        -0x4fa46d5a8f571d95L    # -9.524946685684684E-76
        -0x24900c2835cd8489L    # -2.8350003240002544E132
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzd:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaok;->zza()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(II)Lcom/google/android/gms/internal/ads/zzaea;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zze:Lcom/google/android/gms/internal/ads/zzaea;

    .line 20
    .line 21
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzh:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzl:J

    return-void
.end method
