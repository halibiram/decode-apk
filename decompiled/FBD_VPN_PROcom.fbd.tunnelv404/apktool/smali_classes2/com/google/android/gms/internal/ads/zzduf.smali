.class public final Lcom/google/android/gms/internal/ads/zzduf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private zzb:Lorg/json/JSONObject;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Z

.field private zze:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzduf;->zza:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzc:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    return-void
.end method

.method private final declared-synchronized zzg()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzd:Z

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzh()Lcom/google/android/gms/internal/ads/zzcdf;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdf;->zzf()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzdU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v4, v1, [J

    .line 49
    .line 50
    fill-array-data v4, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzb:Lorg/json/JSONObject;

    .line 70
    .line 71
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v4, v1, [J

    .line 74
    .line 75
    fill-array-data v4, :array_1

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzduf;->zze:Lorg/json/JSONObject;

    .line 90
    .line 91
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v4, 0x4

    .line 94
    new-array v4, v4, [J

    .line 95
    .line 96
    fill-array-data v4, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-ge v3, v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-nez v4, :cond_2

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v6, v1, [J

    .line 129
    .line 130
    fill-array-data v6, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    const/4 v7, 0x2

    .line 147
    new-array v7, v7, [J

    .line 148
    .line 149
    fill-array-data v7, :array_4

    .line 150
    .line 151
    .line 152
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v8, v1, [J

    .line 166
    .line 167
    fill-array-data v8, :array_5

    .line 168
    .line 169
    .line 170
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v5, :cond_4

    .line 182
    .line 183
    if-eqz v4, :cond_4

    .line 184
    .line 185
    if-eqz v6, :cond_4

    .line 186
    .line 187
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzduf;->zza:Ljava/util/Map;

    .line 188
    .line 189
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_3

    .line 194
    .line 195
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzduf;->zza:Ljava/util/Map;

    .line 196
    .line 197
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Ljava/util/Map;

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap;

    .line 205
    .line 206
    invoke-direct {v7}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzduf;->zza:Ljava/util/Map;

    .line 210
    .line 211
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-object v6, v7

    .line 215
    :goto_2
    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    :cond_4
    :goto_3
    add-int/2addr v3, v0

    .line 219
    goto :goto_1

    .line 220
    :cond_5
    :goto_4
    monitor-exit p0

    .line 221
    return-void

    .line 222
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    throw v0

    .line 224
    nop

    .line 225
    :array_0
    .array-data 8
        -0x60bd38303bdb3e50L    # -4.274642108052829E-158
        -0x232431559a752829L    # -2.0696487328200538E139
        -0x760aa1694ee99d4dL    # -1.085820052134141E-260
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 8
        0x24457dd26be693b7L    # 5.91368932576159E-134
        -0x612badfc8752c4dL
        0x4cf9117261893daL
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_2
    .array-data 8
        0x7977cf3b474a3921L    # 1.318943742906316E277
        0x6cdd73d4a15c2eb9L    # 2.5382741480390704E216
        0x517afb528bfb2dafL    # 3.2760352659088947E84
        0x119c57d53090a663L    # 7.657209582987185E-224
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
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_3
    .array-data 8
        0x4b98e4cb853e566eL    # 1.5259812380063292E56
        -0x3dc3a90b263e0e07L    # -1.217179713939452E11
        -0x112e59db2c37fa02L    # -6.532762274961156E225
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
    .line 290
    :array_4
    .array-data 8
        -0x256e82ffd444aa45L    # -1.8941107285712624E128
        0x53f1eb51962fe50bL    # 2.392200504980797E96
    .end array-data

    :array_5
    .array-data 8
        0x2cdf740cc17f64L
        -0x10bcdba92677d2b2L    # -9.069282239142721E227
        0x5c5b1b6ebe65b851L    # 7.881013020370845E136
    .end array-data
.end method


# virtual methods
.method public final zza()Lorg/json/JSONObject;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzdU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzb:Lorg/json/JSONObject;

    .line 22
    .line 23
    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzdT:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz p1, :cond_3

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzd:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzduf;->zzg()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduf;->zza:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lorg/json/JSONObject;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduf;->zze:Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzduh;->zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lorg/json/JSONObject;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method public final zzc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzduc;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzduc;-><init>(Lcom/google/android/gms/internal/ads/zzduf;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzq(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdud;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdud;-><init>(Lcom/google/android/gms/internal/ads/zzduf;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzc:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final synthetic zzd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzduf;->zzg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic zze()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdue;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdue;-><init>(Lcom/google/android/gms/internal/ads/zzduf;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzduf;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic zzf()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzduf;->zzg()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
