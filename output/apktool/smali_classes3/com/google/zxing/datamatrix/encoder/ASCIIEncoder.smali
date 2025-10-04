.class final Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;
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

.method private static encodeASCIIDigits(CC)C
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 p0, p0, -0x30

    .line 14
    .line 15
    mul-int/lit8 p0, p0, 0xa

    .line 16
    .line 17
    add-int/lit8 p1, p1, -0x30

    .line 18
    .line 19
    add-int/2addr p1, p0

    .line 20
    add-int/lit16 p1, p1, 0x82

    .line 21
    .line 22
    int-to-char p0, p1

    .line 23
    return p0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [J

    .line 35
    .line 36
    fill-array-data v3, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :array_0
    .array-data 8
        0x2ac567f95220cdf6L
        -0x778e68655464332fL    # -5.327998772008415E-268
        0x6837551915d96e52L    # 1.0645275344137259E194
    .end array-data
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    if-lt v1, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 31
    .line 32
    add-int/2addr v4, v2

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v0, v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->encodeASCIIDigits(CC)C

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 42
    .line 43
    .line 44
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 45
    .line 46
    add-int/2addr v0, v3

    .line 47
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget v5, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v4, v5, v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eq v4, v5, :cond_6

    .line 74
    .line 75
    if-eq v4, v2, :cond_5

    .line 76
    .line 77
    if-eq v4, v3, :cond_4

    .line 78
    .line 79
    if-eq v4, v0, :cond_3

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    if-eq v4, v1, :cond_2

    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    if-ne v4, v1, :cond_1

    .line 86
    .line 87
    const/16 v0, 0xe7

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v0, v0, [J

    .line 106
    .line 107
    fill-array-data v0, :array_0

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v1, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_2
    const/16 v0, 0xf0

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    const/16 v1, 0xee

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    const/16 v0, 0xef

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    const/16 v0, 0xe6

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    const/16 v0, 0xeb

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v1, v1, -0x7f

    .line 169
    .line 170
    int-to-char v0, v1

    .line 171
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    .line 173
    .line 174
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 175
    .line 176
    add-int/2addr v0, v2

    .line 177
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_7
    add-int/2addr v1, v2

    .line 181
    int-to-char v0, v1

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 183
    .line 184
    .line 185
    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 186
    .line 187
    add-int/2addr v0, v2

    .line 188
    iput v0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 189
    .line 190
    :goto_0
    return-void

    .line 191
    :array_0
    .array-data 8
        -0x6d7f13b89f3dd177L
        0x417f8dff073662feL    # 3.3087472450778E7
        0x3ef8ea2267969bf1L    # 2.3760402177021943E-5
    .end array-data
.end method

.method public getEncodingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
