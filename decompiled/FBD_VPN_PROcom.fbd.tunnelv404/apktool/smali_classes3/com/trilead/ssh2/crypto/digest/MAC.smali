.class public Lcom/trilead/ssh2/crypto/digest/MAC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mac:Lcom/trilead/ssh2/crypto/digest/Digest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field size:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v4, v3, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    goto :goto_1

    .line 37
    :sswitch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v4, v1, [J

    .line 40
    .line 41
    fill-array-data v4, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    goto :goto_1

    .line 59
    :sswitch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v4, v1, [J

    .line 62
    .line 63
    fill-array-data v4, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    goto :goto_1

    .line 81
    :sswitch_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v4, v1, [J

    .line 84
    .line 85
    fill-array-data v4, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    const/4 p1, 0x3

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 104
    :goto_1
    if-eqz p1, :cond_4

    .line 105
    .line 106
    const/16 v0, 0xc

    .line 107
    .line 108
    if-eq p1, v2, :cond_3

    .line 109
    .line 110
    if-eq p1, v3, :cond_2

    .line 111
    .line 112
    if-eq p1, v1, :cond_1

    .line 113
    .line 114
    return-void

    .line 115
    :cond_1
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    .line 116
    .line 117
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/MD5;

    .line 118
    .line 119
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_2
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    .line 129
    .line 130
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/MD5;

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/MD5;-><init>()V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0x10

    .line 136
    .line 137
    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    .line 144
    .line 145
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 146
    .line 147
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v1, p2, v0}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    new-instance p1, Lcom/trilead/ssh2/crypto/digest/HMAC;

    .line 157
    .line 158
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 159
    .line 160
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 161
    .line 162
    .line 163
    const/16 v1, 0x14

    .line 164
    .line 165
    invoke-direct {p1, v0, p2, v1}, Lcom/trilead/ssh2/crypto/digest/HMAC;-><init>(Lcom/trilead/ssh2/crypto/digest/Digest;[BI)V

    .line 166
    .line 167
    .line 168
    iput-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 169
    .line 170
    :goto_2
    iget-object p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 171
    .line 172
    invoke-interface {p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->getDigestLength()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    .line 177
    .line 178
    return-void

    .line 179
    :sswitch_data_0
    .sparse-switch
        -0x19bd318e -> :sswitch_3
        0x28bd74ff -> :sswitch_2
        0x2d89672b -> :sswitch_1
        0x6490ba98 -> :sswitch_0
    .end sparse-switch

    .line 180
    .line 181
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
    :array_0
    .array-data 8
        -0x1516870768375d7bL    # -1.0222552423898487E207
        0x78231d15eb6a98d7L    # 5.048809326622777E270
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
    :array_1
    .array-data 8
        -0x8ba18578272497fL    # -3.531569411120361E266
        0x5d5f339e62dfc1a9L    # 5.945047637303785E141
        -0x7fd140b74ea2f91dL    # -8.551849689532537E-308
    .end array-data

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
    :array_2
    .array-data 8
        0x656a32405025663aL    # 3.3969352854473597E180
        -0x58301b9fb497c2e2L    # -6.323459414137698E-117
        0x6e6fcd6e60c2188bL    # 9.196606100300696E223
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
    :array_3
    .array-data 8
        0x4c092e9ed48091aL
        0x23654d3ccc5ec1a6L
        0x471754e831cea924L
    .end array-data
.end method

.method public static checkMacList([Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static getKeyLen(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x14

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v3, v1, [J

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [J

    .line 50
    .line 51
    fill-array-data v2, :array_2

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v2, 0x10

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    return v2

    .line 70
    :cond_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    return v2

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v3, 0x4

    .line 101
    new-array v3, v3, [J

    .line 102
    .line 103
    fill-array-data v3, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v1, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :array_0
    .array-data 8
        -0x67b478d826715823L
        0x972e93701e6b963L
        0x383447f1653481daL    # 5.960058211059344E-38
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 8
        0x17332fa8486c1abbL    # 6.416688269366147E-197
        -0x52ee2d89f9a733a3L    # -1.367037820396797E-91
        0x1a625d704c8713c0L    # 1.383067680651773E-181
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        -0x26a8560b920768a1L    # -2.444242664307474E122
        -0x4352c1adc47dfc2cL    # -2.0291714328025007E-16
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
    :array_3
    .array-data 8
        0xd958a6d3b50a907L
        -0x1a01b0ec5b6aebd4L    # -2.0122756057248466E183
        0x25a34b62eb30bbdbL
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
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
    :array_4
    .array-data 8
        -0x6e02219132faba86L
        0x6c9ec04238775a55L    # 1.656366019117659E215
        0xa4d7289ba255aeL
        -0x176c2ef7ad805446L    # -5.786352393201498E195
    .end array-data
.end method

.method public static getMacList()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    new-array v4, v4, [J

    .line 48
    .line 49
    fill-array-data v4, :array_3

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    filled-new-array {v0, v2, v1, v3}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x11350d77f65b697cL    # -4.987276533787727E225
        0x5266973862e58dc5L    # 8.98790567530721E88
        0x44d6f11f66375b7L
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x13a0e5932c11855cL    # -1.0470859544572196E214
        -0x6c2136978fafb158L
        0x20170c0a8bddaa9aL    # 4.297316169237079E-154
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 8
        0x2dbd6200f0a7f2aL
        -0x6a08fe8bac8886c9L    # -7.337667518306492E-203
        -0x57924e86ba6696f9L
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_3
    .array-data 8
        0x669b829374395c9fL    # 1.8702898383752922E186
        0x46e69b208df02c8dL    # 3.668027612664739E33
    .end array-data
.end method


# virtual methods
.method public getMac([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/trilead/ssh2/crypto/digest/Digest;->digest([BI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public initMac(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/trilead/ssh2/crypto/digest/Digest;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x18

    .line 9
    .line 10
    int-to-byte v1, v1

    .line 11
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x10

    .line 17
    .line 18
    int-to-byte v1, v1

    .line 19
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 23
    .line 24
    shr-int/lit8 v1, p1, 0x8

    .line 25
    .line 26
    int-to-byte v1, v1

    .line 27
    invoke-interface {v0, v1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    invoke-interface {v0, p1}, Lcom/trilead/ssh2/crypto/digest/Digest;->update(B)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public update([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/digest/MAC;->mac:Lcom/trilead/ssh2/crypto/digest/Digest;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/trilead/ssh2/crypto/digest/Digest;->update([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
