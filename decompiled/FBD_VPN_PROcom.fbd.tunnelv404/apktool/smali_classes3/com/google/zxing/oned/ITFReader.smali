.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/16 v4, 0xa

    .line 9
    .line 10
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    sput-object v5, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    filled-new-array {v5, v5, v5, v5}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    sput-object v6, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    new-array v7, v6, [[I

    .line 25
    .line 26
    filled-new-array {v5, v5, v6}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v9, 0x0

    .line 31
    aput-object v8, v7, v9

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    filled-new-array {v5, v5, v8}, [I

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    aput-object v10, v7, v5

    .line 39
    .line 40
    sput-object v7, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 41
    .line 42
    const/16 v7, 0x14

    .line 43
    .line 44
    new-array v7, v7, [[I

    .line 45
    .line 46
    filled-new-array {v5, v5, v6, v6, v5}, [I

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    aput-object v10, v7, v9

    .line 51
    .line 52
    filled-new-array {v6, v5, v5, v5, v6}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    aput-object v9, v7, v5

    .line 57
    .line 58
    filled-new-array {v5, v6, v5, v5, v6}, [I

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    aput-object v9, v7, v6

    .line 63
    .line 64
    filled-new-array {v6, v6, v5, v5, v5}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    aput-object v9, v7, v8

    .line 69
    .line 70
    filled-new-array {v5, v5, v6, v5, v6}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const/4 v10, 0x4

    .line 75
    aput-object v9, v7, v10

    .line 76
    .line 77
    filled-new-array {v6, v5, v6, v5, v5}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    const/4 v10, 0x5

    .line 82
    aput-object v9, v7, v10

    .line 83
    .line 84
    filled-new-array {v5, v6, v6, v5, v5}, [I

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    aput-object v9, v7, v2

    .line 89
    .line 90
    filled-new-array {v5, v5, v5, v6, v6}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v9, 0x7

    .line 95
    aput-object v2, v7, v9

    .line 96
    .line 97
    filled-new-array {v6, v5, v5, v6, v5}, [I

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    aput-object v2, v7, v3

    .line 102
    .line 103
    filled-new-array {v5, v6, v5, v6, v5}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/16 v3, 0x9

    .line 108
    .line 109
    aput-object v2, v7, v3

    .line 110
    .line 111
    filled-new-array {v5, v5, v8, v8, v5}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    aput-object v2, v7, v4

    .line 116
    .line 117
    filled-new-array {v8, v5, v5, v5, v8}, [I

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/16 v3, 0xb

    .line 122
    .line 123
    aput-object v2, v7, v3

    .line 124
    .line 125
    filled-new-array {v5, v8, v5, v5, v8}, [I

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    aput-object v2, v7, v0

    .line 130
    .line 131
    filled-new-array {v8, v8, v5, v5, v5}, [I

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/16 v2, 0xd

    .line 136
    .line 137
    aput-object v0, v7, v2

    .line 138
    .line 139
    filled-new-array {v5, v5, v8, v5, v8}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    aput-object v0, v7, v1

    .line 144
    .line 145
    filled-new-array {v8, v5, v8, v5, v5}, [I

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/16 v1, 0xf

    .line 150
    .line 151
    aput-object v0, v7, v1

    .line 152
    .line 153
    filled-new-array {v5, v8, v8, v5, v5}, [I

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/16 v1, 0x10

    .line 158
    .line 159
    aput-object v0, v7, v1

    .line 160
    .line 161
    filled-new-array {v5, v5, v5, v8, v8}, [I

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/16 v1, 0x11

    .line 166
    .line 167
    aput-object v0, v7, v1

    .line 168
    .line 169
    filled-new-array {v8, v5, v5, v8, v5}, [I

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/16 v1, 0x12

    .line 174
    .line 175
    aput-object v0, v7, v1

    .line 176
    .line 177
    filled-new-array {v5, v8, v5, v8, v5}, [I

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/16 v1, 0x13

    .line 182
    .line 183
    aput-object v0, v7, v1

    .line 184
    .line 185
    sput-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 186
    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 6
    .line 7
    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7

    .line 1
    sget-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const v1, 0x3ec28f5c    # 0.38f

    .line 5
    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    :goto_0
    if-ge v3, v0, :cond_2

    .line 11
    .line 12
    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 13
    .line 14
    aget-object v5, v5, v3

    .line 15
    .line 16
    const/high16 v6, 0x3f000000    # 0.5f

    .line 17
    .line 18
    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    cmpg-float v6, v5, v1

    .line 23
    .line 24
    if-gez v6, :cond_0

    .line 25
    .line 26
    move v4, v3

    .line 27
    move v1, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    cmpl-float v5, v5, v1

    .line 30
    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ltz v4, :cond_3

    .line 38
    .line 39
    rem-int/lit8 v4, v4, 0xa

    .line 40
    .line 41
    return v4

    .line 42
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    throw p0
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_1
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :try_start_2
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 22
    .line 23
    aget-object v3, v3, v1

    .line 24
    .line 25
    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    aget v3, v0, v2

    .line 30
    .line 31
    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 32
    .line 33
    .line 34
    aget v3, v0, v2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    aget v5, v0, v1

    .line 41
    .line 42
    sub-int/2addr v4, v5

    .line 43
    aput v4, v0, v2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr v2, v3

    .line 50
    aput v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v3, v2, [I

    .line 7
    .line 8
    new-array v4, v2, [I

    .line 9
    .line 10
    :cond_0
    if-ge p1, p2, :cond_2

    .line 11
    .line 12
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-ge v6, v2, :cond_1

    .line 18
    .line 19
    mul-int/lit8 v7, v6, 0x2

    .line 20
    .line 21
    aget v8, v1, v7

    .line 22
    .line 23
    aput v8, v3, v6

    .line 24
    .line 25
    add-int/lit8 v7, v7, 0x1

    .line 26
    .line 27
    aget v7, v1, v7

    .line 28
    .line 29
    aput v7, v4, v6

    .line 30
    .line 31
    add-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    add-int/lit8 v6, v6, 0x30

    .line 39
    .line 40
    int-to-char v6, v6

    .line 41
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    add-int/lit8 v6, v6, 0x30

    .line 49
    .line 50
    int-to-char v6, v6

    .line 51
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :goto_1
    if-ge v5, v0, :cond_0

    .line 55
    .line 56
    aget v6, v1, v5

    .line 57
    .line 58
    add-int/2addr p1, v6

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    aget v1, v0, v1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget v2, v0, v2

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    div-int/lit8 v1, v1, 0x4

    .line 19
    .line 20
    iput v1, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 21
    .line 22
    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 10

    .line 1
    array-length v0, p2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, p1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    if-ge p1, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    const/4 v8, 0x1

    .line 19
    if-eq v7, v5, :cond_0

    .line 20
    .line 21
    aget v7, v1, v6

    .line 22
    .line 23
    add-int/2addr v7, v8

    .line 24
    aput v7, v1, v6

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    add-int/lit8 v7, v0, -0x1

    .line 28
    .line 29
    if-ne v6, v7, :cond_2

    .line 30
    .line 31
    const/high16 v7, 0x3f000000    # 0.5f

    .line 32
    .line 33
    invoke-static {v1, p2, v7}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const v9, 0x3ec28f5c    # 0.38f

    .line 38
    .line 39
    .line 40
    cmpg-float v7, v7, v9

    .line 41
    .line 42
    if-gez v7, :cond_1

    .line 43
    .line 44
    filled-new-array {v4, p1}, [I

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    aget v7, v1, v3

    .line 50
    .line 51
    aget v9, v1, v8

    .line 52
    .line 53
    add-int/2addr v7, v9

    .line 54
    add-int/2addr v4, v7

    .line 55
    add-int/lit8 v7, v6, -0x1

    .line 56
    .line 57
    const/4 v9, 0x2

    .line 58
    invoke-static {v1, v9, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    aput v3, v1, v7

    .line 62
    .line 63
    aput v3, v1, v6

    .line 64
    .line 65
    add-int/lit8 v6, v6, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    :goto_1
    aput v8, v1, v6

    .line 71
    .line 72
    xor-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    throw p0
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0xa

    .line 4
    .line 5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    :goto_0
    if-lez v0, :cond_1

    .line 12
    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    throw p1
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
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v4, 0x14

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    aget v5, v1, v4

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    aget v7, v2, v6

    .line 22
    .line 23
    invoke-static {p2, v5, v7, v3}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    sget-object v5, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    .line 34
    .line 35
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    check-cast p3, [I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object p3, v3

    .line 43
    :goto_0
    if-nez p3, :cond_1

    .line 44
    .line 45
    sget-object p3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    array-length v7, p3

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-ge v8, v7, :cond_4

    .line 55
    .line 56
    aget v10, p3, v8

    .line 57
    .line 58
    if-ne v5, v10, :cond_2

    .line 59
    .line 60
    const/4 p3, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    if-le v10, v9, :cond_3

    .line 63
    .line 64
    move v9, v10

    .line 65
    :cond_3
    add-int/2addr v8, v4

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 p3, 0x0

    .line 68
    :goto_2
    if-nez p3, :cond_5

    .line 69
    .line 70
    if-le v5, v9, :cond_5

    .line 71
    .line 72
    const/4 p3, 0x1

    .line 73
    :cond_5
    if-eqz p3, :cond_6

    .line 74
    .line 75
    new-instance p3, Lcom/google/zxing/Result;

    .line 76
    .line 77
    new-instance v5, Lcom/google/zxing/ResultPoint;

    .line 78
    .line 79
    aget v1, v1, v4

    .line 80
    .line 81
    int-to-float v1, v1

    .line 82
    int-to-float p1, p1

    .line 83
    invoke-direct {v5, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/google/zxing/ResultPoint;

    .line 87
    .line 88
    aget v2, v2, v6

    .line 89
    .line 90
    int-to-float v2, v2

    .line 91
    invoke-direct {v1, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 92
    .line 93
    .line 94
    new-array p1, v0, [Lcom/google/zxing/ResultPoint;

    .line 95
    .line 96
    aput-object v5, p1, v6

    .line 97
    .line 98
    aput-object v1, p1, v4

    .line 99
    .line 100
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 101
    .line 102
    invoke-direct {p3, p2, v3, p1, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 106
    .line 107
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_0

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p3, p1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object p3

    .line 125
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    throw p1

    .line 130
    nop

    .line 131
    :array_0
    .array-data 8
        0x7e06bc6892684df9L    # 1.1895404411213363E299
        0x5e454b1416c6c591L    # 1.3294450249463926E146
    .end array-data
.end method
