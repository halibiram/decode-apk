.class public final synthetic Lcom/google/android/gms/internal/ads/zzeep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeep;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeep;->zza:Lcom/google/android/gms/internal/ads/zzeep;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeez;

    .line 3
    .line 4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 5
    .line 6
    new-instance v2, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v4, v0, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzeez;->zza:I

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    new-instance v3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzeez;->zzb:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Ljava/util/List;

    .line 66
    .line 67
    new-instance v7, Lorg/json/JSONArray;

    .line 68
    .line 69
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_2

    .line 81
    .line 82
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v5, v0, [J

    .line 103
    .line 104
    fill-array-data v5, :array_1

    .line 105
    .line 106
    .line 107
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzeez;->zzc:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v5, v0, [J

    .line 124
    .line 125
    fill-array-data v5, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v0, v0, [J

    .line 141
    .line 142
    fill-array-data v0, :array_3

    .line 143
    .line 144
    .line 145
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzeez;->zzd:J

    .line 153
    .line 154
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1

    .line 175
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 184
    .line 185
    const/4 v2, 0x7

    .line 186
    new-array v2, v2, [J

    .line 187
    .line 188
    fill-array-data v2, :array_4

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lorg/json/JSONException;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    const/4 v2, 0x4

    .line 218
    new-array v2, v2, [J

    .line 219
    .line 220
    fill-array-data v2, :array_5

    .line 221
    .line 222
    .line 223
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    nop

    :array_0
    .array-data 8
        0x3c79a705eb3ae061L    # 2.2249939794030223E-17
        -0x3eb1a10e3cff2340L    # -3980771.5234638155
    .end array-data

    :array_1
    .array-data 8
        -0x1afff67ed49595ffL    # -3.24933149834034E178
        0x466dfa675c704731L    # 1.9000903370058432E31
    .end array-data

    :array_2
    .array-data 8
        0x64154b0a685806beL    # 1.3166094468393363E174
        -0x3e53767ad285d0dcL    # -2.393872867386409E8
    .end array-data

    :array_3
    .array-data 8
        0x31df60ea4a9b6f22L    # 1.8185875531728728E-68
        -0x44b32f842c1bb0a2L    # -4.766940864903937E-23
    .end array-data

    :array_4
    .array-data 8
        -0x9fd6b9b4d3f70ffL    # -2.856696251089814E260
        0x6f40ed5ce9c55546L    # 8.019953212801576E227
        -0xe9d3c28c406f9f8L
        0x53c9ed2f73dd970cL    # 4.3264593162948094E95
        -0x19bb788bc935c3f1L    # -4.3615176065652006E184
        0x4fd2a8a69e872641L    # 3.37584461807184E76
        0x1c1112d98df0038aL    # 1.725791897768448E-173
    .end array-data

    :array_5
    .array-data 8
        -0x4dcadc40e0248f35L    # -7.841126445292646E-67
        0x655a6562e799574dL    # 1.711418447840216E180
        -0x460f5db232e25c53L    # -1.3121912023404664E-29
        -0x12c2f8c77525d39bL    # -1.6010949297714787E218
    .end array-data
.end method
