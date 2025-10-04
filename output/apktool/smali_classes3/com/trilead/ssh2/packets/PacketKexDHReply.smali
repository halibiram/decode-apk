.class public Lcom/trilead/ssh2/packets/PacketKexDHReply;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field f:Ljava/math/BigInteger;

.field hostKey:[B

.field payload:[B

.field signature:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p3, [B

    .line 5
    .line 6
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->payload:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 p2, 0x1f

    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->hostKey:[B

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByteString()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->signature:[B

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 51
    .line 52
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 p3, 0x5

    .line 55
    new-array p3, p3, [J

    .line 56
    .line 57
    fill-array-data p3, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 72
    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v1, 0x6

    .line 81
    new-array v1, v1, [J

    .line 82
    .line 83
    fill-array-data v1, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [J

    .line 103
    .line 104
    fill-array-data v0, :array_2

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p2

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x736a48e576df1468L    # 9.189043803416696E247
        -0x6b1a0d9c97866080L    # -5.340535318925441E-208
        0x19ab63d6c6b39faaL
        0x538cb72b09fe426fL    # 2.994918786207431E94
        -0x5af1b7c4f8d9e1f8L
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
    :array_1
    .array-data 8
        -0x562674067d99d976L    # -4.351085843321809E-107
        -0x62c1a188ef7c20ecL    # -8.046981093541892E-168
        0x4ebd327f9897f02bL    # 2.0151207882465417E71
        -0x620d15a1f48b3ba5L    # -2.052958378369871E-164
        0x301acf68f8d9fee8L    # 5.7884341826286E-77
        0x677d1fb8d8165b20L    # 3.244046125601561E190
    .end array-data

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
    :array_2
    .array-data 8
        -0x243242aeccd9286cL
        0x7265e7887275d359L    # 1.16847221730244E243
    .end array-data
.end method


# virtual methods
.method public getF()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->f:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostKey()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->hostKey:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDHReply;->signature:[B

    .line 2
    .line 3
    return-object v0
.end method
