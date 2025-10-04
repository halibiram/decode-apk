.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 11

    .line 1
    const/4 v0, 0x6

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/16 v4, 0xc

    .line 10
    .line 11
    if-eq v3, v4, :cond_2

    .line 12
    .line 13
    const/16 v5, 0xd

    .line 14
    .line 15
    if-ne v3, v5, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [J

    .line 51
    .line 52
    fill-array-data v1, :array_1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/16 v2, 0x9

    .line 76
    .line 77
    new-array v2, v2, [J

    .line 78
    .line 79
    fill-array-data v2, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    .line 94
    .line 95
    .line 96
    move-result v3
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_0
    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-static {v5, v1}, Ljava/lang/Character;->digit(CI)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    sget-object v6, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    .line 125
    .line 126
    aget v5, v6, v5

    .line 127
    .line 128
    const/16 v6, 0x5f

    .line 129
    .line 130
    new-array v6, v6, [Z

    .line 131
    .line 132
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 133
    .line 134
    invoke-static {v6, v3, v7, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    const/4 v8, 0x1

    .line 139
    :goto_1
    if-gt v8, v0, :cond_4

    .line 140
    .line 141
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    invoke-static {v9, v1}, Ljava/lang/Character;->digit(CI)I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    rsub-int/lit8 v10, v8, 0x6

    .line 150
    .line 151
    shr-int v10, v5, v10

    .line 152
    .line 153
    and-int/2addr v10, v2

    .line 154
    if-ne v10, v2, :cond_3

    .line 155
    .line 156
    add-int/2addr v9, v1

    .line 157
    :cond_3
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 158
    .line 159
    aget-object v9, v10, v9

    .line 160
    .line 161
    invoke-static {v6, v7, v9, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    add-int/2addr v7, v9

    .line 166
    add-int/2addr v8, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_4
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 169
    .line 170
    invoke-static {v6, v7, v0, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v0, v7

    .line 175
    const/4 v3, 0x7

    .line 176
    :goto_2
    if-gt v3, v4, :cond_5

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    invoke-static {v5, v1}, Ljava/lang/Character;->digit(CI)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 187
    .line 188
    aget-object v5, v7, v5

    .line 189
    .line 190
    invoke-static {v6, v0, v5, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    add-int/2addr v0, v5

    .line 195
    add-int/2addr v3, v2

    .line 196
    goto :goto_2

    .line 197
    :cond_5
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 198
    .line 199
    invoke-static {v6, v0, p1, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 200
    .line 201
    .line 202
    return-object v6

    .line 203
    :catch_1
    move-exception p1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    nop

    .line 211
    :array_0
    .array-data 8
        0x3e9d364d58071328L    # 4.352944742681651E-7
        0x63de0c0bddbbcf29L    # 1.1611797561179782E173
        0x110b89f3126c5070L
        -0x4256b0297852c31aL    # -1.1510504563294266E-11
        -0x5fe901dd933410c9L
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
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
    :array_1
    .array-data 8
        0x497d831002f6846eL    # 1.0530220298732263E46
        0x70201694393d3bdL
        0x45b95f79d15d760bL    # 7.852548466845538E27
    .end array-data

    .line 236
    .line 237
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
    :array_2
    .array-data 8
        -0x350192c37ff4a5dbL    # -1.8214370636961516E53
        0x4875ed57c7b7acc6L    # 1.1938260033470658E41
        0x8d52972c9d2b403L
        -0x54666fb5afc799a3L    # -1.1687564503804146E-98
        0x3870c6acd1a27cb6L    # 7.888072324744005E-37
        -0x384679329102f401L    # -3.39306343610474E37
        -0x5ce90c9d1d2c7a61L
        0x12cb86dc7a200d6dL    # 3.898961140463304E-218
        -0xc7937bd86a10161L    # -3.185835345430634E248
    .end array-data
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
