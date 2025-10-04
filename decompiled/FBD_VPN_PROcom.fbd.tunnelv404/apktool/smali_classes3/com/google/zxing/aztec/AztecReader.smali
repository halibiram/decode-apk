.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


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


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5
    :try_start_1
    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getErrorsCorrected()I

    move-result v5
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6
    :try_start_2
    new-instance v6, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v6}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v3
    :try_end_2
    .catch Lcom/google/zxing/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v5

    move-object v5, v4

    move-object v4, p1

    move-object p1, v3

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    :goto_0
    const/4 v5, 0x0

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_1
    const/4 v5, 0x0

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v4, p1

    goto :goto_0

    :catch_5
    move-exception v3

    move-object v4, p1

    goto :goto_1

    :goto_2
    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, p1

    goto :goto_4

    :goto_3
    move v6, v5

    move-object v5, v4

    move-object v4, p1

    :goto_4
    if-nez p1, :cond_0

    .line 7
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getErrorsCorrected()I

    move-result v6

    .line 10
    new-instance v1, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v1}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/zxing/FormatException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    move-object v7, v5

    move v1, v6

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_5

    :catch_7
    move-exception p1

    :goto_5
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 11
    throw v4

    .line 12
    :cond_1
    throw p1

    .line 13
    :cond_2
    throw v3

    :goto_6
    if-eqz p2, :cond_3

    .line 14
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/ResultPointCallback;

    if-eqz p2, :cond_3

    .line 15
    array-length v3, v7

    :goto_7
    if-ge v2, v3, :cond_3

    aget-object v4, v7, v2

    .line 16
    invoke-interface {p2, v4}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    add-int/2addr v2, v0

    goto :goto_7

    .line 17
    :cond_3
    new-instance p2, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v6

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 21
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v2, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 24
    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p2, v2, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getErrorsCorrected()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 26
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERRORS_CORRECTED:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getSymbologyModifier()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object p2

    nop

    :array_0
    .array-data 8
        -0x31af17f7136ac9a7L    # -1.8231810780985174E69
        -0x1b2b0923b7ca2865L    # -5.309551025549934E177
    .end array-data
.end method

.method public reset()V
    .locals 0

    return-void
.end method
