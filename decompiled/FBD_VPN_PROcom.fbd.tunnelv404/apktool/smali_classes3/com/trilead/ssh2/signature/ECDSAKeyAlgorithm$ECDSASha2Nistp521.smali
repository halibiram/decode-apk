.class public Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp521;
.super Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSASha2Nistp521"
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
    const/16 v7, 0x12

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
        -0x12e0df61f8efccb4L    # -4.2921994158680665E217
        0x2eb622bc8f3ab5c7L    # 1.1394473745917887E-83
        0x78d1e4cc000dd126L    # 9.680039750963704E273
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x2572c951f2a5c7c4L
        0xebb105cf8ca65b3L
    .end array-data

    :array_2
    .array-data 8
        0x21770afe6f9c27b0L    # 1.802105094425173E-147
        -0x4a4e81536a1b1730L    # -4.675954003413909E-50
        -0x768f60afe19f9898L
        0xda0c1a36d1c1fd6L
        0x71e054f8297b323bL    # 3.403169456660421E240
        0x6ecdbfc32950aa0L
        -0x607fce93185f67ebL    # -5.897139583344553E-157
        0x5a7b956962da82dcL    # 7.468781326387927E127
        0x2751f5cac6d4bf0cL
        0x431c675e671d94fL
        -0xb7416aa7e99a1d7L
        0x647098634517b160L    # 6.567221584463321E175
        0x68f846908656171fL    # 4.536573075661457E197
        -0x1b5af3f37d6fb70cL    # -6.663141447459132E176
        0x1b5219b0b60bd53bL    # 4.466728899686459E-177
        -0x74f6151e1b789e13L    # -1.72610397951287E-255
        0x295d344214012687L
        0x2ba706f3144c4747L    # 2.1055790572778954E-98
    .end array-data

    :array_3
    .array-data 8
        0xb5b6782f4f5ec0eL
        0x78239f07862162cbL    # 5.182888587287851E270
        0x47a78495b2921e0bL    # 1.5630331657622333E37
        -0x330b4901796a4d7eL    # -5.325989496569092E62
        0x4315eeefd0707ad1L    # 1.5434220681376522E15
        -0x794d905dd54b6275L
        -0x38d00ca9f4f6780L
        -0x63d22eb7139b7cc6L
        -0x5c7b46d75854b0f5L
        -0x862d6871c6974eaL
        -0xc2b0ba733ba3dc8L    # -9.376770905028032E249
        0x367cbd17c6f9f87eL    # 3.1462045149183377E-46
        -0x1d3f5bbe1aa5e94fL    # -4.906631887777057E167
        0x20acf7234645d264L
        -0x217b250c3a712ce6L    # -2.083358299292151E147
        0x52c26432f27d4497L    # 4.682993541208726E90
        0x2fff8b450ce37500L    # 1.7026218383327152E-77
        -0x4bf761b81963ac4bL    # -4.9023987616581374E-58
    .end array-data

    :array_4
    .array-data 8
        -0x453c9d7aaea4a4d9L    # -1.2527163612468486E-25
        -0x4d1a3b42f71d7861L    # -1.6536348489480196E-63
        0x4e42e03ef1a125acL    # 1.0177897738934251E69
        -0xb0859a09dad4973L
        -0x2bb962c134c1f541L    # -9.660744441014157E97
        0x59b6c884c2bd0c4eL    # 1.5061020434682602E124
        0x44fd05b21ad4dc3dL    # 2.1928591284435006E24
        -0x26c3ac090e457a8aL    # -7.314994051305528E121
        -0x2a6b0f38c5de026eL    # -1.8760585713099426E104
        0x2d0eaa251608c48L
        -0x28c39dcc4ec382ecL
        -0x1c5c353a703bab0fL    # -9.560903052571978E171
        0x3ece1468acbfa2cfL    # 3.5857823146200332E-6
        -0x112e615d7a1ed470L    # -6.521905046587575E225
        0x5af683236358c820L    # 1.5604764381128947E130
        0x5ecd6eff81e5eae7L    # 4.704473863976179E148
        0xbbc2f57b445f222L
        0x330699e374260686L    # 6.867537017005566E-63
    .end array-data

    :array_5
    .array-data 8
        0x135e7928722dcaa3L
        0xda63b511a2e9059L
        0x7417010c313c2791L    # 1.6470299720699166E251
        0x77fbbf95ef7bbf00L    # 9.162073899147443E269
        -0x3ae7176ae5514da8L    # -7.528139795578506E24
        -0x7f0b17b2aede04cL
        -0x4ecba5035c4da295L    # -1.1520758008833575E-71
        0x59269ec1864d70abL    # 2.9205427461393176E121
        0x27c53d74bf5178feL
        -0x40d9fec9f9c52f0aL    # -1.678827712702291E-4
        -0x1339577c2a95c5c1L    # -9.763679061932187E215
        -0xb0be42d0e54c23fL
        0x62ecf3102ca8879L
        0x7028b0e448a7fa23L    # 1.9166599171792772E232
        -0x1f640de0a36a7daaL    # -2.3980275118507426E157
        0x63dda5f4db9076b0L    # 1.1457684217503381E173
        -0x718537e82198cd77L    # -6.426288239892813E-239
        -0x66f0220a75472d22L    # -5.721821161398249E-188
    .end array-data

    :array_6
    .array-data 8
        -0xbe47e9b4890e1d7L    # -1.969314352749889E251
        0x12bc6ddfd7d1ddb1L
        0x1d119e6eac6df76fL
        0x43575840f53aa15fL    # 2.6283841919026556E16
        -0x39f4d7e9028b4a6fL    # -2.6894594769470602E29
        -0x66822ca85fbb3d91L    # -6.854743905266702E-186
        -0x6fb3b46d5806ef78L
        0x7d0e968f37182563L    # 2.441960338348133E294
        -0x1c43c77fc6ce98ffL    # -2.7264994831643578E172
        -0x7715894ed49d98f2L
        0x518c37198012e150L    # 6.8516068939291E84
        0x321b786987ff2d0eL    # 2.547330732701585E-67
        -0x5175f1e4feb51edaL
        -0x4e07f0bd0f94820bL    # -5.577629533466343E-68
        -0x3e45f08c65834285L    # -4.3722025048726624E8
        0xda04e3b1ed75987L
        0x72b6b0d51c7c7233L    # 3.873337872089335E244
        0x6c9aa1c1edfbb68L
    .end array-data

    :array_7
    .array-data 8
        -0x3d70e5e367889a1L
        -0x46af5fc8c2c85363L    # -1.2808083463036786E-32
        -0x674a700cff814abbL    # -1.209867632026128E-189
        0x6ed70a52ceae061cL    # 8.528357274356495E225
        0x2d61b3ad60d1bb07L    # 4.345005315821366E-90
        0x46dca145419c977dL    # 2.3227385474095317E33
        0x26290958898fa3d4L    # 7.397169147244477E-125
        0x14885c79fe674af7L    # 9.262588242229673E-210
        -0x1238edf8b298ba1L
        -0x7524bf264ca467e5L
        -0x4a27510ce9748413L    # -2.638916468154705E-49
        -0x32572a5f2f0fe523L    # -1.3076882696671625E66
        -0x45738784758a71ceL
        -0x437ae20280d9d74dL    # -3.663241464041969E-17
        0x1aeae6873bf0783L
        -0x12c1a54e30eede4bL    # -1.6742362917168853E218
        0x4c1b5319d9e945b0L    # 4.287984424706489E58
        0x1daaa35641f0cf6dL    # 9.034717593932011E-166
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
        -0xfabd380c39ae13bL    # -1.2528086021708386E233
        -0x7e3899ca1ed890b6L    # -4.367535543646707E-300
        0xcb3e0caeac4a924L
    .end array-data
.end method
