.class public Lcom/trilead/ssh2/signature/DSASHA1Verify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log:Lcom/trilead/ssh2/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 8
    .line 9
    return-void
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

.method public static decodeSSHDSAPublicKey([B)Lcom/trilead/ssh2/signature/DSAPublicKey;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    new-instance v0, Lcom/trilead/ssh2/signature/DSAPublicKey;

    .line 55
    .line 56
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/trilead/ssh2/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 61
    .line 62
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v0, v0, [J

    .line 65
    .line 66
    fill-array-data v0, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/IOWarningException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v4, v0, [J

    .line 90
    .line 91
    fill-array-data v4, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_3

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v1, p0}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :array_0
    .array-data 8
        0x5e9d210159cffb96L    # 5.819723853042816E147
        -0x4111e8dcfd94966eL    # -1.4348210311811147E-5
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x345a027c4622e7a7L    # -2.6960018601491145E56
        0x61b24f3bc00de4dL
        0x5111a21d1aced632L    # 3.345271393634639E82
        -0x1b0ac74d9e6b8b3bL    # -2.1498737295753274E178
        0x215979c9dee1890bL
    .end array-data

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
    :array_2
    .array-data 8
        0x426efdbec840247dL    # 1.0648492610571403E12
        -0x2d742b26c6973735L    # -4.429190913733003E89
        -0x4b579f32333e468bL    # -4.9710871104794994E-55
        0x46dd7893a3fb97ffL    # 2.3909718021883213E33
        -0x4082fc15477cf328L
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
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_3
    .array-data 8
        -0x1abcceac730563ecL    # -6.221900716237838E179
        0x3eae974c8cff01a9L    # 9.116831964848144E-7
        -0x2d3b3a2d80c70d1cL    # -5.289353147784438E90
        -0x5e7eeb0495b70134L
        0x49cf9f7e082faa7dL    # 3.6107102263150135E47
    .end array-data
.end method

.method public static decodeSSHDSASignature([B)Lcom/trilead/ssh2/signature/DSASignature;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    array-length v2, p0

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
    invoke-direct {v2, p0}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v5, v1, [J

    .line 21
    .line 22
    fill-array-data v5, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_4

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    array-length v4, p0

    .line 43
    if-ne v4, v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    :goto_0
    const/16 v0, 0x14

    .line 52
    .line 53
    new-array v2, v0, [B

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/math/BigInteger;

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v0, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Ljava/math/BigInteger;

    .line 69
    .line 70
    invoke-direct {v6, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 71
    .line 72
    .line 73
    sget-object v2, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v8, 0x7

    .line 89
    new-array v8, v8, [J

    .line 90
    .line 91
    fill-array-data v8, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    aget-byte v3, p0, v3

    .line 105
    .line 106
    and-int/lit16 v3, v3, 0xff

    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 112
    .line 113
    new-array v7, v1, [J

    .line 114
    .line 115
    fill-array-data v7, :array_2

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    aget-byte p0, p0, v0

    .line 129
    .line 130
    and-int/lit16 p0, p0, 0xff

    .line 131
    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v0, v1, [J

    .line 138
    .line 139
    fill-array-data v0, :array_3

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    const/16 v0, 0x1e

    .line 146
    .line 147
    invoke-static {p0, v5, v2, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 148
    .line 149
    .line 150
    :cond_1
    new-instance p0, Lcom/trilead/ssh2/signature/DSASignature;

    .line 151
    .line 152
    invoke-direct {p0, v4, v6}, Lcom/trilead/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 157
    .line 158
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v0, v0, [J

    .line 161
    .line 162
    fill-array-data v0, :array_4

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 177
    .line 178
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v0, v0, [J

    .line 181
    .line 182
    fill-array-data v0, :array_5

    .line 183
    .line 184
    .line 185
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 197
    .line 198
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v0, v0, [J

    .line 201
    .line 202
    fill-array-data v0, :array_6

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    nop

    .line 217
    :array_0
    .array-data 8
        -0x5ca079e7f375dfdbL
        -0x2458aadd653f5399L    # -3.312306175077398E133
    .end array-data

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
    :array_1
    .array-data 8
        -0xa0dbd9ab472b51L
        -0x74d08d0c72391eaL
        0x9d7bd220778baf9L
        0x191f711e8f6f78cfL
        -0x50358198eba4fca0L
        -0x5ac0ec21c1386b6bL
        0x4b452b992dbef786L    # 4.055424956648036E54
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
    .line 258
    .line 259
    .line 260
    .line 261
    :array_2
    .array-data 8
        -0x166265c066314fadL    # -5.664818544004143E200
        0x1060686a1f132bc8L
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
    :array_3
    .array-data 8
        0x6d43318d7cb8edc5L    # 2.1173006237011436E218
        -0x651cf0df33a70fceL    # -3.674471180055321E-179
    .end array-data

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
    :array_4
    .array-data 8
        0x3a2f222dd8c5b8c6L    # 1.9648008408967868E-28
        -0x37becbdb2cc7ea58L    # -1.1708222600311165E40
        0x1c960ce5a7609760L    # 5.705826145516231E-171
        -0x2c61f3513485b0c0L    # -6.2681086409976124E94
        -0x570fb487e36a5aaeL
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
    :array_5
    .array-data 8
        -0x2ddb6d5addd70ea8L    # -5.115673754932661E87
        -0x708abed383b7bcdL
        0x383147ba88b981f7L    # 5.078191441581245E-38
        -0x39460cc220c9e7e9L    # -5.2633183201376704E32
        0x593a123a73449b81L    # 6.732236433254061E121
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
    :array_6
    .array-data 8
        0x4d3ccf5b6264575L
        -0x55ad5a30a9071807L    # -8.130676370710786E-105
        0x4917c90ee9c9ebabL    # 1.326079459375449E44
        0x44aeb3fe73e951ceL    # 7.249564846516444E22
        0x54f847bc7f453c18L    # 2.124277150687947E101
    .end array-data
.end method

.method public static encodeSSHDSAPublicKey(Lcom/trilead/ssh2/signature/DSAPublicKey;)[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :array_0
    .array-data 8
        -0x4fe93df55f1a993bL    # -4.913542632304299E-77
        0x7d020de5dfe67769L    # 1.4413390985264267E294
    .end array-data
.end method

.method public static encodeSSHDSASignature(Lcom/trilead/ssh2/signature/DSASignature;)[B
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v2, 0x28

    .line 41
    .line 42
    new-array v3, v2, [B

    .line 43
    .line 44
    array-length v4, v1

    .line 45
    const/16 v5, 0x14

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    array-length v6, p0

    .line 52
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    array-length v7, v1

    .line 57
    sub-int/2addr v7, v4

    .line 58
    sub-int/2addr v5, v4

    .line 59
    invoke-static {v1, v7, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    array-length v1, p0

    .line 63
    sub-int/2addr v1, v6

    .line 64
    rsub-int/lit8 v4, v6, 0x28

    .line 65
    .line 66
    invoke-static {p0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    invoke-virtual {v0, v3, p0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x395e16e83d5fc038L    # -1.8163423928574604E32
        0x7d82a139822aa160L    # 3.807444314638073E296
    .end array-data
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/DSAPrivateKey;Ljava/security/SecureRandom;)Lcom/trilead/ssh2/signature/DSASignature;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    new-array p0, p0, [B

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/math/BigInteger;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    .line 33
    .line 34
    invoke-direct {v1, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-gez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getG()Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getP()Ljava/math/BigInteger;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, v1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSAPrivateKey;->getQ()Ljava/math/BigInteger;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Lcom/trilead/ssh2/signature/DSASignature;

    .line 100
    .line 101
    invoke-direct {p2, p0, p1}, Lcom/trilead/ssh2/signature/DSASignature;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 102
    .line 103
    .line 104
    return-object p2
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/DSASignature;Lcom/trilead/ssh2/signature/DSAPublicKey;)Z
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-instance v2, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 5
    .line 6
    invoke-direct {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    new-array p0, p0, [B

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/math/BigInteger;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-direct {v2, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSASignature;->getR()Ljava/math/BigInteger;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/DSASignature;->getS()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getG()Ljava/math/BigInteger;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getP()Ljava/math/BigInteger;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getQ()Ljava/math/BigInteger;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/DSAPublicKey;->getY()Ljava/math/BigInteger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 52
    .line 53
    sget-object v7, Lcom/trilead/ssh2/signature/DSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_0

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v10, v1, [J

    .line 69
    .line 70
    fill-array-data v10, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v9, 0x10

    .line 84
    .line 85
    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const/16 v10, 0x3c

    .line 97
    .line 98
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v12, v1, [J

    .line 109
    .line 110
    fill-array-data v12, :array_1

    .line 111
    .line 112
    .line 113
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v12, v1, [J

    .line 145
    .line 146
    fill-array-data v12, :array_2

    .line 147
    .line 148
    .line 149
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v12, v1, [J

    .line 181
    .line 182
    fill-array-data v12, :array_3

    .line 183
    .line 184
    .line 185
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v12, v1, [J

    .line 217
    .line 218
    fill-array-data v12, :array_4

    .line 219
    .line 220
    .line 221
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v12, v1, [J

    .line 253
    .line 254
    fill-array-data v12, :array_5

    .line 255
    .line 256
    .line 257
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v7, v10, v8}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v8, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 287
    .line 288
    new-array v1, v1, [J

    .line 289
    .line 290
    fill-array-data v1, :array_6

    .line 291
    .line 292
    .line 293
    invoke-direct {v11, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v7, v10, v1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_0
    invoke-virtual {v6, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    const/4 v8, 0x0

    .line 322
    const/16 v9, 0x14

    .line 323
    .line 324
    if-gez v1, :cond_4

    .line 325
    .line 326
    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-gtz v1, :cond_1

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-gez v1, :cond_3

    .line 338
    .line 339
    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-gtz v1, :cond_2

    .line 344
    .line 345
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {p2, p1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    return p0

    .line 391
    :cond_3
    :goto_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 392
    .line 393
    new-array p1, v0, [J

    .line 394
    .line 395
    fill-array-data p1, :array_7

    .line 396
    .line 397
    .line 398
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {v7, v9, p0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    return v8

    .line 409
    :cond_4
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 410
    .line 411
    new-array p1, v0, [J

    .line 412
    .line 413
    fill-array-data p1, :array_8

    .line 414
    .line 415
    .line 416
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {v7, v9, p0}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return v8

    .line 427
    :array_0
    .array-data 8
        -0x783dd65f60a79d63L    # -2.685914012498665E-271
        -0x354b5a17da53a2e6L    # -7.72536147929522E51
        -0x50aeb86f02ea1dbL    # -1.959142198459434E284
        -0x98ff411d34b50bdL    # -3.158052493491512E262
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_1
    .array-data 8
        -0x3c0a29dfdbc0c819L    # -2.517568735782571E19
        0x704182ce62cc258dL    # 5.437216970360057E232
        0x15009d823028893cL
        -0x59330442d39c38e4L    # -8.768805267732134E-122
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :array_2
    .array-data 8
        -0x7412a35ae21f2ac5L
        0x64529afd1652b503L    # 1.8406748250932798E175
        -0x7c9299068bb62de6L
        -0x50ab167f1b67fed4L    # -1.1022987004091139E-80
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_3
    .array-data 8
        0x6b141384b949a46dL    # 6.445542699678315E207
        -0x6940fe328c56c706L    # -4.050822423565791E-199
        0x54dac2ccd83b684fL    # 5.853288143314905E100
        -0x7262b74960f624aaL
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    :array_4
    .array-data 8
        -0x562bfafca51dd57dL    # -3.409703122316605E-107
        -0x4de0594964ee0f0eL
        0x2fbca967597f8c7L
        -0x44f160a1dd20d8c1L    # -3.1662954064096658E-24
    .end array-data

    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_5
    .array-data 8
        0x2e3502ce85797608L    # 4.224810390506624E-86
        -0x87c9d1ebeedaa87L    # -5.000805491278652E267
        0x678db8ed3027a4d7L    # 6.6214133059043646E190
        0x41184fe3444acc85L    # 398328.8166915852
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_6
    .array-data 8
        0x26a35ee90b9e81b0L
        0x150563a63b209c7aL
        -0x7a6f86c92c603f69L    # -7.090057521510488E-282
        -0x33a0110fae5a0df0L    # -8.017956591917802E59
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_7
    .array-data 8
        0x2195daf6c11a6f12L    # 6.836903448706159E-147
        -0x45b5720845aea1c8L    # -6.703313678775883E-28
        0x7de7a4b9607fd38dL    # 3.0925493244360737E298
        0x170daa740b15e079L    # 1.240193376744318E-197
        0x6c8efd205bc62c40L    # 8.3458645980128925E214
        -0x780926791948fcf5L
        -0x127dc2b1e0350c5eL    # -3.219282955308949E219
        0x56f8dc7c7fb61513L    # 9.342041967960089E110
        0x62a837db9fab3911L    # 1.7851280802224774E167
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_8
    .array-data 8
        0x24dad9fe0a0e4c69L
        0x13860f94b28e223aL
        -0x6ef8717c79025e16L    # -1.242989964950922E-226
        0x3bbae870d3988f89L    # 5.697984621499485E-21
        0x184cd4174089e49cL
        0x3b3b90e1b3c01d0bL    # 2.2802014395132703E-23
        0x771413b32c4da478L    # 4.046075561765844E265
        -0x1f1e700b632e736fL    # -4.822472643603878E158
        0x4144f6a57f35dc9aL    # 2747722.9938312294
    .end array-data
.end method
