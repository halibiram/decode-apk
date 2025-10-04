.class public Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "SourceFile"


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:[C


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x40

    .line 5
    .line 6
    new-array p1, p1, [C

    .line 7
    .line 8
    iput-object p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:[C

    .line 9
    .line 10
    const-string p1, "line.separator"

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x2

    .line 26
    iput p1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public getOutputSize(Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0xa

    .line 10
    .line 11
    iget v1, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0xa

    .line 17
    .line 18
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;

    .line 47
    .line 48
    invoke-virtual {v3}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    add-int/lit8 v4, v4, 0x2

    .line 57
    .line 58
    invoke-virtual {v3}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/2addr v3, v4

    .line 67
    add-int/2addr v3, v1

    .line 68
    add-int/2addr v0, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    add-int/2addr v0, v1

    .line 71
    :cond_1
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getContent()[B

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    array-length p1, p1

    .line 76
    add-int/lit8 p1, p1, 0x2

    .line 77
    .line 78
    div-int/lit8 p1, p1, 0x3

    .line 79
    .line 80
    mul-int/lit8 p1, p1, 0x4

    .line 81
    .line 82
    add-int/lit8 v2, p1, 0x3f

    .line 83
    .line 84
    div-int/lit8 v2, v2, 0x40

    .line 85
    .line 86
    mul-int v2, v2, v1

    .line 87
    .line 88
    add-int/2addr v2, p1

    .line 89
    add-int/2addr v2, v0

    .line 90
    return v2
.end method

.method public writeObject(Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObjectGenerator;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObjectGenerator;->generate()Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "-----BEGIN "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "-----"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;

    .line 63
    .line 64
    invoke-virtual {v2}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v3, ": "

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getContent()[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Lapp/tunnel/vpncommons/org/spongycastle/util/encoders/Base64;->encode([B)[B

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x0

    .line 100
    :goto_1
    array-length v4, v1

    .line 101
    if-ge v3, v4, :cond_4

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    :goto_2
    iget-object v5, p0, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemWriter;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:[C

    .line 105
    .line 106
    array-length v6, v5

    .line 107
    if-eq v4, v6, :cond_3

    .line 108
    .line 109
    add-int v6, v3, v4

    .line 110
    .line 111
    array-length v7, v1

    .line 112
    if-lt v6, v7, :cond_2

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    aget-byte v6, v1, v6

    .line 116
    .line 117
    int-to-char v6, v6

    .line 118
    aput-char v6, v5, v4

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    :goto_3
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/Writer;->write([CII)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 127
    .line 128
    .line 129
    array-length v4, v5

    .line 130
    add-int/2addr v3, v4

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p1}, Lapp/tunnel/vpncommons/org/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "-----END "

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 157
    .line 158
    .line 159
    return-void
.end method
