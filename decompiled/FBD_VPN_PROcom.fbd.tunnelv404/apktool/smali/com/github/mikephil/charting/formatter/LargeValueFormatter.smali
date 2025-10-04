.class public Lcom/github/mikephil/charting/formatter/LargeValueFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;


# static fields
.field private static final MAX_LENGTH:I = 0x5

.field private static SUFFIX:[Ljava/lang/String;


# instance fields
.field private mFormat:Ljava/text/DecimalFormat;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, -0x1ffa05e9259d63ebL    # -3.683277554985534E154

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v3, v2, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v4, v2, [J

    .line 39
    .line 40
    fill-array-data v4, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v5, v2, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v2, v2, [J

    .line 67
    .line 68
    fill-array-data v2, :array_3

    .line 69
    .line 70
    .line 71
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    filled-new-array {v0, v1, v3, v4, v2}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    .line 83
    .line 84
    return-void

    .line 85
    :array_0
    .array-data 8
        -0x67e9d7b67ad04d42L
        0x66b4bce3ff6c03d0L    # 5.639507011922593E186
    .end array-data

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
    :array_1
    .array-data 8
        -0x5ad2d5d338609651L
        0x5c5a6c3460c4d89cL    # 7.682009130444497E136
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
    :array_2
    .array-data 8
        -0x4ea0a02a732ce0c9L    # -7.102901635645872E-71
        0x21906a3c2c79998aL    # 5.135024269328456E-147
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_3
    .array-data 8
        0xda922a001571bf8L    # 7.36235553114573E-243
        0x2c1243a4f728c64L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, -0x78d7b0fb3fef0f7fL    # -3.51054940551469E-274

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    return-void

    :array_0
    .array-data 8
        0x56310d90cb34815aL    # 1.5644404161150233E107
        -0x74d15d5d68068245L
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    return-void
.end method

.method private makePretty(D)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mFormat:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p2, v0

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p2}, Ljava/lang/Character;->getNumericValue(C)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x2

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v3, v0, [J

    .line 42
    .line 43
    const-wide v4, -0x6d0bccb8ec3b3bbeL    # -2.288974895754713E-217

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    aput-wide v4, v3, v6

    .line 50
    .line 51
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    new-array v3, v2, [J

    .line 80
    .line 81
    fill-array-data v3, :array_0

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget-object v3, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    .line 92
    .line 93
    div-int/2addr p2, v2

    .line 94
    aget-object p2, v3, p2

    .line 95
    .line 96
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    const/4 v1, 0x5

    .line 105
    if-gt p2, v1, :cond_1

    .line 106
    .line 107
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v1, v2, [J

    .line 110
    .line 111
    fill-array-data v1, :array_1

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_0

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    return-object p1

    .line 129
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    add-int/lit8 v1, v1, -0x2

    .line 139
    .line 140
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    sub-int/2addr v1, v0

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_0

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        -0x6fd755ba35fdea2aL    # -7.943587749279402E-231
        0x66382e226f853a90L    # 2.568605954000205E184
        0x484ca82932186c14L    # 1.9502860954609495E40
    .end array-data

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
    :array_1
    .array-data 8
        0x22a850915ea7c1c9L    # 9.969681654765561E-142
        -0x23f93c6e48689faaL    # -2.068214340145982E135
        -0x718bcb908f46760dL    # -4.848177975110712E-239
    .end array-data
.end method


# virtual methods
.method public getDecimalDigits()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double p3, p1

    invoke-direct {p0, p3, p4}, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->makePretty(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAppendix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->mText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSuffix([Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/github/mikephil/charting/formatter/LargeValueFormatter;->SUFFIX:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
