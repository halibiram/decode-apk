.class final Lcom/google/zxing/datamatrix/encoder/Base256Encoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static randomize255State(CI)C
    .locals 1

    .line 1
    mul-int/lit16 p1, p1, 0x95

    .line 2
    .line 3
    const/16 v0, 0xff

    .line 4
    .line 5
    rem-int/2addr p1, v0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    add-int/2addr p1, p0

    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    int-to-char p0, p1

    .line 12
    return p0

    .line 13
    :cond_0
    add-int/lit16 p1, p1, -0x100

    .line 14
    .line 15
    int-to-char p0, p1

    .line 16
    return p0
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 25
    .line 26
    add-int/2addr v3, v0

    .line 27
    iput v3, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v3, v4, v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->getEncodingMode()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eq v3, v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int/2addr v3, v0

    .line 57
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v3

    .line 62
    add-int/2addr v4, v0

    .line 63
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    sub-int/2addr v5, v4

    .line 75
    if-lez v5, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_3

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    :cond_3
    const/16 v4, 0xf9

    .line 89
    .line 90
    if-gt v3, v4, :cond_4

    .line 91
    .line 92
    int-to-char v3, v3

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/16 v5, 0x613

    .line 98
    .line 99
    if-gt v3, v5, :cond_7

    .line 100
    .line 101
    div-int/lit16 v5, v3, 0xfa

    .line 102
    .line 103
    add-int/2addr v5, v4

    .line 104
    int-to-char v4, v5

    .line 105
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 106
    .line 107
    .line 108
    rem-int/lit16 v3, v3, 0xfa

    .line 109
    .line 110
    int-to-char v3, v3

    .line 111
    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    :goto_2
    if-ge v2, v3, :cond_6

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    add-int/2addr v5, v0

    .line 129
    invoke-static {v4, v5}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;->randomize255State(CI)C

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 134
    .line 135
    .line 136
    add-int/2addr v2, v0

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    return-void

    .line 139
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    const/4 v2, 0x6

    .line 149
    new-array v2, v2, [J

    .line 150
    .line 151
    fill-array-data v2, :array_0

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :array_0
    .array-data 8
        0x4c85a572c05939d3L    # 4.348029301371749E60
        -0x2c190520185c77L
        -0x74a1da1528a5581cL    # -6.425158215206388E-254
        -0x326f2c0f26181fe2L    # -4.430460162607193E65
        -0x570fd0629431eebL
        -0x37c80355c861fd42L    # -8.162343712636761E39
    .end array-data
.end method

.method public getEncodingMode()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
