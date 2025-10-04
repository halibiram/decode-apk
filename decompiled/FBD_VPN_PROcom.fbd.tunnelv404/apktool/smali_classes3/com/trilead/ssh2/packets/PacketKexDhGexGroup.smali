.class public Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field g:Ljava/math/BigInteger;

.field p:Ljava/math/BigInteger;

.field payload:[B


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
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->payload:[B

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
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 p3, 0x6

    .line 49
    new-array p3, p3, [J

    .line 50
    .line 51
    fill-array-data p3, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x7

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v0, 0x2

    .line 96
    new-array v0, v0, [J

    .line 97
    .line 98
    fill-array-data v0, :array_2

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    nop

    .line 113
    :array_0
    .array-data 8
        0x9ca62e8e5807fe0L
        0x172bfd64e974abc8L
        0x406ade74aba0ec7bL    # 214.9517419951479
        0x62680c99041b6d3aL
        -0x5992fd19854885eeL
        0x7ac92cc3b81098fL
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
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
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        -0x7ca388a336302d98L
        -0x64ed538a888fe02eL
        -0x22b082a9e400c1d5L    # -2.9999572169917612E141
        -0x57eaa149d13872b6L
        -0x2e603cf9e3d91d8cL    # -1.5425671023915808E85
        0x7cbda3a2fa208020L    # 7.394390155531577E292
        -0x3ea9b89fd35f52dL    # -5.211897648619765E289
    .end array-data

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
    :array_2
    .array-data 8
        -0x6460229dbfc139d1L    # -1.258153039971007E-175
        -0x5f379eb49850918aL    # -9.3099402728221E-151
    .end array-data
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->g:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexGroup;->p:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method
