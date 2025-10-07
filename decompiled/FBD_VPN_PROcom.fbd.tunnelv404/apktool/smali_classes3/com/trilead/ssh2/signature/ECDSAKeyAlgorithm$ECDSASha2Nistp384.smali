.class public Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp384;
.super Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSASha2Nistp384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 11

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
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    .line 32
    .line 33
    new-instance v3, Ljava/security/spec/EllipticCurve;

    .line 34
    .line 35
    new-instance v4, Ljava/security/spec/ECFieldFp;

    .line 36
    .line 37
    new-instance v5, Ljava/math/BigInteger;

    .line 38
    .line 39
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v7, 0xd

    .line 42
    .line 43
    new-array v8, v7, [J

    .line 44
    .line 45
    fill-array-data v8, :array_2

    .line 46
    .line 47
    .line 48
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const/16 v8, 0x10

    .line 56
    .line 57
    invoke-direct {v5, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v5}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Ljava/math/BigInteger;

    .line 64
    .line 65
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v9, v7, [J

    .line 68
    .line 69
    fill-array-data v9, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-direct {v5, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Ljava/math/BigInteger;

    .line 83
    .line 84
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v10, v7, [J

    .line 87
    .line 88
    fill-array-data v10, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-direct {v6, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 102
    .line 103
    .line 104
    new-instance v4, Ljava/security/spec/ECPoint;

    .line 105
    .line 106
    new-instance v5, Ljava/math/BigInteger;

    .line 107
    .line 108
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v9, v7, [J

    .line 111
    .line 112
    fill-array-data v9, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-direct {v5, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    new-instance v6, Ljava/math/BigInteger;

    .line 126
    .line 127
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v10, v7, [J

    .line 130
    .line 131
    fill-array-data v10, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-direct {v6, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Ljava/math/BigInteger;

    .line 148
    .line 149
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v7, v7, [J

    .line 152
    .line 153
    fill-array-data v7, :array_7

    .line 154
    .line 155
    .line 156
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-direct {v5, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    const/4 v6, 0x1

    .line 167
    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 168
    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;I)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :array_0
    .array-data 8
        0x1f5f43f1a136b802L
        -0x3bde3ae3070fb5a3L    # -1.6389907514440276E20
        0x7cd0de12067ca610L    # 1.683238083329238E293
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x2620abfbbcfddb77L    # 4.925774879375815E-125
        0x67f62d44766bc20cL    # 6.323778205243627E192
    .end array-data

    :array_2
    .array-data 8
        0x1d3c8feee8d83d5fL    # 7.568236247548839E-168
        -0x91b463e1bb08293L    # -5.220999219762812E264
        -0x2ab320cb5b6d2c90L    # -8.083209942391616E102
        0x87ecb0da2eba356L
        0x8eb3c650cc8978fL
        -0x47b955de5a38d038L    # -1.3321040479566263E-37
        -0x7e8ea64ee56306b1L
        0xe0b979253014e75L    # 5.172468648357451E-241
        0x459dae307074d78dL    # 2.296411781369455E27
        -0x4615f327804d8b6cL
        -0x41df80323c7a5273L    # -1.920763572653274E-9
        -0x44ad538c008b46f2L    # -6.178590839611942E-23
        0x712b7a06c376068dL    # 1.3978180196824614E237
    .end array-data

    :array_3
    .array-data 8
        0x1e2d1db17c267b9aL
        -0x747d925d551995aeL
        -0x188dac9f2127d2f3L    # -2.0412574163751232E190
        -0x61b5a515bad7a850L    # -9.153298712180487E-163
        -0x1dbc61348845ef32L
        -0x1fb588d0a8fe792dL    # -7.0969045402640405E155
        -0x29a7b5520b250b3L
        -0x340219c5fcf83bd0L    # -1.1730068146669978E58
        -0x30a1ccec19d9c923L    # -2.1343174993428825E74
        0x61c4cc4683f53dabL    # 9.356818856459556E162
        -0x37787b74e6145b64L    # -2.5608559326778663E41
        -0x14087efc259ebd62L    # -1.2363405035050126E212
        -0x1c44e24c760043a1L    # -2.619771996279745E172
    .end array-data

    :array_4
    .array-data 8
        0x2bf083519c6c124L
        0xa4e77bbe2a4ca22L
        -0x102511b34d2fcc0cL    # -6.532913127524096E230
        0x3937821f20bcb3e0L    # 4.527531478694949E-33
        0x1e30d0660ffb10b8L
        0x400040eb9ec8ea4aL    # 2.031699409967847
        0x50785afed27c3d91L    # 4.512269647902058E79
        -0x51872ab99fa81240L    # -7.989364916716878E-85
        0x4d9588a6582a5522L    # 5.669431462817282E65
        0x1102700c2213c093L    # 9.728808790589058E-227
        -0x5cbdcee0ac494df2L
        -0x412c96c3e2ae2598L    # -4.6279605686512875E-6
        -0x4e8610598be7c89bL    # -2.3486930268762933E-70
    .end array-data

    :array_5
    .array-data 8
        0x767b78b12aa92409L    # 5.406520726654517E262
        0x416adbcba462f2a3L    # 1.4081629137078589E7
        0x308eb6cf93031fbL
        0x57ecab18542230adL    # 3.529969091757528E115
        0x2ffb1c8541847a8fL    # 1.463366825330325E-77
        -0x24cdb155ac2ea819L    # -2.0304023373039246E131
        -0x31762592281de2caL    # -2.2304061861527015E70
        -0x92f3689e8727f74L    # -2.114405204460242E264
        -0x2729e94612edb54cL    # -8.912302386967577E119
        0x48790870d88c5884L    # 1.3629246282172333E41
        0x12aa9aaea2012eb0L    # 9.42071376930946E-219
        0x35c2eb1b0f90b076L    # 1.0112876577286836E-49
        -0x1896f4b0240b25eaL    # -1.3948073412424933E190
    .end array-data

    :array_6
    .array-data 8
        0x6d260b65a45f5f1cL    # 6.079495244495556E217
        0x5f31ec08bdb7ddb0L    # 3.6666083687806565E150
        0x5be019f19cc987c8L    # 3.657212368428678E134
        0x6f70d45a07b745cL
        0x26481cc03b77807eL    # 2.849643857043126E-124
        0x26ce9fec4f23d0b3L    # 9.265387799876809E-122
        -0x6dd75f8d29709261L    # -3.40643681448774E-221
        0x2e86a7b5e116b17aL    # 1.4577316223193952E-84
        0x555e240065527d08L    # 1.68768299740343E103
        -0x63dc797ee7d97378L    # -3.947231558874732E-173
        0x17cece58d733aaa3L    # 5.275076036996601E-194
        0x70fb9cb860ddaa6cL    # 1.7558905669550432E236
        0x5d5b637c910028afL    # 5.2185292458996614E141
    .end array-data

    :array_7
    .array-data 8
        -0x305ee5ec8b9d7ff9L    # -3.8676953602537205E75
        0x774ca21da0994e10L    # 4.6163321181514754E266
        0x7f2675cecd213934L
        0x77bfbec2561472b4L    # 6.551090091109117E268
        -0x77c89f51fc2cec5bL    # -4.425117785527974E-269
        0x15e92cf1d80d9e8cL
        0x53fbdde633993fccL    # 3.720194399367353E96
        -0x17fa239fa9bddf1aL    # -1.2467350886971684E193
        -0xe994c1b8f972f48L    # -1.8479243281845987E238
        0x282e2395999f1bb7L    # 3.824551637789974E-115
        -0x550df19b34425da4L    # -8.061733635434241E-102
        -0x25d39b0e92c04366L    # -2.4025891026865407E126
        0x2c0c09bd1202212aL    # 1.6408129334937602E-96
    .end array-data
.end method


# virtual methods
.method public bridge synthetic decodePublicKey([B)Ljava/security/PublicKey;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->decodePublicKey([B)Ljava/security/interfaces/ECPublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 0

    .line 1
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->encodePublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getCertificateDecoders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/trilead/ssh2/crypto/CertificateDecoder;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$EcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/KeyAlgorithm;->getKeyFormat()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getCurveName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;->getEcParameterSpec()Ljava/security/spec/ECParameterSpec;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-direct {v1, v2, v4, v5}, Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$OpenSshEcdsaCertificateDecoder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    new-array v2, v2, [Lcom/trilead/ssh2/crypto/CertificateDecoder;

    .line 45
    .line 46
    aput-object v0, v2, v3

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v2, v0

    .line 50
    .line 51
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x784e41b6896b005eL
        -0xdee23e8cb9949ddL    # -2.9772232810696735E241
        0x467e3a111e4ff3d6L    # 3.8317051214117745E31
    .end array-data
.end method
