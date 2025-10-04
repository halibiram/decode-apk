.class public Lcom/airbnb/lottie/model/content/GradientColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 7
    .line 8
    return-void
.end method

.method private copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 8
    .line 9
    iget-object v3, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 10
    .line 11
    aget v3, v3, v0

    .line 12
    .line 13
    aput v3, v2, v0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 16
    .line 17
    aget v1, v1, v0

    .line 18
    .line 19
    aput v1, v2, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private getColorForPosition(F)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 10
    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    neg-int v0, v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    aget p1, p1, v0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    if-ne v0, v2, :cond_2

    .line 31
    .line 32
    array-length p1, v1

    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    aget p1, v1, p1

    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 39
    .line 40
    add-int/lit8 v3, v0, -0x1

    .line 41
    .line 42
    aget v4, v2, v3

    .line 43
    .line 44
    aget v2, v2, v0

    .line 45
    .line 46
    aget v3, v1, v3

    .line 47
    .line 48
    aget v0, v1, v0

    .line 49
    .line 50
    sub-float/2addr p1, v4

    .line 51
    sub-float/2addr v2, v4

    .line 52
    div-float/2addr p1, v2

    .line 53
    invoke-static {p1, v3, v0}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method


# virtual methods
.method public copyWithPositions([F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget v2, p1, v1

    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/content/GradientColor;->getColorForPosition(F)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 20
    .line 21
    invoke-direct {v1, p1, v0}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/content/GradientColor;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 22
    .line 23
    iget-object v3, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 32
    .line 33
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 34
    .line 35
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public getColors()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public lerp(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;F)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->equals(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    cmpg-float v1, p3, v1

    .line 14
    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float v1, p3, v1

    .line 24
    .line 25
    if-ltz v1, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/model/content/GradientColor;->copyFrom(Lcom/airbnb/lottie/model/content/GradientColor;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    iget-object v2, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    if-ne v1, v2, :cond_5

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    if-ge v0, v2, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 46
    .line 47
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 48
    .line 49
    aget v2, v2, v0

    .line 50
    .line 51
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 52
    .line 53
    aget v3, v3, v0

    .line 54
    .line 55
    invoke-static {v2, v3, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    aput v2, v1, v0

    .line 60
    .line 61
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 62
    .line 63
    iget-object v2, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 64
    .line 65
    aget v2, v2, v0

    .line 66
    .line 67
    iget-object v3, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 68
    .line 69
    aget v3, v3, v0

    .line 70
    .line 71
    invoke-static {p3, v2, v3}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    aput v2, v1, v0

    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    array-length p2, v1

    .line 81
    :goto_1
    iget-object p3, p0, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    .line 82
    .line 83
    array-length v0, p3

    .line 84
    if-ge p2, v0, :cond_4

    .line 85
    .line 86
    iget-object v0, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 87
    .line 88
    array-length v1, v0

    .line 89
    add-int/lit8 v1, v1, -0x1

    .line 90
    .line 91
    aget v1, p3, v1

    .line 92
    .line 93
    aput v1, p3, p2

    .line 94
    .line 95
    iget-object p3, p0, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 96
    .line 97
    array-length v0, v0

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 99
    .line 100
    aget v0, p3, v0

    .line 101
    .line 102
    aput v0, p3, p2

    .line 103
    .line 104
    add-int/lit8 p2, p2, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    return-void

    .line 108
    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/16 v3, 0x8

    .line 118
    .line 119
    new-array v3, v3, [J

    .line 120
    .line 121
    fill-array-data v3, :array_0

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 135
    .line 136
    array-length p1, p1

    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v2, v0, [J

    .line 143
    .line 144
    fill-array-data v2, :array_1

    .line 145
    .line 146
    .line 147
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object p1, p2, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    .line 158
    .line 159
    array-length p1, p1

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array p2, v0, [J

    .line 166
    .line 167
    fill-array-data p2, :array_2

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-static {p1, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p3

    .line 181
    :array_0
    .array-data 8
        -0x454fb259e7408561L    # -5.267885411797283E-26
        -0xc0c90225db0ade7L    # -3.47908548222111E250
        0x4723279144e6a46L
        -0x7965e23562043995L    # -7.366426492621868E-277
        0x1b72b191ea84aeb3L
        0x596f73c2df13cc59L    # 6.497393568565015E122
        0x5906674dc17d336L
        -0x3f7820f6312462f1L    # -763.8797890813165
    .end array-data

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
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    :array_1
    .array-data 8
        -0x18b8758349f7d93fL    # -3.277717800919327E189
        -0x20be0aefaf6a33d9L    # -7.34764904124833E150
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
    :array_2
    .array-data 8
        -0x4de53686992f20cbL    # -2.4839634349518904E-67
        0x797ba496581e037L
    .end array-data
.end method
