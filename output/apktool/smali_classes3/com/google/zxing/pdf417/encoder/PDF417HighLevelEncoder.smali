.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_COMPACTION:I = 0x1

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    new-array v4, v2, [B

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 13
    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_1

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 28
    .line 29
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    sput-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 38
    .line 39
    array-length v4, v2

    .line 40
    if-ge v1, v4, :cond_1

    .line 41
    .line 42
    aget-byte v2, v2, v1

    .line 43
    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    sget-object v4, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 47
    .line 48
    int-to-byte v5, v1

    .line 49
    aput-byte v5, v4, v2

    .line 50
    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 55
    .line 56
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 57
    .line 58
    .line 59
    :goto_1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 60
    .line 61
    array-length v1, v0

    .line 62
    if-ge v3, v1, :cond_3

    .line 63
    .line 64
    aget-byte v0, v0, v3

    .line 65
    .line 66
    if-lez v0, :cond_2

    .line 67
    .line 68
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 69
    .line 70
    int-to-byte v2, v3

    .line 71
    aput-byte v2, v1, v0

    .line 72
    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    return-void

    .line 77
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
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
    nop

    .line 97
    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
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

.method private static determineConsecutiveBinaryCount(Lcom/google/zxing/common/ECIInput;ILjava/nio/charset/Charset;)I
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    move v1, p1

    .line 14
    :goto_1
    if-ge v1, v0, :cond_6

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v1

    .line 18
    :cond_1
    const/16 v4, 0xd

    .line 19
    .line 20
    if-ge v2, v4, :cond_2

    .line 21
    .line 22
    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    invoke-interface {p0, v3}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    add-int v3, v1, v2

    .line 41
    .line 42
    if-lt v3, v0, :cond_1

    .line 43
    .line 44
    :cond_2
    if-lt v2, v4, :cond_3

    .line 45
    .line 46
    sub-int/2addr v1, p1

    .line 47
    return v1

    .line 48
    :cond_3
    if-eqz p2, :cond_5

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p2, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v1, 0x6

    .line 75
    new-array v1, v1, [J

    .line 76
    .line 77
    fill-array-data v1, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    const/4 v1, 0x3

    .line 96
    new-array v1, v1, [J

    .line 97
    .line 98
    fill-array-data v1, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 p0, 0x29

    .line 115
    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    sub-int/2addr v1, p1

    .line 131
    return v1

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x105be0a8f1b9a4d7L    # 7.182545059605229E-230
        0x4d3ffed2fe284fcfL    # 1.3162147005768538E64
        -0x78c32075252eb4b3L    # -8.339481732473314E-274
        -0x723a50790a0f9b7aL
        0x422ed953f0f31888L    # 6.624758796154791E10
        0x481fabf4cae712c1L    # 2.6943305994040113E39
    .end array-data

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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
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
    :array_1
    .array-data 8
        -0x44f3c1ae9d8d2dafL    # -2.9203021467134373E-24
        -0x584a3d0ca2473245L    # -2.157401844069345E-117
        -0x24a6d9809cbb4863L    # -1.1157391996664361E132
    .end array-data
.end method

.method private static determineConsecutiveDigitCount(Lcom/google/zxing/common/ECIInput;I)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    :goto_0
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v1
.end method

.method private static determineConsecutiveTextCount(Lcom/google/zxing/common/ECIInput;I)I
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move v1, p1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_1
    const/16 v3, 0xd

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    if-lt v2, v3, :cond_1

    .line 37
    .line 38
    sub-int/2addr v1, p1

    .line 39
    sub-int/2addr v1, v2

    .line 40
    return v1

    .line 41
    :cond_1
    if-lez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_2
    sub-int/2addr v1, p1

    .line 65
    return v1
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const/16 p3, 0x391

    .line 7
    .line 8
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    rem-int/lit8 p3, p2, 0x6

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    const/16 p3, 0x39c

    .line 17
    .line 18
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p3, 0x385

    .line 23
    .line 24
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 p3, 0x6

    .line 28
    if-lt p2, p3, :cond_5

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    new-array v1, v0, [C

    .line 32
    .line 33
    move v2, p1

    .line 34
    :goto_1
    add-int v3, p1, p2

    .line 35
    .line 36
    sub-int/2addr v3, v2

    .line 37
    if-lt v3, p3, :cond_6

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    :goto_2
    if-ge v6, p3, :cond_2

    .line 44
    .line 45
    const/16 v7, 0x8

    .line 46
    .line 47
    shl-long/2addr v4, v7

    .line 48
    add-int v7, v2, v6

    .line 49
    .line 50
    aget-byte v7, p0, v7

    .line 51
    .line 52
    and-int/lit16 v7, v7, 0xff

    .line 53
    .line 54
    int-to-long v7, v7

    .line 55
    add-long/2addr v4, v7

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_3
    if-ge v3, v0, :cond_3

    .line 60
    .line 61
    const-wide/16 v6, 0x384

    .line 62
    .line 63
    rem-long v8, v4, v6

    .line 64
    .line 65
    long-to-int v9, v8

    .line 66
    int-to-char v8, v9

    .line 67
    aput-char v8, v1, v3

    .line 68
    .line 69
    div-long/2addr v4, v6

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    const/4 v3, 0x4

    .line 74
    :goto_4
    if-ltz v3, :cond_4

    .line 75
    .line 76
    aget-char v4, v1, v3

    .line 77
    .line 78
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    add-int/lit8 v2, v2, 0x6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    move v2, p1

    .line 88
    :cond_6
    :goto_5
    add-int p3, p1, p2

    .line 89
    .line 90
    if-ge v2, p3, :cond_7

    .line 91
    .line 92
    aget-byte p3, p0, v2

    .line 93
    .line 94
    and-int/lit16 p3, p3, 0xff

    .line 95
    .line 96
    int-to-char p3, p3

    .line 97
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    return-void
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0xd

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x1

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    if-nez v6, :cond_18

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-ge v7, v8, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    const/16 v9, 0xff

    .line 33
    .line 34
    if-gt v8, v9, :cond_0

    .line 35
    .line 36
    add-int/2addr v7, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Lcom/google/zxing/WriterException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v6, 0x6

    .line 48
    new-array v6, v6, [J

    .line 49
    .line 50
    fill-array-data v6, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v4, v4, [J

    .line 73
    .line 74
    fill-array-data v4, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v5, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v3, v3, [J

    .line 97
    .line 98
    fill-array-data v3, :array_2

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    if-eqz p3, :cond_2

    .line 123
    .line 124
    new-instance v9, Lcom/google/zxing/common/MinimalECIInput;

    .line 125
    .line 126
    const/4 v10, -0x1

    .line 127
    invoke-direct {v9, v0, v1, v10}, Lcom/google/zxing/common/MinimalECIInput;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v9, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;

    .line 132
    .line 133
    invoke-direct {v9, v0, v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;-><init>(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;)V

    .line 134
    .line 135
    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 139
    .line 140
    move-object v1, v0

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-static {v0, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_1
    invoke-interface {v9}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    .line 168
    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    aget v10, v10, v11

    .line 174
    .line 175
    if-eq v10, v5, :cond_16

    .line 176
    .line 177
    const/4 v11, 0x2

    .line 178
    if-eq v10, v11, :cond_14

    .line 179
    .line 180
    const/16 v12, 0x386

    .line 181
    .line 182
    if-eq v10, v4, :cond_13

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v13, 0x0

    .line 187
    :goto_2
    if-ge v4, v0, :cond_17

    .line 188
    .line 189
    :goto_3
    if-ge v4, v0, :cond_5

    .line 190
    .line 191
    invoke-interface {v9, v4}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-eqz v14, :cond_5

    .line 196
    .line 197
    invoke-interface {v9, v4}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    invoke-static {v14, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 202
    .line 203
    .line 204
    add-int/2addr v4, v5

    .line 205
    goto :goto_3

    .line 206
    :cond_5
    if-lt v4, v0, :cond_6

    .line 207
    .line 208
    goto/16 :goto_a

    .line 209
    .line 210
    :cond_6
    invoke-static {v9, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Lcom/google/zxing/common/ECIInput;I)I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    if-lt v14, v3, :cond_7

    .line 215
    .line 216
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-static {v9, v4, v14, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    .line 220
    .line 221
    .line 222
    add-int/2addr v4, v14

    .line 223
    const/4 v10, 0x0

    .line 224
    const/4 v13, 0x2

    .line 225
    goto/16 :goto_9

    .line 226
    .line 227
    :cond_7
    invoke-static {v9, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Lcom/google/zxing/common/ECIInput;I)I

    .line 228
    .line 229
    .line 230
    move-result v15

    .line 231
    if-ge v15, v2, :cond_11

    .line 232
    .line 233
    if-ne v14, v0, :cond_8

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_8
    if-eqz p3, :cond_9

    .line 237
    .line 238
    move-object v14, v8

    .line 239
    goto :goto_4

    .line 240
    :cond_9
    move-object v14, v1

    .line 241
    :goto_4
    invoke-static {v9, v4, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Lcom/google/zxing/common/ECIInput;ILjava/nio/charset/Charset;)I

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    if-nez v14, :cond_a

    .line 246
    .line 247
    const/4 v14, 0x1

    .line 248
    :cond_a
    if-eqz p3, :cond_b

    .line 249
    .line 250
    move-object v15, v8

    .line 251
    goto :goto_5

    .line 252
    :cond_b
    add-int v15, v4, v14

    .line 253
    .line 254
    invoke-interface {v9, v4, v15}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v15

    .line 262
    invoke-virtual {v15, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 263
    .line 264
    .line 265
    move-result-object v15

    .line 266
    :goto_5
    if-nez v15, :cond_c

    .line 267
    .line 268
    if-eq v14, v5, :cond_d

    .line 269
    .line 270
    :cond_c
    if-eqz v15, :cond_f

    .line 271
    .line 272
    array-length v3, v15

    .line 273
    if-ne v3, v5, :cond_f

    .line 274
    .line 275
    :cond_d
    if-nez v13, :cond_f

    .line 276
    .line 277
    if-eqz p3, :cond_e

    .line 278
    .line 279
    invoke-static {v9, v4, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    .line 280
    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_e
    invoke-static {v15, v6, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_f
    if-eqz p3, :cond_10

    .line 288
    .line 289
    add-int v3, v4, v14

    .line 290
    .line 291
    invoke-static {v9, v4, v3, v13, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_10
    array-length v3, v15

    .line 296
    invoke-static {v15, v6, v3, v13, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 297
    .line 298
    .line 299
    :goto_6
    const/4 v10, 0x0

    .line 300
    const/4 v13, 0x1

    .line 301
    :goto_7
    add-int/2addr v4, v14

    .line 302
    goto :goto_9

    .line 303
    :cond_11
    :goto_8
    if-eqz v13, :cond_12

    .line 304
    .line 305
    const/16 v3, 0x384

    .line 306
    .line 307
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const/4 v10, 0x0

    .line 311
    const/4 v13, 0x0

    .line 312
    :cond_12
    invoke-static {v9, v4, v15, v7, v10}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    add-int/2addr v4, v15

    .line 317
    move v10, v3

    .line 318
    :goto_9
    const/16 v3, 0xd

    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_13
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-static {v9, v6, v0, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    .line 326
    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_14
    if-eqz p3, :cond_15

    .line 330
    .line 331
    invoke-interface {v9}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    invoke-static {v9, v6, v0, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V

    .line 336
    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_15
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    array-length v1, v0

    .line 348
    invoke-static {v0, v6, v1, v5, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 349
    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_16
    invoke-static {v9, v6, v0, v7, v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I

    .line 353
    .line 354
    .line 355
    :cond_17
    :goto_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    return-object v0

    .line 360
    :cond_18
    new-instance v0, Lcom/google/zxing/WriterException;

    .line 361
    .line 362
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array v2, v2, [J

    .line 365
    .line 366
    fill-array-data v2, :array_3

    .line 367
    .line 368
    .line 369
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    nop

    .line 381
    :array_0
    .array-data 8
        0x3882f6af21a6bf6aL    # 1.783329294710751E-36
        0x586fcd7d37d81088L    # 1.0024718915018811E118
        -0x7651bad7197b126aL    # -4.80649433780373E-262
        -0x3b0d3f7c61eca956L    # -1.4168616894869452E24
        0x52a51e24a822f41aL    # 1.3443003140120033E90
        -0x2817b95740f46dc7L    # -2.9891362174374416E115
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_1
    .array-data 8
        -0x5dcddef71a9f9e51L    # -5.807335760717072E-144
        0x45c9ccc8b3de6ffL
        -0x1e7d71d1a554d449L    # -5.217445104216559E161
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_2
    .array-data 8
        0x229fedcc192fccaaL    # 6.54584852653445E-142
        -0x53c6f66cfe2ac851L    # -1.172170007597718E-95
        -0x213a1b5dd6576556L    # -3.499251268369164E148
        0xc0e6cbc1f97648aL
        0x3b8ff41eece16776L    # 8.4580466697048255E-22
        0x272e694b9ce303b0L    # 5.888529663304849E-120
        -0x749c957de7c0f73fL    # -8.275885848496062E-254
        -0x2be372b87fd8e564L    # -1.5246607251004506E97
        0x486e3de4a979bc74L    # 8.232592957141547E40
        0x745b3ace21b3a5b5L    # 3.119315943863472E252
        -0x7d1f04b705150b4L    # -7.940623110203207E270
        -0x58d17ab4854368f0L    # -5.90970750620531E-120
        -0x6cd31fcf52cc51c1L
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    :array_3
    .array-data 8
        0x748a142cc37ddcdbL    # 2.3899791287527845E253
        -0x44fedadbd74ccff1L    # -1.772760031481687E-24
        -0x2ae3c99156a18cf8L    # -9.873293888333046E101
        -0x77d45dc617171758L    # -2.615368369806782E-269
        -0x161164c435f73184L    # -1.8742136172261835E202
    .end array-data
.end method

.method private static encodeMultiECIBinary(Lcom/google/zxing/common/ECIInput;IIILjava/lang/StringBuilder;)V
    .locals 5

    .line 1
    add-int/2addr p2, p1

    .line 2
    invoke-interface {p0}, Lcom/google/zxing/common/ECIInput;->length()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    move v0, p1

    .line 11
    :goto_0
    if-ge v0, p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p0, v0}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1, p4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v0

    .line 30
    :goto_1
    if-ge v1, p2, :cond_1

    .line 31
    .line 32
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-int v2, v1, v0

    .line 42
    .line 43
    if-gtz v2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->subBytes(Lcom/google/zxing/common/ECIInput;II)[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-ne v0, p1, :cond_3

    .line 51
    .line 52
    move v0, p3

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 v0, 0x1

    .line 55
    :goto_2
    const/4 v4, 0x0

    .line 56
    invoke-static {v3, v4, v2, v0, p4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 57
    .line 58
    .line 59
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private static encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    div-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x384

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, p2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    .line 28
    .line 29
    const/16 v5, 0x2c

    .line 30
    .line 31
    sub-int v6, p2, v4

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    new-array v8, v8, [J

    .line 46
    .line 47
    fill-array-data v8, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int v7, p1, v4

    .line 61
    .line 62
    add-int v8, v7, v5

    .line 63
    .line 64
    invoke-interface {p0, v7, v8}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v7, Ljava/math/BigInteger;

    .line 76
    .line 77
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    int-to-char v6, v6

    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_0

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    add-int/lit8 v6, v6, -0x1

    .line 107
    .line 108
    :goto_1
    if-ltz v6, :cond_1

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v6, v6, -0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    add-int/2addr v4, v5

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-void

    .line 123
    :array_0
    .array-data 8
        -0x6fefff2bdaa48afcL
        0x21ad0e6622d319aaL
    .end array-data
.end method

.method private static encodeText(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move/from16 v5, p4

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    :cond_0
    :goto_0
    add-int v7, p1, v6

    .line 17
    .line 18
    invoke-interface {v0, v7}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v7}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-static {v7, v2}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0, v7}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    const/16 v9, 0x1a

    .line 39
    .line 40
    const/16 v10, 0x20

    .line 41
    .line 42
    const/16 v11, 0x1b

    .line 43
    .line 44
    const/16 v12, 0x1c

    .line 45
    .line 46
    const/16 v13, 0x1d

    .line 47
    .line 48
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x1

    .line 50
    if-eqz v5, :cond_d

    .line 51
    .line 52
    if-eq v5, v15, :cond_8

    .line 53
    .line 54
    if-eq v5, v14, :cond_3

    .line 55
    .line 56
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 63
    .line 64
    aget-byte v7, v7, v8

    .line 65
    .line 66
    int-to-char v7, v7

    .line 67
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :goto_1
    const/4 v5, 0x0

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 84
    .line 85
    aget-byte v7, v7, v8

    .line 86
    .line 87
    int-to-char v7, v7

    .line 88
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_4
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_6

    .line 108
    .line 109
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :goto_2
    const/4 v5, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    if-ge v7, v1, :cond_7

    .line 117
    .line 118
    invoke-interface {v0, v7}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-nez v9, :cond_7

    .line 123
    .line 124
    invoke-interface {v0, v7}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_7

    .line 133
    .line 134
    const/16 v5, 0x19

    .line 135
    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const/4 v5, 0x3

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 145
    .line 146
    aget-byte v7, v7, v8

    .line 147
    .line 148
    int-to-char v7, v7

    .line 149
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_8
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_a

    .line 159
    .line 160
    if-ne v8, v10, :cond_9

    .line 161
    .line 162
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    add-int/lit8 v8, v8, -0x61

    .line 167
    .line 168
    int-to-char v7, v8

    .line 169
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_a
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_b

    .line 178
    .line 179
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v8, v8, -0x41

    .line 183
    .line 184
    int-to-char v7, v8

    .line 185
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_b
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eqz v7, :cond_c

    .line 194
    .line 195
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :goto_3
    const/4 v5, 0x2

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_c
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 205
    .line 206
    aget-byte v7, v7, v8

    .line 207
    .line 208
    int-to-char v7, v7

    .line 209
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_d
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_f

    .line 218
    .line 219
    if-ne v8, v10, :cond_e

    .line 220
    .line 221
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_e
    add-int/lit8 v8, v8, -0x41

    .line 226
    .line 227
    int-to-char v7, v8

    .line 228
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_f
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-eqz v7, :cond_10

    .line 237
    .line 238
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_10
    invoke-static {v8}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_11

    .line 248
    .line 249
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_11
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    sget-object v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 257
    .line 258
    aget-byte v7, v7, v8

    .line 259
    .line 260
    int-to-char v7, v7

    .line 261
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 265
    .line 266
    if-lt v6, v1, :cond_0

    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    const/4 v1, 0x0

    .line 273
    :goto_5
    if-ge v4, v0, :cond_13

    .line 274
    .line 275
    rem-int/lit8 v6, v4, 0x2

    .line 276
    .line 277
    if-eqz v6, :cond_12

    .line 278
    .line 279
    mul-int/lit8 v1, v1, 0x1e

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    add-int/2addr v6, v1

    .line 286
    int-to-char v1, v6

    .line 287
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_13
    rem-int/2addr v0, v14

    .line 299
    if-eqz v0, :cond_14

    .line 300
    .line 301
    mul-int/lit8 v1, v1, 0x1e

    .line 302
    .line 303
    add-int/2addr v1, v13

    .line 304
    int-to-char v0, v1

    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    :cond_14
    return v5
.end method

.method private static encodingECI(ILjava/lang/StringBuilder;)V
    .locals 3

    .line 1
    const/16 v0, 0x384

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x39f

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    int-to-char p0, p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0xc5f94

    .line 18
    .line 19
    .line 20
    if-ge p0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x39e

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    div-int/lit16 v1, p0, 0x384

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    int-to-char v1, v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    rem-int/2addr p0, v0

    .line 36
    int-to-char p0, p0

    .line 37
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const v0, 0xc6318

    .line 42
    .line 43
    .line 44
    if-ge p0, v0, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x39d

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sub-int/2addr v1, p0

    .line 52
    int-to-char p0, v1

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :cond_2
    new-instance p1, Lcom/google/zxing/WriterException;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/16 v2, 0x8

    .line 67
    .line 68
    new-array v2, v2, [J

    .line 69
    .line 70
    fill-array-data v2, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0, p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        -0x7db4e016ece50693L
        0x23c810caa2cd0813L    # 2.586714645931591E-136
        0x7a66ed611e36b8f8L    # 4.161770992950981E281
        0xe400dfe229f0b6bL    # 4.81542420389645E-240
        0x57b9dee06f6e48e7L    # 3.9818516354849336E114
        0x6be2011eb87e75f2L    # 4.7352729688494975E211
        -0x55e04477e7df7fe1L    # -8.647417847277777E-106
        0x550fea116354a63aL    # 5.5843709324176106E101
    .end array-data
.end method

.method private static isAlphaLower(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isAlphaUpper(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isDigit(C)Z
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

.method private static isMixed(C)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 2
    .line 3
    aget-byte p0, v0, p0

    .line 4
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

.method private static isPunctuation(C)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 2
    .line 3
    aget-byte p0, v0, p0

    .line 4
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

.method private static isText(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static subBytes(Lcom/google/zxing/common/ECIInput;II)[B
    .locals 4

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    move v1, p1

    .line 6
    :goto_0
    if-ge v1, p2, :cond_0

    .line 7
    .line 8
    sub-int v2, v1, p1

    .line 9
    .line 10
    invoke-interface {p0, v1}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v0, v2

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method
