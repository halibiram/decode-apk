.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final END_PATTERN:[I

.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.48f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0, v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 7
    .line 8
    filled-new-array {v0, v0, v0, v0, v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v2, v1, [I

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    new-array v3, v2, [[I

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x2

    .line 28
    filled-new-array {v4, v5, v0, v0}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x0

    .line 33
    aput-object v6, v3, v7

    .line 34
    .line 35
    filled-new-array {v5, v5, v5, v0}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    aput-object v6, v3, v0

    .line 40
    .line 41
    filled-new-array {v5, v0, v5, v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    aput-object v6, v3, v5

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    filled-new-array {v0, v6, v0, v0}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    aput-object v8, v3, v4

    .line 53
    .line 54
    filled-new-array {v0, v0, v4, v5}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    aput-object v8, v3, v6

    .line 59
    .line 60
    filled-new-array {v0, v5, v4, v0}, [I

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/4 v9, 0x5

    .line 65
    aput-object v8, v3, v9

    .line 66
    .line 67
    filled-new-array {v0, v0, v0, v6}, [I

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    aput-object v6, v3, v1

    .line 72
    .line 73
    filled-new-array {v0, v4, v0, v5}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v6, 0x7

    .line 78
    aput-object v1, v3, v6

    .line 79
    .line 80
    filled-new-array {v0, v5, v0, v4}, [I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/16 v6, 0x8

    .line 85
    .line 86
    aput-object v1, v3, v6

    .line 87
    .line 88
    filled-new-array {v4, v0, v0, v5}, [I

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/16 v4, 0x9

    .line 93
    .line 94
    aput-object v1, v3, v4

    .line 95
    .line 96
    sput-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 97
    .line 98
    const/16 v1, 0x14

    .line 99
    .line 100
    new-array v4, v1, [[I

    .line 101
    .line 102
    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 103
    .line 104
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    .line 107
    const/16 v3, 0xa

    .line 108
    .line 109
    :goto_0
    if-ge v3, v1, :cond_1

    .line 110
    .line 111
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 112
    .line 113
    add-int/lit8 v5, v3, -0xa

    .line 114
    .line 115
    aget-object v4, v4, v5

    .line 116
    .line 117
    array-length v5, v4

    .line 118
    new-array v5, v5, [I

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    :goto_1
    array-length v8, v4

    .line 122
    if-ge v6, v8, :cond_0

    .line 123
    .line 124
    array-length v8, v4

    .line 125
    sub-int/2addr v8, v6

    .line 126
    sub-int/2addr v8, v0

    .line 127
    aget v8, v4, v8

    .line 128
    .line 129
    aput v8, v5, v6

    .line 130
    .line 131
    add-int/2addr v6, v0

    .line 132
    goto :goto_1

    .line 133
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 134
    .line 135
    aput-object v5, v4, v3

    .line 136
    .line 137
    add-int/2addr v3, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    return-void

    .line 140
    nop

    .line 141
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 19
    .line 20
    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 26
    .line 27
    return-void
.end method

.method public static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v0, v2

    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0xa

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-ne p0, v3, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 4

    .line 1
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 2
    .line 3
    .line 4
    array-length p0, p3

    .line 5
    const p2, 0x3ef5c28f    # 0.48f

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p0, :cond_1

    .line 11
    .line 12
    aget-object v2, p3, v1

    .line 13
    .line 14
    const v3, 0x3f333333    # 0.7f

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v3}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    cmpg-float v3, v2, p2

    .line 22
    .line 23
    if-gez v3, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    move p2, v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ltz v0, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method public static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 1

    .line 1
    array-length v0, p3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    .line 4
    :goto_0
    array-length v1, p3

    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    :goto_1
    if-ge p1, v0, :cond_4

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v3, :cond_1

    .line 6
    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_3

    const v5, 0x3f333333    # 0.7f

    .line 7
    invoke-static {p4, p3, v5}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    move-result v5

    const v7, 0x3ef5c28f    # 0.48f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    .line 8
    filled-new-array {p2, p1}, [I

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    aget v5, p4, v2

    aget v7, p4, v6

    add-int/2addr v5, v7

    add-int/2addr p2, v5

    add-int/lit8 v5, v4, -0x1

    const/4 v7, 0x2

    .line 10
    invoke-static {p4, v7, p4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    aput v2, p4, v5

    .line 12
    aput v2, p4, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 13
    :goto_2
    aput v6, p4, v4

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 7

    .line 1
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-nez v3, :cond_1

    .line 11
    .line 12
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 13
    .line 14
    array-length v5, v2

    .line 15
    invoke-static {v0, v1, v5, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v4, v1, v2, v0}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    aget v4, v2, v1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aget v5, v2, v5

    .line 26
    .line 27
    sub-int v6, v5, v4

    .line 28
    .line 29
    sub-int v6, v4, v6

    .line 30
    .line 31
    if-ltz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v6, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_0
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v2
.end method

.method public static getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/16 v3, 0x9

    .line 9
    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    add-int/lit8 v4, v4, -0x30

    .line 17
    .line 18
    if-ltz v4, :cond_0

    .line 19
    .line 20
    if-gt v4, v3, :cond_0

    .line 21
    .line 22
    add-int/2addr v2, v4

    .line 23
    add-int/lit8 v1, v1, -0x2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0

    .line 31
    :cond_1
    mul-int/lit8 v2, v2, 0x3

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x2

    .line 34
    .line 35
    :goto_1
    if-ltz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/lit8 v1, v1, -0x30

    .line 42
    .line 43
    if-ltz v1, :cond_2

    .line 44
    .line 45
    if-gt v1, v3, :cond_2

    .line 46
    .line 47
    add-int/2addr v2, v1

    .line 48
    add-int/lit8 v0, v0, -0x2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_3
    rsub-int p0, v2, 0x3e8

    .line 57
    .line 58
    rem-int/lit8 p0, p0, 0xa

    .line 59
    .line 60
    return p0
.end method


# virtual methods
.method public checkChecksum(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 3
    .line 4
    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p4, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 2
    :cond_0
    sget-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 3
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    .line 4
    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v7, p3, v1

    aget v8, p3, v2

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 5
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    invoke-virtual {p0, p2, p3, v6}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v7

    if-eqz v4, :cond_2

    .line 8
    new-instance v8, Lcom/google/zxing/ResultPoint;

    int-to-float v9, v7

    int-to-float v10, p1

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v8}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 9
    :cond_2
    invoke-virtual {p0, p2, v7}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v7

    if-eqz v4, :cond_3

    .line 10
    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v9, v7, v1

    aget v10, v7, v2

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v5

    int-to-float v10, p1

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v8}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 11
    :cond_3
    aget v4, v7, v2

    .line 12
    aget v8, v7, v1

    sub-int v8, v4, v8

    add-int/2addr v8, v4

    .line 13
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    if-ge v8, v9, :cond_d

    invoke-virtual {p2, v4, v8, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x8

    if-lt v6, v8, :cond_c

    .line 16
    invoke-virtual {p0, v4}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 17
    aget v6, p3, v2

    aget p3, p3, v1

    add-int/2addr v6, p3

    int-to-float p3, v6

    div-float/2addr p3, v5

    .line 18
    aget v6, v7, v2

    aget v8, v7, v1

    add-int/2addr v6, v8

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 19
    invoke-virtual {p0}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    .line 20
    new-instance v8, Lcom/google/zxing/Result;

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v10, p1

    invoke-direct {v9, p3, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v6, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v6, v0, [Lcom/google/zxing/ResultPoint;

    aput-object v9, v6, v1

    aput-object p3, v6, v2

    invoke-direct {v8, v4, v3, v6, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 21
    :try_start_0
    iget-object p3, p0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    aget v6, v7, v2

    invoke-virtual {p3, p1, p2, v6}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object p1

    .line 22
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p2, p3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v8, p2}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 24
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p2

    invoke-virtual {v8, p2}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 p1, 0x0

    :goto_1
    if-nez p4, :cond_4

    goto :goto_2

    .line 26
    :cond_4
    sget-object p2, Lcom/google/zxing/DecodeHintType;->ALLOWED_EAN_EXTENSIONS:Lcom/google/zxing/DecodeHintType;

    .line 27
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [I

    :goto_2
    if-eqz v3, :cond_7

    .line 28
    array-length p2, v3

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p2, :cond_6

    aget p4, v3, p3

    if-ne p1, p4, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr p3, v2

    goto :goto_3

    .line 29
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 30
    :cond_7
    :goto_4
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, p1, :cond_8

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, p1, :cond_9

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-virtual {p1, v4}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 32
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v8, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 33
    :cond_9
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, p1, :cond_a

    const/4 v1, 0x4

    .line 34
    :cond_a
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array p4, v0, [J

    fill-array-data p4, :array_0

    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v8

    .line 35
    :cond_b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    .line 36
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1

    .line 37
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :array_0
    .array-data 8
        0x5929c3da604386afL    # 3.326589977759919E121
        0x2ef53071b48511f9L    # 1.7451649192740234E-82
    .end array-data
.end method

.method public abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
