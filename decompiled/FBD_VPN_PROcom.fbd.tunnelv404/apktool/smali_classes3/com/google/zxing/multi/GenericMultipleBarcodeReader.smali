.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/zxing/Result;

    .line 3
    .line 4
    sput-object v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 5
    .line 6
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v8, p4

    .line 4
    .line 5
    move/from16 v9, p5

    .line 6
    .line 7
    move/from16 v10, p6

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-le v10, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    move-object/from16 v11, p0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, v11, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 16
    .line 17
    move-object/from16 v12, p2

    .line 18
    .line 19
    invoke-interface {v1, v0, v12}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/google/zxing/Result;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    move-object/from16 v13, p3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v1, v8, v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    move-object/from16 v13, p3

    .line 61
    .line 62
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_d

    .line 70
    .line 71
    array-length v2, v1

    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    int-to-float v2, v14

    .line 85
    int-to-float v3, v15

    .line 86
    array-length v4, v1

    .line 87
    const/4 v5, 0x0

    .line 88
    move v6, v3

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    :goto_1
    if-ge v7, v4, :cond_9

    .line 92
    .line 93
    aget-object v17, v1, v7

    .line 94
    .line 95
    if-nez v17, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 99
    .line 100
    .line 101
    move-result v18

    .line 102
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 103
    .line 104
    .line 105
    move-result v17

    .line 106
    cmpg-float v19, v18, v2

    .line 107
    .line 108
    if-gez v19, :cond_5

    .line 109
    .line 110
    move/from16 v2, v18

    .line 111
    .line 112
    :cond_5
    cmpg-float v19, v17, v6

    .line 113
    .line 114
    if-gez v19, :cond_6

    .line 115
    .line 116
    move/from16 v6, v17

    .line 117
    .line 118
    :cond_6
    cmpl-float v19, v18, v5

    .line 119
    .line 120
    if-lez v19, :cond_7

    .line 121
    .line 122
    move/from16 v5, v18

    .line 123
    .line 124
    :cond_7
    cmpl-float v18, v17, v3

    .line 125
    .line 126
    if-lez v18, :cond_8

    .line 127
    .line 128
    move/from16 v3, v17

    .line 129
    .line 130
    :cond_8
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    const/high16 v17, 0x42c80000    # 100.0f

    .line 134
    .line 135
    cmpl-float v1, v2, v17

    .line 136
    .line 137
    if-lez v1, :cond_a

    .line 138
    .line 139
    float-to-int v1, v2

    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-virtual {v0, v7, v7, v1, v15}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    add-int/lit8 v16, v10, 0x1

    .line 146
    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    move v4, v3

    .line 150
    move-object/from16 v3, p2

    .line 151
    .line 152
    move v11, v4

    .line 153
    move-object/from16 v4, p3

    .line 154
    .line 155
    move v12, v5

    .line 156
    move/from16 v5, p4

    .line 157
    .line 158
    move v13, v6

    .line 159
    move/from16 v6, p5

    .line 160
    .line 161
    const/4 v9, 0x0

    .line 162
    move/from16 v7, v16

    .line 163
    .line 164
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_a
    move v11, v3

    .line 169
    move v12, v5

    .line 170
    move v13, v6

    .line 171
    const/4 v9, 0x0

    .line 172
    :goto_3
    cmpl-float v1, v13, v17

    .line 173
    .line 174
    if-lez v1, :cond_b

    .line 175
    .line 176
    float-to-int v1, v13

    .line 177
    invoke-virtual {v0, v9, v9, v14, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    add-int/lit8 v7, v10, 0x1

    .line 182
    .line 183
    move-object/from16 v1, p0

    .line 184
    .line 185
    move-object/from16 v3, p2

    .line 186
    .line 187
    move-object/from16 v4, p3

    .line 188
    .line 189
    move/from16 v5, p4

    .line 190
    .line 191
    move/from16 v6, p5

    .line 192
    .line 193
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 194
    .line 195
    .line 196
    :cond_b
    add-int/lit8 v1, v14, -0x64

    .line 197
    .line 198
    int-to-float v1, v1

    .line 199
    cmpg-float v1, v12, v1

    .line 200
    .line 201
    if-gez v1, :cond_c

    .line 202
    .line 203
    float-to-int v1, v12

    .line 204
    sub-int v2, v14, v1

    .line 205
    .line 206
    invoke-virtual {v0, v1, v9, v2, v15}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    add-int v5, v8, v1

    .line 211
    .line 212
    add-int/lit8 v7, v10, 0x1

    .line 213
    .line 214
    move-object/from16 v1, p0

    .line 215
    .line 216
    move-object/from16 v3, p2

    .line 217
    .line 218
    move-object/from16 v4, p3

    .line 219
    .line 220
    move/from16 v6, p5

    .line 221
    .line 222
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 223
    .line 224
    .line 225
    :cond_c
    add-int/lit8 v1, v15, -0x64

    .line 226
    .line 227
    int-to-float v1, v1

    .line 228
    cmpg-float v1, v11, v1

    .line 229
    .line 230
    if-gez v1, :cond_d

    .line 231
    .line 232
    float-to-int v1, v11

    .line 233
    sub-int/2addr v15, v1

    .line 234
    invoke-virtual {v0, v9, v1, v14, v15}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    add-int v5, p5, v1

    .line 239
    .line 240
    add-int/lit8 v6, v10, 0x1

    .line 241
    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    move-object v1, v2

    .line 245
    move-object/from16 v2, p2

    .line 246
    .line 247
    move-object/from16 v3, p3

    .line 248
    .line 249
    move/from16 v4, p4

    .line 250
    .line 251
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 252
    .line 253
    .line 254
    :catch_0
    :cond_d
    :goto_4
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    new-array v6, v1, [Lcom/google/zxing/ResultPoint;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, v0

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    new-instance v3, Lcom/google/zxing/ResultPoint;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v5, p1

    .line 26
    add-float/2addr v4, v5

    .line 27
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v5, p2

    .line 32
    add-float/2addr v2, v5

    .line 33
    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 34
    .line 35
    .line 36
    aput-object v3, v6, v1

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Lcom/google/zxing/Result;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    move-object v2, p1

    .line 64
    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
