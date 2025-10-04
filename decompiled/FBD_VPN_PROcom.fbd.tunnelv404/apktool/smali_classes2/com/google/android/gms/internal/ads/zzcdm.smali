.class public final Lcom/google/android/gms/internal/ads/zzcdm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzb:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzc:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzd:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zze:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzg:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzh:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzi:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzj:Ljava/lang/Object;

.field private final zzk:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zze:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzi:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private final zzi()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbih;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzi:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v4

    .line 9
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 15
    .line 16
    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzQ()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v7, v2, [J

    .line 25
    .line 26
    fill-array-data v7, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzf:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v7, v3, [J

    .line 48
    .line 49
    fill-array-data v7, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:J

    .line 60
    .line 61
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v7, v3, [J

    .line 67
    .line 68
    fill-array-data v7, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:J

    .line 79
    .line 80
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v7, v3, [J

    .line 86
    .line 87
    fill-array-data v7, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v5, v6, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v6, v3, [J

    .line 103
    .line 104
    fill-array-data v6, :array_4

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    .line 115
    .line 116
    invoke-virtual {v5, p2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v6, v2, [J

    .line 122
    .line 123
    fill-array-data v6, :array_5

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 134
    .line 135
    invoke-virtual {v5, p2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v2, v2, [J

    .line 141
    .line 142
    fill-array-data v2, :array_6

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zze:J

    .line 153
    .line 154
    invoke-virtual {v5, p2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v2, v3, [J

    .line 160
    .line 161
    fill-array-data v2, :array_7

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzg:I

    .line 172
    .line 173
    invoke-virtual {v5, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v2, v3, [J

    .line 179
    .line 180
    fill-array-data v2, :array_8

    .line 181
    .line 182
    .line 183
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzh:I

    .line 191
    .line 192
    invoke-virtual {v5, p2, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array v2, v1, [J

    .line 198
    .line 199
    fill-array-data v2, :array_9

    .line 200
    .line 201
    .line 202
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    const/4 v7, 0x4

    .line 220
    new-array v7, v7, [J

    .line 221
    .line 222
    fill-array-data v7, :array_a

    .line 223
    .line 224
    .line 225
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v8, v3, [J

    .line 235
    .line 236
    fill-array-data v8, :array_b

    .line 237
    .line 238
    .line 239
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 247
    .line 248
    new-array v3, v3, [J

    .line 249
    .line 250
    fill-array-data v3, :array_c

    .line 251
    .line 252
    .line 253
    invoke-direct {v8, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v2, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    const/4 v3, 0x0

    .line 265
    if-nez v2, :cond_1

    .line 266
    .line 267
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v0, v0, [J

    .line 270
    .line 271
    fill-array-data v0, :array_d

    .line 272
    .line 273
    .line 274
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    const/4 v9, 0x6

    .line 294
    new-array v9, v9, [J

    .line 295
    .line 296
    fill-array-data v9, :array_e

    .line 297
    .line 298
    .line 299
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .line 308
    .line 309
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-virtual {p1, v6, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget p1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 318
    .line 319
    if-ne v2, p1, :cond_2

    .line 320
    .line 321
    const/4 v3, 0x1

    .line 322
    goto :goto_1

    .line 323
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 324
    .line 325
    new-array v2, v0, [J

    .line 326
    .line 327
    fill-array-data v2, :array_f

    .line 328
    .line 329
    .line 330
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :catch_0
    :try_start_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array v2, v1, [J

    .line 344
    .line 345
    fill-array-data v2, :array_10

    .line 346
    .line 347
    .line 348
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 359
    .line 360
    new-array v0, v0, [J

    .line 361
    .line 362
    fill-array-data v0, :array_11

    .line 363
    .line 364
    .line 365
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :goto_1
    invoke-virtual {v5, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    .line 377
    .line 378
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 379
    .line 380
    new-array p2, v1, [J

    .line 381
    .line 382
    fill-array-data p2, :array_12

    .line 383
    .line 384
    .line 385
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdm;->zza()I

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    monitor-exit v4

    .line 400
    return-object v5

    .line 401
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    throw p1

    .line 403
    :array_0
    .array-data 8
        0x6110fc5c10ccb8cbL    # 3.731326127831227E159
        0x4df962b05be0fc14L    # 4.277448881915128E67
        -0x2a53e5dbf5610e05L    # -5.0353246882213994E104
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
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
    :array_1
    .array-data 8
        -0x61b23780e3ca4747L
        -0x5de809a53e6b0218L
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    :array_2
    .array-data 8
        0x1bf19ef6a811a6d9L    # 4.452786403038417E-174
        -0x257636e7a349089L
    .end array-data

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
    :array_3
    .array-data 8
        0x7677aeb2dcfad691L    # 4.6608191898614114E262
        -0x10350954c526413eL    # -3.270421844718072E230
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_4
    .array-data 8
        0x2adfdce21339ef36L
        -0x1176b8cc6af5c84L
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_5
    .array-data 8
        -0x53f997973ad77e5bL    # -1.3113286907162648E-96
        0x1373b4fdad35cbaL
        -0x2f8a9dfc8cc67013L    # -3.9615466063019177E79
    .end array-data

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
    :array_6
    .array-data 8
        0x5cb257222e2043beL    # 3.4126048554049675E138
        -0xf7faa02c1527734L    # -8.115767441550534E233
        -0x126415a430a162a6L    # -9.85420729170442E219
    .end array-data

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
    :array_7
    .array-data 8
        0x1115aab0f5e57d82L
        -0x7e72631886cfbc5aL    # -3.45458109308088E-301
    .end array-data

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
    :array_8
    .array-data 8
        0x38d970550019bd69L    # 7.655209515216871E-35
        -0x6f0f421329301b52L    # -4.417005043898316E-227
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
    :array_9
    .array-data 8
        -0x1401e776707a9ef4L    # -1.5830825585782374E212
        -0x1afce96b81509aadL    # -3.867519384290873E178
        -0x2d4219d7b542ed25L    # -3.8065903253935904E90
        0x59de26d164e88463L    # 7.97276668000103E124
        -0x1b6f1df70e6f93d8L    # -2.672426589739576E176
    .end array-data

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
    :array_a
    .array-data 8
        -0x7db8ce0c422221eL    # -5.401731105965547E270
        0x2365952ed7160b06L
        0x77979b3ec20ac8d6L    # 1.21788534629224E268
        -0x33d831d5e903cf68L    # -7.471423830856773E58
    .end array-data

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
    :array_b
    .array-data 8
        0x179793e6403d08eaL    # 5.04666930137262E-195
        -0x6860cdb9b6a7c1b7L
    .end array-data

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
    :array_c
    .array-data 8
        -0x78ae42ffbbfdf03dL
        0x17bb877c572400edL    # 2.356986244884986E-194
    .end array-data

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
    :array_d
    .array-data 8
        0x76ce32dcc11adddbL    # 1.9018409240229074E264
        -0x6ea12fcf433a396fL
        0x150543510485a4eaL
        0x63127d66483626e1L    # 1.7444992190638846E169
        0x964b904051b94c8L    # 2.0565558640672E-263
        -0x3904d53f2e8e7bb9L    # -8.816197063162299E33
        0x7469b1c58d11fc31L    # 5.886880351572993E252
        -0x79574fee8ea12debL
        -0x7b3cc90cb4d634f9L    # -1.009500639978576E-285
        0x48b96019d8962fcdL    # 2.210508610800581E42
        0x631f512317c7eaa9L    # 2.9547240332685716E169
        0x649701c37992a18L
        -0x3384531bfdf7ab9cL
        -0x38f200749ec655faL    # -1.9469958268848537E34
        -0x6a869540f998528aL
        -0x2c4696dfa51f4958L    # -2.120188236844812E95
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
    :array_e
    .array-data 8
        0x4a15cdd80e95a5e5L    # 7.96667393085633E48
        -0x250773585c65512L    # -2.577920246971151E297
        -0x40fc069f74b585d3L    # -3.8097628395340366E-5
        0x3ad6b2138140a859L    # 2.9333388565923787E-25
        -0x3504928add54234eL    # -1.6418994753307347E53
        -0x6860154d41e3d422L    # -6.831593601968665E-195
    .end array-data

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
    :array_f
    .array-data 8
        0x6e4928ab9107036eL    # 1.8188542496535256E223
        -0x29fb3579bb2003b0L    # -2.3842192476229097E106
        0x6544ffe2b015798aL    # 6.807653984368414E179
        0x65f059cfdc6b6c39L    # 1.0855682427711626E183
        -0x73e93e1418a9d25L    # -4.712514107384798E273
        0x15cfd8e08f689466L
        0x66a499f95e9924adL    # 2.8012080174845167E186
        0x10f7b1293744c93fL    # 6.250656689579991E-227
        -0x6e1fb297b161c482L
        -0x12088144ab6a50baL    # -5.308027014518747E221
        0x3892e46132381c83L    # 3.553210614684628E-36
        -0x612482d35eb414ccL
        -0x31744b4f0ebd2850L    # -2.3902321996978423E70
        0x7089f20bd4eaa938L    # 1.288987115340219E234
        -0x3d14af1ff958178dL    # -2.402733589297316E14
        0x41ca55611805e53fL    # 8.836060640460585E8
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
    :array_10
    .array-data 8
        -0x170ab7e72bacfb4L
        0x56064e3d134266d2L    # 2.5578953650433467E106
        0x5fd71df658674848L
        0x5e3cda3d8a4a1f0L
        -0x328fe7dde906709eL    # -1.059327796343613E65
    .end array-data

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
    :array_11
    .array-data 8
        0x4a7a3132567ce566L    # 6.1247849103664475E50
        -0x232c7abda37884d3L    # -1.452880607850259E139
        -0x7773fb75e30612c1L    # -1.697097708267065E-267
        0x6c4e8cb6b7161dbaL    # 5.1422521341368105E213
        0x2ec5ef6f0af6ffd2L    # 2.2582631777265945E-83
        0x1b48bc57b896bac2L    # 3.052087673963841E-177
        0xb7a1570de7ea63dL
        0x28ee7c4e2355829aL
        -0x5aacac675678011aL
        -0x1388c6b0188dc422L    # -3.1273149756407284E214
        0x592f1067174112f9L    # 4.0107599411930564E121
        -0x63131f0c9ac92be1L
        -0x653d53318138c656L    # -9.001063163695509E-180
        -0x1605aecf62e2393dL    # -3.2231159325317495E202
        -0x73cc690c6393e64eL
        0x1b9a29a9415a0559L
    .end array-data

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
    :array_12
    .array-data 8
        -0xdcf1003fcfedb39L    # -1.129390886677092E242
        0x616395bd6ade036eL    # 1.376732400632611E161
        -0x1eb1fdb7f41e779bL    # -5.2737307593980865E160
        -0x77aeee3b8d04e0b8L    # -1.292415712830561E-268
        -0x14a6c31d5b42d232L    # -1.2964300102318936E209
    .end array-data
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzg:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzg:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzh:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzh:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdm;->zzi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdm;->zzi()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/ads/internal/client/zzl;J)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzd()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:J

    .line 20
    .line 21
    const-wide/16 v8, -0x1

    .line 22
    .line 23
    cmp-long v10, v6, v8

    .line 24
    .line 25
    if-nez v10, :cond_1

    .line 26
    .line 27
    sub-long v2, v4, v2

    .line 28
    .line 29
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbgc;->zzaT:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    cmp-long v8, v2, v6

    .line 46
    .line 47
    if-lez v8, :cond_0

    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzc()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 62
    .line 63
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzb:J

    .line 64
    .line 65
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:J

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zza:J

    .line 69
    .line 70
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zzdt:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const/4 p3, 0x1

    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v2, v0, [J

    .line 96
    .line 97
    fill-array-data v2, :array_0

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-ne p1, p3, :cond_2

    .line 112
    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    .line 116
    .line 117
    add-int/2addr p1, p3

    .line 118
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzc:I

    .line 119
    .line 120
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 121
    .line 122
    add-int/2addr p1, p3

    .line 123
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzd:I

    .line 124
    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    const-wide/16 p1, 0x0

    .line 128
    .line 129
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zze:J

    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 132
    .line 133
    invoke-interface {p1, v4, v5}, Lcom/google/android/gms/ads/internal/util/zzg;->zzD(J)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzk:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zze()J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    sub-long/2addr v4, p1

    .line 144
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zze:J

    .line 145
    .line 146
    :goto_2
    monitor-exit v1

    .line 147
    return-void

    .line 148
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p1

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        0x41e7ea20514d68d8L    # 3.2097573224190483E9
        -0x42bd2d23fc2e1c7dL    # -1.3375021738167596E-13
    .end array-data
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzi:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcdm;->zzi:I

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method
