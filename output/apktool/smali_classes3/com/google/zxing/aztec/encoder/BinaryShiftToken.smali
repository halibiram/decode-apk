.class final Lcom/google/zxing/aztec/encoder/BinaryShiftToken;
.super Lcom/google/zxing/aztec/encoder/Token;
.source "SourceFile"


# instance fields
.field private final binaryShiftByteCount:I

.field private final binaryShiftStart:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/aztec/encoder/Token;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/Token;-><init>(Lcom/google/zxing/aztec/encoder/Token;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    .line 5
    .line 6
    iput p3, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public appendTo(Lcom/google/zxing/common/BitArray;[B)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    .line 6
    const/16 v2, 0x3e

    .line 7
    .line 8
    const/16 v3, 0x1f

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-ne v1, v3, :cond_3

    .line 13
    .line 14
    if-gt v0, v2, :cond_3

    .line 15
    .line 16
    :cond_0
    const/4 v4, 0x5

    .line 17
    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 18
    .line 19
    .line 20
    if-le v0, v2, :cond_1

    .line 21
    .line 22
    add-int/lit8 v2, v0, -0x1f

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v2, v0, -0x1f

    .line 41
    .line 42
    invoke-virtual {p1, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    aget-byte v2, p2, v2

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftStart:I

    .line 47
    .line 48
    iget v2, p0, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;->binaryShiftByteCount:I

    .line 49
    .line 50
    add-int/2addr v1, v2

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x3e

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        -0x5baf069e9a9a8d7aL    # -9.341352808453182E-134
        -0x350e77fd6f6e0c4fL    # -1.0494774384550637E53
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x41f2905a67338647L    # 4.983203443220283E9
        0x69e3e7396b681877L    # 1.2187943976338723E202
    .end array-data
.end method
