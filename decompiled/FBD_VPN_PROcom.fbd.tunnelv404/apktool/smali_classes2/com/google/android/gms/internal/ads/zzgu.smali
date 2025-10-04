.class public final Lcom/google/android/gms/internal/ads/zzgu;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:I

.field private zzd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 16
    .line 17
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzc:I

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzc:I

    .line 25
    .line 26
    add-int/2addr p1, p3

    .line 27
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzc:I

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 30
    .line 31
    sub-int/2addr p1, p3

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 35
    .line 36
    .line 37
    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    new-array v4, v3, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    new-array v6, v5, [J

    .line 43
    .line 44
    fill-array-data v6, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzek;->zze(ZLjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v4, v3, [J

    .line 70
    .line 71
    fill-array-data v4, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v4, -0x1

    .line 82
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    array-length v2, v1

    .line 87
    const/4 v4, 0x0

    .line 88
    if-ne v2, v3, :cond_4

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    aget-object v0, v1, v0

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    aget-object v1, v1, v2

    .line 95
    .line 96
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v3, v3, [J

    .line 99
    .line 100
    fill-array-data v3, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    .line 116
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    const/4 v2, 0x7

    .line 131
    new-array v2, v2, [J

    .line 132
    .line 133
    fill-array-data v2, :array_4

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    throw p1

    .line 152
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Ljava/nio/charset/Charset;

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 169
    .line 170
    :goto_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 171
    .line 172
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 173
    .line 174
    array-length v2, v2

    .line 175
    int-to-long v5, v2

    .line 176
    cmp-long v3, v0, v5

    .line 177
    .line 178
    if-gtz v3, :cond_3

    .line 179
    .line 180
    long-to-int v1, v0

    .line 181
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzc:I

    .line 182
    .line 183
    sub-int/2addr v2, v1

    .line 184
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 185
    .line 186
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 187
    .line 188
    const-wide/16 v3, -0x1

    .line 189
    .line 190
    cmp-long v5, v0, v3

    .line 191
    .line 192
    if-eqz v5, :cond_1

    .line 193
    .line 194
    int-to-long v5, v2

    .line 195
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    long-to-int v1, v0

    .line 200
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 201
    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 203
    .line 204
    .line 205
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 206
    .line 207
    cmp-long p1, v0, v3

    .line 208
    .line 209
    if-eqz p1, :cond_2

    .line 210
    .line 211
    return-wide v0

    .line 212
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzd:I

    .line 213
    .line 214
    int-to-long v0, p1

    .line 215
    return-wide v0

    .line 216
    :cond_3
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 217
    .line 218
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgx;

    .line 219
    .line 220
    const/16 v0, 0x7d8

    .line 221
    .line 222
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(I)V

    .line 223
    .line 224
    .line 225
    throw p1

    .line 226
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v1, v5, [J

    .line 233
    .line 234
    fill-array-data v1, :array_5

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    throw p1

    .line 253
    :array_0
    .array-data 8
        -0x4e30a4d8c8be5ef6L    # -9.086415397137999E-69
        0x407b51e13eb602ceL    # 437.11749144647627
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
    :array_1
    .array-data 8
        -0x728f296a48f5ff67L    # -6.165094687353585E-244
        0x8e47bcea46a5a3dL
        0x7957459917472ccaL
        -0xde430c45795c1aaL    # -4.6358543605612926E241
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
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_2
    .array-data 8
        -0xbb95fda097dfe25L
        0xbc04b2dfc485ad4L
    .end array-data

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
    :array_3
    .array-data 8
        0x74f15cdd843aab9cL    # 2.03673712361546E255
        0x4a3391463b58144L
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_4
    .array-data 8
        0x5eab4f33196065b5L    # 1.0912383617446194E148
        0x3cc53015ea9b48b3L    # 5.880805403261097E-16
        -0x22b30088473a79b1L    # -2.7625798482569137E141
        -0x160ec19c363ba239L    # -2.111873096246725E202
        0x3c17f38cc78c4de5L    # 3.246015499910886E-19
        -0x5fe3dbad02ffaddcL    # -5.247295353535364E-154
        -0x630d02cac7e3bc0L
    .end array-data

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
    :array_5
    .array-data 8
        0x1bc374c55c40b536L    # 6.145668520560417E-175
        0x47285d570f894868L    # 6.325414317817706E34
        0x4f3e51d66c45d0acL    # 5.357023422847611E73
        0x66c1a1b76c353537L    # 9.589625276918132E186
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzb:[B

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    .line 12
    .line 13
    return-void
.end method
