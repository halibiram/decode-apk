.class public Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm$ECDSASha2Nistp256;
.super Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/signature/ECDSAKeyAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECDSASha2Nistp256"
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
    const/16 v7, 0x9

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
        0x2aeaf5a778075113L    # 6.018450699837417E-102
        -0xe938caaa41b10ecL    # -2.3157774187893788E238
        0x14b3511b6b35765fL    # 5.87568838189546E-209
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x2a42230b1b468ea6L    # 3.953978453700426E-105
        0x8e5daa93c8d3e24L
    .end array-data

    :array_2
    .array-data 8
        0x1f286ca6932e2fb1L    # 1.389813401376761E-158
        -0x3cf645a34706cecdL    # -9.052227276078464E14
        -0xa250fe4e3e013a4L    # -5.177263108169511E259
        -0x6c72d7b8ec503687L    # -1.69161263439286E-214
        0x3441296e454a26d2L    # 5.468077329393464E-57
        0x251bde83a69dce07L    # 6.28212143146144E-130
        -0x6c7c1166d5aa41f8L
        -0x15e2a151b3fb0885L    # -1.4387945360078295E203
        -0x3effbe196c7a3404L    # -133180.82203254092
    .end array-data

    :array_3
    .array-data 8
        0x411d4228fb4d30abL    # 479370.2454116444
        -0x41e1a6dff308a18cL    # -1.7664945512137382E-9
        -0x1819a62a165839f1L    # -3.186710831670758E192
        -0x33e97628e8a3a8adL    # -3.536901751329843E58
        -0x5bc1b36926ab68b6L
        0x7b3a927a27d6e460L    # 3.951327567156601E285
        0x66170e5d4157c1ebL    # 6.122988116505339E183
        -0x3e0ab7a09fda3693L    # -5.713032706361676E9
        0x288cf75144f6f338L
    .end array-data

    :array_4
    .array-data 8
        -0x1e1610e70696ec18L    # -4.666988683853741E163
        0x5e88ee08275dfaa3L    # 2.4903873347469514E147
        -0x6452f6d5dc513dL
        -0x6322ab8555b01758L    # -1.214323692766669E-169
        -0x2a289a18ec8c6e5fL    # -3.3539632363352443E105
        -0x3485e91a3edc51e8L    # -3.998195548215002E55
        -0x2be905751a452387L    # -1.227054166336753E97
        0x349fa73815456d72L    # 3.22729319045902E-55
        -0x799e7fc91fd34fffL    # -6.170393189979054E-278
    .end array-data

    :array_5
    .array-data 8
        -0x1de887630fd2b6fcL    # -3.379029011358371E164
        0x44b49f9ffdceafeeL    # 9.739189056298887E22
        -0x4be7c16f1c38ad80L    # -9.65588872234289E-58
        0x8b3c5c7a2bbe16cL    # 9.581359504122E-267
        -0x2013f234742e479L    # -8.045043567603387E298
        -0x193b3080077f107eL    # -1.1318550383908104E187
        -0x32ef77a8a06289c0L    # -1.7002775639075257E63
        0x5c8d3199d510ee50L    # 6.79012818676933E137
        0x1b90ec136a5ba865L    # 6.681571601863853E-176
    .end array-data

    :array_6
    .array-data 8
        0x3bb4188138245d32L    # 4.2554346010655755E-21
        0x66178b568ce96540L    # 6.25263330839489E183
        0x1dce253e64fe4b3L
        -0x7b0c5dd442c00940L    # -8.252041300003834E-285
        0x652149a3107d85a1L    # 1.4010810478801915E179
        0x2c2ce6579d0600d9L    # 6.764969517129013E-96
        -0x28d2610195402e9bL    # -8.904491941321792E111
        0x1b2644960f9fe016L    # 6.868977934029581E-178
        0x170a95a3dc843448L    # 1.111378190006389E-197
    .end array-data

    :array_7
    .array-data 8
        -0x3bf8cded454adb7bL    # -5.348540815424518E19
        -0x39d2848db0c1cc23L    # -1.1679107804397574E30
        0x581dd63e5332f4deL    # 2.9390831642865533E116
        0x391187a077af4142L    # 8.440287972553457E-34
        -0x499f30342ae08e7bL    # -9.20242772659098E-47
        0x5c523e37ea2e6721L    # 5.303899369448124E136
        0x5aee87064749276cL    # 1.05803133105118E130
        0x63a98e3d81bad1d7L    # 1.2345084459148652E172
        -0x4a9897b5d866dc9L
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
    const/4 v2, 0x4

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
        0x8018aa3c35b3154L
        0x63989d1763c2926cL    # 5.945020512632205E171
        0xff4bb7e7f0f1295L    # 8.346279116463205E-232
        0x5ae1fb5666e8caeeL    # 6.232194531059128E129
    .end array-data
.end method
