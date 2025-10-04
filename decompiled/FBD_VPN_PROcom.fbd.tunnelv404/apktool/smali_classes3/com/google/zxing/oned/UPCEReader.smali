.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "SourceFile"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    new-array v1, v1, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    new-array v2, v1, [I

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    new-array v1, v1, [I

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    new-array v3, v3, [[I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v2, v3, v4

    .line 27
    .line 28
    aput-object v1, v3, v0

    .line 29
    .line 30
    sput-object v3, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 8
    .line 9
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v4, 0xc

    .line 13
    .line 14
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    aget-char v5, v0, v4

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    const/4 v7, 0x3

    .line 29
    packed-switch v5, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v6, [J

    .line 38
    .line 39
    fill-array-data v3, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_0
    const/4 v4, 0x4

    .line 57
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v5, v6, [J

    .line 63
    .line 64
    fill-array-data v5, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    aget-char v0, v0, v4

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v4, v6, [J

    .line 89
    .line 90
    fill-array-data v4, :array_2

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v4, v6, [J

    .line 116
    .line 117
    fill-array-data v4, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/16 v3, 0x8

    .line 138
    .line 139
    if-lt v0, v3, :cond_0

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x72ea514b86efc473L    # 3.593950438671989E245
        -0x79823e5c04737fc4L    # -2.098285200653329E-277
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x7a51cb13cbc93c07L    # -2.60014618113431E-281
        0x1a2df9242a28a4afL
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x2039c258e928a0e9L    # 1.9212066062829995E-153
        -0x7f8970544b969021L    # -2.008014677814757E-306
    .end array-data

    :array_3
    .array-data 8
        0x50acfcac89c8ca6eL    # 4.2962767169734856E80
        0x47f6c6b53ccf68ecL    # 4.8439626590842075E38
    .end array-data
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x1

    .line 4
    if-gt v1, v2, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_1
    const/16 v3, 0xa

    .line 8
    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    .line 12
    .line 13
    aget-object v3, v3, v1

    .line 14
    .line 15
    aget v3, v3, v2

    .line 16
    .line 17
    if-ne p1, v3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x30

    .line 20
    .line 21
    int-to-char p1, v1

    .line 22
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x30

    .line 26
    .line 27
    int-to-char p1, v2

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method


# virtual methods
.method public checkChecksum(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 3
    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v1, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    aput v1, v0, v3

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    aput v1, v0, v3

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aget p2, p2, v2

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    const/4 v6, 0x6

    .line 24
    if-ge v4, v6, :cond_2

    .line 25
    .line 26
    if-ge p2, v3, :cond_2

    .line 27
    .line 28
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 29
    .line 30
    invoke-static {p1, v0, p2, v6}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    rem-int/lit8 v7, v6, 0xa

    .line 35
    .line 36
    add-int/lit8 v7, v7, 0x30

    .line 37
    .line 38
    int-to-char v7, v7

    .line 39
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    array-length v7, v0

    .line 43
    const/4 v8, 0x0

    .line 44
    :goto_1
    if-ge v8, v7, :cond_0

    .line 45
    .line 46
    aget v9, v0, v8

    .line 47
    .line 48
    add-int/2addr p2, v9

    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/16 v7, 0xa

    .line 53
    .line 54
    if-lt v6, v7, :cond_1

    .line 55
    .line 56
    rsub-int/lit8 v6, v4, 0x5

    .line 57
    .line 58
    shl-int v6, v2, v6

    .line 59
    .line 60
    or-int/2addr v5, v6

    .line 61
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p3, v5}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 65
    .line 66
    .line 67
    return p2
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 2
    .line 3
    return-object v0
.end method
