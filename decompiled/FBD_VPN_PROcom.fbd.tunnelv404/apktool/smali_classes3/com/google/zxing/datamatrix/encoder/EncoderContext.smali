.class final Lcom/google/zxing/datamatrix/encoder/EncoderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final codewords:Ljava/lang/StringBuilder;

.field private maxSize:Lcom/google/zxing/Dimension;

.field private minSize:Lcom/google/zxing/Dimension;

.field private final msg:Ljava/lang/String;

.field private newEncoding:I

.field pos:I

.field private shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private skipAtEnd:I

.field private symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-byte v4, v0, v3

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 23
    .line 24
    int-to-char v4, v4

    .line 25
    const/16 v5, 0x3f

    .line 26
    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v6, v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 87
    .line 88
    return-void

    .line 89
    :array_0
    .array-data 8
        -0x35bc3b5725d5131aL    # -5.778251766129413E49
        -0x57f8af71ddf86f44L    # -7.396409163837094E-116
        0x27df35b5526ac0daL
        0x3b45338a1d2a46acL
        -0x415f1774a3ce3060L    # -5.039088865192098E-7
        0x3361bcb5f2b7d529L    # 3.4493301117213776E-61
        0x2ee466ee52162afbL    # 8.401668062400203E-83
        0x29ff2eabadaf9dabL
    .end array-data
.end method

.method private getTotalMessageCharCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCodewords()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrent()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getCurrentChar()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewEncoding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 2
    .line 3
    return v0
.end method

.method public getRemainingCharacters()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasMoreCharacters()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public resetEncoderSignal()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 3
    .line 4
    return-void
.end method

.method public resetSymbolInfo()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    .line 3
    .line 4
    return-void
.end method

.method public setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    .line 4
    .line 5
    return-void
.end method

.method public setSkipAtEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    .line 2
    .line 3
    return-void
.end method

.method public setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 2
    .line 3
    return-void
.end method

.method public signalEncoderChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    .line 2
    .line 3
    return-void
.end method

.method public updateSymbolInfo()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    return-void
.end method

.method public updateSymbolInfo(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    :cond_1
    return-void
.end method

.method public writeCodeword(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeCodewords(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
