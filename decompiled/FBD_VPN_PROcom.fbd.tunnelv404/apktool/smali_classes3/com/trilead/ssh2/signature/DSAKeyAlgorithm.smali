.class public Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;
.super Lcom/trilead/ssh2/signature/KeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/trilead/ssh2/signature/KeyAlgorithm<",
        "Ljava/security/interfaces/DSAPublicKey;",
        "Ljava/security/interfaces/DSAPrivateKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-class v2, Ljava/security/interfaces/DSAPrivateKey;

    .line 32
    .line 33
    invoke-direct {p0, v0, v1, v2}, Lcom/trilead/ssh2/signature/KeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0xb399fdeea304229L
        0x21764d607ab602c4L
        -0x4c9dbf4623a603acL    # -3.549614917319119E-61
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
    .line 50
    .line 51
    .line 52
    .line 53
    :array_1
    .array-data 8
        -0x74de57e8dc40cfffL    # -4.703713221149446E-255
        0xd75f1837ccc6902L
    .end array-data
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/DSAPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey([B)Ljava/security/interfaces/DSAPublicKey;
    .locals 6

    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 3
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v3

    .line 8
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v1

    if-nez v1, :cond_0

    .line 10
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 11
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v5, v4, p1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/IOWarningException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 8
        0x7e02dae578313a79L    # 9.86492347974705E298
        -0x72a9655fc2e4ebffL
    .end array-data

    :array_1
    .array-data 8
        0x45ae9fdbbdac5790L    # 4.7389035985360047E27
        -0x625b022a95eae337L    # -7.119617321301433E-166
        0x4c7aa35d258b1fedL    # 2.6753650426822035E60
        0x65c6a8facdba2ee2L    # 1.88056684271529E182
        -0x34aecd9a90e79d95L    # -6.588527916139919E54
    .end array-data

    :array_2
    .array-data 8
        -0xb08651e07b2c2a4L
        0xf7e036a892304d0L
        -0x7a16f3d472ba19d2L    # -3.449682428141064E-280
        0x32b4ba29c088c0b9L    # 1.9681652785144046E-64
        -0x735f338eb08e3d37L    # -7.5080433083558E-248
    .end array-data

    :array_3
    .array-data 8
        -0x5e8294f93c00b6b0L
        -0x25500c81b26e7154L    # -6.9210917307490285E128
        0x7102b3ae7d6a4ce3L    # 2.3785479379245953E236
        0x77a8b6413aaccb25L    # 2.5498396409869355E268
        0x3c959540ab6901a3L    # 7.488113611586384E-17
    .end array-data

    :array_4
    .array-data 8
        -0x14e5311880ce91a8L    # -8.60686521914423E207
        -0x6ed6e91b7e7728e5L    # -5.295463267541065E-226
        0x16e9a12956110d47L    # 2.678635539347778E-198
        -0x14b50dd568a54042L    # -6.920870320918723E208
    .end array-data
.end method

.method public decodeSignature([B)[B
    .locals 14

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    array-length v2, p1

    .line 4
    const/16 v3, 0x28

    .line 5
    .line 6
    if-ne v2, v3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_7

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length v4, p1

    .line 33
    if-ne v4, v3, :cond_6

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_5

    .line 40
    .line 41
    :goto_0
    const/4 v2, 0x0

    .line 42
    aget-byte v4, p1, v2

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, 0x1

    .line 47
    const/4 v8, 0x3

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    aget-byte v9, p1, v7

    .line 51
    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    aget-byte v10, p1, v6

    .line 55
    .line 56
    if-nez v10, :cond_1

    .line 57
    .line 58
    shl-int/lit8 v4, v4, 0x18

    .line 59
    .line 60
    const/high16 v11, -0x1000000

    .line 61
    .line 62
    and-int/2addr v4, v11

    .line 63
    shl-int/lit8 v9, v9, 0x10

    .line 64
    .line 65
    const/high16 v12, 0xff0000

    .line 66
    .line 67
    and-int/2addr v9, v12

    .line 68
    or-int/2addr v4, v9

    .line 69
    shl-int/lit8 v9, v10, 0x8

    .line 70
    .line 71
    const v10, 0xff00

    .line 72
    .line 73
    .line 74
    and-int/2addr v9, v10

    .line 75
    or-int/2addr v4, v9

    .line 76
    aget-byte v9, p1, v8

    .line 77
    .line 78
    and-int/lit16 v9, v9, 0xff

    .line 79
    .line 80
    or-int/2addr v4, v9

    .line 81
    add-int v9, v5, v4

    .line 82
    .line 83
    add-int/lit8 v13, v4, 0x5

    .line 84
    .line 85
    aget-byte v9, p1, v9

    .line 86
    .line 87
    shl-int/lit8 v9, v9, 0x18

    .line 88
    .line 89
    and-int/2addr v9, v11

    .line 90
    add-int/lit8 v11, v4, 0x6

    .line 91
    .line 92
    aget-byte v13, p1, v13

    .line 93
    .line 94
    shl-int/lit8 v13, v13, 0x10

    .line 95
    .line 96
    and-int/2addr v12, v13

    .line 97
    or-int/2addr v9, v12

    .line 98
    add-int/lit8 v12, v4, 0x7

    .line 99
    .line 100
    aget-byte v11, p1, v11

    .line 101
    .line 102
    shl-int/lit8 v11, v11, 0x8

    .line 103
    .line 104
    and-int/2addr v10, v11

    .line 105
    or-int/2addr v9, v10

    .line 106
    add-int/lit8 v4, v4, 0x8

    .line 107
    .line 108
    aget-byte v10, p1, v12

    .line 109
    .line 110
    and-int/lit16 v10, v10, 0xff

    .line 111
    .line 112
    or-int/2addr v9, v10

    .line 113
    new-array v10, v9, [B

    .line 114
    .line 115
    invoke-static {p1, v4, v10, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    .line 117
    .line 118
    move-object p1, v10

    .line 119
    :cond_1
    aget-byte v4, p1, v2

    .line 120
    .line 121
    and-int/lit16 v4, v4, 0x80

    .line 122
    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v4, 0x0

    .line 128
    :goto_1
    const/16 v9, 0x14

    .line 129
    .line 130
    aget-byte v10, p1, v9

    .line 131
    .line 132
    and-int/lit16 v10, v10, 0x80

    .line 133
    .line 134
    if-eqz v10, :cond_3

    .line 135
    .line 136
    const/4 v10, 0x1

    .line 137
    goto :goto_2

    .line 138
    :cond_3
    const/4 v10, 0x0

    .line 139
    :goto_2
    array-length v11, p1

    .line 140
    invoke-static {v11, v0, v4, v10}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(IIII)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    new-array v11, v11, [B

    .line 145
    .line 146
    const/16 v12, 0x30

    .line 147
    .line 148
    aput-byte v12, v11, v2

    .line 149
    .line 150
    array-length v12, p1

    .line 151
    if-ne v12, v3, :cond_4

    .line 152
    .line 153
    const/16 v3, 0x2c

    .line 154
    .line 155
    aput-byte v3, v11, v7

    .line 156
    .line 157
    add-int/2addr v3, v4

    .line 158
    int-to-byte v3, v3

    .line 159
    aput-byte v3, v11, v7

    .line 160
    .line 161
    add-int/2addr v3, v10

    .line 162
    int-to-byte v3, v3

    .line 163
    aput-byte v3, v11, v7

    .line 164
    .line 165
    aput-byte v6, v11, v6

    .line 166
    .line 167
    aput-byte v9, v11, v8

    .line 168
    .line 169
    add-int v3, v9, v4

    .line 170
    .line 171
    int-to-byte v3, v3

    .line 172
    aput-byte v3, v11, v8

    .line 173
    .line 174
    add-int/2addr v4, v5

    .line 175
    invoke-static {p1, v2, v11, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .line 177
    .line 178
    aget-byte v2, v11, v8

    .line 179
    .line 180
    add-int/2addr v2, v5

    .line 181
    aput-byte v6, v11, v2

    .line 182
    .line 183
    aget-byte v2, v11, v8

    .line 184
    .line 185
    add-int/2addr v2, v1

    .line 186
    aput-byte v9, v11, v2

    .line 187
    .line 188
    aget-byte v2, v11, v8

    .line 189
    .line 190
    add-int/2addr v2, v1

    .line 191
    aget-byte v1, v11, v2

    .line 192
    .line 193
    add-int/2addr v1, v10

    .line 194
    int-to-byte v1, v1

    .line 195
    aput-byte v1, v11, v2

    .line 196
    .line 197
    aget-byte v1, v11, v8

    .line 198
    .line 199
    add-int/2addr v1, v0

    .line 200
    add-int/2addr v1, v10

    .line 201
    invoke-static {p1, v9, v11, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .line 203
    .line 204
    return-object v11

    .line 205
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 206
    .line 207
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v1, v1, [J

    .line 210
    .line 211
    fill-array-data v1, :array_0

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 226
    .line 227
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 228
    .line 229
    new-array v1, v1, [J

    .line 230
    .line 231
    fill-array-data v1, :array_1

    .line 232
    .line 233
    .line 234
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 246
    .line 247
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    new-array v1, v1, [J

    .line 250
    .line 251
    fill-array-data v1, :array_2

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 266
    .line 267
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 268
    .line 269
    new-array v1, v1, [J

    .line 270
    .line 271
    fill-array-data v1, :array_3

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw p1

    .line 285
    :array_0
    .array-data 8
        0x36ee99ea2a86fac3L    # 4.2881455682643745E-44
        0x68bcc87a04887742L    # 3.361823707432733E196
        -0x14987b9887ba00d7L    # -2.4160876589712383E209
        -0x7dda032d42482b7bL    # -2.6265879572117E-298
        -0x6e69c902d01668b5L    # -6.001580815076834E-224
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
    :array_1
    .array-data 8
        -0xea55d871708cf63L    # -1.0839860853771238E238
        -0x3933c3a30ed1ab52L    # -1.1453798456878393E33
        -0x5f3dc54061407038L    # -6.961240107914666E-151
        0x431bd2870f4b714bL    # 1.9578254725520188E15
        -0x619444798c8156bfL    # -3.852668885514701E-162
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
    :array_2
    .array-data 8
        0x336c93f80361509cL    # 5.557542190499E-61
        -0x5fb9c700cd74907dL    # -3.31488101858619E-153
        -0xafd0676bb70e6f7L    # -4.45166440257239E255
        -0x187442964b7f8bc5L    # -6.179766598762384E190
        0x1bec7e31df948a21L    # 3.6000614382345275E-174
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
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
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_3
    .array-data 8
        0x39f13c2f48f78012L    # 1.359609383622189E-29
        0x6bfb55f408a9965bL    # 1.4378978580250794E212
        0x6eb05a7215c71d07L    # 1.5132903601018773E225
        0x5de9edfb0b50bc51L    # 2.529554009319317E144
        0x365fcb9a29af7443L    # 8.702096604208809E-47
    .end array-data
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 3

    .line 2
    invoke-interface {p1}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v1}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 6
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 7
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 8
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 9
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public encodeSignature([B)[B
    .locals 10

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    aget-byte v1, p1, v1

    .line 15
    .line 16
    and-int/lit16 v1, v1, 0xff

    .line 17
    .line 18
    new-array v2, v1, [B

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v1, 0x5

    .line 26
    .line 27
    add-int/lit8 v5, v1, 0x6

    .line 28
    .line 29
    aget-byte v3, p1, v3

    .line 30
    .line 31
    and-int/lit16 v3, v3, 0xff

    .line 32
    .line 33
    new-array v6, v3, [B

    .line 34
    .line 35
    invoke-static {p1, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x28

    .line 39
    .line 40
    new-array v5, p1, [B

    .line 41
    .line 42
    const/16 v7, 0x14

    .line 43
    .line 44
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    sub-int/2addr v1, v8

    .line 53
    rsub-int/lit8 v9, v8, 0x14

    .line 54
    .line 55
    invoke-static {v2, v1, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    sub-int/2addr v3, v7

    .line 59
    rsub-int/lit8 v1, v7, 0x28

    .line 60
    .line 61
    invoke-static {v6, v3, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v5, v4, p1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$DsaCertificateDecoder;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v2, p0, v3}, Lcom/trilead/ssh2/signature/DSAKeyAlgorithm$1;-><init>(Lcom/trilead/ssh2/signature/DSAKeyAlgorithm;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 18
    .line 19
    aput-object v0, v3, v1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aput-object v2, v3, v0

    .line 23
    .line 24
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
