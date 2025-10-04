.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final binaryShiftByteCount:I

.field private final binaryShiftCost:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/Token;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 11
    .line 12
    invoke-static {p3}, Lcom/google/zxing/aztec/encoder/State;->calculateBinaryShiftCost(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    .line 17
    .line 18
    return-void
.end method

.method private static calculateBinaryShiftCost(I)I
    .locals 1

    const/16 v0, 0x3e

    if-le p0, v0, :cond_0

    const/16 p0, 0x15

    return p0

    :cond_0
    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    if-lez p0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq v1, v3, :cond_0

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v1, v3, :cond_1

    .line 12
    .line 13
    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 14
    .line 15
    aget-object v1, v3, v1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aget v1, v1, v3

    .line 19
    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v4, v1

    .line 24
    shr-int/lit8 v1, v1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/2addr v2, v1

    .line 31
    const/4 v1, 0x0

    .line 32
    :cond_1
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    const/16 v4, 0x1f

    .line 37
    .line 38
    if-ne v3, v4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 v4, 0x3e

    .line 42
    .line 43
    if-ne v3, v4, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x9

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/16 v4, 0x8

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    const/16 v4, 0x12

    .line 52
    .line 53
    :goto_1
    new-instance v5, Lcom/google/zxing/aztec/encoder/State;

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    add-int/2addr v2, v4

    .line 58
    invoke-direct {v5, v0, v1, v3, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 59
    .line 60
    .line 61
    iget v0, v5, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 62
    .line 63
    const/16 v1, 0x81e

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    invoke-virtual {v5, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :cond_5
    return-object v5
.end method

.method public appendFLGn(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const v4, 0xf423f

    .line 18
    .line 19
    .line 20
    if-gt p1, v4, :cond_2

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length v4, p1

    .line 33
    invoke-virtual {v2, v4, v3}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    array-length v4, p1

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_0
    if-ge v5, v4, :cond_1

    .line 40
    .line 41
    aget-byte v6, p1, v5

    .line 42
    .line 43
    add-int/lit8 v6, v6, -0x2e

    .line 44
    .line 45
    invoke-virtual {v2, v6, v0}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    array-length p1, p1

    .line 53
    mul-int/lit8 p1, p1, 0x4

    .line 54
    .line 55
    add-int/2addr v3, p1

    .line 56
    move-object p1, v2

    .line 57
    :goto_1
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    .line 58
    .line 59
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 60
    .line 61
    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 62
    .line 63
    add-int/2addr v4, v3

    .line 64
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    fill-array-data v1, :array_0

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :array_0
    .array-data 8
        -0x5630f49d0f5c73ffL
        0x5741bb9e3b34c62dL    # 2.1322972792084614E112
        0x4fbee45291f11338L
        0x79cd9b014b4cb5ffL    # 5.2480533097720914E278
        -0x41f8e0afc761ca54L    # -6.729480178276183E-10
        -0x75d9db34b9317ba0L    # -9.001284001375916E-260
    .end array-data
.end method

.method public endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/aztec/encoder/Token;->addBinaryShift(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public getBinaryShiftByteCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getBitCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public getToken()Lcom/google/zxing/aztec/encoder/Token;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 2
    .line 3
    return-object v0
.end method

.method public isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 10
    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    shr-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 17
    .line 18
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget v1, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    .line 23
    .line 24
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    add-int/2addr v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0xa

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget p1, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 36
    .line 37
    if-gt v0, p1, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    :goto_1
    return p1
.end method

.method public latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 6
    .line 7
    if-eq p1, v2, :cond_0

    .line 8
    .line 9
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 10
    .line 11
    aget-object v2, v3, v2

    .line 12
    .line 13
    aget v2, v2, p1

    .line 14
    .line 15
    const v3, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v3, v2

    .line 19
    shr-int/lit8 v2, v2, 0x10

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    add-int/2addr v0, v2

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x5

    .line 32
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v1, Lcom/google/zxing/aztec/encoder/State;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    add-int/2addr v0, v2

    .line 40
    invoke-direct {v1, p2, p1, v3, v0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x5

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x5

    .line 12
    :goto_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 13
    .line 14
    aget-object v1, v4, v1

    .line 15
    .line 16
    aget p1, v1, p1

    .line 17
    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2, v3}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    .line 27
    .line 28
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 29
    .line 30
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v3

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {p2, p1, v0, v2, v1}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 36
    .line 37
    .line 38
    return-object p2
.end method

.method public toBitArray([B)Lcom/google/zxing/common/BitArray;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 12
    .line 13
    :goto_0
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/Token;->getPrevious()Lcom/google/zxing/aztec/encoder/Token;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/google/zxing/common/BitArray;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/zxing/aztec/encoder/Token;

    .line 41
    .line 42
    invoke-virtual {v3, v1, p1}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    .line 17
    .line 18
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 19
    .line 20
    aget-object v1, v1, v2

    .line 21
    .line 22
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x3

    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    aput-object v1, v4, v5

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    aput-object v2, v4, v1

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    aput-object v3, v4, v1

    .line 45
    .line 46
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :array_0
    .array-data 8
        0x1212eb227b5df9ddL
        -0x777e0eb4af6f9bcbL
        0x53937d2aa3315afL
        0x4686f7d5084cdab6L    # 5.823103722034911E31
    .end array-data
.end method
