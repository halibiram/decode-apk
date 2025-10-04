.class public final Lcom/google/android/gms/internal/ads/zzdyn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/content/pm/ApplicationInfo;

.field private final zzc:I

.field private final zzd:I

.field private zze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    const-wide v2, 0x141c1f67482003aeL    # 8.35371409319945E-212

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-wide v2, v1, v4

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zze:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzja:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzc:I

    .line 51
    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjb:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzd:I

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v5, v1, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v7, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 30
    .line 31
    invoke-static {v5}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v6, v2, [J

    .line 47
    .line 48
    fill-array-data v6, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Landroid/content/Context;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    :try_start_1
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzp(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    goto :goto_0

    .line 74
    :catch_1
    nop

    .line 75
    move-object v4, v5

    .line 76
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v2, [J

    .line 79
    .line 80
    fill-array-data v7, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zze:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Landroid/content/pm/ApplicationInfo;

    .line 108
    .line 109
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabelAndIcon(Ljava/lang/String;)Landroidx/core/util/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v4, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .line 119
    move-object v5, v4

    .line 120
    goto :goto_1

    .line 121
    :catch_2
    nop

    .line 122
    :goto_1
    if-nez v5, :cond_0

    .line 123
    .line 124
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    new-array v5, v5, [J

    .line 128
    .line 129
    const-wide v6, -0x25b7921177e37fbL    # -1.678061253576874E297

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    aput-wide v6, v5, v0

    .line 135
    .line 136
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_2

    .line 144
    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzc:I

    .line 145
    .line 146
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzd:I

    .line 147
    .line 148
    invoke-virtual {v5, v0, v0, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    .line 150
    .line 151
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzc:I

    .line 152
    .line 153
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzd:I

    .line 154
    .line 155
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 156
    .line 157
    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-instance v4, Landroid/graphics/Canvas;

    .line 162
    .line 163
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    .line 168
    .line 169
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 170
    .line 171
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .line 173
    .line 174
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 175
    .line 176
    const/16 v6, 0x64

    .line 177
    .line 178
    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zze:Ljava/lang/String;

    .line 190
    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zze:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_2

    .line 198
    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zze:Ljava/lang/String;

    .line 200
    .line 201
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 202
    .line 203
    new-array v1, v1, [J

    .line 204
    .line 205
    fill-array-data v1, :array_3

    .line 206
    .line 207
    .line 208
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzc:I

    .line 219
    .line 220
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v4, v2, [J

    .line 223
    .line 224
    fill-array-data v4, :array_4

    .line 225
    .line 226
    .line 227
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzd:I

    .line 238
    .line 239
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v2, v2, [J

    .line 242
    .line 243
    fill-array-data v2, :array_5

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    :cond_2
    return-object v3

    .line 257
    :array_0
    .array-data 8
        -0x4907beb9ddaedba5L    # -6.797692239305411E-44
        0x376cf7103c1412b6L    # 1.0390716978726182E-41
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_1
    .array-data 8
        -0x31680e03db462e43L    # -4.131601673215196E70
        0x2c389d4dd3a1a23fL    # 1.1523697652199872E-95
        -0x66e7b0967da4687eL    # -8.729941070665399E-188
    .end array-data

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
        0x64929fdc27405914L    # 2.948091803798025E176
        -0x13474abded43077eL
        0x20e1edc44b1e2f5eL
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_3
    .array-data 8
        -0x72f53fd4179dcc0eL    # -7.651881129682096E-246
        -0x5246a0aecc6aec2eL    # -1.9928824493019787E-88
    .end array-data

    :array_4
    .array-data 8
        -0x392f5b8db3e9fbe4L    # -1.3501893823368635E33
        -0x7b492cc7eee694dcL
        -0x22326587b5576d77L    # -7.2198722504325965E143
    .end array-data

    :array_5
    .array-data 8
        -0x59333026eec35619L    # -8.716933904206781E-122
        -0x32f838e896aa53f0L    # -1.2226973539428319E63
        0x7baebce008252bbeL    # 5.850575180256652E287
    .end array-data
.end method
