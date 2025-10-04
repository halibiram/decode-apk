.class public final Lcom/google/android/gms/internal/ads/zzgpa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoz;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgpa;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zza()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpa;->zzc()Ljava/security/SecureRandom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static zzb(I)[B
    .locals 1

    .line 1
    new-array p0, p0, [B

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpa;->zza:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/security/SecureRandom;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method private static zzc()Ljava/security/SecureRandom;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    new-array v3, v1, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v4, v0, [J

    .line 20
    .line 21
    fill-array-data v4, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object v0

    .line 36
    :catch_0
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v3, v1, [J

    .line 39
    .line 40
    fill-array-data v3, :array_2

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v4, v0, [J

    .line 53
    .line 54
    fill-array-data v4, :array_3

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    return-object v0

    .line 69
    :catch_1
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v3, v1, [J

    .line 72
    .line 73
    fill-array-data v3, :array_4

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v0, [J

    .line 86
    .line 87
    fill-array-data v4, :array_5

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 98
    .line 99
    .line 100
    move-result-object v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    return-object v0

    .line 102
    :catch_2
    :try_start_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v1, v1, [J

    .line 105
    .line 106
    fill-array-data v1, :array_6

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_8

    .line 116
    :try_start_4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/4 v3, 0x4

    .line 119
    new-array v3, v3, [J

    .line 120
    .line 121
    fill-array-data v3, :array_7

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v0, v0, [J

    .line 138
    .line 139
    fill-array-data v0, :array_8

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/security/Provider;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_8

    .line 159
    .line 160
    :try_start_5
    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    return-object v0

    .line 165
    :catch_3
    move-exception v0

    .line 166
    goto :goto_0

    .line 167
    :catch_4
    move-exception v0

    .line 168
    goto :goto_0

    .line 169
    :catch_5
    move-exception v0

    .line 170
    goto :goto_0

    .line 171
    :catch_6
    move-exception v0

    .line 172
    goto :goto_0

    .line 173
    :catch_7
    move-exception v0

    .line 174
    :goto_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 175
    .line 176
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    const/4 v3, 0x5

    .line 179
    new-array v3, v3, [J

    .line 180
    .line 181
    fill-array-data v3, :array_9

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    throw v1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_8

    .line 195
    :catch_8
    new-instance v0, Ljava/security/SecureRandom;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 198
    .line 199
    .line 200
    return-object v0

    .line 201
    :array_0
    .array-data 8
        0x720257864b7e5e19L    # 1.5288000845867512E241
        0x73ad767025062c43L    # 1.6480038379894598E249
    .end array-data

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
    :array_1
    .array-data 8
        -0x48470a012c6e44fbL    # -2.8653730442208455E-40
        0x1cf8de44cf034478L
        -0x29abeb29c2cfcb12L    # -7.369063905646872E107
    .end array-data

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
    :array_2
    .array-data 8
        0x2bbad468ca28322eL    # 4.906565792309206E-98
        0x2aa124163d7d3600L    # 2.391590104500134E-103
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
    .line 239
    .line 240
    .line 241
    :array_3
    .array-data 8
        -0x7ee9ff11c97889ebL
        -0x4904ea8949a394fL
        -0xb7d8c0a647ef0abL    # -1.691112743593797E253
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
    :array_4
    .array-data 8
        -0x3e7afc179fef4c92L    # -4.4072204008154735E7
        -0x6987533c0f4175b3L
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
    :array_5
    .array-data 8
        0x5149d85f9dff1c35L    # 3.922553401704419E83
        0x3394e9ef7906cf64L    # 3.253674027609692E-60
        0xafcc88d9b1416bL
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
    :array_6
    .array-data 8
        -0x5c7697ce6544c03eL
        -0x7b64dbe1f7820ffcL
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_7
    .array-data 8
        -0x195ab005bf32dadbL    # -2.897876965445564E186
        -0x1a58b0ad06a51138L    # -4.836231314362907E181
        -0x6c0e15f4040a0e47L    # -1.33033674919493E-212
        0x1e9e144f1b541d45L
    .end array-data

    :array_8
    .array-data 8
        0x1f22fe5455b0386L
        -0x2583d40c2dfd8f28L    # -7.628006713623813E127
        -0x2adb4c7716ad502bL    # -1.448926419335054E102
    .end array-data

    :array_9
    .array-data 8
        -0x4bfe8804fec88a5dL    # -3.4786503618568295E-58
        -0x4b9ce6abe51ba0fbL    # -2.4341092939125087E-56
        0x5500b3b74aa4d6f4L    # 2.922519650682149E101
        -0x5c83abb0312d5fb6L    # -9.515650747532348E-138
        -0x22c3f5713c8742f5L    # -1.3357193470110356E141
    .end array-data
.end method
