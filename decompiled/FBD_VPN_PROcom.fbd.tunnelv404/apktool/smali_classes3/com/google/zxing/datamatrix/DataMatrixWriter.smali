.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


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

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    div-int v4, v2, v0

    .line 18
    .line 19
    div-int v5, v3, v1

    .line 20
    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    mul-int v5, v0, v4

    .line 26
    .line 27
    sub-int/2addr v2, v5

    .line 28
    div-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    mul-int v5, v1, v4

    .line 31
    .line 32
    sub-int/2addr v3, v5

    .line 33
    div-int/lit8 v3, v3, 0x2

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-lt p2, v1, :cond_1

    .line 37
    .line 38
    if-ge p1, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    .line 42
    .line 43
    invoke-direct {v6, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    .line 48
    .line 49
    invoke-direct {v6, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    :goto_2
    if-ge p1, v1, :cond_4

    .line 59
    .line 60
    move v7, v2

    .line 61
    const/4 p2, 0x0

    .line 62
    :goto_3
    if-ge p2, v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v9, 0x1

    .line 69
    if-ne v8, v9, :cond_2

    .line 70
    .line 71
    invoke-virtual {v6, v7, v3, v4, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    add-int/2addr v7, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    add-int/2addr v3, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    return-object v6
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    if-ge v4, v1, :cond_9

    .line 26
    .line 27
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 28
    .line 29
    rem-int v6, v4, v6

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-nez v6, :cond_2

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-ge v6, v9, :cond_1

    .line 41
    .line 42
    rem-int/lit8 v9, v6, 0x2

    .line 43
    .line 44
    if-nez v9, :cond_0

    .line 45
    .line 46
    const/4 v9, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    const/4 v9, 0x0

    .line 49
    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 50
    .line 51
    .line 52
    add-int/2addr v8, v7

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    :cond_2
    const/4 v6, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    :goto_3
    if-ge v6, v0, :cond_6

    .line 61
    .line 62
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 63
    .line 64
    rem-int v9, v6, v9

    .line 65
    .line 66
    if-nez v9, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v8, v8, 0x1

    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0, v6, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v9, v8, 0x1

    .line 81
    .line 82
    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 83
    .line 84
    rem-int v11, v6, v10

    .line 85
    .line 86
    sub-int/2addr v10, v7

    .line 87
    if-ne v11, v10, :cond_5

    .line 88
    .line 89
    rem-int/lit8 v10, v4, 0x2

    .line 90
    .line 91
    if-nez v10, :cond_4

    .line 92
    .line 93
    const/4 v10, 0x1

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    const/4 v10, 0x0

    .line 96
    :goto_4
    invoke-virtual {v2, v9, v5, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v8, v8, 0x2

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    move v8, v9

    .line 103
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 107
    .line 108
    iget v8, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 109
    .line 110
    rem-int v9, v4, v8

    .line 111
    .line 112
    sub-int/2addr v8, v7

    .line 113
    if-ne v9, v8, :cond_8

    .line 114
    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    :goto_6
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-ge v8, v10, :cond_7

    .line 122
    .line 123
    invoke-virtual {v2, v9, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    .line 124
    .line 125
    .line 126
    add-int/2addr v9, v7

    .line 127
    add-int/lit8 v8, v8, 0x1

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_7
    add-int/lit8 v5, v5, 0x2

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_8
    move v5, v6

    .line 134
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    invoke-static {v2, p2, p3}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v1, :cond_a

    if-ltz p3, :cond_9

    if-ltz p4, :cond_9

    .line 4
    sget-object p2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    .line 5
    sget-object v1, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz v1, :cond_0

    move-object p2, v1

    .line 6
    :cond_0
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Dimension;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 7
    :goto_0
    sget-object v2, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/Dimension;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_7

    .line 8
    sget-object v5, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 9
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 10
    sget-object v5, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 12
    :cond_4
    sget-object v5, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 13
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_5
    if-eqz v3, :cond_6

    const/16 p5, 0x1d

    goto :goto_2

    :cond_6
    const/4 p5, -0x1

    .line 14
    :goto_2
    invoke-static {p1, v0, p5, p2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_8

    .line 15
    sget-object v0, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 16
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    const/4 v3, 0x1

    .line 17
    :cond_8
    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    invoke-static {p5, p2, v1, v2, v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p5, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    .line 21
    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    invoke-direct {p5, p1, v0, v1}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 22
    invoke-virtual {p5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 23
    invoke-static {p5, p2, p3, p4}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    new-array p5, v0, [J

    fill-array-data p5, :array_1

    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        0x165a5c872c91553bL
        0x72c6668ee81bcfafL    # 7.647623407694764E244
        -0x22d41945e74adfeaL    # -6.645261486979869E140
        0x4555d4e702e68447L    # 1.0557138125262591E26
        0x6ff5d683f8d49ab8L    # 2.118988399233342E231
        0x4d087cc442584846L    # 1.259189950015818E63
    .end array-data

    :array_1
    .array-data 8
        -0x38f8ca9148fc6511L    # -1.5063320899160796E34
        0x7c5ea6c49f621a46L    # 1.194831542031839E291
        -0x4bb6f697519baae8L    # -7.977169915054384E-57
        0x1fa3cdce227b65e7L
        0x732d51b4beb82ecaL    # 6.406163989929057E246
        -0x79e4d3962cc4eca8L
    .end array-data

    :array_2
    .array-data 8
        -0x11ec3d1d074ce17dL    # -1.7857957993369333E222
        0x72864f8da126adc2L    # 4.760589929993975E243
        0x65210f6839067c1cL    # 1.3826464722177323E179
        0x3b9619bb4a8d1067L    # 1.1699914739417152E-21
    .end array-data
.end method
