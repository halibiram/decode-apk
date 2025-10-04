.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final ALPHABET_STRING:Ljava/lang/String;

.field static final ASTERISK_ENCODING:I = 0x94

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;

.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET_STRING:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v0, 0x2b

    .line 19
    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x3c5e303c8dff4f9L
        -0x89cb98e4826c48fL    # -1.243038125590949E267
        0x4cd15459af36238aL    # 1.113896894150049E62
        0x2c0972e2bc3b4992L    # 1.4892864386483315E-96
        0x5e64de6ee95b8583L    # 5.211791639966761E146
        0x7a128f18f8565b74L    # 1.0527614317545903E280
        -0x2d220032922c3ee3L    # -1.5277376851770535E91
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/oned/Code39Reader;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 5
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    .line 7
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v0, :cond_13

    .line 13
    .line 14
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x2f

    .line 19
    .line 20
    const/16 v6, 0x25

    .line 21
    .line 22
    const/16 v7, 0x24

    .line 23
    .line 24
    const/16 v8, 0x2b

    .line 25
    .line 26
    if-eq v4, v8, :cond_1

    .line 27
    .line 28
    if-eq v4, v7, :cond_1

    .line 29
    .line 30
    if-eq v4, v6, :cond_1

    .line 31
    .line 32
    if-ne v4, v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    const/16 v10, 0x5a

    .line 47
    .line 48
    const/16 v11, 0x41

    .line 49
    .line 50
    if-eq v4, v7, :cond_11

    .line 51
    .line 52
    const/16 v7, 0x4f

    .line 53
    .line 54
    if-eq v4, v6, :cond_7

    .line 55
    .line 56
    if-eq v4, v8, :cond_5

    .line 57
    .line 58
    if-eq v4, v5, :cond_2

    .line 59
    .line 60
    :goto_2
    const/4 v4, 0x0

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_2
    if-lt v9, v11, :cond_3

    .line 64
    .line 65
    if-gt v9, v7, :cond_3

    .line 66
    .line 67
    add-int/lit8 v9, v9, -0x20

    .line 68
    .line 69
    :goto_3
    int-to-char v4, v9

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_3
    if-ne v9, v10, :cond_4

    .line 73
    .line 74
    const/16 v4, 0x3a

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0

    .line 83
    :cond_5
    if-lt v9, v11, :cond_6

    .line 84
    .line 85
    if-gt v9, v10, :cond_6

    .line 86
    .line 87
    add-int/lit8 v9, v9, 0x20

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    throw p0

    .line 95
    :cond_7
    if-lt v9, v11, :cond_8

    .line 96
    .line 97
    const/16 v4, 0x45

    .line 98
    .line 99
    if-gt v9, v4, :cond_8

    .line 100
    .line 101
    add-int/lit8 v9, v9, -0x26

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    const/16 v4, 0x46

    .line 105
    .line 106
    if-lt v9, v4, :cond_9

    .line 107
    .line 108
    const/16 v4, 0x4a

    .line 109
    .line 110
    if-gt v9, v4, :cond_9

    .line 111
    .line 112
    add-int/lit8 v9, v9, -0xb

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_9
    const/16 v4, 0x4b

    .line 116
    .line 117
    if-lt v9, v4, :cond_a

    .line 118
    .line 119
    if-gt v9, v7, :cond_a

    .line 120
    .line 121
    add-int/lit8 v9, v9, 0x10

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    const/16 v4, 0x50

    .line 125
    .line 126
    if-lt v9, v4, :cond_b

    .line 127
    .line 128
    const/16 v4, 0x54

    .line 129
    .line 130
    if-gt v9, v4, :cond_b

    .line 131
    .line 132
    add-int/lit8 v9, v9, 0x2b

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_b
    const/16 v4, 0x55

    .line 136
    .line 137
    if-ne v9, v4, :cond_c

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_c
    const/16 v4, 0x56

    .line 141
    .line 142
    if-ne v9, v4, :cond_d

    .line 143
    .line 144
    const/16 v4, 0x40

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_d
    const/16 v4, 0x57

    .line 148
    .line 149
    if-ne v9, v4, :cond_e

    .line 150
    .line 151
    const/16 v4, 0x60

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_e
    const/16 v4, 0x58

    .line 155
    .line 156
    if-eq v9, v4, :cond_10

    .line 157
    .line 158
    const/16 v4, 0x59

    .line 159
    .line 160
    if-eq v9, v4, :cond_10

    .line 161
    .line 162
    if-ne v9, v10, :cond_f

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    throw p0

    .line 170
    :cond_10
    :goto_4
    const/16 v4, 0x7f

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_11
    if-lt v9, v11, :cond_12

    .line 174
    .line 175
    if-gt v9, v10, :cond_12

    .line 176
    .line 177
    add-int/lit8 v9, v9, -0x40

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_12
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    throw p0

    .line 192
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 11

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
    move-result v2

    .line 10
    array-length v3, p1

    .line 11
    move v4, v2

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x1

    .line 21
    if-eq v7, v5, :cond_0

    .line 22
    .line 23
    aget v7, p1, v6

    .line 24
    .line 25
    add-int/2addr v7, v8

    .line 26
    aput v7, p1, v6

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    add-int/lit8 v7, v3, -0x1

    .line 30
    .line 31
    if-ne v6, v7, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const/16 v9, 0x94

    .line 38
    .line 39
    const/4 v10, 0x2

    .line 40
    if-ne v7, v9, :cond_1

    .line 41
    .line 42
    sub-int v7, v2, v4

    .line 43
    .line 44
    div-int/2addr v7, v10

    .line 45
    sub-int v7, v4, v7

    .line 46
    .line 47
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {p0, v7, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    filled-new-array {v4, v2}, [I

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    aget v7, p1, v1

    .line 63
    .line 64
    aget v9, p1, v8

    .line 65
    .line 66
    add-int/2addr v7, v9

    .line 67
    add-int/2addr v4, v7

    .line 68
    add-int/lit8 v7, v6, -0x1

    .line 69
    .line 70
    invoke-static {p1, v10, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    aput v1, p1, v7

    .line 74
    .line 75
    aput v1, p1, v6

    .line 76
    .line 77
    add-int/lit8 v6, v6, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    :goto_1
    aput v8, p1, v6

    .line 83
    .line 84
    xor-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    throw p0
.end method

.method private static patternToChar(I)C
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    if-ne v1, p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v0, 0x94

    .line 35
    .line 36
    if-ne p0, v0, :cond_2

    .line 37
    .line 38
    const/16 p0, 0x2a

    .line 39
    .line 40
    return p0

    .line 41
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x486498da5671a564L    # 5.607058934227545E40
        -0x44fac5b0fd4cf664L    # -2.1948997780522893E-24
        -0x4efc2d9795885066L    # -1.4023501351054727E-72
        -0x4fb19199a70f4213L    # -5.256187948276204E-76
        0x6c43722a3818849fL    # 3.2732280014232866E213
        -0x3169bd07fc2e5a93L    # -3.841097378219375E70
        0x1fb4e079ba003344L    # 6.082293589288373E-156
    .end array-data
.end method

.method private static toNarrowWidePattern([I)I
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    const v4, 0x7fffffff

    .line 6
    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    :goto_1
    if-ge v5, v3, :cond_1

    .line 10
    .line 11
    aget v6, p0, v5

    .line 12
    .line 13
    if-ge v6, v4, :cond_0

    .line 14
    .line 15
    if-le v6, v2, :cond_0

    .line 16
    .line 17
    move v4, v6

    .line 18
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    :goto_2
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    aget v7, p0, v2

    .line 28
    .line 29
    if-le v7, v4, :cond_2

    .line 30
    .line 31
    add-int/lit8 v8, v0, -0x1

    .line 32
    .line 33
    sub-int/2addr v8, v2

    .line 34
    const/4 v9, 0x1

    .line 35
    shl-int v8, v9, v8

    .line 36
    .line 37
    or-int/2addr v5, v8

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    add-int/2addr v6, v7

    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v2, 0x3

    .line 45
    const/4 v7, -0x1

    .line 46
    if-ne v3, v2, :cond_6

    .line 47
    .line 48
    :goto_3
    if-ge v1, v0, :cond_5

    .line 49
    .line 50
    if-lez v3, :cond_5

    .line 51
    .line 52
    aget v2, p0, v1

    .line 53
    .line 54
    if-le v2, v4, :cond_4

    .line 55
    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    mul-int/lit8 v2, v2, 0x2

    .line 59
    .line 60
    if-lt v2, v6, :cond_4

    .line 61
    .line 62
    return v7

    .line 63
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    return v5

    .line 67
    :cond_6
    if-gt v3, v2, :cond_7

    .line 68
    .line 69
    return v7

    .line 70
    :cond_7
    move v2, v4

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 16
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v4, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 11
    .line 12
    .line 13
    iget-object v6, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v4}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const/4 v8, 0x1

    .line 23
    aget v9, v7, v8

    .line 24
    .line 25
    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    :goto_0
    invoke-static {v1, v9, v4}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    if-ltz v11, :cond_a

    .line 41
    .line 42
    invoke-static {v11}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    array-length v12, v4

    .line 50
    move v14, v9

    .line 51
    const/4 v13, 0x0

    .line 52
    :goto_1
    if-ge v13, v12, :cond_0

    .line 53
    .line 54
    aget v15, v4, v13

    .line 55
    .line 56
    add-int/2addr v14, v15

    .line 57
    add-int/2addr v13, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const/16 v13, 0x2a

    .line 64
    .line 65
    if-ne v11, v13, :cond_9

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    sub-int/2addr v1, v8

    .line 72
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 73
    .line 74
    .line 75
    array-length v1, v4

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_2
    if-ge v11, v1, :cond_1

    .line 79
    .line 80
    aget v14, v4, v11

    .line 81
    .line 82
    add-int/2addr v13, v14

    .line 83
    add-int/2addr v11, v8

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    sub-int v1, v12, v9

    .line 86
    .line 87
    sub-int/2addr v1, v13

    .line 88
    if-eq v12, v10, :cond_3

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x2

    .line 91
    .line 92
    if-lt v1, v13, :cond_2

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    throw v1

    .line 100
    :cond_3
    :goto_3
    iget-boolean v1, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sub-int/2addr v1, v8

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v10, 0x0

    .line 111
    :goto_4
    if-ge v4, v1, :cond_4

    .line 112
    .line 113
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v12, v2, [J

    .line 116
    .line 117
    fill-array-data v12, :array_0

    .line 118
    .line 119
    .line 120
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    iget-object v12, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    add-int/2addr v10, v11

    .line 138
    add-int/2addr v4, v8

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v2, v2, [J

    .line 147
    .line 148
    fill-array-data v2, :array_1

    .line 149
    .line 150
    .line 151
    invoke-direct {v11, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    rem-int/lit8 v10, v10, 0x2b

    .line 159
    .line 160
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-ne v4, v2, :cond_5

    .line 165
    .line 166
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_5
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    throw v1

    .line 175
    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_8

    .line 180
    .line 181
    iget-boolean v1, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 182
    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto :goto_6

    .line 190
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    :goto_6
    aget v2, v7, v8

    .line 195
    .line 196
    aget v4, v7, v5

    .line 197
    .line 198
    add-int/2addr v2, v4

    .line 199
    int-to-float v2, v2

    .line 200
    const/high16 v4, 0x40000000    # 2.0f

    .line 201
    .line 202
    div-float/2addr v2, v4

    .line 203
    int-to-float v6, v9

    .line 204
    int-to-float v7, v13

    .line 205
    div-float/2addr v7, v4

    .line 206
    add-float/2addr v7, v6

    .line 207
    new-instance v4, Lcom/google/zxing/Result;

    .line 208
    .line 209
    new-instance v6, Lcom/google/zxing/ResultPoint;

    .line 210
    .line 211
    move/from16 v9, p1

    .line 212
    .line 213
    int-to-float v9, v9

    .line 214
    invoke-direct {v6, v2, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 215
    .line 216
    .line 217
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 218
    .line 219
    invoke-direct {v2, v7, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 220
    .line 221
    .line 222
    new-array v7, v3, [Lcom/google/zxing/ResultPoint;

    .line 223
    .line 224
    aput-object v6, v7, v5

    .line 225
    .line 226
    aput-object v2, v7, v8

    .line 227
    .line 228
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    invoke-direct {v4, v1, v5, v7, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 232
    .line 233
    .line 234
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 235
    .line 236
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v3, v3, [J

    .line 239
    .line 240
    fill-array-data v3, :array_2

    .line 241
    .line 242
    .line 243
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v4, v1, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    return-object v4

    .line 254
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    throw v1

    .line 259
    :cond_9
    move/from16 v9, p1

    .line 260
    .line 261
    move v9, v12

    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    throw v1

    .line 269
    :array_0
    .array-data 8
        -0x532a3516fada3ba1L    # -1.0447460852476093E-92
        -0x2094e1bfd379410eL    # -4.438417611653934E151
        -0x1f954c18446108b0L    # -2.864203251176178E156
        -0x2d5bf655ba625c24L    # -1.275550830770169E90
        -0x60d98bc8478d2b50L    # -1.277690109373454E-158
        0x5c31fbac1460f01dL    # 1.30708094481007E136
        -0x68882ee31571a6cbL
    .end array-data

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
    :array_1
    .array-data 8
        0x68439993725610b5L    # 1.7884681544795418E194
        -0x3c33ae4b0cb4e54fL    # -4.0812221264112768E18
        0x707ff1a8e93d1bd1L    # 7.934978003787523E233
        -0x65121fc60ce8825aL    # -5.75987895347144E-179
        0x608b411f4bd52d73L    # 1.169348938041676E157
        -0x5ed7b01569407950L    # -5.941771381217788E-149
        -0x11f022cf265915acL    # -1.4397512964156457E222
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_2
    .array-data 8
        -0x1167eda8a76561fL
        -0x40fd43560b0aa4f5L    # -3.573793093874206E-5
    .end array-data
.end method
