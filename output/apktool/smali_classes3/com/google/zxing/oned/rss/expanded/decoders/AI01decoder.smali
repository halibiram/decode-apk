.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "SourceFile"


# static fields
.field static final GTIN_SIZE:I = 0x28


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static appendCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0xd

    .line 5
    .line 6
    if-ge v1, v3, :cond_1

    .line 7
    .line 8
    add-int v3, v1, p1

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    add-int/lit8 v3, v3, -0x30

    .line 15
    .line 16
    and-int/lit8 v4, v1, 0x1

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    mul-int/lit8 v3, v3, 0x3

    .line 21
    .line 22
    :cond_0
    add-int/2addr v2, v3

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 p1, 0xa

    .line 27
    .line 28
    rem-int/2addr v2, p1

    .line 29
    rsub-int/lit8 v1, v2, 0xa

    .line 30
    .line 31
    if-ne v1, p1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v0, v1

    .line 35
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x39

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x74c47a480071545bL    # 3.0026637845165525E254
        0x7e2295096322e83aL    # 3.8888593562938026E299
    .end array-data
.end method

.method public final encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x4

    .line 3
    if-ge v0, v1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    mul-int/lit8 v2, v0, 0xa

    .line 10
    .line 11
    add-int/2addr v2, p2

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    div-int/lit8 v2, v1, 0x64

    .line 19
    .line 20
    const/16 v3, 0x30

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    div-int/lit8 v2, v1, 0xa

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->appendCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
