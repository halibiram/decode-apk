.class final Lcom/google/zxing/pdf417/decoder/Codeword;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BARCODE_ROW_UNKNOWN:I = -0x1


# instance fields
.field private final bucket:I

.field private final endX:I

.field private rowNumber:I

.field private final startX:I

.field private final value:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    .line 8
    .line 9
    iput p2, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    .line 10
    .line 11
    iput p3, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    .line 12
    .line 13
    iput p4, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getBucket()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    .line 2
    .line 3
    return v0
.end method

.method public getRowNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public hasValidRowNumber()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isValidRowNumber(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    .line 5
    .line 6
    rem-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    mul-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public setRowNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public setRowNumberAsRowIndicatorColumn()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x1e

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->bucket:I

    .line 8
    .line 9
    div-int/lit8 v1, v1, 0x3

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 13
    .line 14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->value:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :array_0
    .array-data 8
        -0x38e3065aa63ad4daL    # -3.761193311490683E34
        0x5fd066612ec55e04L    # 3.4357341040557856E153
    .end array-data
.end method
