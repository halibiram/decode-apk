.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, [C

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 23
    .line 24
    :try_start_0
    array-length p1, p2

    .line 25
    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 26
    .line 27
    invoke-static {p1, v3}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->lowestOneBit(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :try_start_1
    div-int v4, v0, v3

    .line 42
    .line 43
    iput v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 44
    .line 45
    div-int/2addr p1, v3

    .line 46
    iput p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    array-length p1, p2

    .line 49
    sub-int/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 51
    .line 52
    const/16 p1, 0x80

    .line 53
    .line 54
    new-array v3, p1, [B

    .line 55
    .line 56
    const/4 v4, -0x1

    .line 57
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    :goto_0
    array-length v7, p2

    .line 63
    if-ge v6, v7, :cond_2

    .line 64
    .line 65
    aget-char v7, p2, v6

    .line 66
    .line 67
    if-ge v7, p1, :cond_0

    .line 68
    .line 69
    const/4 v8, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const/4 v8, 0x0

    .line 72
    :goto_1
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v10, v2, [J

    .line 75
    .line 76
    fill-array-data v10, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v8, v9, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 87
    .line 88
    .line 89
    aget-byte v8, v3, v7

    .line 90
    .line 91
    if-ne v8, v4, :cond_1

    .line 92
    .line 93
    const/4 v8, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    const/4 v8, 0x0

    .line 96
    :goto_2
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v10, v2, [J

    .line 99
    .line 100
    fill-array-data v10, :array_1

    .line 101
    .line 102
    .line 103
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-static {v8, v9, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 111
    .line 112
    .line 113
    int-to-byte v8, v6

    .line 114
    aput-byte v8, v3, v7

    .line 115
    .line 116
    add-int/2addr v6, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iput-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 119
    .line 120
    iget p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 121
    .line 122
    new-array p1, p1, [Z

    .line 123
    .line 124
    :goto_3
    iget p2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    .line 125
    .line 126
    if-ge v5, p2, :cond_3

    .line 127
    .line 128
    mul-int/lit8 p2, v5, 0x8

    .line 129
    .line 130
    iget v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    .line 131
    .line 132
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 133
    .line 134
    invoke-static {p2, v2, v3}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    aput-boolean v1, p1, p2

    .line 139
    .line 140
    add-int/2addr v5, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    move-exception p1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v2, v2, [J

    .line 151
    .line 152
    fill-array-data v2, :array_2

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v2, Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_4

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    goto :goto_4

    .line 178
    :cond_4
    new-instance p2, Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_4
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :catch_1
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    array-length p2, p2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const/16 v3, 0x23

    .line 194
    .line 195
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .line 197
    .line 198
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v2, v2, [J

    .line 201
    .line 202
    fill-array-data v2, :array_3

    .line 203
    .line 204
    .line 205
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-static {v3, v1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    nop

    .line 217
    :array_0
    .array-data 8
        -0x78cf214971e16828L
        0x4afb417fb41a48a1L    # 1.6316201571054998E53
        0x3b2c32b9b1bb5a65L    # 1.1662479828005076E-23
        0x14f653e61b5ec076L
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
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_1
    .array-data 8
        -0x5becff9cab743L
        0x49770c17682aa10eL    # 8.223527231246068E45
        -0x54f39b09c7d8243L    # -9.74382285615722E282
        -0x22129328e5057df8L    # -2.8705606869003865E144
    .end array-data

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
    :array_2
    .array-data 8
        0x12f404865b9f15b0L
        0x4df914541f97c36aL    # 4.2258719929722135E67
        -0x506b83eb32d6f6eL    # -2.349513971975043E284
        -0x365ebd861931796L
    .end array-data

    :array_3
    .array-data 8
        0x761f7f15851e12daL    # 9.685398286559437E260
        0x283ad86531f6554aL    # 6.81317950712198E-115
        0x421566f7a69db44bL    # 2.2980454823426067E10
        0x30ea97ff3b71baaL
    .end array-data
.end method

.method public static synthetic access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 2
    .line 3
    return-object p0
.end method

.method private hasLowerCase()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-char v4, v0, v3

    .line 9
    .line 10
    invoke-static {v4}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

.method private hasUpperCase()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-char v4, v0, v3

    .line 9
    .line 10
    invoke-static {v4}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method


# virtual methods
.method public canDecode(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 6
    .line 7
    aget-byte p1, v0, p1

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public decode(C)I
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/16 v1, 0x7f

    .line 3
    .line 4
    if-le p1, v1, :cond_1

    .line 5
    .line 6
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-direct {v1, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 51
    .line 52
    aget-byte v2, v2, p1

    .line 53
    .line 54
    const/4 v3, -0x1

    .line 55
    if-ne v2, v3, :cond_5

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    if-le p1, v2, :cond_3

    .line 60
    .line 61
    if-ne p1, v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const/16 v2, 0x19

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v3, 0x4

    .line 76
    new-array v3, v3, [J

    .line 77
    .line 78
    fill-array-data v3, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_3
    :goto_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    .line 103
    .line 104
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    invoke-direct {v1, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_5
    return v2

    .line 147
    :array_0
    .array-data 8
        -0x7ad59164b372b384L    # -8.887611507462319E-284
        -0x1778089754dbb8ecL    # -3.499054824380008E195
        -0x17d857e5c71e09e0L    # -5.396603068987042E193
        0x5975a86d37a6cf42L    # 8.948184369049633E122
        0x7dc40f9da69b9777L    # 6.55991620786666E297
    .end array-data

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
    :array_1
    .array-data 8
        -0x46ef280d38f9a631L    # -8.109873481169297E-34
        0x4427791429d14be7L    # 2.1649987902617076E20
        0x4e631b733c07fd39L    # 4.1210385861869404E69
        0x2ca5d982b2af5d83L    # 1.309350301511884E-93
    .end array-data

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
    .line 188
    .line 189
    .line 190
    .line 191
    :array_2
    .array-data 8
        0x39fe68f7181379a1L    # 2.3989276185779628E-29
        0x6339f3148423e591L    # 9.793255796227931E169
        0xfa8f479a8cea872L
        0x6c6480bf11804706L    # 1.3804559585270483E214
        0x54631bbb8230047aL    # 3.265211596130463E98
    .end array-data
.end method

.method public encode(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 2
    .line 3
    aget-char p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isValidPaddingStartPosition(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 4
    .line 5
    rem-int/2addr p1, v1

    .line 6
    aget-boolean p1, v0, p1

    .line 7
    .line 8
    return p1
.end method

.method public lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    new-array v0, v0, [C

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 39
    .line 40
    array-length v3, v2

    .line 41
    if-ge v1, v3, :cond_1

    .line 42
    .line 43
    aget-char v2, v2, v1

    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    aput-char v2, v0, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v4, 0x3

    .line 65
    new-array v4, v4, [J

    .line 66
    .line 67
    fill-array-data v4, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :array_0
    .array-data 8
        -0x3ab0116117ba111dL    # -7.720710990717275E25
        0x4c175eff7d5dc654L    # 3.66756710650357E58
        0x4b0de0860d5d25f2L    # 3.577065544030105E53
        0x140f511eba2c9196L    # 4.651269309008954E-212
        0x2101ad73b77dd554L
        0x491bee8e33aa7bcaL    # 1.5572530829600438E44
        -0x2865222037c0d5dfL    # -1.0337907403856845E114
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
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x28c5cb00ddf423b7L    # -1.5756364233916602E112
        -0x44e2b0450dbae71cL    # -6.0614650315189025E-24
        -0x69ecfa49e65a5d70L    # -2.426868108507001E-202
    .end array-data
.end method

.method public matches(C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    aget-byte p1, v0, p1

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    new-array v0, v0, [C

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 39
    .line 40
    array-length v3, v2

    .line 41
    if-ge v1, v3, :cond_1

    .line 42
    .line 43
    aget-char v2, v2, v1

    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    aput-char v2, v0, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v4, 0x3

    .line 65
    new-array v4, v4, [J

    .line 66
    .line 67
    fill-array-data v4, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {v1, v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    .line 82
    .line 83
    .line 84
    return-object v1

    .line 85
    :array_0
    .array-data 8
        0x6a6571b312d16567L    # 3.3616746612405475E204
        -0x490238b3df3972fcL    # -8.345714769407174E-44
        -0x45d4db085f4290aeL    # -1.7130526974458562E-28
        0x2fcc843356e0fee0L    # 1.9240039791129869E-78
        -0x2407f4f34ae462cfL    # -1.0922188543002544E135
        0x3c4b45401b1294e4L    # 2.9566745564620182E-18
        0x52424f897c851a30L    # 1.8212664840755242E88
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
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x6deea11f1f65d59dL
        -0x6ac4194a1ff1bef2L
        -0x73d53eed5868d946L
    .end array-data
.end method
