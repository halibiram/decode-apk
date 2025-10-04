.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzci;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzci;->zza:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v5, v2, [J

    .line 26
    .line 27
    fill-array-data v5, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    new-array v6, v6, [J

    .line 41
    .line 42
    const-wide v7, -0x6f6d963a9bc08093L    # -7.590525167291661E-229

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    aput-wide v7, v6, v3

    .line 48
    .line 49
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/16 v4, 0xa

    .line 69
    .line 70
    new-array v4, v4, [J

    .line 71
    .line 72
    fill-array-data v4, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v5, v2, [J

    .line 96
    .line 97
    fill-array-data v5, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v2, v2, [J

    .line 114
    .line 115
    fill-array-data v2, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/util/SharedPreferencesUtils;->publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/16 v1, 0x9

    .line 132
    .line 133
    new-array v1, v1, [J

    .line 134
    .line 135
    fill-array-data v1, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-object v3

    .line 149
    :array_0
    .array-data 8
        0x649ed74a031b861dL    # 4.881862563254954E176
        0x53e955a162c5609L
        -0x37ff84f236ad2ca2L    # -7.01010562175272E38
    .end array-data

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
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0x392a4ab7fbc70a93L    # -1.7611727484686287E33
        0x42db580286fbce92L    # 1.2025925389087428E14
        0x3c8e28cabde08689L    # 5.231812135073224E-17
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 8
        0xd7b1a49648e5b2aL
        0x22ca40abd298bbe7L    # 4.30570949189298E-141
        -0x2dcd5b4164428a56L    # -9.271862394837655E87
        0x4aac7c515e657f5eL    # 5.3288672363905556E51
        0x670e4d391e547a4bL    # 2.636899787061423E188
        -0x7adcc2a2674eb634L    # -6.469230211464812E-284
        0x165fa107a3550c4aL    # 6.456373992022739E-201
        0x29f9b26a9893e2faL
        -0xb258f5becf25829L    # -7.75385827377106E254
        -0x8a1bce00d4b57b0L    # -9.757908969777087E266
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_3
    .array-data 8
        0x1bc5368d346518ffL    # 6.700643396031556E-175
        0x70b0434f58f53a0cL    # 6.463614023000571E234
        -0x79f27584bb9350f0L
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
    :array_4
    .array-data 8
        -0x5cfe137be9b39fa6L
        0x67804ec04eae4782L    # 3.632937325661301E190
        0x426788d2769e88d5L    # 8.08637936884276E11
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
    :array_5
    .array-data 8
        -0x297e6d2efe0d181dL    # -5.159014634764904E108
        -0x1b7816cbb7c53c67L    # -1.892449873745336E176
        0x54ffd3310842d9d0L    # 2.784367278746872E101
        -0x28b569df7be6695L
        0x13a42893b995619fL    # 4.678120378484034E-214
        0x42f7232e28ac2502L    # 4.070378513864481E14
        0x3950737c34236a93L    # 1.26734771880308E-32
        0x1b4da84df3c122cL
        0x6702d7d8fc980689L    # 1.6397623898811324E188
    .end array-data
.end method
