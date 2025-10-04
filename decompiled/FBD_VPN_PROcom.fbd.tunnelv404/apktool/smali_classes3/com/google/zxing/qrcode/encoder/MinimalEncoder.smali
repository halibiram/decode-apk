.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    }
.end annotation


# instance fields
.field private final ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private final encoders:Lcom/google/zxing/common/ECIEncoderSet;

.field private final isGS1:Z

.field private final stringToEncode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    .line 7
    .line 8
    new-instance p3, Lcom/google/zxing/common/ECIEncoderSet;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    invoke-direct {p3, p1, p2, v0}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic access$1100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/ECIEncoderSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    .line 2
    .line 3
    return p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Version;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object p0

    return-object p0
.end method

.method public static getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    sget-object v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    aget v2, v2, v3

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v2, v1, :cond_3

    .line 19
    .line 20
    if-eq v2, v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_2
    return v1

    .line 62
    :cond_3
    return v3

    .line 63
    :cond_4
    return v1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x4172de12f50caf78L    # -2.1705421235937885E-7
        0x1f6b618a984a007dL
        0x35eacc92c3715e77L    # 5.730218185353666E-49
    .end array-data
.end method

.method public static getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$encoder$MinimalEncoder$VersionSize:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x28

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/16 p0, 0x1a

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const/16 p0, 0x9

    .line 30
    .line 31
    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/16 v0, 0x1a

    .line 17
    .line 18
    if-gt p0, v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method public static isAlphanumeric(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static isDoubleByteKanji(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isNumeric(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 2

    .line 1
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr p2, v0

    .line 6
    aget-object p1, p1, p2

    .line 7
    .line 8
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    aget-object p1, p1, p2

    .line 13
    .line 14
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getCompactedOrdinal(Lcom/google/zxing/qrcode/decoder/Mode;)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    aget-object v0, p1, p2

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-le v0, v1, :cond_1

    .line 35
    .line 36
    :cond_0
    aput-object p3, p1, p2

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/zxing/common/ECIEncoderSet;->getPriorityEncoderIndex()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    iget-object v2, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 22
    .line 23
    iget-object v3, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v2, v3, v1}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    add-int/lit8 v0, v1, 0x1

    .line 36
    .line 37
    :goto_0
    move v12, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    move v13, v1

    .line 42
    :goto_2
    if-ge v13, v12, :cond_2

    .line 43
    .line 44
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 45
    .line 46
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1, v13}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    new-instance v14, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 59
    .line 60
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v8, 0x0

    .line 64
    move-object v0, v14

    .line 65
    move-object/from16 v1, p0

    .line 66
    .line 67
    move/from16 v3, p3

    .line 68
    .line 69
    move v4, v13

    .line 70
    move-object/from16 v6, p4

    .line 71
    .line 72
    move-object/from16 v7, p1

    .line 73
    .line 74
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v10, v11, v14}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 84
    .line 85
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    move-object v0, v12

    .line 103
    move-object/from16 v1, p0

    .line 104
    .line 105
    move/from16 v3, p3

    .line 106
    .line 107
    move-object/from16 v6, p4

    .line 108
    .line 109
    move-object/from16 v7, p1

    .line 110
    .line 111
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 124
    .line 125
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v13, 0x2

    .line 136
    const/4 v14, 0x1

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 140
    .line 141
    add-int/lit8 v0, v11, 0x1

    .line 142
    .line 143
    if-ge v0, v12, :cond_5

    .line 144
    .line 145
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_4
    const/4 v5, 0x2

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    :goto_3
    const/4 v5, 0x1

    .line 161
    :goto_4
    const/4 v8, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    move-object v0, v15

    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    move/from16 v3, p3

    .line 167
    .line 168
    move-object/from16 v6, p4

    .line 169
    .line 170
    move-object/from16 v7, p1

    .line 171
    .line 172
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 179
    .line 180
    iget-object v0, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 193
    .line 194
    add-int/lit8 v0, v11, 0x1

    .line 195
    .line 196
    if-ge v0, v12, :cond_a

    .line 197
    .line 198
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_7
    add-int/lit8 v0, v11, 0x2

    .line 212
    .line 213
    if-ge v0, v12, :cond_9

    .line 214
    .line 215
    iget-object v1, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v9, v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_8
    const/4 v0, 0x3

    .line 229
    const/4 v5, 0x3

    .line 230
    goto :goto_7

    .line 231
    :cond_9
    :goto_5
    const/4 v5, 0x2

    .line 232
    goto :goto_7

    .line 233
    :cond_a
    :goto_6
    const/4 v5, 0x1

    .line 234
    :goto_7
    const/4 v8, 0x0

    .line 235
    const/4 v4, 0x0

    .line 236
    move-object v0, v15

    .line 237
    move-object/from16 v1, p0

    .line 238
    .line 239
    move/from16 v3, p3

    .line 240
    .line 241
    move-object/from16 v6, p4

    .line 242
    .line 243
    move-object/from16 v7, p1

    .line 244
    .line 245
    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 249
    .line 250
    .line 251
    :cond_b
    return-void
.end method

