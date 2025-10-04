.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit8 p3, p3, 0x2

    .line 16
    .line 17
    add-int v2, v0, p3

    .line 18
    .line 19
    add-int/2addr p3, v1

    .line 20
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    div-int v2, p1, v2

    .line 29
    .line 30
    div-int p3, p2, p3

    .line 31
    .line 32
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    mul-int v2, v0, p3

    .line 37
    .line 38
    sub-int v2, p1, v2

    .line 39
    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    mul-int v3, v1, p3

    .line 43
    .line 44
    sub-int v3, p2, v3

    .line 45
    .line 46
    div-int/lit8 v3, v3, 0x2

    .line 47
    .line 48
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    .line 49
    .line 50
    invoke-direct {v4, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    const/4 p2, 0x0

    .line 55
    :goto_0
    if-ge p2, v1, :cond_2

    .line 56
    .line 57
    move v6, v2

    .line 58
    const/4 v5, 0x0

    .line 59
    :goto_1
    if-ge v5, v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x1

    .line 66
    if-ne v7, v8, :cond_0

    .line 67
    .line 68
    invoke-virtual {v4, v6, v3, p3, p3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 69
    .line 70
    .line 71
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    add-int/2addr v6, p3

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 76
    .line 77
    add-int/2addr v3, p3

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v4

    .line 80
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v2, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 4
    sget-object p2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz p5, :cond_1

    .line 5
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object p2

    .line 7
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    :cond_1
    invoke-static {p1, p2, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p1

    .line 10
    invoke-static {p1, p3, p4, v1}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    new-array p5, v0, [J

    fill-array-data p5, :array_1

    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 8
        -0x5df3c2329455b47cL
        0xbac6347bee1d904L
        -0x514bf6147a2a3491L    # -1.0315061986536912E-83
        -0x3b82d44c569f159eL    # -8.609673998972054E21
        -0x4c9071f60b63e9b8L    # -6.136445241641158E-61
        0x29bd466f9ad27fe0L
    .end array-data

    :array_1
    .array-data 8
        0x40d1461f1dbb9ef2L    # 17688.486189751835
        0x5651b95fe7374427L    # 6.504039009614205E107
        -0x469919255b1d1c76L    # -3.5285769466527006E-32
        -0x42b33412d89ca22eL
        -0x219e675dc74d6b19L    # -4.394479266520715E146
        -0x65b7a737411c1559L    # -4.583895986548299E-182
    .end array-data

    :array_2
    .array-data 8
        -0x5d52aaaea6cb5f89L
        0xd2726d7eaa3f19L
        0x4d7f8b85a5a7a9edL    # 2.0762981798031008E65
        0x4abaed1323bd558cL    # 1.0074240053965974E52
    .end array-data
.end method
