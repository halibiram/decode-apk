.class Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;
.super Lcom/trilead/ssh2/crypto/CertificateDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaCertificateDecoder"
.end annotation


# instance fields
.field private final ecParameterSpec:Ljava/security/spec/ECParameterSpec;

.field private final oid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/trilead/ssh2/crypto/CertificateDecoder;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->oid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    return-void
.end method


# virtual methods
.method public createKeyPair(Lcom/trilead/ssh2/crypto/PEMStructure;)Ljava/security/KeyPair;
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/trilead/ssh2/crypto/PEMStructure;->getData()[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    new-instance v1, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 22
    .line 23
    invoke-direct {v1, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v2, 0x0

    .line 43
    move-object v3, v2

    .line 44
    :goto_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x1

    .line 49
    if-lez v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructedType()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readConstructed()Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    if-eq v4, v5, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v6}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v6}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOid()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->oid:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    new-instance v1, Ljava/math/BigInteger;

    .line 83
    .line 84
    invoke-direct {v1, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 85
    .line 86
    .line 87
    array-length p1, v3

    .line 88
    sub-int/2addr p1, v5

    .line 89
    new-array v2, p1, [B

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static {v3, v5, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {v2, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 108
    .line 109
    invoke-direct {v2, v1, v3}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 115
    .line 116
    invoke-direct {v1, p1, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    const/4 v3, 0x2

    .line 122
    new-array v3, v3, [J

    .line 123
    .line 124
    fill-array-data v3, :array_0

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v2, Ljava/security/KeyPair;

    .line 147
    .line 148
    invoke-direct {v2, v1, p1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    return-object v2

    .line 152
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 153
    .line 154
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v0, v0, [J

    .line 157
    .line 158
    fill-array-data v0, :array_1

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 173
    .line 174
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v0, v0, [J

    .line 177
    .line 178
    fill-array-data v0, :array_2

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    const/4 v3, 0x7

    .line 202
    new-array v3, v3, [J

    .line 203
    .line 204
    fill-array-data v3, :array_3

    .line 205
    .line 206
    .line 207
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 229
    .line 230
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    const/4 v1, 0x6

    .line 233
    new-array v1, v1, [J

    .line 234
    .line 235
    fill-array-data v1, :array_4

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :array_0
    .array-data 8
        0x3194bd15ed14798dL    # 7.512089974620016E-70
        -0x4e30dd00e86cb3ddL    # -9.022848227649585E-69
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
    :array_1
    .array-data 8
        -0x4e50d37bab62b18L
        -0x468546ce0848c475L    # -8.23478916518324E-32
        0x2f9861941bfeb92cL    # 2.056248642974947E-79
        -0xeed41f532500974L    # -4.7673902878316E236
        -0x1e6f581c0a000807L    # -9.366638508177606E161
    .end array-data

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
    :array_2
    .array-data 8
        -0x692705db39a9b894L
        0x679a0d7b527f792aL    # 1.1607785923900033E191
        0x8db9ad459215d60L
        -0x6a53885011c681b3L
        0x336e9751f6f862baL    # 5.949026500620895E-61
    .end array-data

    .line 286
    .line 287
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
    :array_3
    .array-data 8
        0x1fa257cd6a6d038L
        -0x4ab09a4ac37a9538L    # -6.556061453683062E-52
        -0x61826f2a7380ffeeL    # -8.214693547848959E-162
        -0x2f922b42c6643dd6L    # -2.7633561947806773E79
        0x14b2386486b23341L    # 5.542148491503665E-209
        -0x246b5efffda7b9b8L    # -1.464246875385579E133
        -0x54eb846c09267c41L    # -3.658046583551767E-101
    .end array-data

    .line 310
    .line 311
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
    .line 340
    .line 341
    :array_4
    .array-data 8
        0x64e9550bc706502cL    # 1.2831592257142902E178
        -0x5467d016f4ccfd5cL
        0x26ad1232eda0b44cL
        0x209329ea028dd44eL    # 9.147494741693148E-152
        -0xd5274f0258696adL
        -0x1eb63a2031722973L    # -4.529307168244571E160
    .end array-data
.end method

.method public getEndLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x5e247f6682a6ffeaL
        -0x1c0cfe3a035b6c39L    # -2.9381193483994087E173
        0x1a427a7e02ecd8a4L    # 3.479036621684672E-182
        -0x70e6f9370582d77dL    # -6.149270502418151E-236
        0x36668b242a8f20d6L    # 1.2339922188138791E-46
    .end array-data
.end method

.method public getStartLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        0x38106713650a6c8cL    # 1.2050756433479364E-38
        0x6b9e05765e09c2a4L    # 2.4674424160828918E210
        -0x716e5d0e0f14100L
        0x19ebf1d9c1dddc2eL    # 8.220771173319657E-184
        0x4815648b0f155240L    # 1.8198936350267316E39
    .end array-data
.end method
