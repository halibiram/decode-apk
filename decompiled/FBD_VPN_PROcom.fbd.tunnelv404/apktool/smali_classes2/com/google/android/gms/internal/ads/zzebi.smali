.class public final synthetic Lcom/google/android/gms/internal/ads/zzebi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzebl;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Lcom/google/android/gms/internal/ads/zzebl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    new-instance p1, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:Ljava/lang/String;

    .line 22
    .line 23
    :try_start_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v6, v0, [J

    .line 26
    .line 27
    fill-array-data v6, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    new-instance v6, Lorg/json/JSONObject;

    .line 38
    .line 39
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v6, v0, [J

    .line 48
    .line 49
    fill-array-data v6, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v5, v0, [J

    .line 65
    .line 66
    fill-array-data v5, :array_2

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    new-array v6, v6, [J

    .line 80
    .line 81
    const-wide v7, 0x339b199dc49ac3ccL    # 4.216102745100524E-60

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    aput-wide v7, v6, v9

    .line 88
    .line 89
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v5, v0, [J

    .line 102
    .line 103
    fill-array-data v5, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    new-instance v5, Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v4, v0, [J

    .line 124
    .line 125
    fill-array-data v4, :array_4

    .line 126
    .line 127
    .line 128
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v3, v0, [J

    .line 141
    .line 142
    fill-array-data v3, :array_5

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v0, v0, [J

    .line 158
    .line 159
    fill-array-data v0, :array_6

    .line 160
    .line 161
    .line 162
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Lorg/json/JSONObject;

    .line 170
    .line 171
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    return-object p1

    .line 182
    :catch_0
    move-exception p1

    .line 183
    new-instance v0, Lorg/json/JSONException;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    const/4 v2, 0x4

    .line 196
    new-array v2, v2, [J

    .line 197
    .line 198
    fill-array-data v2, :array_7

    .line 199
    .line 200
    .line 201
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {v0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    nop

    .line 217
    :array_0
    .array-data 8
        0x25394c085710ef9aL
        -0x7d001f62c109f707L
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 8
        -0x159b21521cecc700L    # -3.2716452741393616E204
        0x5e19c729e23e02d8L
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x7d54ff897c595d1eL    # 5.36435676855239E295
        0x6146092efeef048L
    .end array-data

    :array_3
    .array-data 8
        -0x6cfdef6b6f4ed021L    # -4.093977933931853E-217
        0x1e6d815d64414435L    # 4.098952080504243E-162
    .end array-data

    :array_4
    .array-data 8
        0x791ab5e07028f6b2L    # 2.311944237584821E275
        0x45fff3538ffd6f93L    # 1.5821118225908015E29
    .end array-data

    :array_5
    .array-data 8
        0x126539b3686cb65L
        -0xf025c9946700af2L    # -1.884732438976051E236
    .end array-data

    :array_6
    .array-data 8
        0x76ad1d638e3f28cfL    # 4.583951771055329E263
        -0x553450a0edc9f647L
    .end array-data

    :array_7
    .array-data 8
        0x730e8965a15134aeL    # 1.668048511207801E246
        -0x34f6ca61d50805ccL    # -3.0182313742308094E53
        -0x42e6b6e04c31e082L    # -2.245815976714392E-14
        0x5e3d54a56fc0a418L    # 9.156291212303918E145
    .end array-data
.end method
