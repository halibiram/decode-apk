.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7

    .line 1
    new-array p2, p2, [I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/2addr v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v3, p1, :cond_1

    .line 15
    .line 16
    mul-int v5, v2, p1

    .line 17
    .line 18
    add-int/2addr v5, v3

    .line 19
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    sub-int v5, p1, v3

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    sub-int/2addr v5, v6

    .line 29
    shl-int v5, v6, v5

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    :goto_2
    or-int/2addr v4, v5

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    aput v4, p2, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p2
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p1, v0

    .line 5
    .line 6
    move v2, v1

    .line 7
    :goto_1
    add-int v3, p1, v0

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-int v0, p1, p2

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p1, p2

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p2, p1, -0x1

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 2

    .line 1
    div-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    :goto_0
    const/4 p1, 0x7

    .line 7
    if-ge v0, p1, :cond_9

    .line 8
    .line 9
    add-int/lit8 p1, p2, -0x3

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, p2, -0x5

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 24
    .line 25
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, p2, 0x5

    .line 32
    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, p2, 0x5

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    .line 50
    .line 51
    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    add-int/lit8 v1, p2, -0x5

    .line 58
    .line 59
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    :goto_1
    const/16 p1, 0xa

    .line 66
    .line 67
    if-ge v0, p1, :cond_9

    .line 68
    .line 69
    add-int/lit8 p1, p2, -0x5

    .line 70
    .line 71
    add-int/2addr p1, v0

    .line 72
    div-int/lit8 v1, v0, 0x5

    .line 73
    .line 74
    add-int/2addr v1, p1

    .line 75
    invoke-virtual {p3, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    add-int/lit8 p1, p2, -0x7

    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 84
    .line 85
    .line 86
    :cond_5
    add-int/lit8 p1, v0, 0xa

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    add-int/lit8 p1, p2, 0x7

    .line 95
    .line 96
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 97
    .line 98
    .line 99
    :cond_6
    rsub-int/lit8 p1, v0, 0x1d

    .line 100
    .line 101
    invoke-virtual {p3, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    add-int/lit8 p1, p2, 0x7

    .line 108
    .line 109
    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 110
    .line 111
    .line 112
    :cond_7
    rsub-int/lit8 p1, v0, 0x27

    .line 113
    .line 114
    invoke-virtual {p3, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    add-int/lit8 p1, p2, -0x7

    .line 121
    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 123
    .line 124
    .line 125
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_9
    return-void
.end method

.method public static encode(Ljava/lang/String;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;II)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 1

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 1

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x21

    .line 5
    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIILjava/nio/charset/Charset;)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 22

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x2

    .line 7
    new-instance v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    mul-int v4, v4, p1

    div-int/lit8 v4, v4, 0x64

    const/16 v5, 0xb

    add-int/2addr v4, v5

    .line 9
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x20

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_5

    if-gez p2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-eqz v6, :cond_1

    const/4 v7, 0x4

    :cond_1
    if-gt v11, v7, :cond_4

    .line 11
    invoke-static {v11, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v7

    .line 12
    sget-object v12, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v12, v12, v11

    .line 13
    rem-int v13, v7, v12

    sub-int v13, v7, v13

    .line 14
    invoke-static {v3, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    add-int/2addr v14, v4

    if-gt v14, v13, :cond_3

    if-eqz v6, :cond_d

    .line 16
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    mul-int/lit8 v13, v12, 0x40

    if-gt v4, v13, :cond_2

    goto/16 :goto_5

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-gt v12, v7, :cond_1d

    const/4 v14, 0x3

    if-gt v12, v14, :cond_6

    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_7

    add-int/lit8 v15, v12, 0x1

    goto :goto_3

    :cond_7
    move v15, v12

    .line 21
    :goto_3
    invoke-static {v15, v14}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v5

    if-le v6, v5, :cond_9

    :cond_8
    :goto_4
    const/4 v0, 0x2

    const/4 v1, 0x1

    goto/16 :goto_11

    :cond_9
    if-eqz v11, :cond_a

    .line 22
    sget-object v16, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v7, v16, v15

    if-eq v13, v7, :cond_b

    .line 23
    :cond_a
    sget-object v7, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v7, v7, v15

    .line 24
    invoke-static {v3, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v11

    move v13, v7

    .line 25
    :cond_b
    rem-int v7, v5, v13

    sub-int v7, v5, v7

    if-eqz v14, :cond_c

    .line 26
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    mul-int/lit8 v0, v13, 0x40

    if-le v9, v0, :cond_c

    goto :goto_4

    .line 27
    :cond_c
    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    add-int/2addr v0, v4

    if-gt v0, v7, :cond_8

    move v7, v5

    move-object v3, v11

    move v12, v13

    move v6, v14

    move v11, v15

    .line 28
    :cond_d
    :goto_5
    invoke-static {v3, v7, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 29
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    div-int/2addr v3, v12

    .line 30
    invoke-static {v6, v11, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    if-eqz v6, :cond_e

    const/16 v5, 0xb

    goto :goto_6

    :cond_e
    const/16 v5, 0xe

    :goto_6
    mul-int/lit8 v7, v11, 0x4

    add-int/2addr v7, v5

    .line 31
    new-array v5, v7, [I

    if-eqz v6, :cond_10

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_f

    .line 32
    aput v9, v5, v9

    add-int/2addr v9, v10

    goto :goto_7

    :cond_f
    move v13, v7

    goto :goto_9

    :cond_10
    add-int/lit8 v9, v7, 0x1

    .line 33
    div-int/lit8 v12, v7, 0x2

    add-int/lit8 v13, v12, -0x1

    div-int/lit8 v13, v13, 0xf

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v9

    .line 34
    div-int/lit8 v9, v13, 0x2

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v12, :cond_11

    .line 35
    div-int/lit8 v15, v14, 0xf

    add-int/2addr v15, v14

    sub-int v17, v12, v14

    add-int/lit8 v17, v17, -0x1

    sub-int v18, v9, v15

    add-int/lit8 v18, v18, -0x1

    .line 36
    aput v18, v5, v17

    add-int v17, v12, v14

    add-int/2addr v15, v9

    add-int/2addr v15, v10

    .line 37
    aput v15, v5, v17

    add-int/2addr v14, v10

    goto :goto_8

    .line 38
    :cond_11
    :goto_9
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v13}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v12, v11, :cond_19

    sub-int v15, v11, v12

    mul-int/lit8 v15, v15, 0x4

    if-eqz v6, :cond_12

    const/16 v17, 0x9

    goto :goto_b

    :cond_12
    const/16 v17, 0xc

    :goto_b
    add-int v15, v15, v17

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v15, :cond_18

    mul-int/lit8 v18, v1, 0x2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v2, :cond_17

    add-int v20, v14, v18

    add-int v10, v20, v8

    .line 39
    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_13

    mul-int/lit8 v10, v12, 0x2

    add-int v20, v10, v8

    .line 40
    aget v2, v5, v20

    add-int/2addr v10, v1

    aget v10, v5, v10

    invoke-virtual {v9, v2, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    const/4 v2, 0x2

    :cond_13
    mul-int/lit8 v10, v15, 0x2

    add-int/2addr v10, v14

    add-int v10, v10, v18

    add-int/2addr v10, v8

    .line 41
    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_14

    mul-int/lit8 v10, v12, 0x2

    add-int v2, v10, v1

    .line 42
    aget v2, v5, v2

    const/16 v20, 0x1

    add-int/lit8 v21, v7, -0x1

    sub-int v21, v21, v10

    sub-int v21, v21, v8

    aget v10, v5, v21

    invoke-virtual {v9, v2, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_14
    const/4 v2, 0x4

    mul-int/lit8 v10, v15, 0x4

    add-int/2addr v10, v14

    add-int v10, v10, v18

    add-int/2addr v10, v8

    .line 43
    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    add-int/lit8 v19, v7, -0x1

    const/4 v10, 0x2

    mul-int/lit8 v20, v12, 0x2

    sub-int v19, v19, v20

    sub-int v10, v19, v8

    .line 44
    aget v10, v5, v10

    sub-int v19, v19, v1

    aget v2, v5, v19

    invoke-virtual {v9, v10, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_15
    const/4 v2, 0x6

    mul-int/lit8 v10, v15, 0x6

    add-int/2addr v10, v14

    add-int v10, v10, v18

    add-int/2addr v10, v8

    .line 45
    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    add-int/lit8 v17, v7, -0x1

    const/16 v19, 0x2

    mul-int/lit8 v20, v12, 0x2

    sub-int v17, v17, v20

    sub-int v17, v17, v1

    .line 46
    aget v2, v5, v17

    add-int v20, v20, v8

    aget v10, v5, v20

    invoke-virtual {v9, v2, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_16
    const/4 v2, 0x1

    add-int/2addr v8, v2

    const/4 v2, 0x2

    const/4 v10, 0x1

    goto :goto_d

    :cond_17
    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x1

    goto/16 :goto_c

    :cond_18
    const/4 v2, 0x1

    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    add-int/2addr v12, v2

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v8, 0x4

    const/4 v10, 0x1

    goto/16 :goto_a

    .line 47
    :cond_19
    invoke-static {v9, v6, v13, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-eqz v6, :cond_1a

    const/4 v0, 0x2

    .line 48
    div-int/lit8 v0, v13, 0x2

    const/4 v1, 0x5

    invoke-static {v9, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_10

    :cond_1a
    const/4 v0, 0x2

    .line 49
    div-int/lit8 v1, v13, 0x2

    const/4 v2, 0x7

    invoke-static {v9, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 50
    :goto_e
    div-int/lit8 v5, v7, 0x2

    const/4 v0, 0x1

    sub-int/2addr v5, v0

    if-ge v2, v5, :cond_1c

    and-int/lit8 v5, v1, 0x1

    :goto_f
    if-ge v5, v13, :cond_1b

    sub-int v0, v1, v4

    .line 51
    invoke-virtual {v9, v0, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v8, v1, v4

    .line 52
    invoke-virtual {v9, v8, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 53
    invoke-virtual {v9, v5, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    invoke-virtual {v9, v5, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    const/4 v0, 0x2

    add-int/2addr v5, v0

    goto :goto_f

    :cond_1b
    const/4 v0, 0x2

    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v4, 0x10

    goto :goto_e

    .line 55
    :cond_1c
    :goto_10
    new-instance v0, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    .line 56
    invoke-virtual {v0, v6}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    .line 57
    invoke-virtual {v0, v13}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    .line 58
    invoke-virtual {v0, v11}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    .line 59
    invoke-virtual {v0, v3}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    .line 60
    invoke-virtual {v0, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v0

    :goto_11
    add-int/2addr v12, v1

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/16 v5, 0xb

    const/16 v7, 0x20

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 61
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        0x120bbe908af0fe2cL    # 9.594192603611249E-222
        -0x70c94c7451f467beL    # -2.231182452947802E-235
        0xf5d1e23de6cb9a2L
        0x581430a2ba3b5665L    # 1.988814590552471E116
        -0x4f3f459f7903f521L    # -7.396666020808888E-74
        0x51611aaa99025c57L    # 1.0383665770682846E84
    .end array-data

    :array_1
    .array-data 8
        0x437d3a266941f84bL    # 1.31627375579333808E17
        -0x3d25f70cc07a2d28L    # -1.1450297234823538E14
        -0x498727dff6ea2269L    # -2.7198588835691025E-46
        0x158a9a1a61c7ea39L    # 6.628674295063466E-205
        -0x3ff32b8b8244f7adL    # -3.6037378142073435
        -0x714418095694d10fL
    .end array-data

    :array_2
    .array-data 8
        0x1b3a4a5e75477dd4L    # 1.621964989723978E-177
        0x37323e3ddeb474cL
        -0x51b11d8df72bd537L    # -1.242031349717225E-85
        0x4242ae6bdd24e289L    # 1.604714317537698E11
        0x10428491c0cb164bL    # 2.385524408072922E-230
    .end array-data

    :array_3
    .array-data 8
        -0x3472d4016e6e25bcL    # -8.941146977009048E55
        -0x147ebf4ae59e8ffL
        -0x5105921bfa1609abL    # -2.1767382562962948E-82
        -0xc608f136b61e6b8L    # -8.793348891089319E248
        -0x2ed5531ff3e1ef82L    # -1.0121340477441785E83
    .end array-data
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 13
    .line 14
    .line 15
    div-int v2, p1, p2

    .line 16
    .line 17
    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    invoke-virtual {v1, p0, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 23
    .line 24
    .line 25
    rem-int/2addr p1, p2

    .line 26
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 33
    .line 34
    .line 35
    array-length p1, p0

    .line 36
    :goto_0
    if-ge v1, p1, :cond_0

    .line 37
    .line 38
    aget v2, p0, v1

    .line 39
    .line 40
    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method public static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0x1c

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    const/4 p0, 0x5

    .line 31
    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    const/16 p0, 0xb

    .line 37
    .line 38
    invoke-virtual {v0, p2, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x28

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    if-eq p0, v1, :cond_3

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq p0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v2, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    sget-object p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 57
    .line 58
    return-object p0

    .line 59
    :array_0
    .array-data 8
        0x535b98c53b7bd2d4L    # 3.597797887145417E93
        0x554ed33b214feef4L    # 8.630050336996241E102
        -0x4df28046f11744a1L    # -1.3677195785485215E-67
        0x1577334ae3fe5f80L    # 2.890531573818487E-205
    .end array-data
.end method

.method public static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/zxing/common/BitArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    shl-int v3, v2, p1

    .line 12
    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge v5, v1, :cond_5

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_1
    if-ge v6, p1, :cond_2

    .line 22
    .line 23
    add-int v8, v5, v6

    .line 24
    .line 25
    if-ge v8, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v8, p1, -0x1

    .line 34
    .line 35
    sub-int/2addr v8, v6

    .line 36
    shl-int v8, v2, v8

    .line 37
    .line 38
    or-int/2addr v7, v8

    .line 39
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    and-int v6, v7, v3

    .line 43
    .line 44
    if-ne v6, v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 47
    .line 48
    .line 49
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    if-nez v6, :cond_4

    .line 53
    .line 54
    or-int/lit8 v6, v7, 0x1

    .line 55
    .line 56
    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 61
    .line 62
    .line 63
    :goto_3
    add-int/2addr v5, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x70

    :goto_0
    mul-int/lit8 v0, p0, 0x10

    add-int/2addr v0, p1

    mul-int v0, v0, p0

    return v0
.end method
