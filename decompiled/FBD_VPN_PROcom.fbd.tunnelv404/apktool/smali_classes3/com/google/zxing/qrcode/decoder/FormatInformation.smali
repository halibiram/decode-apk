.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [[I

    .line 4
    .line 5
    const/16 v1, 0x5412

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    filled-new-array {v1, v2}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const/16 v1, 0x5125

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    filled-new-array {v1, v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    const/16 v1, 0x5e7c

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    filled-new-array {v1, v2}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const/16 v1, 0x5b4b

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    filled-new-array {v1, v2}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    const/16 v1, 0x45f9

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    filled-new-array {v1, v2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    aput-object v1, v0, v2

    .line 49
    .line 50
    const/16 v1, 0x40ce

    .line 51
    .line 52
    const/4 v2, 0x5

    .line 53
    filled-new-array {v1, v2}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    const/16 v1, 0x4f97

    .line 60
    .line 61
    const/4 v2, 0x6

    .line 62
    filled-new-array {v1, v2}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    aput-object v1, v0, v2

    .line 67
    .line 68
    const/16 v1, 0x4aa0

    .line 69
    .line 70
    const/4 v2, 0x7

    .line 71
    filled-new-array {v1, v2}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    aput-object v1, v0, v2

    .line 76
    .line 77
    const/16 v1, 0x77c4

    .line 78
    .line 79
    const/16 v2, 0x8

    .line 80
    .line 81
    filled-new-array {v1, v2}, [I

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    const/16 v1, 0x72f3

    .line 88
    .line 89
    const/16 v2, 0x9

    .line 90
    .line 91
    filled-new-array {v1, v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    aput-object v1, v0, v2

    .line 96
    .line 97
    const/16 v1, 0x7daa

    .line 98
    .line 99
    const/16 v2, 0xa

    .line 100
    .line 101
    filled-new-array {v1, v2}, [I

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    aput-object v1, v0, v2

    .line 106
    .line 107
    const/16 v1, 0x789d

    .line 108
    .line 109
    const/16 v2, 0xb

    .line 110
    .line 111
    filled-new-array {v1, v2}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    const/16 v1, 0x662f

    .line 118
    .line 119
    const/16 v2, 0xc

    .line 120
    .line 121
    filled-new-array {v1, v2}, [I

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aput-object v1, v0, v2

    .line 126
    .line 127
    const/16 v1, 0x6318

    .line 128
    .line 129
    const/16 v2, 0xd

    .line 130
    .line 131
    filled-new-array {v1, v2}, [I

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    aput-object v1, v0, v2

    .line 136
    .line 137
    const/16 v1, 0x6c41

    .line 138
    .line 139
    const/16 v2, 0xe

    .line 140
    .line 141
    filled-new-array {v1, v2}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    const/16 v1, 0x6976

    .line 148
    .line 149
    const/16 v2, 0xf

    .line 150
    .line 151
    filled-new-array {v1, v2}, [I

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    aput-object v1, v0, v2

    .line 156
    .line 157
    const/16 v1, 0x1689

    .line 158
    .line 159
    const/16 v2, 0x10

    .line 160
    .line 161
    filled-new-array {v1, v2}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    aput-object v1, v0, v2

    .line 166
    .line 167
    const/16 v1, 0x13be

    .line 168
    .line 169
    const/16 v2, 0x11

    .line 170
    .line 171
    filled-new-array {v1, v2}, [I

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    const/16 v1, 0x1ce7

    .line 178
    .line 179
    const/16 v2, 0x12

    .line 180
    .line 181
    filled-new-array {v1, v2}, [I

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    aput-object v1, v0, v2

    .line 186
    .line 187
    const/16 v1, 0x19d0

    .line 188
    .line 189
    const/16 v2, 0x13

    .line 190
    .line 191
    filled-new-array {v1, v2}, [I

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    aput-object v1, v0, v2

    .line 196
    .line 197
    const/16 v1, 0x762

    .line 198
    .line 199
    const/16 v2, 0x14

    .line 200
    .line 201
    filled-new-array {v1, v2}, [I

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    aput-object v1, v0, v2

    .line 206
    .line 207
    const/16 v1, 0x255

    .line 208
    .line 209
    const/16 v2, 0x15

    .line 210
    .line 211
    filled-new-array {v1, v2}, [I

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    aput-object v1, v0, v2

    .line 216
    .line 217
    const/16 v1, 0xd0c

    .line 218
    .line 219
    const/16 v2, 0x16

    .line 220
    .line 221
    filled-new-array {v1, v2}, [I

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    aput-object v1, v0, v2

    .line 226
    .line 227
    const/16 v1, 0x83b

    .line 228
    .line 229
    const/16 v2, 0x17

    .line 230
    .line 231
    filled-new-array {v1, v2}, [I

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    aput-object v1, v0, v2

    .line 236
    .line 237
    const/16 v1, 0x355f

    .line 238
    .line 239
    const/16 v2, 0x18

    .line 240
    .line 241
    filled-new-array {v1, v2}, [I

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    aput-object v1, v0, v2

    .line 246
    .line 247
    const/16 v1, 0x3068

    .line 248
    .line 249
    const/16 v2, 0x19

    .line 250
    .line 251
    filled-new-array {v1, v2}, [I

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    aput-object v1, v0, v2

    .line 256
    .line 257
    const/16 v1, 0x3f31

    .line 258
    .line 259
    const/16 v2, 0x1a

    .line 260
    .line 261
    filled-new-array {v1, v2}, [I

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    aput-object v1, v0, v2

    .line 266
    .line 267
    const/16 v1, 0x3a06

    .line 268
    .line 269
    const/16 v2, 0x1b

    .line 270
    .line 271
    filled-new-array {v1, v2}, [I

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    aput-object v1, v0, v2

    .line 276
    .line 277
    const/16 v1, 0x24b4

    .line 278
    .line 279
    const/16 v2, 0x1c

    .line 280
    .line 281
    filled-new-array {v1, v2}, [I

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    aput-object v1, v0, v2

    .line 286
    .line 287
    const/16 v1, 0x2183

    .line 288
    .line 289
    const/16 v2, 0x1d

    .line 290
    .line 291
    filled-new-array {v1, v2}, [I

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    aput-object v1, v0, v2

    .line 296
    .line 297
    const/16 v1, 0x2eda

    .line 298
    .line 299
    const/16 v2, 0x1e

    .line 300
    .line 301
    filled-new-array {v1, v2}, [I

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    aput-object v1, v0, v2

    .line 306
    .line 307
    const/16 v1, 0x2bed

    .line 308
    .line 309
    const/16 v2, 0x1f

    .line 310
    .line 311
    filled-new-array {v1, v2}, [I

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    aput-object v1, v0, v2

    .line 316
    .line 317
    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 318
    .line 319
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    shr-int/lit8 v0, p1, 0x3

    .line 5
    .line 6
    and-int/lit8 v0, v0, 0x3

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 13
    .line 14
    and-int/lit8 p1, p1, 0x7

    .line 15
    .line 16
    int-to-byte p1, p1

    .line 17
    iput-byte p1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 18
    .line 19
    return-void
.end method

.method public static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    xor-int/lit16 p0, p0, 0x5412

    .line 9
    .line 10
    xor-int/lit16 p1, p1, 0x5412

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const v2, 0x7fffffff

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    if-ge v4, v1, :cond_4

    .line 11
    .line 12
    aget-object v6, v0, v4

    .line 13
    .line 14
    aget v7, v6, v3

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    if-eq v7, p0, :cond_3

    .line 18
    .line 19
    if-ne v7, p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {p0, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-ge v9, v2, :cond_1

    .line 27
    .line 28
    aget v5, v6, v8

    .line 29
    .line 30
    move v2, v9

    .line 31
    :cond_1
    if-eq p0, p1, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-ge v7, v2, :cond_2

    .line 38
    .line 39
    aget v2, v6, v8

    .line 40
    .line 41
    move v5, v2

    .line 42
    move v2, v7

    .line 43
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 47
    .line 48
    aget p1, v6, v8

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    const/4 p0, 0x3

    .line 55
    if-gt v2, p0, :cond_5

    .line 56
    .line 57
    new-instance p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 58
    .line 59
    invoke-direct {p0, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_5
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public static numBitsDiffering(II)I
    .locals 0

    .line 1
    xor-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 16
    .line 17
    iget-byte p1, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public getDataMask()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 2
    .line 3
    return v0
.end method

.method public getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    shl-int/lit8 v0, v0, 0x3

    .line 8
    .line 9
    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 10
    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method
