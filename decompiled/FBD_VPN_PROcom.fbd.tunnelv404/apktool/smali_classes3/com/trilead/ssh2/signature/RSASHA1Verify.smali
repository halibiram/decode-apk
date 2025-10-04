.class public Lcom/trilead/ssh2/signature/RSASHA1Verify;
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
    const-class v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/trilead/ssh2/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/trilead/ssh2/log/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

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

.method public static decodeSSHRSAPublicKey([B)Lcom/trilead/ssh2/signature/RSAPublicKey;
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
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v0, Lcom/trilead/ssh2/signature/RSAPublicKey;

    .line 47
    .line 48
    invoke-direct {v0, p0, v2}, Lcom/trilead/ssh2/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 53
    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance v1, Lcom/trilead/ssh2/IOWarningException;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v4, v0, [J

    .line 82
    .line 83
    fill-array-data v4, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {v1, p0}, Lcom/trilead/ssh2/IOWarningException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :array_0
    .array-data 8
        -0x4269aec2f7ad729eL    # -5.074375060801383E-12
        -0x2a51bb9a9815469bL    # -5.4232592072276765E104
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
    :array_1
    .array-data 8
        -0x3a460817f4ed31a7L    # -8.036825716271769E27
        -0x6b2c0cd26aa774d2L
        0x2c036c9cb0a861e9L    # 1.1367265796829406E-96
        0x18225895a57466deL
        0x140e2575059ff1a3L
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
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
    .line 150
    .line 151
    .line 152
    .line 153
    :array_2
    .array-data 8
        0x700bb598c2f49926L
        0x6efd2b9f60a9e906L    # 4.3189596922743103E226
        -0x4431d1979ed4bc0eL    # -1.2782269362307632E-20
        0x45da338cf2aa46ceL    # 3.2435724319378825E28
        -0x740080374eb19f3aL    # -6.874206011373248E-251
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
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
    :array_3
    .array-data 8
        0x25fb3d54ddb2ad20L
        0x1d253ba1e1fc258cL
        -0x35143a3d7831e0b0L    # -8.312740570041053E52
        -0x678ff0154790e0acL    # -5.632836157990921E-191
        -0x60db711deaf0637L
    .end array-data
.end method

.method public static decodeSSHRSASignature([B)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 7
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
    new-array v4, v3, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    move-result p0

    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    array-length v2, p0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    sget-object v2, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/trilead/ssh2/log/Logger;->isEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v6, 0x7

    .line 55
    new-array v6, v6, [J

    .line 56
    .line 57
    fill-array-data v6, :array_1

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    array-length v5, p0

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    fill-array-data v3, :array_2

    .line 79
    .line 80
    .line 81
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    const/16 v3, 0x50

    .line 85
    .line 86
    invoke-static {v5, v4, v2, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Lcom/trilead/ssh2/log/Logger;I)V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_1

    .line 94
    .line 95
    new-instance v0, Lcom/trilead/ssh2/signature/RSASignature;

    .line 96
    .line 97
    new-instance v1, Ljava/math/BigInteger;

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 108
    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 128
    .line 129
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 130
    .line 131
    const/4 v1, 0x6

    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    fill-array-data v1, :array_4

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 149
    .line 150
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    new-array v0, v0, [J

    .line 153
    .line 154
    fill-array-data v0, :array_5

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        0x3e1c32bc5fabaca2L    # 1.6413504988162343E-9
        -0x465b1de9e50f707cL    # -5.148093891992545E-31
    .end array-data

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
    :array_1
    .array-data 8
        -0x6e762d268c0d2ac0L
        -0x4b099dca17e902ccL
        -0x54649f4536eb52a1L    # -1.2517014995082267E-98
        -0x1a09129483cc4521L    # -1.5222030691030397E183
        0x5fb13baa04a0cabbL    # 9.025687461590213E152
        0xca158c558603845L
        -0x3935311a74318581L    # -1.0874693845117741E33
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0xd3065cfa04c5571L
        -0x24004ed9050c5a41L    # -1.4396858504781787E135
    .end array-data

    :array_3
    .array-data 8
        -0x56ac317407a455cdL
        -0x13c184d879dbc739L    # -2.565353284703127E213
        -0x7df7d2a65a8e4cfaL    # -7.220369182311276E-299
        -0x37389f8601143dc7L    # -4.072823687735084E42
        0x244ebadc48758661L    # 8.455775050310514E-134
    .end array-data

    :array_4
    .array-data 8
        -0xd56b911eea1962eL
        0x41682232568f83edL    # 1.2652946705018962E7
        0x5781f7321b98adecL    # 3.456450248589588E113
        -0x24a94a4338fa66c4L
        -0x200569023778862fL    # -2.2281941523930808E154
        -0x3fc3fb48fe73e731L    # -28.018417450621936
    .end array-data

    :array_5
    .array-data 8
        -0x6f3d87244f498f7aL
        -0x1b4ec61353dbaff6L
        0x1480747b3014b35aL    # 6.256494130523766E-210
        0xbb39a64a8310c88L
        0x51f23d9728baa69eL    # 5.669667585143758E86
    .end array-data
.end method

.method public static encodeSSHRSAPublicKey(Lcom/trilead/ssh2/signature/RSAPublicKey;)[B
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
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :array_0
    .array-data 8
        -0x68179caf69347b3cL
        -0x7cd311be49c70504L    # -2.264920855359044E-293
    .end array-data
.end method

.method public static encodeSSHRSASignature(Lcom/trilead/ssh2/signature/RSASignature;)[B
    .locals 4
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
    invoke-virtual {p0}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    array-length v1, p0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-le v1, v3, :cond_0

    .line 36
    .line 37
    aget-byte v1, p0, v2

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    array-length v1, p0

    .line 42
    sub-int/2addr v1, v3

    .line 43
    invoke-virtual {v0, p0, v3, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    array-length v1, p0

    .line 48
    invoke-virtual {v0, p0, v2, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x12994bd421160080L
        0x6f5a2ba9f1fe888L
    .end array-data
.end method

.method public static generateSignature([BLcom/trilead/ssh2/signature/RSAPrivateKey;)Lcom/trilead/ssh2/signature/RSASignature;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    new-instance v1, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-array v2, p0, [B

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0xf

    .line 22
    .line 23
    new-array v5, v4, [B

    .line 24
    .line 25
    fill-array-data v5, :array_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-int/lit8 v6, v6, 0x7

    .line 37
    .line 38
    const/16 v7, 0x8

    .line 39
    .line 40
    div-int/2addr v6, v7

    .line 41
    const/16 v8, 0x11

    .line 42
    .line 43
    add-int v9, v8, p0

    .line 44
    .line 45
    sub-int/2addr v6, v9

    .line 46
    const/4 v9, 0x1

    .line 47
    add-int/lit8 v10, v6, -0x1

    .line 48
    .line 49
    if-lt v10, v7, :cond_1

    .line 50
    .line 51
    add-int/2addr v8, p0

    .line 52
    add-int/2addr v8, v10

    .line 53
    new-array v1, v8, [B

    .line 54
    .line 55
    aput-byte v9, v1, v3

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    :goto_0
    if-ge v7, v10, :cond_0

    .line 59
    .line 60
    add-int/2addr v7, v9

    .line 61
    aput-byte v0, v1, v7

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    aput-byte v3, v1, v6

    .line 65
    .line 66
    add-int/lit8 v0, v6, 0x1

    .line 67
    .line 68
    invoke-static {v5, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v6, v6, 0x10

    .line 72
    .line 73
    invoke-static {v2, v3, v1, v6, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Ljava/math/BigInteger;

    .line 77
    .line 78
    invoke-direct {p0, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Lcom/trilead/ssh2/signature/RSASignature;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/trilead/ssh2/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 100
    .line 101
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v0, v1, [J

    .line 104
    .line 105
    fill-array-data v0, :array_1

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :array_0
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data

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
    :array_1
    .array-data 8
        -0x7a1d8e09138b183L    # -6.371828675004432E271
        0x5fd17e3ce7f0b1e5L    # 3.664755482006775E153
        0x2dc4d90086c0cba1L    # 3.2749802397776166E-88
        -0x7c2b5d7d22ed0ecfL
        -0x4e83d0d2da59dd62L    # -2.5522781865081182E-70
        -0x7f907c1fa711a90bL
    .end array-data
.end method

.method public static verifySignature([BLcom/trilead/ssh2/signature/RSASignature;Lcom/trilead/ssh2/signature/RSAPublicKey;)Z
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x7

    .line 5
    const/16 v3, 0x9

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x6

    .line 9
    new-instance v6, Lcom/trilead/ssh2/crypto/digest/SHA1;

    .line 10
    .line 11
    invoke-direct {v6}, Lcom/trilead/ssh2/crypto/digest/SHA1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6, p0}, Lcom/trilead/ssh2/crypto/digest/SHA1;->update([B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v6}, Lcom/trilead/ssh2/crypto/digest/SHA1;->getDigestLength()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-array v7, p0, [B

    .line 22
    .line 23
    invoke-virtual {v6, v7}, Lcom/trilead/ssh2/crypto/digest/SHA1;->digest([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {p2}, Lcom/trilead/ssh2/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lcom/trilead/ssh2/signature/RSASignature;->getS()Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v6, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    const/16 v9, 0x14

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    if-gtz v8, :cond_0

    .line 46
    .line 47
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 48
    .line 49
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array p2, v5, [J

    .line 52
    .line 53
    fill-array-data p2, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v10

    .line 67
    :cond_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    add-int/2addr v8, v2

    .line 72
    div-int/2addr v8, v0

    .line 73
    if-ge v8, v4, :cond_1

    .line 74
    .line 75
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 76
    .line 77
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array p2, v5, [J

    .line 80
    .line 81
    fill-array-data p2, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v10

    .line 95
    :cond_1
    invoke-virtual {p1, p2, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    array-length p2, p1

    .line 104
    if-lez p2, :cond_2

    .line 105
    .line 106
    aget-byte p2, p1, v10

    .line 107
    .line 108
    if-nez p2, :cond_2

    .line 109
    .line 110
    const/4 p2, 0x1

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/4 p2, 0x0

    .line 113
    :goto_0
    array-length v6, p1

    .line 114
    sub-int/2addr v6, p2

    .line 115
    sub-int/2addr v8, v4

    .line 116
    if-eq v6, v8, :cond_3

    .line 117
    .line 118
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 119
    .line 120
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array p2, v3, [J

    .line 123
    .line 124
    fill-array-data p2, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return v10

    .line 138
    :cond_3
    aget-byte v6, p1, p2

    .line 139
    .line 140
    if-eq v6, v4, :cond_4

    .line 141
    .line 142
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 143
    .line 144
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array p2, v5, [J

    .line 147
    .line 148
    fill-array-data p2, :array_3

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return v10

    .line 162
    :cond_4
    add-int/2addr p2, v4

    .line 163
    move v6, p2

    .line 164
    :goto_1
    array-length v8, p1

    .line 165
    if-lt v6, v8, :cond_5

    .line 166
    .line 167
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 168
    .line 169
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array p2, v5, [J

    .line 172
    .line 173
    fill-array-data p2, :array_4

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return v10

    .line 187
    :cond_5
    aget-byte v8, p1, v6

    .line 188
    .line 189
    if-nez v8, :cond_11

    .line 190
    .line 191
    sub-int p2, v6, p2

    .line 192
    .line 193
    if-ge p2, v0, :cond_6

    .line 194
    .line 195
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 196
    .line 197
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array p2, v1, [J

    .line 200
    .line 201
    fill-array-data p2, :array_5

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return v10

    .line 215
    :cond_6
    add-int/2addr v6, v4

    .line 216
    array-length p2, p1

    .line 217
    if-lt v6, p2, :cond_7

    .line 218
    .line 219
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 220
    .line 221
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 222
    .line 223
    new-array p2, v5, [J

    .line 224
    .line 225
    fill-array-data p2, :array_6

    .line 226
    .line 227
    .line 228
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return v10

    .line 239
    :cond_7
    new-instance p2, Lcom/trilead/ssh2/crypto/SimpleDERReader;

    .line 240
    .line 241
    array-length v1, p1

    .line 242
    sub-int/2addr v1, v6

    .line 243
    invoke-direct {p2, p1, v6, v1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;-><init>([BII)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_8

    .line 255
    .line 256
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 257
    .line 258
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 259
    .line 260
    new-array p2, v5, [J

    .line 261
    .line 262
    fill-array-data p2, :array_7

    .line 263
    .line 264
    .line 265
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return v10

    .line 276
    :cond_8
    invoke-virtual {p2, p1}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->resetInput([B)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    array-length v1, p1

    .line 284
    if-lt v1, v0, :cond_10

    .line 285
    .line 286
    array-length v1, p1

    .line 287
    if-le v1, v3, :cond_9

    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_9
    new-array v1, v3, [B

    .line 292
    .line 293
    fill-array-data v1, :array_8

    .line 294
    .line 295
    .line 296
    const/4 v5, 0x0

    .line 297
    :goto_2
    array-length v6, p1

    .line 298
    if-ge v5, v6, :cond_b

    .line 299
    .line 300
    aget-byte v6, p1, v5

    .line 301
    .line 302
    aget-byte v8, v1, v5

    .line 303
    .line 304
    if-eq v6, v8, :cond_a

    .line 305
    .line 306
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 307
    .line 308
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array p2, v3, [J

    .line 311
    .line 312
    fill-array-data p2, :array_9

    .line 313
    .line 314
    .line 315
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return v10

    .line 326
    :cond_a
    add-int/2addr v5, v4

    .line 327
    goto :goto_2

    .line 328
    :cond_b
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->readOctetString()[B

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p2}, Lcom/trilead/ssh2/crypto/SimpleDERReader;->available()I

    .line 333
    .line 334
    .line 335
    move-result p2

    .line 336
    if-eqz p2, :cond_c

    .line 337
    .line 338
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 339
    .line 340
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 341
    .line 342
    new-array p2, v2, [J

    .line 343
    .line 344
    fill-array-data p2, :array_a

    .line 345
    .line 346
    .line 347
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return v10

    .line 358
    :cond_c
    array-length p2, p1

    .line 359
    if-eq p2, p0, :cond_d

    .line 360
    .line 361
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 362
    .line 363
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 364
    .line 365
    new-array p2, v0, [J

    .line 366
    .line 367
    fill-array-data p2, :array_b

    .line 368
    .line 369
    .line 370
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    return v10

    .line 381
    :cond_d
    const/4 p2, 0x0

    .line 382
    :goto_3
    if-ge p2, p0, :cond_f

    .line 383
    .line 384
    aget-byte v0, v7, p2

    .line 385
    .line 386
    aget-byte v1, p1, p2

    .line 387
    .line 388
    if-eq v0, v1, :cond_e

    .line 389
    .line 390
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 391
    .line 392
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 393
    .line 394
    new-array p2, v2, [J

    .line 395
    .line 396
    fill-array-data p2, :array_c

    .line 397
    .line 398
    .line 399
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return v10

    .line 410
    :cond_e
    add-int/2addr p2, v4

    .line 411
    goto :goto_3

    .line 412
    :cond_f
    return v4

    .line 413
    :cond_10
    :goto_4
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 414
    .line 415
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 416
    .line 417
    const/16 p2, 0xb

    .line 418
    .line 419
    new-array p2, p2, [J

    .line 420
    .line 421
    fill-array-data p2, :array_d

    .line 422
    .line 423
    .line 424
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    return v10

    .line 435
    :cond_11
    const/4 v11, -0x1

    .line 436
    if-eq v8, v11, :cond_12

    .line 437
    .line 438
    sget-object p0, Lcom/trilead/ssh2/signature/RSASHA1Verify;->log:Lcom/trilead/ssh2/log/Logger;

    .line 439
    .line 440
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 441
    .line 442
    new-array p2, v5, [J

    .line 443
    .line 444
    fill-array-data p2, :array_e

    .line 445
    .line 446
    .line 447
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p0, v9, p1}, Lcom/trilead/ssh2/log/Logger;->log(ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    return v10

    .line 458
    :cond_12
    add-int/2addr v6, v4

    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :array_0
    .array-data 8
        -0x2a33008ca9b43025L    # -2.0783292882197793E105
        0x2573d51c7490b7ecL    # 2.861136396589945E-128
        -0x2bf36614b666c22eL    # -7.6364864541476E96
        -0x5c29a71e4d93a282L    # -4.804021751019642E-136
        -0xd685e151caf58d3L
        -0x4738b0b18304ab0eL
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
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
    .line 488
    .line 489
    :array_1
    .array-data 8
        -0x61e205e4ccd7252bL
        -0xa6f98373d166586L
        0x5a3b91db68396e86L    # 4.665638535778024E126
        -0x350c087d94c554c2L    # -1.1952767085582354E53
        -0x4a9e9cf5cfaa4ba7L    # -1.4522194947188358E-51
        0x35e6cd5d76b972dfL    # 4.875594818771473E-49
    .end array-data

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
    :array_2
    .array-data 8
        0x5a2209cdff2ab3cfL    # 1.5263136714875547E126
        -0x1a4f73342fe9be14L    # -6.867442016135868E181
        -0x63a68af2c63ec704L    # -4.117121535417716E-172
        0x18fc0fcfd434dc05L    # 2.519287349500385E-188
        0x1f020632549eababL
        -0x14a0b800c654be0aL    # -1.6068707420690922E209
        -0x728261afc9a78f04L
        -0x3956b3a580ed90e7L    # -2.5655479385694542E32
        0x86e928488f69115L
    .end array-data

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
    :array_3
    .array-data 8
        0x4ef6e494add78ed6L    # 2.5280151232500812E72
        -0x152daa4ac8246750L    # -3.6790283545493536E206
        0x1b111bad04557acbL
        -0x4ac704e0cf5b944dL    # -2.6081323181039845E-52
        -0x307d14cf53c9c6dcL    # -1.0696470326709448E75
        0x6002396816c1af03L    # 3.054339627482985E154
    .end array-data

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
    :array_4
    .array-data 8
        -0x57f1198f4f20f62cL    # -9.80285016221782E-116
        -0x2efd8e84dc7744b5L    # -1.749472481769855E82
        0x619c80ab3b7e548aL    # 1.6028849737752787E162
        0x16577ca8d10ca46bL    # 4.79434790491575E-201
        0xeabc1fb67cb67d0L    # 5.328409321888779E-238
        0x6a32dc775e9d7662L    # 3.6959520174558695E203
    .end array-data

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
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_5
    .array-data 8
        0x1106562e9d8bc3b5L
        -0x3d841e868a7cdd7bL    # -1.9159512084981575E12
        0x4a6493c407d274baL    # 2.4058900813910824E50
        0x309800ccec414766L    # 1.3266883170601058E-74
        0xdf7b5d9e74c1feL
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_6
    .array-data 8
        0x18d0b03828b9d484L
        -0x736ee6425fbf50f1L    # -3.821498143725767E-248
        -0x46d830019f69ead2L    # -2.293057955678124E-33
        0x57f678a67a620b88L    # 5.533836986328099E115
        0x24c4d0762a5b22dfL
        -0x19db8c4f955e1c9dL    # -1.086278677332163E184
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_7
    .array-data 8
        0x74bec62a5af97aadL    # 2.2562202339533323E254
        -0x7b1f258a65afeda7L
        -0x3779a8878da0f9d4L    # -2.4327936970368763E41
        0xf6a9650eaf9cc0bL    # 2.090477680170907E-234
        0x6b851aff8432f61eL    # 8.673249615293578E209
        -0x11e8ffbd99d0642fL    # -2.078565832283976E222
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    :array_8
    .array-data 1
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    nop

    .line 703
    :array_9
    .array-data 8
        0x3a964d068e60abf8L    # 1.8014508442570129E-26
        0x152e67be31e387d2L
        0x4490cfd9892e1f0fL    # 1.9848003714965293E22
        -0x22fab8a10d29b763L    # -1.2669952353791727E140
        0xd9dc6044be1cd1dL
        0x5aaa4a7e9ad1d4L
        0x64297ec40030e07eL    # 3.1528663341262766E174
        0x55ceff16047963c9L    # 2.2215708950191582E105
        -0x7e71df9c64876961L    # -3.514498120321294E-301
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    :array_a
    .array-data 8
        0xd2aa35e97b3a8eL
        0x2a14e42d90bdb24bL    # 5.693081774469841E-106
        -0x3b9094360ead6d5bL    # -4.636928565234585E21
        0x58ca2a2324d36c94L
        -0xbfa403b07e73db1L    # -7.785879550389898E250
        -0x2df2abd9a641d63aL    # -1.823231133496352E87
        -0x2a20e8a243c53da3L    # -4.456737123289019E105
    .end array-data

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_b
    .array-data 8
        0x3ab078e0d177143cL    # 5.322448561678262E-26
        -0x7e96ed4bac5c6878L    # -7.312430780755316E-302
        -0x1b2f8ca1359d3e7cL    # -4.166399604125231E177
        0x5b3ca3202cae127L
        0x402bd389faa9599eL    # 13.91316207234632
        -0x24b26206b72c7bf9L    # -6.569471527105909E131
        -0x61913ac2a25c6fc5L    # -4.274707882651771E-162
        0x724edbb1583b540dL    # 4.1152551007331513E242
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_c
    .array-data 8
        -0x12f9048bd21c8092L    # -1.5845256545825383E217
        0x26645a9229232ddeL    # 9.621818015477747E-124
        0x1ad924f855eb7a69L
        -0x5e33668774428aa6L    # -7.157320842410459E-146
        0x3e7542fe84f03770L    # 7.920599041940555E-8
        0x1a38e6eb58f673a1L
        -0x7feaa090c5a5044L
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    :array_d
    .array-data 8
        -0x36b8276901f517f4L    # -1.0635695467260861E45
        -0x5d389ec681f42bf6L
        -0x429a6d5f74ef0482L    # -6.131347787245899E-13
        0x119a05fbe83a4f53L    # 7.030510407462733E-224
        -0x4f9094695e2833baL    # -2.1708057897154364E-75
        -0xfa3948bdfefea3bL    # -1.7648864634065893E233
        0xea4750ba96876a6L    # 3.926990265563978E-238
        0x73dff485a96e8b67L    # 1.429938884884835E250
        -0x185e0dec037bd7f8L    # -1.5991369930648266E191
        0x69709ce47c02761dL    # 7.947702093013628E199
        0x3459830d01b4f070L    # 1.6257131581710182E-56
    .end array-data

    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :array_e
    .array-data 8
        0x7b9ff5e0bf3707aeL    # 3.0416477016834783E287
        0x35810245ead2603cL    # 5.68259156158559E-51
        0x46bbd25a92e697d9L    # 5.642910046695896E32
        0x1a112855436d6c42L    # 4.037922170909725E-183
        -0x74c744053835eef9L
        0x3a419a5fef56fe1eL    # 4.443628576532069E-28
    .end array-data
.end method