.method public canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    return v0

    .line 24
    :cond_1
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isNumeric(C)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isAlphanumeric(C)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_3
    invoke-static {p2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isDoubleByteKanji(C)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public encode(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 2
    sget-object p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 3
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    .line 4
    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    new-array v6, v2, [Lcom/google/zxing/qrcode/decoder/Version;

    aput-object p1, v6, v1

    aput-object v4, v6, v3

    aput-object v5, v6, v0

    .line 5
    aget-object p1, v6, v1

    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object p1

    aget-object v4, v6, v3

    .line 6
    invoke-virtual {p0, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v4

    aget-object v5, v6, v0

    .line 7
    invoke-virtual {p0, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v5

    new-array v7, v2, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aput-object p1, v7, v1

    aput-object v4, v7, v3

    aput-object v5, v7, v0

    const p1, 0x7fffffff

    const/4 v0, -0x1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 8
    aget-object v4, v7, v1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v4

    .line 9
    aget-object v5, v6, v1

    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v4, v5, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ge v4, p1, :cond_0

    move v0, v1

    move p1, v4

    :cond_0
    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    .line 10
    aget-object p1, v7, v0

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Lcom/google/zxing/WriterException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersionSize(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v1, v2, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 14
    :cond_4
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        -0x2db65576c9d4dd23L    # -2.552875171805413E88
        -0x73dc01dbc2d2c378L    # -3.49048631884349E-250
        -0x1295e2dd0fdf349aL    # -1.1522777542533225E219
        0x2d0e1ad9ab3d7215L    # 1.1545913175777517E-91
        0x6df5602d196e7f87L    # 4.8292193395720024E221
    .end array-data

    :array_1
    .array-data 8
        0x6fb302b0970e126aL    # 1.1528967242046118E230
        -0x281cee8b8684b0d8L    # -2.3478896400965717E115
        -0x6f069e3fac1d5b47L    # -6.696477225959374E-227
        0x2f86cae7d78a0577L    # 9.611364087361313E-80
    .end array-data
.end method

.method public encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x3

    .line 17
    new-array v4, v4, [I

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x4

    .line 21
    aput v6, v4, v5

    .line 22
    .line 23
    aput v3, v4, v1

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput v2, v4, v3

    .line 27
    .line 28
    const-class v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 29
    .line 30
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    :goto_0
    if-gt v4, v0, :cond_3

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_1
    iget-object v8, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 45
    .line 46
    invoke-virtual {v8}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-ge v7, v8, :cond_2

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_2
    if-ge v8, v6, :cond_1

    .line 54
    .line 55
    aget-object v9, v2, v4

    .line 56
    .line 57
    aget-object v9, v9, v7

    .line 58
    .line 59
    aget-object v9, v9, v8

    .line 60
    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    if-ge v4, v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, p1, v2, v4, v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/2addr v8, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/2addr v7, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    add-int/2addr v4, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v4, -0x1

    .line 75
    const v7, 0x7fffffff

    .line 76
    .line 77
    .line 78
    const/4 v7, -0x1

    .line 79
    const v8, 0x7fffffff

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    :goto_3
    iget-object v10, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/google/zxing/common/ECIEncoderSet;->length()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-ge v9, v10, :cond_6

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    :goto_4
    if-ge v10, v6, :cond_5

    .line 93
    .line 94
    aget-object v11, v2, v0

    .line 95
    .line 96
    aget-object v11, v11, v9

    .line 97
    .line 98
    aget-object v11, v11, v10

    .line 99
    .line 100
    if-eqz v11, :cond_4

    .line 101
    .line 102
    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    if-ge v12, v8, :cond_4

    .line 107
    .line 108
    invoke-static {v11}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    move v4, v9

    .line 113
    move v7, v10

    .line 114
    :cond_4
    add-int/2addr v10, v1

    .line 115
    goto :goto_4

    .line 116
    :cond_5
    add-int/2addr v9, v1

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    if-ltz v4, :cond_7

    .line 119
    .line 120
    new-instance v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    .line 121
    .line 122
    aget-object v0, v2, v0

    .line 123
    .line 124
    aget-object v0, v0, v4

    .line 125
    .line 126
    aget-object v0, v0, v7

    .line 127
    .line 128
    invoke-direct {v1, p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_7
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/4 v2, 0x6

    .line 142
    new-array v2, v2, [J

    .line 143
    .line 144
    fill-array-data v2, :array_0

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array v2, v5, [J

    .line 165
    .line 166
    fill-array-data v2, :array_1

    .line 167
    .line 168
    .line 169
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    nop

    .line 181
    :array_0
    .array-data 8
        0x2d647fe60c0536f4L    # 5.03172359892287E-90
        0x48db470ca1d6bd3L
        0x6f08e023f74a5620L    # 7.366130745634899E226
        -0x4a4e2a3c7b1ae612L    # -4.76687977204649E-50
        0x25e051d4ab1cfa05L    # 3.013579832346254E-126
        -0x60257dd36019b759L
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 8
        0x78332720fe8ef70cL    # 1.0118344433611717E271
        0x424608c9a1dd6956L    # 1.8927342482682294E11
    .end array-data
.end method
