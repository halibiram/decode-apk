.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzcj;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzcj;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzcj;->zza:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzcj;->zzb:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    new-array v6, v6, [J

    .line 15
    .line 16
    fill-array-data v6, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v6, v1, [J

    .line 32
    .line 33
    fill-array-data v6, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v5, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v5, 0x7

    .line 52
    new-array v5, v5, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v5, v1, [J

    .line 70
    .line 71
    fill-array-data v5, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v7, v1, [J

    .line 89
    .line 90
    fill-array-data v7, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v0, v0, [J

    .line 103
    .line 104
    const-wide v8, -0x605d0979236ef10L

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    aput-wide v8, v0, v4

    .line 110
    .line 111
    invoke-direct {v7, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_1

    .line 127
    .line 128
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    const/4 v4, 0x6

    .line 131
    new-array v4, v4, [J

    .line 132
    .line 133
    fill-array-data v4, :array_5

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v1, v1, [J

    .line 159
    .line 160
    fill-array-data v1, :array_6

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    const/4 v2, 0x4

    .line 180
    new-array v2, v2, [J

    .line 181
    .line 182
    fill-array-data v2, :array_7

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_1
    return-object v0

    .line 196
    nop

    .line 197
    :array_0
    .array-data 8
        -0x7861c6fd6f57995fL    # -5.586722789503356E-272
        -0x7dca0d60d5859c71L    # -5.2436552578596E-298
        -0x652f1ec1807691bdL
        -0x79bc2a8f0ecc4ba5L
        0x4b53119adfe85f8bL    # 7.305701037772375E54
        0x7ecf180a4d91b4a4L    # 6.663477841607465E302
        -0x3033b570a1ea25e0L    # -2.5592991858777853E76
        0x3848f8beeb492dd0L    # 1.4677024507622307E-37
    .end array-data

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
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_1
    .array-data 8
        -0x41bf96b7fb01573dL    # -7.642086213698401E-9
        0x49e6e780becef263L    # 1.0460838752025083E48
        -0x7a568ad1dc63af8dL
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_2
    .array-data 8
        0x4b02233bad9b238dL    # 2.17154969732041E53
        0x23c30028a0182649L
        -0x287619ab10b72b37L    # -4.9829172845774675E113
        0x306b840c211d0bbdL    # 1.9010493901904519E-75
        0x3afc1f3682d12330L    # 1.4538694737113432E-24
        0x7a47e8853c0a9a9fL    # 1.0849615805127346E281
        0x3ef182aa58f05eb5L    # 1.669922999888883E-5
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
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
    .line 278
    .line 279
    .line 280
    .line 281
    :array_3
    .array-data 8
        0x7185b1d3ff4b8f57L    # 7.063485340789627E238
        0x2f55552b47044dd5L    # 1.1244672881179798E-80
        0x50125f189884a982L    # 5.318176959646664E77
    .end array-data

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
        0xee9d0fe663a5aaaL    # 7.929189492795143E-237
        0x15ab5b23bdbf0d34L    # 2.726627257928809E-204
        0x2a10b77036dd2927L    # 4.555419144351247E-106
    .end array-data

    :array_5
    .array-data 8
        0x5cce76f8f837570bL    # 1.1337190499914268E139
        -0x37967b62f0e6cddbL    # -6.946666212244982E40
        -0x1a1aa3b01ad4fa33L    # -7.090889423546757E182
        0x5770e135dc427989L    # 1.623767458412675E113
        -0x627d64f00e802d72L
        0x1685ca306a435fc5L
    .end array-data

    :array_6
    .array-data 8
        0x27e7b1994a4db8e9L
        0x7fe6bc1014a56afbL    # 1.2771834676582866E308
        -0x2061e414d26244afL    # -3.942348213089693E152
    .end array-data

    :array_7
    .array-data 8
        0x288cc5f2de60ce6dL
        0x61fa74f5ea36226aL    # 9.522176842463114E163
        0x7dcaf37687a23885L    # 8.812944885584038E297
        0x494d9465cceea8b2L    # 1.3192977399920939E45
    .end array-data
.end method
