.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:J

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Ljava/util/Map;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdwk;

.field private zzi:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwk;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzf:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzg:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzh:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 19
    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgY:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zza:I

    .line 37
    .line 38
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgZ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iput-wide v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzb:J

    .line 55
    .line 56
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhe:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzc:Z

    .line 73
    .line 74
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhc:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 75
    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzd:Z

    .line 91
    .line 92
    new-instance p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 102
    .line 103
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zza:I

    return p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzf:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzdwa;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzg:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzf:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 27
    .line 28
    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;

    .line 29
    .line 30
    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p1
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/ArrayDeque;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-nez v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/util/Pair;

    .line 16
    .line 17
    new-instance v5, Lj$/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-direct {v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    iput-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v7, v3, [J

    .line 31
    .line 32
    fill-array-data v7, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v8, v3, [J

    .line 45
    .line 46
    fill-array-data v8, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v7, v3, [J

    .line 64
    .line 65
    fill-array-data v7, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v5, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 79
    .line 80
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Ljava/lang/String;

    .line 83
    .line 84
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v8, v3, [J

    .line 87
    .line 88
    fill-array-data v8, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-boolean v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzd:Z

    .line 102
    .line 103
    if-eqz v5, :cond_0

    .line 104
    .line 105
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    .line 109
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v6, v2, [J

    .line 117
    .line 118
    fill-array-data v6, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v7, v3, [J

    .line 135
    .line 136
    fill-array-data v7, :array_5

    .line 137
    .line 138
    .line 139
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v7, v2, [J

    .line 153
    .line 154
    fill-array-data v7, :array_6

    .line 155
    .line 156
    .line 157
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    new-instance v6, Landroid/util/Pair;

    .line 169
    .line 170
    invoke-static {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-direct {v6, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catch_0
    new-instance v6, Landroid/util/Pair;

    .line 179
    .line 180
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v5, v1, [J

    .line 183
    .line 184
    const-wide v7, -0x41e7a347d23acc52L    # -1.4180658236909165E-9

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    aput-wide v7, v5, v0

    .line 190
    .line 191
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v7, v1, [J

    .line 201
    .line 202
    const-wide v8, 0x6d553122176c8489L    # 4.67549188223447E218

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    aput-wide v8, v7, v0

    .line 208
    .line 209
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 220
    .line 221
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v5, Ljava/lang/String;

    .line 224
    .line 225
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v8, v3, [J

    .line 228
    .line 229
    fill-array-data v8, :array_7

    .line 230
    .line 231
    .line 232
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v4, v7, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzj(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 243
    .line 244
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v5, Ljava/lang/String;

    .line 247
    .line 248
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    new-array v7, v3, [J

    .line 251
    .line 252
    fill-array-data v7, :array_8

    .line 253
    .line 254
    .line 255
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzj(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzh:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 266
    .line 267
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi:Ljava/util/Map;

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzdwn;->zzf(Ljava/util/Map;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_1
    return-void

    .line 275
    :array_0
    .array-data 8
        0x18c1237ab3e2e12aL    # 1.923303632884514E-189
        0x70dd3e997b73e2b6L    # 4.649232494256846E235
    .end array-data

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
    .line 286
    .line 287
    :array_1
    .array-data 8
        -0x39e436e0e07bf851L    # -5.503511250971301E29
        0x5368ef53bc1967a1L    # 6.501533464416787E93
    .end array-data

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
    .line 298
    .line 299
    :array_2
    .array-data 8
        -0x5ebd001314df158dL    # -1.857372845698777E-148
        0x43d46a6c25b91ffdL    # 5.8844285502614374E18
    .end array-data

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
    .line 310
    .line 311
    :array_3
    .array-data 8
        0x3f4fc69cea9f57e4L    # 9.697214311425975E-4
        0x5aa4bf0edd13dc94L    # 4.493960488619257E128
    .end array-data

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
    :array_4
    .array-data 8
        -0x441e4a558f0d5a95L    # -3.000128353544416E-20
        0x1c2b23c5c224e207L
        -0x169858cbb1c71531L    # -5.657909274845583E199
    .end array-data

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
    :array_5
    .array-data 8
        -0x5dd7c1d1d9ffa771L
        0x7c8fd7c28b351118L    # 9.930182541006921E291
    .end array-data

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_6
    .array-data 8
        0x541ae4b077336ee8L    # 1.4360944464288523E97
        -0x2490f9e9734c389dL    # -2.7525983674727252E132
        -0x4d3c9597a5ea69bcL    # -3.687253306501452E-64
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_7
    .array-data 8
        -0x15d80ae402c7c39bL    # -2.3472958556086857E203
        0x517a09939056a69aL    # 3.1613788970167225E84
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_8
    .array-data 8
        0x262b416b39c5d449L    # 8.052794881510744E-125
        0x4e648ea3059842edL    # 4.433762736488876E69
    .end array-data
.end method

.method private final declared-synchronized zzi()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/util/Pair;

    .line 37
    .line 38
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sub-long v4, v0, v4

    .line 47
    .line 48
    iget-wide v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzb:J

    .line 49
    .line 50
    cmp-long v8, v4, v6

    .line 51
    .line 52
    if-lez v8, :cond_0

    .line 53
    .line 54
    iget-object v4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzg:Ljava/util/ArrayDeque;

    .line 55
    .line 56
    new-instance v5, Landroid/util/Pair;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/util/Pair;

    .line 69
    .line 70
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v5, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v2, 0x6

    .line 93
    new-array v2, v2, [J

    .line 94
    .line 95
    fill-array-data v2, :array_0

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 114
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    throw v0

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x79159dafc79f48e0L    # 1.8709864888286666E275
        0x4a7dbf6970a55703L    # 6.956210577745225E50
        -0x1f1942ec3ff42fe5L    # -6.243830748885476E158
        -0x34da76cba4cc3370L    # -1.0313673507847039E54
        -0x31bd023314faa8d5L    # -1.0240146963944863E69
        0x12d93a9a943a8543L    # 7.146967842940504E-218
    .end array-data
.end method

.method private static final zzj(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdwa;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/util/Pair;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v4, v0, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v2, v0, [J

    .line 50
    .line 51
    fill-array-data v2, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    fill-array-data v0, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object v1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdwa;->zza()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v1, v0, [J

    .line 89
    .line 90
    fill-array-data v1, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v0, v0, [J

    .line 103
    .line 104
    fill-array-data v0, :array_4

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    monitor-exit p0

    .line 118
    const/4 p1, 0x0

    .line 119
    return-object p1

    .line 120
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw p1

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x328ad2b64da2b57aL    # 3.183756354798224E-65
        0x6483a233ef300a5eL
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 8
        -0x21cec2781ddb936dL    # -5.382005218443833E145
        -0x24918b948c2c988fL    # -2.7021120906201872E132
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 8
        -0x4686c4dab08c129cL    # -7.77491387673036E-32
        -0x2ef02113735871bdL    # -3.0231643467049832E82
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x7dec7319e47c1f39L
        0xbd060f9b89d84d7L
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_4
    .array-data 8
        0x3cf5c884df43369cL    # 4.836859239274761E-15
        0x606c49dac25e90b2L
    .end array-data
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdwa;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzi()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzg(Lcom/google/android/gms/internal/ads/zzdwa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzh(Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v0, v1, [J

    .line 22
    .line 23
    fill-array-data v0, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zzh(Lcom/google/android/gms/internal/ads/zzdwa;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x677fb4557c8f3cb4L    # 3.5314838025076765E190
        -0x35b236d0eae22b85L    # -8.706420920412947E49
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_1
    .array-data 8
        0x7ef72dd0eaf5869dL    # 3.9738343804641294E303
        -0x14486db0f9693f1L
    .end array-data
.end method

.method public final declared-synchronized zzf(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzc;->zze:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method
