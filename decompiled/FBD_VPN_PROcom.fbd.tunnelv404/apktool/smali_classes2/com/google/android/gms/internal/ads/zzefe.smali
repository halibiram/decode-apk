.class public final Lcom/google/android/gms/internal/ads/zzefe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefe;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    return-void
.end method

.method public static zza(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v6, v2, [J

    .line 13
    .line 14
    fill-array-data v6, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v6, v2, [J

    .line 33
    .line 34
    fill-array-data v6, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v7, v4, [J

    .line 47
    .line 48
    const-wide v8, 0x40eaf8ec9441297cL    # 55239.393097477936

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    aput-wide v8, v7, v3

    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_1

    .line 71
    .line 72
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v2, v2, [J

    .line 75
    .line 76
    fill-array-data v2, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v6, v4, [J

    .line 89
    .line 90
    const-wide v7, -0xf5031db5dfee916L    # -6.320412234088194E234

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    aput-wide v7, v6, v3

    .line 96
    .line 97
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v6, v1, [J

    .line 111
    .line 112
    fill-array-data v6, :array_3

    .line 113
    .line 114
    .line 115
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {p0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v5, v0, [J

    .line 128
    .line 129
    fill-array-data v5, :array_4

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v6, v4, [J

    .line 142
    .line 143
    const-wide v7, -0x638685a7c73a2fddL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    aput-wide v7, v6, v3

    .line 149
    .line 150
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_2

    .line 166
    .line 167
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v0, v0, [J

    .line 170
    .line 171
    fill-array-data v0, :array_5

    .line 172
    .line 173
    .line 174
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 182
    .line 183
    new-array v4, v4, [J

    .line 184
    .line 185
    const-wide v5, -0x73288a5dd3e0fdd8L

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    aput-wide v5, v4, v3

    .line 191
    .line 192
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v1, v1, [J

    .line 206
    .line 207
    fill-array-data v1, :array_6

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_2
    :goto_0
    return-void

    .line 221
    :cond_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    const/4 p1, 0x5

    .line 224
    new-array p1, p1, [J

    .line 225
    .line 226
    fill-array-data p1, :array_7

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    nop

    .line 241
    :array_0
    .array-data 8
        0x2bd24fcef05f5f37L    # 1.339526460712181E-97
        0xca54604750be392L
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
    :array_1
    .array-data 8
        0x5ae1d40fe44b023eL    # 6.179021779105094E129
        -0x66ffd7aa0310bd8fL    # -2.901139096298195E-188
    .end array-data

    :array_2
    .array-data 8
        0x6cab10c25eadd51L
        0x5263715aa9d141e8L    # 7.735480863999346E88
    .end array-data

    :array_3
    .array-data 8
        0x58e67efa10904e88L    # 1.8153219212724526E120
        -0x3398ad7e17c3af50L    # -1.1711713335877114E60
        -0x23b0fd2221296c9aL    # -4.508027914943541E136
        0x6ea9f7c8b90cf747L    # 1.201499841181594E225
    .end array-data

    :array_4
    .array-data 8
        0x3d6d963df924aeb9L    # 8.409097954492544E-13
        0x6ee6b250ead578c8L
        0x784928f4309949feL
    .end array-data

    :array_5
    .array-data 8
        0x787b0bf14e337d89L    # 2.2861756307597177E272
        0xb616c00625dee1fL
        -0x244e9f55cb95192fL    # -4.933871297231756E133
    .end array-data

    :array_6
    .array-data 8
        0x42221014d2ef3514L    # 3.878960575160367E10
        -0x3586f1b9dc69dbe6L    # -5.859044952999737E50
        -0x139b8a68a20ac8c7L    # -1.377522095803196E214
        0x6c4d1ae2289887faL    # 4.8990824298270006E213
    .end array-data

    :array_7
    .array-data 8
        0xda7baadb22fdc11L
        -0x181dab24aedf43b3L    # -2.6136328187451754E192
        -0x4eea176eb3c64e2fL    # -3.0999382324225264E-72
        0x1f8be8a77e989eeL
        0x73faf19540467777L    # 4.822734793719119E250
    .end array-data
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefe;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzces;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :array_0
    .array-data 8
        0x76f9d95cd9de39e6L    # 1.3023303913458121E265
        -0x1c5cef351e238e69L    # -9.209963765907274E171
        -0x725447266f96496eL    # -8.120058535356629E-243
    .end array-data
.end method
