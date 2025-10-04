.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$Base64Encoding;,
        Lcom/google/common/io/BaseEncoding$Base16Encoding;,
        Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$Alphabet;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation


# static fields
.field private static final BASE16:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32_HEX:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64_URL:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/16 v4, 0x9

    .line 21
    .line 22
    new-array v5, v4, [J

    .line 23
    .line 24
    fill-array-data v5, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v5, 0x3d

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v0, v1, v3, v5}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 44
    .line 45
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    .line 46
    .line 47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    new-array v6, v3, [J

    .line 51
    .line 52
    fill-array-data v6, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v4, v4, [J

    .line 65
    .line 66
    fill-array-data v4, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v6, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v0, v1, v4, v5}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    .line 80
    .line 81
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 82
    .line 83
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v2, [J

    .line 86
    .line 87
    fill-array-data v4, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 v6, 0x5

    .line 100
    new-array v7, v6, [J

    .line 101
    .line 102
    fill-array-data v7, :array_5

    .line 103
    .line 104
    .line 105
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v0, v1, v4, v5}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    .line 116
    .line 117
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 118
    .line 119
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v4, v3, [J

    .line 122
    .line 123
    fill-array-data v4, :array_6

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    new-array v6, v6, [J

    .line 136
    .line 137
    fill-array-data v6, :array_7

    .line 138
    .line 139
    .line 140
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-direct {v0, v1, v4, v5}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    .line 151
    .line 152
    new-instance v0, Lcom/google/common/io/BaseEncoding$Base16Encoding;

    .line 153
    .line 154
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v2, v2, [J

    .line 157
    .line 158
    fill-array-data v2, :array_8

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v3, v3, [J

    .line 171
    .line 172
    fill-array-data v3, :array_9

    .line 173
    .line 174
    .line 175
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$Base16Encoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :array_0
    .array-data 8
        -0x198cb2a2d1cbd8ddL    # -3.280682686800887E185
        -0x4becea178a9bb780L    # -7.601270096739652E-58
    .end array-data

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
    :array_1
    .array-data 8
        0x1b199a189495b9caL    # 3.948711547425634E-178
        -0x1c3782a2a6e95edL
        0x59a9be92a026c84eL    # 8.50925284813324E123
        -0x1dca6f696a729bd6L    # -1.2418325247321693E165
        -0x573f7c657633696eL
        -0x7aee2722c2c41363L    # -3.000491410095657E-284
        0x940d432e35bad32L
        -0xb74f0b7fcef2954L
        -0x765e724b8bbdeff7L    # -2.787265690835158E-262
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
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_2
    .array-data 8
        0x6de32ce99d692e75L    # 2.1660683728580264E221
        -0x1d3efc130f2bf641L    # -5.016814987203498E167
        -0x3865f7f900d7f695L    # -8.650402043826485E36
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
    :array_3
    .array-data 8
        0x370cf3efee596584L    # 1.6228650404703365E-43
        0x6d873cd28265b369L    # 4.1014543992431725E219
        -0x53e9580e13f4b365L    # -2.6517056057087806E-96
        0x1545ac29c0eab522L    # 3.375221144864491E-206
        0x683919c6ddbc4ac2L    # 1.1452041081062471E194
        -0x39f380be7ac85d09L    # -2.822215444907554E29
        -0x1930b839c64ca557L    # -1.7012932712644028E187
        0x359ec6769bdfd153L    # 2.0563748750619913E-50
        -0xb07784cd7ed8a79L
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
        0x7a9032e45ac94332L    # 2.3523325107301646E282
        -0x2f6121e15fa2912aL    # -2.2875073546977774E80
    .end array-data

    :array_5
    .array-data 8
        0x3ec5c47e7e8b94b5L    # 2.594894784701565E-6
        -0x3a55d5e3ca78e7a7L    # -4.0487591767261855E27
        0xbcab82122de928L
        -0x376c1c27d074b428L    # -4.331662225262009E41
        -0x62cc9af4c19c56dbL    # -5.139082119051264E-168
    .end array-data

    :array_6
    .array-data 8
        0x488e975161b62d40L    # 3.3310742377166332E41
        -0x34719262a588efa8L    # -9.326210729705811E55
        0x54594bd0111e9895L    # 2.1612893914099514E98
    .end array-data

    :array_7
    .array-data 8
        -0x590111b6fb3beda7L    # -7.486398280563357E-121
        -0x218a2c0e171602ccL
        0x688c980123d37134L    # 4.174635704641806E195
        -0x12cf4f9e95f59ee8L    # -9.205064573316316E217
        0x43373b1c08083b5dL    # 6.538916044225373E15
    .end array-data

    :array_8
    .array-data 8
        0x58d4189bf8c6f3c8L    # 8.108317045168472E119
        -0x7dbdd0b7f3b09cb5L    # -8.689209599653913E-298
    .end array-data

    :array_9
    .array-data 8
        -0x3897b536b632fdf4L    # -1.009055764931333E36
        -0x1eddbec358b672b0L    # -8.020206481459224E159
        0x2dceeeaa20aa5148L    # 4.8591830562450883E-88
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static base16()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method public static base32()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method public static base32Hex()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method public static base64()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method public static base64Url()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    .line 2
    .line 3
    return-object v0
.end method

.method private static extract([BI)[B
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    new-array v0, p1, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static ignoringReader(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/common/io/BaseEncoding$3;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$3;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static separatingAppendable(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    .line 16
    .line 17
    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/io/BaseEncoding$4;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static separatingWriter(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/common/io/BaseEncoding;->separatingAppendable(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/common/io/BaseEncoding$5;

    .line 6
    .line 7
    invoke-direct {p2, p1, p0}, Lcom/google/common/io/BaseEncoding$5;-><init>(Ljava/lang/Appendable;Ljava/io/Writer;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method


# virtual methods
.method public abstract canDecode(Ljava/lang/CharSequence;)Z
.end method

.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->decodeChecked(Ljava/lang/CharSequence;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public final decodeChecked(Ljava/lang/CharSequence;)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/BaseEncoding;->decodeTo([BLjava/lang/CharSequence;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v0, p1}, Lcom/google/common/io/BaseEncoding;->extract([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public abstract decodeTo([BLjava/lang/CharSequence;)I
.end method

.method public final decodingSource(Lcom/google/common/io/CharSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/io/BaseEncoding$2;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSource;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public abstract decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end method

.method public encode([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/io/BaseEncoding;->encodeTo(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public abstract encodeTo(Ljava/lang/Appendable;[BII)V
.end method

.method public final encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/io/BaseEncoding$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public abstract encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end method

.method public abstract lowerCase()Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract maxDecodedSize(I)I
.end method

.method public abstract maxEncodedSize(I)I
.end method

.method public abstract omitPadding()Lcom/google/common/io/BaseEncoding;
.end method

.method public trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p1
.end method

.method public abstract upperCase()Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract withPadChar(C)Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
.end method
