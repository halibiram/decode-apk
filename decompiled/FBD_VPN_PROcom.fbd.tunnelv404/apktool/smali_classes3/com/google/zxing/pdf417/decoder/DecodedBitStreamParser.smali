.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v1, v1, [J

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 41
    .line 42
    const/16 v0, 0x10

    .line 43
    .line 44
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 45
    .line 46
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 50
    .line 51
    aput-object v2, v0, v1

    .line 52
    .line 53
    const-wide/16 v1, 0x384

    .line 54
    .line 55
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x1

    .line 60
    aput-object v1, v0, v2

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    :goto_0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 64
    .line 65
    array-length v4, v3

    .line 66
    if-ge v0, v4, :cond_0

    .line 67
    .line 68
    add-int/lit8 v4, v0, -0x1

    .line 69
    .line 70
    aget-object v4, v3, v4

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    aput-object v4, v3, v0

    .line 77
    .line 78
    add-int/2addr v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-void

    .line 81
    :array_0
    .array-data 8
        -0x2f0ebe1897dd8b1aL    # -8.184933222706465E81
        0x1b5d539bc87c6cfaL
        -0xd71c70d3e888d5eL    # -6.448760336821297E243
        -0x2d71eedcce9d7943L    # -4.784956648521146E89
        -0x422760bfc3f16582L    # -8.957458300639273E-11
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        0x2bb3057680ba2390L    # 3.478584186864042E-98
        0x39b4393a8393fd50L    # 9.970979532328106E-31
        0x2801d0291d33b444L    # 5.651085144667895E-116
        0x2ecae5c085c1b136L    # 2.769125404504586E-83
        -0x5cf367915023ecf3L    # -7.503930316401222E-140
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

.method private static byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    aget v2, p1, v0

    .line 4
    .line 5
    if-ge p2, v2, :cond_a

    .line 6
    .line 7
    if-nez v1, :cond_a

    .line 8
    .line 9
    :goto_1
    aget v2, p1, v0

    .line 10
    .line 11
    const/16 v3, 0x39f

    .line 12
    .line 13
    if-ge p2, v2, :cond_0

    .line 14
    .line 15
    aget v4, p1, p2

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, p2, 0x1

    .line 20
    .line 21
    aget v2, p1, v2

    .line 22
    .line 23
    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v4, 0x1

    .line 30
    if-ge p2, v2, :cond_9

    .line 31
    .line 32
    aget v2, p1, p2

    .line 33
    .line 34
    const/16 v5, 0x384

    .line 35
    .line 36
    if-lt v2, v5, :cond_1

    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_1
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_2
    const-wide/16 v8, 0x384

    .line 44
    .line 45
    mul-long v6, v6, v8

    .line 46
    .line 47
    add-int/lit8 v8, p2, 0x1

    .line 48
    .line 49
    aget p2, p1, p2

    .line 50
    .line 51
    int-to-long v9, p2

    .line 52
    add-long/2addr v6, v9

    .line 53
    add-int/2addr v2, v4

    .line 54
    const/4 p2, 0x5

    .line 55
    if-ge v2, p2, :cond_3

    .line 56
    .line 57
    aget v9, p1, v0

    .line 58
    .line 59
    if-ge v8, v9, :cond_3

    .line 60
    .line 61
    aget v9, p1, v8

    .line 62
    .line 63
    if-lt v9, v5, :cond_2

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_2
    move p2, v8

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    :goto_3
    if-ne v2, p2, :cond_6

    .line 69
    .line 70
    const/16 p2, 0x39c

    .line 71
    .line 72
    if-eq p0, p2, :cond_4

    .line 73
    .line 74
    aget p2, p1, v0

    .line 75
    .line 76
    if-ge v8, p2, :cond_6

    .line 77
    .line 78
    aget p2, p1, v8

    .line 79
    .line 80
    if-ge p2, v5, :cond_6

    .line 81
    .line 82
    :cond_4
    const/4 p2, 0x0

    .line 83
    :goto_4
    const/4 v2, 0x6

    .line 84
    if-ge p2, v2, :cond_5

    .line 85
    .line 86
    rsub-int/lit8 v2, p2, 0x5

    .line 87
    .line 88
    mul-int/lit8 v2, v2, 0x8

    .line 89
    .line 90
    shr-long v2, v6, v2

    .line 91
    .line 92
    long-to-int v3, v2

    .line 93
    int-to-byte v2, v3

    .line 94
    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move p2, v8

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    sub-int/2addr v8, v2

    .line 103
    :goto_5
    aget p2, p1, v0

    .line 104
    .line 105
    if-ge v8, p2, :cond_5

    .line 106
    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    add-int/lit8 p2, v8, 0x1

    .line 110
    .line 111
    aget v2, p1, v8

    .line 112
    .line 113
    if-ge v2, v5, :cond_7

    .line 114
    .line 115
    int-to-byte v2, v2

    .line 116
    invoke-virtual {p3, v2}, Lcom/google/zxing/common/ECIStringBuilder;->append(B)V

    .line 117
    .line 118
    .line 119
    move v8, p2

    .line 120
    goto :goto_5

    .line 121
    :cond_7
    if-ne v2, v3, :cond_8

    .line 122
    .line 123
    add-int/lit8 v8, v8, 0x2

    .line 124
    .line 125
    aget p2, p1, p2

    .line 126
    .line 127
    invoke-virtual {p3, p2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_8
    const/4 v1, 0x1

    .line 132
    goto :goto_5

    .line 133
    :cond_9
    :goto_6
    const/4 v1, 0x1

    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_a
    return p2
.end method

.method public static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/zxing/common/ECIStringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    aget v3, p0, v3

    .line 21
    .line 22
    if-ge v1, v3, :cond_1

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    aget v4, p0, v1

    .line 27
    .line 28
    const/16 v5, 0x391

    .line 29
    .line 30
    if-eq v4, v5, :cond_0

    .line 31
    .line 32
    packed-switch v4, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    packed-switch v4, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    invoke-static {p0, v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 49
    .line 50
    aget v3, p0, v3

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :pswitch_5
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    :pswitch_6
    invoke-static {v4, p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_0

    .line 77
    :pswitch_7
    invoke-static {p0, v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 83
    .line 84
    aget v3, p0, v3

    .line 85
    .line 86
    int-to-char v3, v3

    .line 87
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->getFileId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    throw p0

    .line 109
    :cond_3
    :goto_1
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
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
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    if-ge v2, p1, :cond_0

    .line 7
    .line 8
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 9
    .line 10
    sub-int v5, p1, v2

    .line 11
    .line 12
    sub-int/2addr v5, v3

    .line 13
    aget-object v3, v4, v5

    .line 14
    .line 15
    aget v4, p0, v2

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x31

    .line 42
    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method public static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    add-int/lit8 v3, p1, 0x2

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    aget v5, p0, v4

    .line 8
    .line 9
    if-gt v3, v5, :cond_a

    .line 10
    .line 11
    new-array v3, v2, [I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v2, :cond_0

    .line 15
    .line 16
    aget v6, p0, p1

    .line 17
    .line 18
    aput v6, v3, v5

    .line 19
    .line 20
    add-int/2addr v5, v1

    .line 21
    add-int/2addr p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v3, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 42
    .line 43
    .line 44
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    :goto_2
    aget v5, p0, v4

    .line 50
    .line 51
    const/16 v6, 0x39a

    .line 52
    .line 53
    const/16 v7, 0x39b

    .line 54
    .line 55
    if-ge p1, v5, :cond_2

    .line 56
    .line 57
    array-length v5, p0

    .line 58
    if-ge p1, v5, :cond_2

    .line 59
    .line 60
    aget v5, p0, p1

    .line 61
    .line 62
    if-eq v5, v6, :cond_2

    .line 63
    .line 64
    if-eq v5, v7, :cond_2

    .line 65
    .line 66
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v6, v2, [J

    .line 69
    .line 70
    fill-array-data v6, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    aget v6, p0, p1

    .line 81
    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    new-array v7, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v6, v7, v4

    .line 89
    .line 90
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    add-int/2addr p1, v1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_9

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p2, v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    aget v3, p0, p1

    .line 113
    .line 114
    if-ne v3, v7, :cond_3

    .line 115
    .line 116
    add-int/lit8 v3, p1, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    const/4 v3, -0x1

    .line 120
    :goto_3
    aget v5, p0, v4

    .line 121
    .line 122
    if-ge p1, v5, :cond_6

    .line 123
    .line 124
    aget v5, p0, p1

    .line 125
    .line 126
    if-eq v5, v6, :cond_5

    .line 127
    .line 128
    if-ne v5, v7, :cond_4

    .line 129
    .line 130
    add-int/lit8 v5, p1, 0x1

    .line 131
    .line 132
    aget v5, p0, v5

    .line 133
    .line 134
    packed-switch v5, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    throw p0

    .line 142
    :pswitch_0
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 143
    .line 144
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    add-int/2addr p1, v2

    .line 148
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    :try_start_1
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    throw p0

    .line 169
    :pswitch_1
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 170
    .line 171
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    add-int/2addr p1, v2

    .line 175
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    :try_start_2
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-virtual {p2, v8, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    throw p0

    .line 196
    :pswitch_2
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 197
    .line 198
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    add-int/2addr p1, v2

    .line 202
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :pswitch_3
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 215
    .line 216
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    add-int/2addr p1, v2

    .line 220
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :pswitch_4
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 233
    .line 234
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    add-int/2addr p1, v2

    .line 238
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    :try_start_3
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 247
    .line 248
    .line 249
    move-result-wide v8

    .line 250
    invoke-virtual {p2, v8, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :catch_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    throw p0

    .line 260
    :pswitch_5
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 261
    .line 262
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    add-int/2addr p1, v2

    .line 266
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    :try_start_4
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    .line 280
    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :catch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    throw p0

    .line 288
    :pswitch_6
    new-instance v5, Lcom/google/zxing/common/ECIStringBuilder;

    .line 289
    .line 290
    invoke-direct {v5}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    add-int/2addr p1, v2

    .line 294
    invoke-static {p0, p1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    invoke-virtual {v5}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {p2, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_3

    .line 306
    .line 307
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    throw p0

    .line 312
    :cond_5
    add-int/2addr p1, v1

    .line 313
    invoke-virtual {p2, v1}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_6
    if-eq v3, v0, :cond_8

    .line 319
    .line 320
    sub-int v1, p1, v3

    .line 321
    .line 322
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_7

    .line 327
    .line 328
    add-int/2addr v1, v0

    .line 329
    :cond_7
    if-lez v1, :cond_8

    .line 330
    .line 331
    add-int/2addr v1, v3

    .line 332
    invoke-static {p0, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 337
    .line 338
    .line 339
    :cond_8
    return p1

    .line 340
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    throw p0

    .line 345
    :catch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    throw p0

    .line 350
    :cond_a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    throw p0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_0
    .array-data 8
        -0x31b1092fca9b3fc9L    # -1.6695817516042092E69
        0x3d39026554441a60L    # 8.88510906106246E-14
    .end array-data
.end method

.method private static decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move/from16 v5, p2

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    move-object v4, v3

    .line 10
    const/4 v6, 0x0

    .line 11
    :goto_0
    if-ge v6, v5, :cond_13

    .line 12
    .line 13
    aget v7, p0, v6

    .line 14
    .line 15
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    aget v8, v8, v9

    .line 22
    .line 23
    const/16 v9, 0x20

    .line 24
    .line 25
    const/16 v10, 0x1a

    .line 26
    .line 27
    const/16 v11, 0x1d

    .line 28
    .line 29
    const/16 v12, 0x391

    .line 30
    .line 31
    const/16 v13, 0x384

    .line 32
    .line 33
    packed-switch v8, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    :goto_1
    move-object v7, v4

    .line 37
    move-object v4, v3

    .line 38
    :goto_2
    const/4 v3, 0x0

    .line 39
    goto/16 :goto_d

    .line 40
    .line 41
    :pswitch_0
    if-ge v7, v11, :cond_0

    .line 42
    .line 43
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 44
    .line 45
    aget-char v3, v3, v7

    .line 46
    .line 47
    :goto_3
    move-object v7, v4

    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :cond_0
    if-eq v7, v11, :cond_2

    .line 51
    .line 52
    if-eq v7, v13, :cond_2

    .line 53
    .line 54
    if-eq v7, v12, :cond_1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_1
    aget v3, p1, v6

    .line 58
    .line 59
    int-to-char v3, v3

    .line 60
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 61
    .line 62
    .line 63
    :goto_4
    move-object v7, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_1
    if-ge v7, v10, :cond_3

    .line 69
    .line 70
    add-int/lit8 v7, v7, 0x41

    .line 71
    .line 72
    int-to-char v3, v7

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    if-eq v7, v10, :cond_5

    .line 75
    .line 76
    if-eq v7, v13, :cond_4

    .line 77
    .line 78
    move-object v3, v4

    .line 79
    :goto_5
    const/4 v9, 0x0

    .line 80
    goto :goto_6

    .line 81
    :cond_4
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    move-object v3, v4

    .line 85
    :goto_6
    :pswitch_2
    move-object v7, v4

    .line 86
    move-object v4, v3

    .line 87
    move v3, v9

    .line 88
    goto/16 :goto_d

    .line 89
    .line 90
    :pswitch_3
    if-ge v7, v11, :cond_6

    .line 91
    .line 92
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 93
    .line 94
    aget-char v7, v8, v7

    .line 95
    .line 96
    :goto_7
    move-object v14, v4

    .line 97
    move-object v4, v3

    .line 98
    move v3, v7

    .line 99
    move-object v7, v14

    .line 100
    goto/16 :goto_d

    .line 101
    .line 102
    :cond_6
    if-eq v7, v11, :cond_8

    .line 103
    .line 104
    if-eq v7, v13, :cond_8

    .line 105
    .line 106
    if-eq v7, v12, :cond_7

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    aget v7, p1, v6

    .line 110
    .line 111
    int-to-char v7, v7

    .line 112
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 117
    .line 118
    move-object v3, v2

    .line 119
    goto :goto_1

    .line 120
    :pswitch_4
    const/16 v8, 0x19

    .line 121
    .line 122
    if-ge v7, v8, :cond_9

    .line 123
    .line 124
    sget-object v8, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 125
    .line 126
    aget-char v7, v8, v7

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_9
    if-eq v7, v13, :cond_b

    .line 130
    .line 131
    if-eq v7, v12, :cond_a

    .line 132
    .line 133
    packed-switch v7, :pswitch_data_1

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :pswitch_5
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 138
    .line 139
    :goto_8
    const/4 v9, 0x0

    .line 140
    move-object v14, v4

    .line 141
    move-object v4, v3

    .line 142
    move-object v3, v14

    .line 143
    goto :goto_6

    .line 144
    :pswitch_6
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 145
    .line 146
    :goto_9
    move-object v3, v2

    .line 147
    goto :goto_5

    .line 148
    :pswitch_7
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_a
    aget v7, p1, v6

    .line 152
    .line 153
    int-to-char v7, v7

    .line 154
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_b
    :pswitch_8
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 159
    .line 160
    goto :goto_9

    .line 161
    :pswitch_9
    if-ge v7, v10, :cond_c

    .line 162
    .line 163
    add-int/lit8 v7, v7, 0x61

    .line 164
    .line 165
    :goto_a
    int-to-char v7, v7

    .line 166
    goto :goto_7

    .line 167
    :cond_c
    if-eq v7, v13, :cond_e

    .line 168
    .line 169
    if-eq v7, v12, :cond_d

    .line 170
    .line 171
    packed-switch v7, :pswitch_data_2

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :pswitch_a
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 176
    .line 177
    goto :goto_8

    .line 178
    :pswitch_b
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 179
    .line 180
    :goto_b
    move-object v3, v2

    .line 181
    goto :goto_5

    .line 182
    :pswitch_c
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_d
    aget v7, p1, v6

    .line 186
    .line 187
    int-to-char v7, v7

    .line 188
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_e
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 193
    .line 194
    goto :goto_b

    .line 195
    :pswitch_d
    if-ge v7, v10, :cond_f

    .line 196
    .line 197
    add-int/lit8 v7, v7, 0x41

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :cond_f
    if-eq v7, v13, :cond_11

    .line 201
    .line 202
    if-eq v7, v12, :cond_10

    .line 203
    .line 204
    packed-switch v7, :pswitch_data_3

    .line 205
    .line 206
    .line 207
    goto/16 :goto_5

    .line 208
    .line 209
    :pswitch_e
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :pswitch_f
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 213
    .line 214
    :goto_c
    move-object v3, v2

    .line 215
    goto/16 :goto_5

    .line 216
    .line 217
    :pswitch_10
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 218
    .line 219
    goto :goto_c

    .line 220
    :cond_10
    aget v7, p1, v6

    .line 221
    .line 222
    int-to-char v7, v7

    .line 223
    invoke-virtual {v0, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_5

    .line 227
    .line 228
    :cond_11
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 229
    .line 230
    goto :goto_c

    .line 231
    :goto_d
    if-eqz v3, :cond_12

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    .line 234
    .line 235
    .line 236
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 237
    .line 238
    move-object v3, v4

    .line 239
    move-object v4, v7

    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_13
    return-object v2

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_5
    .end packed-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private static numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 8

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    :cond_0
    aget v4, p0, v1

    .line 9
    .line 10
    if-ge p1, v4, :cond_5

    .line 11
    .line 12
    if-nez v2, :cond_5

    .line 13
    .line 14
    add-int/lit8 v5, p1, 0x1

    .line 15
    .line 16
    aget v6, p0, p1

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-ne v5, v4, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_1
    const/16 v4, 0x384

    .line 23
    .line 24
    if-ge v6, v4, :cond_2

    .line 25
    .line 26
    aput v6, v0, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    :goto_1
    move p1, v5

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    if-eq v6, v4, :cond_3

    .line 33
    .line 34
    const/16 v4, 0x385

    .line 35
    .line 36
    if-eq v6, v4, :cond_3

    .line 37
    .line 38
    const/16 v4, 0x39f

    .line 39
    .line 40
    if-eq v6, v4, :cond_3

    .line 41
    .line 42
    const/16 v4, 0x3a0

    .line 43
    .line 44
    if-eq v6, v4, :cond_3

    .line 45
    .line 46
    packed-switch v6, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :pswitch_0
    const/4 v2, 0x1

    .line 51
    :goto_2
    rem-int/lit8 v4, v3, 0xf

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    const/16 v4, 0x386

    .line 56
    .line 57
    if-eq v6, v4, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    :cond_4
    if-lez v3, :cond_0

    .line 62
    .line 63
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p2, v3}, Lcom/google/zxing/common/ECIStringBuilder;->append(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    return p1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    sub-int v2, v1, p1

    .line 5
    .line 6
    mul-int/lit8 v2, v2, 0x2

    .line 7
    .line 8
    new-array v2, v2, [I

    .line 9
    .line 10
    sub-int/2addr v1, p1

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    new-array v1, v1, [I

    .line 14
    .line 15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    aget v6, p0, v0

    .line 20
    .line 21
    if-ge p1, v6, :cond_5

    .line 22
    .line 23
    if-nez v4, :cond_5

    .line 24
    .line 25
    add-int/lit8 v6, p1, 0x1

    .line 26
    .line 27
    aget v7, p0, p1

    .line 28
    .line 29
    const/16 v8, 0x384

    .line 30
    .line 31
    if-ge v7, v8, :cond_0

    .line 32
    .line 33
    div-int/lit8 p1, v7, 0x1e

    .line 34
    .line 35
    aput p1, v2, v5

    .line 36
    .line 37
    add-int/lit8 p1, v5, 0x1

    .line 38
    .line 39
    rem-int/lit8 v7, v7, 0x1e

    .line 40
    .line 41
    aput v7, v2, p1

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    :goto_1
    move p1, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v9, 0x391

    .line 48
    .line 49
    if-eq v7, v9, :cond_4

    .line 50
    .line 51
    const/16 v9, 0x39f

    .line 52
    .line 53
    if-eq v7, v9, :cond_2

    .line 54
    .line 55
    const/16 v9, 0x3a0

    .line 56
    .line 57
    if-eq v7, v9, :cond_1

    .line 58
    .line 59
    packed-switch v7, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    packed-switch v7, :pswitch_data_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_0
    add-int/lit8 p1, v5, 0x1

    .line 67
    .line 68
    aput v8, v2, v5

    .line 69
    .line 70
    move v5, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :pswitch_1
    const/4 v4, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    add-int/lit8 p1, p1, 0x2

    .line 79
    .line 80
    aget v2, p0, v6

    .line 81
    .line 82
    invoke-virtual {p2, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    .line 83
    .line 84
    .line 85
    aget v2, p0, v0

    .line 86
    .line 87
    if-gt p1, v2, :cond_3

    .line 88
    .line 89
    sub-int v3, v2, p1

    .line 90
    .line 91
    mul-int/lit8 v3, v3, 0x2

    .line 92
    .line 93
    new-array v3, v3, [I

    .line 94
    .line 95
    sub-int/2addr v2, p1

    .line 96
    mul-int/lit8 v2, v2, 0x2

    .line 97
    .line 98
    new-array v2, v2, [I

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    move-object v10, v3

    .line 102
    move-object v3, v1

    .line 103
    move-object v1, v2

    .line 104
    move-object v2, v10

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    :cond_4
    aput v9, v2, v5

    .line 112
    .line 113
    add-int/lit8 p1, p1, 0x2

    .line 114
    .line 115
    aget v6, p0, v6

    .line 116
    .line 117
    aput v6, v1, v5

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 123
    .line 124
    .line 125
    return p1

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
