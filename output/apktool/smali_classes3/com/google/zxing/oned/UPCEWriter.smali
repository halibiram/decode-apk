.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x33


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
    .locals 10

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0xa

    .line 4
    .line 5
    const/4 v3, 0x5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    const/4 v5, 0x7

    .line 11
    if-eq v4, v5, :cond_2

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    if-ne v4, v6, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v1, v3, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    new-array v1, v1, [J

    .line 54
    .line 55
    fill-array-data v1, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/16 v2, 0x9

    .line 79
    .line 80
    new-array v2, v2, [J

    .line 81
    .line 82
    fill-array-data v2, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    .line 101
    .line 102
    .line 103
    move-result v4
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_0
    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    if-ne v6, v1, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v1, v3, [J

    .line 141
    .line 142
    fill-array-data v1, :array_3

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_4
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sget-object v5, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    .line 165
    .line 166
    aget-object v5, v5, v6

    .line 167
    .line 168
    aget v3, v5, v3

    .line 169
    .line 170
    const/16 v5, 0x33

    .line 171
    .line 172
    new-array v5, v5, [Z

    .line 173
    .line 174
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 175
    .line 176
    invoke-static {v5, v4, v6, v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    const/4 v7, 0x1

    .line 181
    :goto_2
    if-gt v7, v0, :cond_6

    .line 182
    .line 183
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    invoke-static {v8, v2}, Ljava/lang/Character;->digit(CI)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    rsub-int/lit8 v9, v7, 0x6

    .line 192
    .line 193
    shr-int v9, v3, v9

    .line 194
    .line 195
    and-int/2addr v9, v1

    .line 196
    if-ne v9, v1, :cond_5

    .line 197
    .line 198
    add-int/2addr v8, v2

    .line 199
    :cond_5
    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 200
    .line 201
    aget-object v8, v9, v8

    .line 202
    .line 203
    invoke-static {v5, v6, v8, v4}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    add-int/2addr v6, v8

    .line 208
    add-int/2addr v7, v1

    .line 209
    goto :goto_2

    .line 210
    :cond_6
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 211
    .line 212
    invoke-static {v5, v6, p1, v4}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    .line 213
    .line 214
    .line 215
    return-object v5

    .line 216
    :catch_1
    move-exception p1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 218
    .line 219
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :array_0
    .array-data 8
        -0x6ffbf6c090e8bc66L
        0x46d67e919b593ec3L    # 1.8249632915540342E33
        0x7504c39e9b229ba5L    # 4.8714725661922205E255
        -0x1664d584aee38251L    # -5.198546503571208E200
        -0x64b2fecb3d4d734fL
    .end array-data

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
    :array_1
    .array-data 8
        0x6f61b2f4cfe9a2faL    # 3.3542593132424715E228
        0x7f544977a0b2c4edL    # 2.2259379634410616E305
        0xd5e0142c9cebe5L
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 8
        0x68a696b45419e53eL    # 1.319162273602384E196
        0x2aa426b75966dabfL
        -0x1b7b19c28bf01e13L    # -1.6540962751151467E176
        0x3070e2e9a2145faL
        -0x5e6d5cead520bca5L    # -5.830141595589298E-147
        0xad5ded3956b8238L
        -0x35b410169e469b29L    # -8.166039517754109E49
        -0x2710911c59252740L    # -2.5365086453720663E120
        0x4ca99291675825f9L    # 2.0546736623958136E61
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_3
    .array-data 8
        0x31f3d3b349139d03L    # 4.5963913323282836E-68
        0x34231c710001fd47L    # 1.5222868808936047E-57
        0x3e14ed6ce77c008L
        0x7ae79d79c9c3b2baL    # 1.0973784958050205E284
        0x4550f3de311c176L
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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

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
