.class public final Lcom/google/common/primitives/Shorts;
.super Lcom/google/common/primitives/ShortsMethodsForWeb;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$ShortArrayAsList;,
        Lcom/google/common/primitives/Shorts$LexicographicalComparator;,
        Lcom/google/common/primitives/Shorts$ShortConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/primitives/ShortsMethodsForWeb;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000([SSII)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100([SSII)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static checkedCast(J)S
    .locals 4

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-short v0, v0

    .line 3
    int-to-long v1, v0

    .line 4
    cmp-long v3, v1, p0

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x5f81ea47eeef42d4L    # 1.1728663372295818E152
        -0x54fc9986291dc9ccL
        -0x660acafd0fecdd72L    # -1.247738132789729E-183
    .end array-data
.end method

.method public static compare(SS)I
    .locals 0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static varargs concat([[S)[S
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    array-length v4, v4

    .line 10
    add-int/2addr v3, v4

    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-array v0, v3, [S

    .line 15
    .line 16
    array-length v2, p0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_1
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    array-length v6, v5

    .line 24
    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    array-length v5, v5

    .line 28
    add-int/2addr v4, v5

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    return-object v0
.end method

.method public static constrainToRange(SSS)S
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 22
    .line 23
    .line 24
    if-ge p0, p1, :cond_1

    .line 25
    .line 26
    move p0, p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-ge p0, p2, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move p0, p2

    .line 32
    :goto_1
    return p0

    .line 33
    :array_0
    .array-data 8
        -0x786e8d659d65405aL    # -3.225234694369023E-272
        0x5836411b876b8137L    # 8.768651031223106E116
        -0x11c84e2300bb3c09L    # -8.565041273174751E222
        -0x13cbb72798a2bf25L    # -1.707192008554E213
        -0x2108694d088b167L
        0x8820aa69c6977a5L
        -0x277fe443e1615679L    # -2.0310428225683365E118
    .end array-data
.end method

.method public static contains([SS)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-short v3, p0, v2

    .line 7
    .line 8
    if-ne v3, p1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static ensureCapacity([SII)[S
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v5, v0, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    if-ltz p2, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    array-length v0, p0

    .line 47
    if-ge v0, p1, :cond_2

    .line 48
    .line 49
    add-int/2addr p1, p2

    .line 50
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_2
    return-object p0

    .line 55
    :array_0
    .array-data 8
        -0xffd7d6a675e22e9L    # -3.592157202712937E231
        0x8db9ba50942eda7L
        -0x67421eaf785c2063L
        -0x7de3ced4760aa58bL
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        0x4b6491e90328a230L    # 1.5761687318197703E55
        -0x34bafb2421d5aa90L    # -4.026436624523413E54
        -0x79de289d92bb60a9L    # -3.931530368492156E-279
        -0x59b357d491be7db4L    # -3.386734876262643E-124
    .end array-data
.end method

.method public static fromByteArray([B)S
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    if-lt v0, v3, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    new-array v5, v5, [J

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    array-length v5, p0

    .line 26
    invoke-static {v0, v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    aget-byte v0, p0, v1

    .line 30
    .line 31
    aget-byte p0, p0, v2

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x5f917e4fd28c445cL
        -0x3ddcc58fc60f3919L    # -4.129240600838848E10
        -0x7e8a0029193a165cL
        0x46ccdd3cd27b690cL    # 1.1708714327513989E33
    .end array-data
.end method

.method public static fromBytes(BB)S
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static hashCode(S)I
    .locals 0

    return p0
.end method

.method public static indexOf([SS)I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result p0

    return p0
.end method

.method private static indexOf([SSII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    aget-short v0, p0, p2

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([S[S)I
    .locals 5

    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    .line 7
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    add-int v3, v0, v2

    .line 8
    aget-short v3, p0, v3

    aget-short v4, p1, v2

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    const/4 p0, -0x1

    return p0

    nop

    :array_0
    .array-data 8
        -0x874b81f4a25016eL    # -7.037247533028352E267
        -0x877921788cbd867L    # -6.301699506812073E267
    .end array-data

    :array_1
    .array-data 8
        0x32d11d57f6c4c460L    # 6.500522665319353E-64
        -0x37295a30dcaf1854L    # -7.891568858428582E42
    .end array-data
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    array-length v2, p1

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array p1, v1, [J

    .line 12
    .line 13
    const-wide v1, -0x5e8d029a1ddd5fe5L    # -1.485126147204491E-147

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    aput-wide v1, p1, v0

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    array-length v3, p1

    .line 31
    mul-int/lit8 v3, v3, 0x6

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    .line 36
    aget-short v0, p1, v0

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    :goto_0
    array-length v3, p1

    .line 43
    if-ge v0, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    aget-short v3, p1, v0

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    add-int/2addr v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static lastIndexOf([SS)I
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result p0

    return p0
.end method

.method private static lastIndexOf([SSII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 2
    aget-short v0, p0, p3

    if-ne v0, p1, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[S>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static varargs max([S)S
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Available in GWT! Annotation is to avoid conflict with GWT specialization of base class."
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    aget-short v0, p0, v1

    .line 13
    .line 14
    :goto_1
    array-length v1, p0

    .line 15
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    aget-short v1, p0, v2

    .line 18
    .line 19
    if-le v1, v0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    return v0
.end method

.method public static varargs min([S)S
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Available in GWT! Annotation is to avoid conflict with GWT specialization of base class."
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    aget-short v0, p0, v1

    .line 13
    .line 14
    :goto_1
    array-length v1, p0

    .line 15
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    aget-short v1, p0, v2

    .line 18
    .line 19
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    return v0
.end method

.method public static reverse([S)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    return-void
.end method

.method public static reverse([SII)V
    .locals 2

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 5
    aget-short v0, p0, p1

    .line 6
    aget-short v1, p0, p2

    aput-short v1, p0, p1

    .line 7
    aput-short v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static saturatedCast(J)S
    .locals 3

    const-wide/16 v0, 0x7fff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/16 p0, 0x7fff

    return p0

    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/16 p0, -0x8000

    return p0

    :cond_1
    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method public static sortDescending([S)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/primitives/Shorts;->sortDescending([SII)V

    return-void
.end method

.method public static sortDescending([SII)V
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 5
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([SII)V

    .line 6
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Shorts;->reverse([SII)V

    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    .line 2
    .line 3
    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length v0, p0

    .line 17
    new-array v1, v0, [S

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    .line 22
    aget-object v3, p0, v2

    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aput-short v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1
.end method

.method public static toByteArray(S)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    shr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    int-to-byte p0, p0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-byte v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-byte p0, v1, v0

    .line 13
    .line 14
    return-object v1
.end method
