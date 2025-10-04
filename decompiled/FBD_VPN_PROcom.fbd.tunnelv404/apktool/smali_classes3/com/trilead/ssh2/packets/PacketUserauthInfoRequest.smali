.class public Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field echo:[Z

.field instruction:Ljava/lang/String;

.field languageTag:Ljava/lang/String;

.field name:Ljava/lang/String;

.field numPrompts:I

.field payload:[B

.field prompt:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-array v1, p3, [B

    .line 6
    .line 7
    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->payload:[B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 p2, 0x3c

    .line 23
    .line 24
    if-ne p1, p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 49
    .line 50
    new-array p2, p1, [Ljava/lang/String;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 53
    .line 54
    new-array p1, p1, [Z

    .line 55
    .line 56
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 57
    .line 58
    :goto_0
    iget p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 59
    .line 60
    if-ge v2, p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    aput-object p2, p1, v2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    aput-boolean p2, p1, v2

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 89
    .line 90
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array p3, v0, [J

    .line 93
    .line 94
    fill-array-data p3, :array_0

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 109
    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v0, [J

    .line 118
    .line 119
    fill-array-data v0, :array_1

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v0, 0x2

    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_2

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p2

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        0x448d8405053bdcdaL    # 1.7422994997764273E22
        0x4eafa27e936bb930L    # 1.0916748905236671E71
        -0x5e5d453f10fd85dcL    # -1.17181338161898E-146
        -0x743d1a5136ee0491L    # -5.155028343888399E-252
        -0x239e42dd03dbc5efL    # -1.0314606177234145E137
        0xbb59d48d4d4c557L
        0x47603a32fd682df1L    # 6.740573546187798E35
    .end array-data

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
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x3e93db6d676d5bd4L    # 2.958944160155696E-7
        -0x637377e335366287L
        0x68e6f0e43820eaf8L    # 2.1435774910299384E197
        -0x78f5196966d0fcaaL    # -9.712211267766095E-275
        -0x28b8b03db4aeb85eL    # -2.803107209081808E112
        0x12e4e81e7943deb3L
        -0x34c006655099c2edL    # -3.062598143403211E54
    .end array-data

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
    :array_2
    .array-data 8
        0x72180cd88cb21855L    # 4.009173564568813E241
        -0x66a3a987b66237c5L
    .end array-data
.end method


# virtual methods
.method public getEcho()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->echo:[Z

    .line 2
    .line 3
    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->instruction:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->languageTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumPrompts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->numPrompts:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrompt()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthInfoRequest;->prompt:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
