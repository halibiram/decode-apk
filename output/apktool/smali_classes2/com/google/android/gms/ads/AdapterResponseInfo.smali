.class public final Lcom/google/android/gms/ads/AdapterResponseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzu;

.field private final zzb:Lcom/google/android/gms/ads/AdError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzu;->zzc:Lcom/google/android/gms/ads/internal/client/zze;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zza()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/client/zzu;)Lcom/google/android/gms/ads/AdapterResponseInfo;
    .locals 1
    .param p0    # Lcom/google/android/gms/ads/internal/client/zzu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdapterResponseInfo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;-><init>(Lcom/google/android/gms/ads/internal/client/zzu;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAdError()Lcom/google/android/gms/ads/AdError;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getAdSourceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSourceInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSourceInstanceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSourceName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzd:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatencyMillis()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzb:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 27
    :array_0
    .array-data 8
        0x540a7bb603dcf46cL    # 7.070983786962758E96
        0x5926f4e2120bd3bcL    # 2.963980593196414E121
        -0x4b642985a95d1b5eL    # -2.8382835681513933E-55
        -0x304f4b081f85c19eL    # -7.556748832241844E75
        -0x7fdaabf1f73c57abL    # -5.932141234736547E-308
    .end array-data
.end method

.method public final zzb()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 9
    .line 10
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    new-array v6, v5, [J

    .line 14
    .line 15
    fill-array-data v6, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzu;->zza:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v6, v5, [J

    .line 35
    .line 36
    fill-array-data v6, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-wide v6, v3, Lcom/google/android/gms/ads/internal/client/zzu;->zzb:J

    .line 47
    .line 48
    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v4, v1, [J

    .line 60
    .line 61
    fill-array-data v4, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v6, v5, [J

    .line 74
    .line 75
    fill-array-data v6, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v6, v1, [J

    .line 92
    .line 93
    fill-array-data v6, :array_4

    .line 94
    .line 95
    .line 96
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_1

    .line 111
    .line 112
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v4, v1, [J

    .line 115
    .line 116
    fill-array-data v4, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v6, v5, [J

    .line 129
    .line 130
    fill-array-data v6, :array_6

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v6, v1, [J

    .line 147
    .line 148
    fill-array-data v6, :array_7

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-nez v3, :cond_2

    .line 166
    .line 167
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v4, v0, [J

    .line 170
    .line 171
    fill-array-data v4, :array_8

    .line 172
    .line 173
    .line 174
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v6, v5, [J

    .line 184
    .line 185
    fill-array-data v6, :array_9

    .line 186
    .line 187
    .line 188
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array v6, v0, [J

    .line 202
    .line 203
    fill-array-data v6, :array_a

    .line 204
    .line 205
    .line 206
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdapterResponseInfo;->getAdSourceInstanceId()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-nez v3, :cond_3

    .line 221
    .line 222
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v0, v0, [J

    .line 225
    .line 226
    fill-array-data v0, :array_b

    .line 227
    .line 228
    .line 229
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v4, v5, [J

    .line 239
    .line 240
    fill-array-data v4, :array_c

    .line 241
    .line 242
    .line 243
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v0, v0, [J

    .line 257
    .line 258
    fill-array-data v0, :array_d

    .line 259
    .line 260
    .line 261
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    :goto_3
    new-instance v0, Lorg/json/JSONObject;

    .line 272
    .line 273
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .line 275
    .line 276
    iget-object v3, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 277
    .line 278
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzu;->zzd:Landroid/os/Bundle;

    .line 279
    .line 280
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_4

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Ljava/lang/String;

    .line 299
    .line 300
    iget-object v6, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 301
    .line 302
    iget-object v6, v6, Lcom/google/android/gms/ads/internal/client/zzu;->zzd:Landroid/os/Bundle;

    .line 303
    .line 304
    invoke-virtual {v6, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v1, v1, [J

    .line 315
    .line 316
    fill-array-data v1, :array_e

    .line 317
    .line 318
    .line 319
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb:Lcom/google/android/gms/ads/AdError;

    .line 330
    .line 331
    if-nez v0, :cond_5

    .line 332
    .line 333
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v1, v5, [J

    .line 336
    .line 337
    fill-array-data v1, :array_f

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    new-array v3, v5, [J

    .line 350
    .line 351
    fill-array-data v3, :array_10

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 366
    .line 367
    new-array v3, v5, [J

    .line 368
    .line 369
    fill-array-data v3, :array_11

    .line 370
    .line 371
    .line 372
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->zzb()Lorg/json/JSONObject;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    .line 385
    .line 386
    :goto_5
    return-object v2

    .line 387
    :array_0
    .array-data 8
        -0xcfd1cb15add8928L
        -0x505f3359aa7f6ed1L    # -2.8336438041473036E-79
    .end array-data

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_1
    .array-data 8
        0x5223830ee95e57b5L    # 4.851872137031613E87
        -0x5878196d219e66d9L
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_2
    .array-data 8
        0x5d46a63dba885b97L    # 2.1577657263510413E141
        0x6cc745646ac8d2eaL    # 1.0027741720635028E216
        -0x21faf452ece78278L    # -8.212387680319657E144
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_3
    .array-data 8
        -0x2a70be79ee58e13fL    # -1.4001070821759353E104
        0x2867eb528a53b7e3L    # 4.856448800381143E-114
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_4
    .array-data 8
        0x571b69614ab62a7eL
        -0x26a5d315a9e9473bL    # -2.7036621739111262E122
        0x4bd8d9105e92c7aeL    # 2.437075531981284E57
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
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
    :array_5
    .array-data 8
        0x1e77881a0ffa5ecfL    # 6.538146971559305E-162
        -0x712ab754cd0c5ccL
        0x5e9f5f0de214eec6L    # 6.267732975770866E147
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
    .line 468
    .line 469
    .line 470
    .line 471
    :array_6
    .array-data 8
        -0x736423eee9d8d311L
        0x2b46028d9dc24b03L
    .end array-data

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
    :array_7
    .array-data 8
        0x76657998ed8f2419L    # 2.113193206261279E262
        -0x2e7bd78ed6809290L    # -4.895034287199382E84
        -0x7084b8c14876e5e8L    # -4.289638506169012E-234
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
    :array_8
    .array-data 8
        0x6668f4f90eace05L
        -0x4ff1ba5ce4a082f7L    # -3.2679283472177275E-77
        -0x625e1a2b60ddea97L    # -6.070318192682674E-166
        -0x1fc9e704c88aadf6L    # -2.962801520877952E155
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
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_9
    .array-data 8
        -0x7258b3455698f593L    # -6.824711073357984E-243
        -0x256cd365384f1959L    # -2.0767119203646867E128
    .end array-data

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
    :array_a
    .array-data 8
        0x3232c4c71cf51f38L    # 6.9616841074445E-67
        0x7550fe03cd441c33L    # 1.275695691343462E257
        0x1be7859100da78c5L
        0x346010e88cebefecL    # 2.047575344917551E-56
    .end array-data

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
    :array_b
    .array-data 8
        -0x7983e3400173ab48L    # -1.982350553057003E-277
        -0x3a34b6a38da3ed0eL    # -1.688956683457613E28
        0x7b300a9a00961c4cL    # 2.385385145751386E285
        0x2106d40464ba0bfL    # 9.81151958187673E-299
    .end array-data

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
    :array_c
    .array-data 8
        0x70f3f5df58bf4a8dL    # 1.269307107960466E236
        -0x37d8028f429ccfd2L    # -4.081687250298619E39
    .end array-data

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
    :array_d
    .array-data 8
        0x4248bc9fc36e7211L    # 2.1248760393289114E11
        0x78c0393f365cc348L    # 4.38827527202192E273
        -0x5b0e0fa4be05d841L    # -1.010921696266471E-130
        0x6a5e0686e3ef2ac0L    # 2.353462401454016E204
    .end array-data

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
    :array_e
    .array-data 8
        0x4ee117ba8dd4562L
        0x28095111c985c2cbL    # 8.031531927239764E-116
        -0x4435a82bbb1f2bbaL    # -1.1156729497510872E-20
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
    .line 616
    .line 617
    .line 618
    .line 619
    :array_f
    .array-data 8
        0x52319d43f1177e51L    # 8.76000961454904E87
        0x1b71aa4745ed3890L    # 1.743732572413197E-176
    .end array-data

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
    :array_10
    .array-data 8
        0x48dfa34da7f61187L    # 1.1024200449411171E43
        -0x7deabd108af1473eL
    .end array-data

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
    :array_11
    .array-data 8
        -0x67342f13e1b81130L
        0x63fed49a3faf17caL    # 4.765821663723723E173
    .end array-data
.end method
