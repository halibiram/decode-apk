.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String;

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET_STRING:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 37
    .line 38
    const/16 v0, 0x14

    .line 39
    .line 40
    new-array v0, v0, [I

    .line 41
    .line 42
    fill-array-data v0, :array_2

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 46
    .line 47
    new-array v0, v1, [C

    .line 48
    .line 49
    fill-array-data v0, :array_3

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x60c967b270d06355L    # -2.57142200551191E-158
        0x2dfd66256c4f3356L    # 3.694655505035679E-87
        0x5e14e8054fe7a96fL    # 1.6316077167131013E145
        -0x141e031496c4b7aaL    # -4.730957573699375E211
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        0xcaf945682e314d4L
        0x4a37825c7dfd3ea3L    # 3.435876910258657E49
        0x47909e9e007d0b8aL    # 5.522808873906027E36
        -0x94f558a9a29e7bdL    # -5.247878697353616E263
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
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
    :array_2
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

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
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_3
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v0, 0x50

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 21
    .line 22
    return-void
.end method

.method public static arrayContains([CC)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-char v3, p0, v2

    .line 9
    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 4
    .line 5
    aput p1, v0, v1

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 10
    .line 11
    array-length p1, v0

    .line 12
    if-lt v1, p1, :cond_0

    .line 13
    .line 14
    mul-int/lit8 p1, v1, 0x2

    .line 15
    .line 16
    new-array p1, p1, [I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v2, v3, :cond_2

    .line 13
    .line 14
    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 15
    .line 16
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 17
    .line 18
    aget-char v2, v4, v2

    .line 19
    .line 20
    invoke-static {v3, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v1

    .line 28
    :goto_1
    add-int/lit8 v4, v1, 0x7

    .line 29
    .line 30
    if-ge v3, v4, :cond_0

    .line 31
    .line 32
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 33
    .line 34
    aget v4, v4, v3

    .line 35
    .line 36
    add-int/2addr v2, v4

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    if-eq v1, v0, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 43
    .line 44
    add-int/lit8 v4, v1, -0x1

    .line 45
    .line 46
    aget v3, v3, v4

    .line 47
    .line 48
    div-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    if-lt v3, v2, :cond_2

    .line 51
    .line 52
    :cond_1
    return v1

    .line 53
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    throw v0
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x1

    .line 16
    :goto_0
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eq v5, v4, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 28
    .line 29
    .line 30
    xor-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    throw p1
.end method

.method private toNarrowWidePattern(I)I
    .locals 10

    .line 1
    add-int/lit8 v0, p1, 0x7

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 10
    .line 11
    const v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, p1

    .line 16
    const v6, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    :goto_0
    if-ge v5, v0, :cond_3

    .line 21
    .line 22
    aget v8, v1, v5

    .line 23
    .line 24
    if-ge v8, v6, :cond_1

    .line 25
    .line 26
    move v6, v8

    .line 27
    :cond_1
    if-le v8, v7, :cond_2

    .line 28
    .line 29
    move v7, v8

    .line 30
    :cond_2
    add-int/lit8 v5, v5, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    add-int/2addr v6, v7

    .line 34
    div-int/lit8 v6, v6, 0x2

    .line 35
    .line 36
    add-int/lit8 v5, p1, 0x1

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_1
    if-ge v5, v0, :cond_6

    .line 40
    .line 41
    aget v8, v1, v5

    .line 42
    .line 43
    if-ge v8, v3, :cond_4

    .line 44
    .line 45
    move v3, v8

    .line 46
    :cond_4
    if-le v8, v7, :cond_5

    .line 47
    .line 48
    move v7, v8

    .line 49
    :cond_5
    add-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    add-int/2addr v3, v7

    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    const/16 v0, 0x80

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    :goto_2
    const/4 v8, 0x7

    .line 60
    if-ge v5, v8, :cond_9

    .line 61
    .line 62
    and-int/lit8 v8, v5, 0x1

    .line 63
    .line 64
    if-nez v8, :cond_7

    .line 65
    .line 66
    move v8, v6

    .line 67
    goto :goto_3

    .line 68
    :cond_7
    move v8, v3

    .line 69
    :goto_3
    shr-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    add-int v9, p1, v5

    .line 72
    .line 73
    aget v9, v1, v9

    .line 74
    .line 75
    if-le v9, v8, :cond_8

    .line 76
    .line 77
    or-int/2addr v7, v0

    .line 78
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_9
    :goto_4
    sget-object p1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 82
    .line 83
    array-length v0, p1

    .line 84
    if-ge v4, v0, :cond_b

    .line 85
    .line 86
    aget p1, p1, v4

    .line 87
    .line 88
    if-ne p1, v7, :cond_a

    .line 89
    .line 90
    return v4

    .line 91
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_b
    return v2
.end method

.method private validatePattern(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput v3, v2, v3

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    aput v3, v2, v4

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    aput v3, v2, v5

    .line 14
    .line 15
    const/4 v6, 0x3

    .line 16
    aput v3, v2, v6

    .line 17
    .line 18
    new-array v7, v1, [I

    .line 19
    .line 20
    aput v3, v7, v3

    .line 21
    .line 22
    aput v3, v7, v4

    .line 23
    .line 24
    aput v3, v7, v5

    .line 25
    .line 26
    aput v3, v7, v6

    .line 27
    .line 28
    iget-object v6, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    sub-int/2addr v6, v4

    .line 35
    move/from16 v9, p1

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    :goto_0
    const/4 v10, 0x6

    .line 39
    if-gt v8, v6, :cond_1

    .line 40
    .line 41
    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 42
    .line 43
    iget-object v12, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    aget v11, v11, v12

    .line 50
    .line 51
    :goto_1
    if-ltz v10, :cond_0

    .line 52
    .line 53
    and-int/lit8 v12, v10, 0x1

    .line 54
    .line 55
    and-int/lit8 v13, v11, 0x1

    .line 56
    .line 57
    mul-int/lit8 v13, v13, 0x2

    .line 58
    .line 59
    add-int/2addr v13, v12

    .line 60
    aget v12, v2, v13

    .line 61
    .line 62
    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 63
    .line 64
    add-int v15, v9, v10

    .line 65
    .line 66
    aget v14, v14, v15

    .line 67
    .line 68
    add-int/2addr v12, v14

    .line 69
    aput v12, v2, v13

    .line 70
    .line 71
    aget v12, v7, v13

    .line 72
    .line 73
    add-int/2addr v12, v4

    .line 74
    aput v12, v7, v13

    .line 75
    .line 76
    shr-int/2addr v11, v4

    .line 77
    add-int/lit8 v10, v10, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v9, v9, 0x8

    .line 81
    .line 82
    add-int/lit8 v8, v8, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-array v4, v1, [F

    .line 86
    .line 87
    new-array v1, v1, [F

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    :goto_2
    if-ge v8, v5, :cond_2

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    aput v9, v1, v8

    .line 94
    .line 95
    add-int/lit8 v9, v8, 0x2

    .line 96
    .line 97
    aget v11, v2, v8

    .line 98
    .line 99
    int-to-float v11, v11

    .line 100
    aget v12, v7, v8

    .line 101
    .line 102
    int-to-float v12, v12

    .line 103
    div-float/2addr v11, v12

    .line 104
    aget v12, v2, v9

    .line 105
    .line 106
    int-to-float v13, v12

    .line 107
    aget v14, v7, v9

    .line 108
    .line 109
    int-to-float v15, v14

    .line 110
    div-float/2addr v13, v15

    .line 111
    add-float/2addr v13, v11

    .line 112
    const/high16 v11, 0x40000000    # 2.0f

    .line 113
    .line 114
    div-float/2addr v13, v11

    .line 115
    aput v13, v1, v9

    .line 116
    .line 117
    aput v13, v4, v8

    .line 118
    .line 119
    int-to-float v12, v12

    .line 120
    mul-float v12, v12, v11

    .line 121
    .line 122
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 123
    .line 124
    add-float/2addr v12, v11

    .line 125
    int-to-float v11, v14

    .line 126
    div-float/2addr v12, v11

    .line 127
    aput v12, v4, v9

    .line 128
    .line 129
    add-int/lit8 v8, v8, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move/from16 v2, p1

    .line 133
    .line 134
    :goto_3
    if-gt v3, v6, :cond_5

    .line 135
    .line 136
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 137
    .line 138
    iget-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    aget v7, v7, v8

    .line 145
    .line 146
    const/4 v8, 0x6

    .line 147
    :goto_4
    if-ltz v8, :cond_4

    .line 148
    .line 149
    and-int/lit8 v9, v8, 0x1

    .line 150
    .line 151
    and-int/lit8 v11, v7, 0x1

    .line 152
    .line 153
    mul-int/lit8 v11, v11, 0x2

    .line 154
    .line 155
    add-int/2addr v11, v9

    .line 156
    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 157
    .line 158
    add-int v12, v2, v8

    .line 159
    .line 160
    aget v9, v9, v12

    .line 161
    .line 162
    int-to-float v9, v9

    .line 163
    aget v12, v1, v11

    .line 164
    .line 165
    cmpg-float v12, v9, v12

    .line 166
    .line 167
    if-ltz v12, :cond_3

    .line 168
    .line 169
    aget v11, v4, v11

    .line 170
    .line 171
    cmpl-float v9, v9, v11

    .line 172
    .line 173
    if-gtz v9, :cond_3

    .line 174
    .line 175
    shr-int/lit8 v7, v7, 0x1

    .line 176
    .line 177
    add-int/lit8 v8, v8, -0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    throw v1

    .line 185
    :cond_4
    add-int/lit8 v2, v2, 0x8

    .line 186
    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    .line 20
    .line 21
    move v2, p2

    .line 22
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, -0x1

    .line 27
    if-eq v4, v5, :cond_d

    .line 28
    .line 29
    iget-object v6, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    int-to-char v7, v4

    .line 32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v6, v2, 0x8

    .line 36
    .line 37
    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-le v7, v1, :cond_0

    .line 44
    .line 45
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 46
    .line 47
    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 48
    .line 49
    aget-char v4, v8, v4

    .line 50
    .line 51
    invoke-static {v7, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 59
    .line 60
    if-lt v6, v4, :cond_c

    .line 61
    .line 62
    :goto_1
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x7

    .line 65
    .line 66
    aget v4, v4, v2

    .line 67
    .line 68
    const/4 v7, -0x8

    .line 69
    const/4 v8, 0x0

    .line 70
    :goto_2
    if-ge v7, v5, :cond_1

    .line 71
    .line 72
    iget-object v9, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 73
    .line 74
    add-int v10, v6, v7

    .line 75
    .line 76
    aget v9, v9, v10

    .line 77
    .line 78
    add-int/2addr v8, v9

    .line 79
    add-int/2addr v7, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    iget v5, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 82
    .line 83
    if-ge v6, v5, :cond_3

    .line 84
    .line 85
    div-int/2addr v8, v0

    .line 86
    if-lt v4, v8, :cond_2

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    throw p1

    .line 94
    :cond_3
    :goto_3
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 95
    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    :goto_4
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-ge v4, v5, :cond_4

    .line 105
    .line 106
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 107
    .line 108
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    aget-char v6, v6, v7

    .line 115
    .line 116
    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 117
    .line 118
    .line 119
    add-int/2addr v4, v1

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 128
    .line 129
    invoke-static {v5, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_b

    .line 134
    .line 135
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    sub-int/2addr v6, v1

    .line 142
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-static {v5, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_a

    .line 151
    .line 152
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    const/4 v5, 0x3

    .line 159
    if-le v4, v5, :cond_9

    .line 160
    .line 161
    if-eqz p3, :cond_5

    .line 162
    .line 163
    sget-object v4, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    .line 164
    .line 165
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-nez p3, :cond_6

    .line 170
    .line 171
    :cond_5
    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    sub-int/2addr v4, v1

    .line 178
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    :cond_6
    const/4 p3, 0x0

    .line 187
    const/4 v4, 0x0

    .line 188
    :goto_5
    if-ge p3, p2, :cond_7

    .line 189
    .line 190
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 191
    .line 192
    aget v5, v5, p3

    .line 193
    .line 194
    add-int/2addr v4, v5

    .line 195
    add-int/2addr p3, v1

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    int-to-float p3, v4

    .line 198
    :goto_6
    if-ge p2, v2, :cond_8

    .line 199
    .line 200
    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 201
    .line 202
    aget v5, v5, p2

    .line 203
    .line 204
    add-int/2addr v4, v5

    .line 205
    add-int/2addr p2, v1

    .line 206
    goto :goto_6

    .line 207
    :cond_8
    int-to-float p2, v4

    .line 208
    new-instance v2, Lcom/google/zxing/Result;

    .line 209
    .line 210
    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    new-instance v5, Lcom/google/zxing/ResultPoint;

    .line 217
    .line 218
    int-to-float p1, p1

    .line 219
    invoke-direct {v5, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 220
    .line 221
    .line 222
    new-instance p3, Lcom/google/zxing/ResultPoint;

    .line 223
    .line 224
    invoke-direct {p3, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 225
    .line 226
    .line 227
    new-array p1, v0, [Lcom/google/zxing/ResultPoint;

    .line 228
    .line 229
    aput-object v5, p1, v3

    .line 230
    .line 231
    aput-object p3, p1, v1

    .line 232
    .line 233
    sget-object p2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 234
    .line 235
    const/4 p3, 0x0

    .line 236
    invoke-direct {v2, v4, p3, p1, p2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 237
    .line 238
    .line 239
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 240
    .line 241
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 242
    .line 243
    new-array p3, v0, [J

    .line 244
    .line 245
    fill-array-data p3, :array_0

    .line 246
    .line 247
    .line 248
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {v2, p1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    return-object v2

    .line 259
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    throw p1

    .line 264
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    throw p1

    .line 269
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    throw p1

    .line 274
    :cond_c
    move v2, v6

    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    throw p1

    .line 282
    nop

    .line 283
    :array_0
    .array-data 8
        0x323db666ed57bd0dL    # 1.102098175862366E-66
        -0x447328a1a2b8583bL    # -7.6342242127726045E-22
    .end array-data
.end method
