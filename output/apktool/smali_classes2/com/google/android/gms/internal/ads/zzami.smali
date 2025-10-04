.class public final Lcom/google/android/gms/internal/ads/zzami;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaly;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaly;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaly;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzami;->zzb:Lcom/google/android/gms/internal/ads/zzaly;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    add-int/2addr p3, p2

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 4
    .line 5
    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_a

    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v4, v0, [J

    .line 35
    .line 36
    fill-array-data v4, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcc; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-eqz v2, :cond_a

    .line 51
    .line 52
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 53
    .line 54
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    new-instance p2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 72
    .line 73
    const/4 v1, -0x1

    .line 74
    const/4 v2, 0x0

    .line 75
    const/4 v3, -0x1

    .line 76
    const/4 v4, 0x0

    .line 77
    :goto_1
    const/4 v5, 0x1

    .line 78
    if-ne v3, v1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 85
    .line 86
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v7, v0, [J

    .line 97
    .line 98
    fill-array-data v7, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_3

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v7, v0, [J

    .line 119
    .line 120
    fill-array-data v7, :array_2

    .line 121
    .line 122
    .line 123
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    const/4 v3, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const/4 v3, 0x3

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 141
    .line 142
    .line 143
    if-eqz v3, :cond_9

    .line 144
    .line 145
    if-ne v3, v5, :cond_6

    .line 146
    .line 147
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 148
    .line 149
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 150
    .line 151
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    if-ne v3, v0, :cond_8

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    if-eqz p3, :cond_7

    .line 169
    .line 170
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 171
    .line 172
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 173
    .line 174
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zzb:Lcom/google/android/gms/internal/ads/zzaly;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 180
    .line 181
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzaly;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    const/4 p3, 0x7

    .line 194
    new-array p3, p3, [J

    .line 195
    .line 196
    fill-array-data p3, :array_3

    .line 197
    .line 198
    .line 199
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzami;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 211
    .line 212
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzamh;->zzc(Lcom/google/android/gms/internal/ads/zzfp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzama;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    if-eqz p3, :cond_1

    .line 217
    .line 218
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaml;

    .line 224
    .line 225
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaml;-><init>(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzakl;->zza(Lcom/google/android/gms/internal/ads/zzakm;Lcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :catch_0
    move-exception p1

    .line 233
    goto :goto_3

    .line 234
    :cond_a
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    const/4 p3, 0x4

    .line 244
    new-array p3, p3, [J

    .line 245
    .line 246
    fill-array-data p3, :array_4

    .line 247
    .line 248
    .line 249
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const/4 p2, 0x0

    .line 265
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcc; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :goto_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 271
    .line 272
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    throw p2

    .line 276
    nop

    .line 277
    :array_0
    .array-data 8
        -0x453d797f470290d2L
        0x1c018ed94128f08cL    # 8.87375876382598E-174
    .end array-data

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
    :array_1
    .array-data 8
        0x7ade2104b4cd0165L    # 7.000359345771807E283
        0x13b6911ab87be648L
    .end array-data

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
    :array_2
    .array-data 8
        0x2158f627f73f21c9L    # 4.880380072133301E-148
        -0x654fa847189b9fe7L    # -3.938451341595535E-180
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
    :array_3
    .array-data 8
        -0x185c5c68c9b971d9L    # -1.7500369179071077E191
        -0x300ae9f1769f125cL    # -1.526006525414881E77
        0x243721ee916c1ae3L
        0x7e24770deb54ac3aL    # 4.282906992519528E299
        0x34e0bbd10a17446bL    # 5.459610808695407E-54
        0x7394ea96db74e857L    # 5.849821780729139E248
        -0x41a5a29fa5bd0df1L    # -2.455408822163474E-8
    .end array-data

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
    :array_4
    .array-data 8
        -0x48756ae8333ff238L    # -3.8143865302529503E-41
        0x61641e915ef853ebL    # 1.4143042464776204E161
        -0x65a03c44ee592f52L
        0x3bee37b961bc56feL    # 5.119072831148163E-20
    .end array-data
.end method
