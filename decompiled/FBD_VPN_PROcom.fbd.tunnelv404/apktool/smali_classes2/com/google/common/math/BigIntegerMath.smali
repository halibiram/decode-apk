.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;
    }
.end annotation


# static fields
.field private static final LN_10:D

.field private static final LN_2:D

.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 25
    .line 26
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    .line 33
    .line 34
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x6646a142c868e337L    # 4.807845235353726E184
        -0x2b53b73a54518b88L    # -7.733097722191123E99
        -0x427567de62db2836L    # -3.0234176513825394E-12
        -0x6a1b0e334755ce3fL    # -3.340131426655595E-203
        0x645f680368f6b3c2L
        -0xe11d6390035c490L    # -6.285268890898429E240
        0x16b60cac67a8c805L
        -0x45bed2f3d23bb6daL    # -4.335823661261036E-28
        -0x51edc64b6d8cf1c5L    # -9.161753476807384E-87
        -0xc0a204d9877cba6L    # -3.915263214609599E250
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

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 11

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-gt p1, p0, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    shr-int/lit8 v1, p0, 0x1

    .line 61
    .line 62
    if-le p1, v1, :cond_1

    .line 63
    .line 64
    sub-int p1, p0, p1

    .line 65
    .line 66
    :cond_1
    sget-object v1, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 67
    .line 68
    array-length v2, v1

    .line 69
    if-ge p1, v2, :cond_2

    .line 70
    .line 71
    aget v1, v1, p1

    .line 72
    .line 73
    if-gt p0, v1, :cond_2

    .line 74
    .line 75
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_2
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 85
    .line 86
    int-to-long v2, p0

    .line 87
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 88
    .line 89
    invoke-static {v2, v3, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const-wide/16 v5, 0x1

    .line 94
    .line 95
    move v8, v4

    .line 96
    const/4 v7, 0x1

    .line 97
    :goto_1
    if-ge v7, p1, :cond_4

    .line 98
    .line 99
    sub-int v9, p0, v7

    .line 100
    .line 101
    add-int/2addr v7, v0

    .line 102
    add-int/2addr v8, v4

    .line 103
    const/16 v10, 0x3f

    .line 104
    .line 105
    if-lt v8, v10, :cond_3

    .line 106
    .line 107
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    int-to-long v2, v9

    .line 124
    int-to-long v5, v7

    .line 125
    move v8, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    int-to-long v9, v9

    .line 128
    mul-long v2, v2, v9

    .line 129
    .line 130
    int-to-long v9, v7

    .line 131
    mul-long v5, v5, v9

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :array_0
    .array-data 8
        0x106bfcd8dfd5bffcL
        -0x2a6da470c1722303L    # -1.6446584044915382E104
    .end array-data

    .line 152
    .line 153
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
    :array_1
    .array-data 8
        -0x6ab442f8c954758cL    # -4.319905529959547E-206
        0x44ff6692bc6ec179L    # 2.3725680369964764E24
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_2
    .array-data 8
        -0x5aa31949014ba71cL    # -1.04236108045837E-128
        -0x68d423c8d08bc8f2L
        -0x565a379da66c6736L
    .end array-data
.end method

.method public static ceilingPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 4
    .line 5
    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/math/BigDecimal;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/google/common/math/LongMath;->factorials:[J

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-ge v0, v3, :cond_0

    .line 26
    .line 27
    aget-wide v0, v2, v0

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_0
    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    mul-int v4, v4, v0

    .line 41
    .line 42
    const/16 v5, 0x40

    .line 43
    .line 44
    invoke-static {v4, v5, v3}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    array-length v3, v2

    .line 54
    add-int/lit8 v6, v3, -0x1

    .line 55
    .line 56
    aget-wide v6, v2, v6

    .line 57
    .line 58
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    shr-long/2addr v6, v2

    .line 63
    sget-object v8, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 64
    .line 65
    invoke-static {v6, v7, v8}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    add-int/2addr v9, v1

    .line 70
    int-to-long v10, v3

    .line 71
    invoke-static {v10, v11, v8}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/lit8 v8, v3, 0x1

    .line 76
    .line 77
    shl-int v3, v1, v3

    .line 78
    .line 79
    :goto_0
    int-to-long v12, v0

    .line 80
    const-wide/16 v14, 0x1

    .line 81
    .line 82
    cmp-long v16, v10, v12

    .line 83
    .line 84
    if-gtz v16, :cond_3

    .line 85
    .line 86
    int-to-long v12, v3

    .line 87
    and-long/2addr v12, v10

    .line 88
    const-wide/16 v16, 0x0

    .line 89
    .line 90
    cmp-long v18, v12, v16

    .line 91
    .line 92
    if-eqz v18, :cond_1

    .line 93
    .line 94
    shl-int/2addr v3, v1

    .line 95
    add-int/2addr v8, v1

    .line 96
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    shr-long v16, v10, v12

    .line 101
    .line 102
    add-int/2addr v2, v12

    .line 103
    sub-int v12, v8, v12

    .line 104
    .line 105
    add-int/2addr v12, v9

    .line 106
    if-lt v12, v5, :cond_2

    .line 107
    .line 108
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-wide v6, v14

    .line 116
    :cond_2
    mul-long v6, v6, v16

    .line 117
    .line 118
    sget-object v9, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 119
    .line 120
    invoke-static {v6, v7, v9}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    add-int/2addr v9, v1

    .line 125
    add-long/2addr v10, v14

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    cmp-long v0, v6, v14

    .line 128
    .line 129
    if-lez v0, :cond_4

    .line 130
    .line 131
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-static {v4}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;)Ljava/math/BigInteger;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :array_0
    .array-data 8
        -0x5e2653236a4dc603L
        -0xe9eb2ff82e8b743L    # -1.4082264256814595E238
    .end array-data
.end method

.method public static fitsInLong(Ljava/math/BigInteger;)Z
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x3f

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static floorPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 4
    .line 5
    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x1

    .line 19
    sub-int/2addr p0, v1

    .line 20
    if-ne v0, p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1
.end method

.method public static listProduct(Ljava/util/List;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    add-int v0, p2, p1

    ushr-int/2addr v0, v1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 9
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_0
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-double v3, v1

    .line 42
    sget-wide v5, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    .line 43
    .line 44
    mul-double v3, v3, v5

    .line 45
    .line 46
    sget-wide v5, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    .line 47
    .line 48
    div-double/2addr v3, v5

    .line 49
    double-to-int v1, v3

    .line 50
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 51
    .line 52
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-lez v5, :cond_2

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 63
    .line 64
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-gtz v3, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    move v7, v6

    .line 86
    move v6, v5

    .line 87
    move v5, v7

    .line 88
    :goto_0
    if-gtz v5, :cond_3

    .line 89
    .line 90
    add-int/2addr v1, v0

    .line 91
    sget-object v4, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    move-object v7, v4

    .line 102
    move-object v4, v3

    .line 103
    move-object v3, v7

    .line 104
    move v8, v6

    .line 105
    move v6, v5

    .line 106
    move v5, v8

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    move v3, v6

    .line 109
    :goto_1
    sget-object v5, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    aget p1, v5, p1

    .line 116
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 118
    .line 119
    .line 120
    new-instance p0, Ljava/lang/AssertionError;

    .line 121
    .line 122
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :pswitch_0
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-gtz p0, :cond_4

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    add-int/2addr v1, v0

    .line 148
    :goto_2
    return v1

    .line 149
    :pswitch_1
    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_5

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    add-int/2addr v1, v0

    .line 157
    :goto_3
    return v1

    .line 158
    :pswitch_2
    if-nez v3, :cond_6

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    const/4 v0, 0x0

    .line 162
    :goto_4
    invoke-static {v0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 163
    .line 164
    .line 165
    :pswitch_3
    return v1

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_0
    .array-data 8
        0x44e2a7e7930c4f57L    # 7.047991171723388E23
        -0x46aeb1d59c667629L    # -1.333154461482941E-32
    .end array-data
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 5

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/lit8 v3, v1, -0x1

    .line 32
    .line 33
    sget-object v4, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    aget p1, v4, p1

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/AssertionError;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :pswitch_0
    if-ge v3, v0, :cond_1

    .line 51
    .line 52
    sget-object p1, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    .line 53
    .line 54
    sub-int/2addr v0, v3

    .line 55
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-gtz p0, :cond_0

    .line 64
    .line 65
    return v3

    .line 66
    :cond_0
    return v1

    .line 67
    :cond_1
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    add-int/lit8 p0, p0, -0x1

    .line 76
    .line 77
    mul-int/lit8 v2, v3, 0x2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    if-ge p0, v2, :cond_2

    .line 82
    .line 83
    move v1, v3

    .line 84
    :cond_2
    return v1

    .line 85
    :pswitch_1
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    move v1, v3

    .line 92
    :cond_3
    return v1

    .line 93
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 98
    .line 99
    .line 100
    :pswitch_3
    return v3

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    :array_0
    .array-data 8
        0x6aee82c1bc09fe15L    # 1.2244475523549003E207
        0x6f3a8e2730c7a461L    # 6.290826596892413E227
    .end array-data
.end method

.method public static roundToDouble(Ljava/math/BigInteger;Ljava/math/RoundingMode;)D
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->INSTANCE:Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v2, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    aget p1, v2, p1

    .line 49
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    new-instance p0, Ljava/lang/AssertionError;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-ltz p0, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 81
    :pswitch_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    mul-int p1, p1, p1

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ne p1, v2, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_1
    return-object v0

    .line 111
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 120
    .line 121
    .line 122
    :pswitch_3
    return-object v0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_0
    .array-data 8
        0x6bfe15a14c23639cL    # 1.5824851883310534E212
        -0x1db9321f0636b61L    # -4.274579202643791E299
    .end array-data
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3ff

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    add-int/lit8 v0, v0, -0x34

    .line 18
    .line 19
    and-int/lit8 v0, v0, -0x2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    shr-int/2addr v0, v2

    .line 30
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ltz v3, :cond_2

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_2
    move-object v1, v0

    .line 73
    goto :goto_1
.end method
