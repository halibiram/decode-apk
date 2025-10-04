.class public final Lcom/google/android/gms/internal/ads/zzdqi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdqd;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdqd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqi;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqi;->zzb:Lcom/google/android/gms/internal/ads/zzdqd;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    const/4 p2, 0x2

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ge v3, v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v7, p2, [J

    .line 60
    .line 61
    fill-array-data v7, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_2

    .line 76
    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v8, p2, [J

    .line 86
    .line 87
    fill-array-data v8, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v9, p2, [J

    .line 104
    .line 105
    fill-array-data v9, :array_3

    .line 106
    .line 107
    .line 108
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_3

    .line 120
    .line 121
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v7, v1, [J

    .line 124
    .line 125
    fill-array-data v7, :array_4

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdqh;

    .line 136
    .line 137
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-direct {v7, v6, v4}, Lcom/google/android/gms/internal/ads/zzdqh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v9, p2, [J

    .line 152
    .line 153
    fill-array-data v9, :array_5

    .line 154
    .line 155
    .line 156
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_4

    .line 168
    .line 169
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdqi;->zzb:Lcom/google/android/gms/internal/ads/zzdqd;

    .line 170
    .line 171
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v8, v1, [J

    .line 174
    .line 175
    fill-array-data v8, :array_6

    .line 176
    .line 177
    .line 178
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v5, v4, v7}, Lcom/google/android/gms/internal/ads/zzdqd;->zze(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdqf;

    .line 190
    .line 191
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdqi;->zza:Ljava/util/concurrent/Executor;

    .line 195
    .line 196
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    goto :goto_1

    .line 201
    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzd(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqi;->zza:Ljava/util/concurrent/Executor;

    .line 217
    .line 218
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqg;->zza:Lcom/google/android/gms/internal/ads/zzdqg;

    .line 219
    .line 220
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgen;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfws;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    return-object p1

    .line 225
    :array_0
    .array-data 8
        0x32ad56bb8daa4a14L    # 1.3929427834404344E-64
        0x3bb08cf895043524L    # 3.504740286844884E-21
        0x20eb6378c44d6a30L    # 4.183515624312471E-150
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
        -0x78e04b60889109d5L
        0x3986bb87282be007L    # 1.4010003942549252E-31
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
    :array_2
    .array-data 8
        0x179f7da552931e10L    # 6.740413899853961E-195
        0x157d44f8b09c3e4bL    # 3.6466751540001895E-205
    .end array-data

    :array_3
    .array-data 8
        -0x6b954dd154f48f78L    # -2.537579360972059E-210
        0x614191299e32e19cL    # 3.087211108893981E160
    .end array-data

    :array_4
    .array-data 8
        -0x34cb1d2edafdb80eL    # -2.0004817299375073E54
        0x3118ed0c9e01d68dL    # 3.5269003003037297E-72
        0x232ddaf98e81008aL
    .end array-data

    :array_5
    .array-data 8
        -0x2385f7f97b084ab7L    # -3.027294855430984E137
        -0x30a0381e84c48ab5L    # -2.2460714198805158E74
    .end array-data

    :array_6
    .array-data 8
        0x631c9f1c01b96cb8L    # 2.7004136292093973E169
        -0x5a9d04198376cb07L
        0xa3f676589f193f8L
    .end array-data
.end method
