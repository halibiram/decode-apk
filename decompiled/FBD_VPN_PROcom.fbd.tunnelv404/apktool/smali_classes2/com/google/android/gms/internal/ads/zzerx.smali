.class public final Lcom/google/android/gms/internal/ads/zzerx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field public final zza:Lcom/google/android/gms/ads/internal/client/zzq;

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzb:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzc:Z

    .line 27
    .line 28
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzd:Ljava/lang/String;

    .line 29
    .line 30
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzerx;->zze:F

    .line 31
    .line 32
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzf:I

    .line 33
    .line 34
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzg:I

    .line 35
    .line 36
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzh:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzi:Z

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x3aa0e6e009a3d85dL    # 2.73064211625255E-26
        0x526bb6bada056668L    # 1.1026168843653221E89
        -0x50f94588826b2dfL    # -1.52609981247505E284
        -0x413e917fed220a2eL    # -2.078013628669113E-6
        0x2d99ecd2c4c56614L    # 5.0907478071790356E-89
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zze:I

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v7, v2, [J

    .line 21
    .line 22
    fill-array-data v7, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v8, v2, [J

    .line 35
    .line 36
    fill-array-data v8, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-static {p1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 50
    .line 51
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzb:I

    .line 52
    .line 53
    const/4 v4, -0x2

    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    :goto_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v7, v2, [J

    .line 62
    .line 63
    fill-array-data v7, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v8, v2, [J

    .line 76
    .line 77
    fill-array-data v8, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {p1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 91
    .line 92
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzj:Z

    .line 93
    .line 94
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v7, v2, [J

    .line 97
    .line 98
    fill-array-data v7, :array_4

    .line 99
    .line 100
    .line 101
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {p1, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 112
    .line 113
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v7, v2, [J

    .line 116
    .line 117
    fill-array-data v7, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v8, v2, [J

    .line 130
    .line 131
    fill-array-data v8, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzm:Z

    .line 142
    .line 143
    invoke-static {p1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 147
    .line 148
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v7, v2, [J

    .line 151
    .line 152
    fill-array-data v7, :array_7

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v8, v2, [J

    .line 165
    .line 166
    fill-array-data v8, :array_8

    .line 167
    .line 168
    .line 169
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzn:Z

    .line 177
    .line 178
    invoke-static {p1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 182
    .line 183
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    new-array v7, v2, [J

    .line 186
    .line 187
    fill-array-data v7, :array_9

    .line 188
    .line 189
    .line 190
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v8, v2, [J

    .line 200
    .line 201
    fill-array-data v8, :array_a

    .line 202
    .line 203
    .line 204
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzo:Z

    .line 212
    .line 213
    invoke-static {p1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    .line 215
    .line 216
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzi:Z

    .line 217
    .line 218
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v7, v0, [J

    .line 221
    .line 222
    fill-array-data v7, :array_b

    .line 223
    .line 224
    .line 225
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {p1, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 236
    .line 237
    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzo:Z

    .line 238
    .line 239
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v0, v0, [J

    .line 242
    .line 243
    fill-array-data v0, :array_c

    .line 244
    .line 245
    .line 246
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {p1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v3, v2, [J

    .line 259
    .line 260
    fill-array-data v3, :array_d

    .line 261
    .line 262
    .line 263
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzb:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzfhv;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 276
    .line 277
    new-array v3, v2, [J

    .line 278
    .line 279
    fill-array-data v3, :array_e

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 290
    .line 291
    new-array v4, v2, [J

    .line 292
    .line 293
    fill-array-data v4, :array_f

    .line 294
    .line 295
    .line 296
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzc:Z

    .line 304
    .line 305
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzd:Ljava/lang/String;

    .line 309
    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    xor-int/2addr v0, v6

    .line 315
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v4, v2, [J

    .line 318
    .line 319
    fill-array-data v4, :array_10

    .line 320
    .line 321
    .line 322
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzd:Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 335
    .line 336
    new-array v3, v2, [J

    .line 337
    .line 338
    fill-array-data v3, :array_11

    .line 339
    .line 340
    .line 341
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zze:F

    .line 349
    .line 350
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 354
    .line 355
    new-array v3, v2, [J

    .line 356
    .line 357
    fill-array-data v3, :array_12

    .line 358
    .line 359
    .line 360
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzf:I

    .line 368
    .line 369
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 373
    .line 374
    new-array v3, v2, [J

    .line 375
    .line 376
    fill-array-data v3, :array_13

    .line 377
    .line 378
    .line 379
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzg:I

    .line 387
    .line 388
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzh:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    xor-int/2addr v0, v6

    .line 398
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 399
    .line 400
    new-array v4, v2, [J

    .line 401
    .line 402
    fill-array-data v4, :array_14

    .line 403
    .line 404
    .line 405
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zzh:Ljava/lang/String;

    .line 413
    .line 414
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfhv;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .line 421
    .line 422
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 423
    .line 424
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzq;->zzg:[Lcom/google/android/gms/ads/internal/client/zzq;

    .line 425
    .line 426
    if-nez v3, :cond_2

    .line 427
    .line 428
    new-instance v3, Landroid/os/Bundle;

    .line 429
    .line 430
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 431
    .line 432
    .line 433
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 434
    .line 435
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 436
    .line 437
    new-array v6, v2, [J

    .line 438
    .line 439
    fill-array-data v6, :array_15

    .line 440
    .line 441
    .line 442
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzb:I

    .line 450
    .line 451
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 452
    .line 453
    .line 454
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 455
    .line 456
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 457
    .line 458
    new-array v2, v2, [J

    .line 459
    .line 460
    fill-array-data v2, :array_16

    .line 461
    .line 462
    .line 463
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zze:I

    .line 471
    .line 472
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzerx;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    .line 476
    .line 477
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 478
    .line 479
    new-array v5, v1, [J

    .line 480
    .line 481
    fill-array-data v5, :array_17

    .line 482
    .line 483
    .line 484
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/zzq;->zzi:Z

    .line 492
    .line 493
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    goto :goto_3

    .line 500
    :cond_2
    :goto_2
    array-length v4, v3

    .line 501
    if-ge v5, v4, :cond_3

    .line 502
    .line 503
    aget-object v4, v3, v5

    .line 504
    .line 505
    new-instance v7, Landroid/os/Bundle;

    .line 506
    .line 507
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 508
    .line 509
    .line 510
    iget-boolean v8, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzi:Z

    .line 511
    .line 512
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 513
    .line 514
    new-array v10, v1, [J

    .line 515
    .line 516
    fill-array-data v10, :array_18

    .line 517
    .line 518
    .line 519
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v9

    .line 526
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 527
    .line 528
    .line 529
    iget v8, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zzb:I

    .line 530
    .line 531
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 532
    .line 533
    new-array v10, v2, [J

    .line 534
    .line 535
    fill-array-data v10, :array_19

    .line 536
    .line 537
    .line 538
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 546
    .line 547
    .line 548
    iget v4, v4, Lcom/google/android/gms/ads/internal/client/zzq;->zze:I

    .line 549
    .line 550
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 551
    .line 552
    new-array v9, v2, [J

    .line 553
    .line 554
    fill-array-data v9, :array_1a

    .line 555
    .line 556
    .line 557
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    add-int/2addr v5, v6

    .line 571
    goto :goto_2

    .line 572
    :cond_3
    :goto_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 573
    .line 574
    new-array v1, v1, [J

    .line 575
    .line 576
    fill-array-data v1, :array_1b

    .line 577
    .line 578
    .line 579
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    nop

    .line 591
    :array_0
    .array-data 8
        0x4fa3a9ce44188b91L    # 4.446982436319165E75
        0x2ffdde47172e7049L    # 1.6121714603127753E-77
    .end array-data

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
    :array_1
    .array-data 8
        -0x586f547cdc388851L    # -4.13158337319629E-118
        0x55498b594df95a18L    # 7.151597751554196E102
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
    :array_2
    .array-data 8
        -0x151c00ea8b28f2fdL    # -8.024894164060697E206
        0x11fee104761f3240L    # 5.339075657189997E-222
    .end array-data

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
    :array_3
    .array-data 8
        -0x169eaaaa4b578b64L    # -4.146191661092589E199
        -0x1fefb09d0c00ecf6L    # -5.467068427973688E154
    .end array-data

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
    :array_4
    .array-data 8
        0x4aff5f26c67ba4a0L    # 1.8780065627795443E53
        0x2f69b9671089add1L    # 2.7118991290592975E-80
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
    :array_5
    .array-data 8
        0x3b61ee489aa299f5L    # 1.1865605024799424E-22
        0x6b400c59e1a5032eL    # 4.121872923595863E208
    .end array-data

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
    :array_6
    .array-data 8
        0x2730ab940f550b23L    # 6.4556990034605E-120
        0x4539bf4615a681c4L    # 3.112641032075599E25
    .end array-data

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
    :array_7
    .array-data 8
        0x5440419bd5da53bL
        0x32245c34633a7db1L    # 3.776004200393586E-67
    .end array-data

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
    :array_8
    .array-data 8
        0x3b2e55dfca27a70dL    # 1.2546446406034068E-23
        0x317afbc6bd802028L    # 2.443539280631816E-70
    .end array-data

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
    :array_9
    .array-data 8
        0x6c3fab8eb26494a9L    # 2.6654283627430385E213
        -0x12fc6e686593d8aeL    # -1.3491781521202975E217
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
    :array_a
    .array-data 8
        0x1bc17b70af4fc84fL    # 5.522151517653421E-175
        0x403401452d88f498L    # 20.00496182054175
    .end array-data

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
    :array_b
    .array-data 8
        0x1185642f32f1f315L
        -0x1b8e1eda8e876a65L    # -7.075421392186884E175
        -0x2b997e688b5cfbd2L    # -3.84583906688648E98
        0x4612a76d0cb89598L    # 3.694806887211597E29
    .end array-data

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
    :array_c
    .array-data 8
        0x1491230133f7ea7L
        0x2335b7e75517f9c6L    # 4.559416972430453E-139
        0x323aaab5ae92a153L    # 9.891278745985325E-67
        0x57bdc528d1cbd012L    # 4.5820460803417334E114
    .end array-data

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
    :array_d
    .array-data 8
        -0x5146d239fb0789e4L    # -1.2960933737737905E-83
        0x24be0ed22f0d1dc7L    # 1.058669657137775E-131
    .end array-data

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
    :array_e
    .array-data 8
        0x333602c1e30a0df8L    # 5.350522034339863E-62
        0x68413631c273749eL
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
    :array_f
    .array-data 8
        -0x18750e023fe97238L    # -6.002745683081724E190
        -0x3b18f4e605e5e870L    # -8.705537210247702E23
    .end array-data

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
    :array_10
    .array-data 8
        -0x5481b6b220ae33cdL    # -3.461690987740235E-99
        0x5e2f44437d54d3d8L    # 4.880331716192256E145
    .end array-data

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
    :array_11
    .array-data 8
        0x2b91aff2478d0d29L    # 8.086540075774201E-99
        0x48d822c02f03057dL    # 8.410079674847932E42
    .end array-data

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
    :array_12
    .array-data 8
        0x4efedc6159edebeL    # 6.70991104675937E-285
        -0x242764ccfe54afd4L    # -2.794495814668339E134
    .end array-data

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
    :array_13
    .array-data 8
        -0x699914643be2b5aaL    # -9.357375588747902E-201
        0x25d38a0779414c54L    # 1.804047991927016E-126
    .end array-data

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
    :array_14
    .array-data 8
        -0x6b080278277510d8L
        0x528fc760c33d4d37L    # 5.057390632489673E89
    .end array-data

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    :array_15
    .array-data 8
        -0x3a48ff030689c7b3L    # -7.119349864002537E27
        0x69aff2696356ce08L    # 1.2226893447223507E201
    .end array-data

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
    :array_16
    .array-data 8
        -0x736ddd56e368326bL    # -4.052756877288589E-248
        -0x1030ef05a34b93e3L    # -3.7680487661922552E230
    .end array-data

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
    :array_17
    .array-data 8
        -0x4dc46b7d45539d87L    # -1.0230034988453258E-66
        -0x4f884a01d0e243dbL    # -3.276342616762748E-75
        0x3f7fefb5ce2764dfL    # 0.007796964814098944
    .end array-data

    .line 884
    .line 885
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
    :array_18
    .array-data 8
        -0x39d60769643b7e2fL    # -1.0288192098784826E30
        -0x6321e224c15210dcL
        0x5bf16ac59b0d2a1dL    # 7.912129095818864E134
    .end array-data

    .line 900
    .line 901
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
    :array_19
    .array-data 8
        0x14896882b85f2c48L    # 9.660679916848832E-210
        -0x4e5039d1fa6c1127L    # -2.301891299695401E-69
    .end array-data

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
    :array_1a
    .array-data 8
        -0x2836b7cdcd38e6d7L    # -7.782516794932134E114
        -0x25c09f56697e253bL    # -5.310039459706242E126
    .end array-data

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    :array_1b
    .array-data 8
        -0x6e963c4409540214L    # -8.700744793561292E-225
        -0x1e8de173ed617a43L    # -2.547415014739389E161
        0x419efcc853514781L    # 1.2997070882937433E8
    .end array-data
.end method
