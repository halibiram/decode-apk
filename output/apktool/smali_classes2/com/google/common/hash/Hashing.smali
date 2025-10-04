.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Sha384Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;
    }
.end annotation


# static fields
.field static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v1, v0

    .line 6
    sput v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 7
    .line 8
    return-void
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

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    .line 4
    .line 5
    return-object v0
.end method

.method public static checkPositiveAndMakeMultipleOf32(I)I
    .locals 3

    .line 1
    if-lez p0, :cond_0

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
    const/4 v2, 0x5

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
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x1f

    .line 25
    .line 26
    and-int/lit8 p0, p0, -0x20

    .line 27
    .line 28
    return p0

    .line 29
    :array_0
    .array-data 8
        -0x55e222d8774a3b6L    # -5.189018917990016E282
        0x5d030b39e3b069d0L
        -0x75f3fa3bd6e9c1eaL
        -0x2176e26dfd88e051L    # -2.508937739954408E147
        -0x3b1056ea26e3c9acL    # -1.1960994803038426E24
    .end array-data
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x6

    .line 13
    new-array v4, v4, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    div-int/lit8 v1, v1, 0x8

    .line 39
    .line 40
    new-array v2, v1, [B

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/google/common/hash/HashCode;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->asBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    array-length v4, v3

    .line 63
    const/4 v5, 0x0

    .line 64
    if-ne v4, v1, :cond_1

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x0

    .line 69
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v7, 0x7

    .line 72
    new-array v7, v7, [J

    .line 73
    .line 74
    fill-array-data v7, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    array-length v4, v3

    .line 88
    if-ge v5, v4, :cond_0

    .line 89
    .line 90
    aget-byte v4, v2, v5

    .line 91
    .line 92
    mul-int/lit8 v4, v4, 0x25

    .line 93
    .line 94
    aget-byte v6, v3, v5

    .line 95
    .line 96
    xor-int/2addr v4, v6

    .line 97
    int-to-byte v4, v4

    .line 98
    aput-byte v4, v2, v5

    .line 99
    .line 100
    add-int/2addr v5, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :array_0
    .array-data 8
        0x44fa1b5a66a7aaedL    # 1.9725776755658325E24
        0x77f3c6ea61cfb940L    # 6.530055174071411E269
        -0x6f565b87f927c3b7L    # -2.114136024242188E-228
        0x2d812d1ccb3d132dL    # 1.6863934471068343E-89
        -0x44f40d747876c9d0L    # -2.889697727603611E-24
        -0x6678474449d7b26dL    # -1.090377605738708E-185
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
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
    .line 134
    .line 135
    :array_1
    .array-data 8
        -0x39c9bb34f3a62d3bL    # -1.7643100262483942E30
        -0x10d021c1d8da6032L
        0x587013e7298ba54L
        0x42d930a11d34c09aL    # 1.107866086817304E14
        -0x7cb80a83b8fc7a79L    # -7.502769465740375E-293
        -0x54a3890452edf8f5L    # -8.133720522220727E-100
        0x237722966b492a7dL    # 7.770939367588472E-138
    .end array-data
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x6

    .line 13
    new-array v4, v4, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->bits()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    div-int/lit8 v1, v1, 0x8

    .line 39
    .line 40
    new-array v2, v1, [B

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/google/common/hash/HashCode;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->asBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    array-length v4, v3

    .line 63
    const/4 v5, 0x0

    .line 64
    if-ne v4, v1, :cond_1

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x0

    .line 69
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v7, 0x7

    .line 72
    new-array v7, v7, [J

    .line 73
    .line 74
    fill-array-data v7, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    array-length v4, v3

    .line 88
    if-ge v5, v4, :cond_0

    .line 89
    .line 90
    aget-byte v4, v2, v5

    .line 91
    .line 92
    aget-byte v6, v3, v5

    .line 93
    .line 94
    add-int/2addr v4, v6

    .line 95
    int-to-byte v4, v4

    .line 96
    aput-byte v4, v2, v5

    .line 97
    .line 98
    add-int/2addr v5, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :array_0
    .array-data 8
        0x70c05f5c7cf37e8aL    # 1.3014328442115417E235
        -0x26942c18f2199b0fL    # -5.748655158230778E122
        -0x58e237215f3b11d2L    # -2.883594582240119E-120
        0x7ce170f1680fc8e1L    # 3.480981721644222E293
        0x32e017cb701e326bL    # 1.2224934211918213E-63
        0x6dd52546dda41192L    # 1.1943101016046502E221
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
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
    :array_1
    .array-data 8
        -0x53c2dabbeaf9f6baL    # -1.364501263847483E-95
        0x3678cae3f0b43d40L    # 2.7141991451997317E-46
        -0x4307a8b8dfd1d520L    # -5.404771972666039E-15
        -0x747fd845c43bf0bfL
        -0x5e7ed301a9ee292eL    # -2.686507067144773E-147
        -0x91f56074e690c30L    # -4.197823614244951E264
        -0x5e7e4d298c97a60eL
    .end array-data
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 5
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/common/hash/HashFunction;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/hash/HashFunction;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object p0
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashFunction;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x7

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 11
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/hash/HashFunction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/HashFunction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object p0

    :array_0
    .array-data 8
        0x6028f5ec7bceb19eL    # 1.6733373147795308E155
        0x35a48ac3edcd08bdL    # 2.7452036013534854E-50
        0x6bf65f1aa1b61c15L    # 1.1767713093831481E212
        0x7bb90245f242ae0fL    # 9.520288542509645E287
        -0x6dbb6b0fc78d5219L
        -0x4feb758a6f6f5b13L    # -4.434857452344657E-77
        -0x5a828af94d778dddL    # -4.24964192548301E-128
    .end array-data
.end method

.method public static consistentHash(JI)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 3
    new-instance v2, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v2, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    :goto_1
    add-int/lit8 p0, v1, 0x1

    int-to-double p0, p0

    .line 4
    invoke-virtual {v2}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v3

    div-double/2addr p0, v3

    double-to-int p0, p0

    if-ltz p0, :cond_1

    if-ge p0, p2, :cond_1

    move v1, p0

    goto :goto_1

    :cond_1
    return v1

    :array_0
    .array-data 8
        0x2339cd4b14faa070L    # 5.41669213485531E-139
        0x1071a351c6de718fL
        -0x5e6af401a2f021d3L    # -6.583991039158174E-147
        0x362a45b222eead64L    # 8.988101253366595E-48
        -0x482e500c6b8893f4L    # -8.121614670468023E-40
    .end array-data
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result p0

    return p0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    .line 4
    .line 5
    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static farmHashFingerprint64()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static fingerprint2011()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Fingerprint2011;->FINGERPRINT_2011:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/16 v0, 0x80

    .line 13
    .line 14
    if-gt p0, v0, :cond_1

    .line 15
    .line 16
    sget-object p0, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    add-int/lit8 p0, p0, 0x7f

    .line 20
    .line 21
    div-int/2addr p0, v0

    .line 22
    new-array v0, p0, [Lcom/google/common/hash/HashFunction;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    sget-object v2, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    :goto_0
    if-ge v2, p0, :cond_2

    .line 33
    .line 34
    const v3, 0x596f0ddf

    .line 35
    .line 36
    .line 37
    add-int/2addr v1, v3

    .line 38
    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    aput-object v3, v0, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x27c2b26825c296e2L    # -1.1546008621794426E117
        0x30600853ff460994L    # 1.1076771686621697E-75
    .end array-data

    :array_1
    .array-data 8
        -0x5f317fdb870486a8L    # -1.16471574053599E-150
        0x7f59cfb90396fa9eL    # 2.8320927035055636E305
    .end array-data
.end method

.method public static hmacMd5([B)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x7d16e279bd5fabecL    # 3.653931764643125E294
        0x1aba9fa841675357L    # 6.416088982671636E-180
    .end array-data
.end method

.method public static hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x73b9f53485b93322L
        0x4413dd879dc7cf8cL    # 9.16127595715564E19
    .end array-data

    :array_1
    .array-data 8
        0x2e04c53ea3eb22d2L    # 5.2205702309350985E-87
        0x754a5176cdc850c5L    # 9.879223622116116E256
    .end array-data
.end method

.method public static hmacSha1([B)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x772ea6e771067929L    # 1.2354482727261868E266
        0x460c34f8b1f00269L    # 2.7934780309995444E29
    .end array-data
.end method

.method public static hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x7dbe66910ebc8b71L    # -8.409514097548644E-298
        -0x789ec7a378ef691bL
        0x6e700eb9ecf324f2L    # 9.286998697631273E223
    .end array-data

    :array_1
    .array-data 8
        -0x1e531c47dee53f78L    # -3.2492874392083718E162
        -0x1762047094eb5520L    # -8.7548219364344E195
        -0x1bca6ef58932423L
    .end array-data
.end method

.method public static hmacSha256([B)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x3d27d27b8f335d15L    # -1.0633509831949967E14
        -0x77cf3779b6d8bee1L
        -0x37ed3f2ead24c796L    # -1.595345312584261E39
    .end array-data
.end method

.method public static hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        0x5525242a2334d5efL    # 1.479720117919226E102
        0x3d42c37f3005b1d6L    # 1.3332381938766802E-13
        0x249952ae310be0a4L    # 2.229752013478336E-132
    .end array-data

    :array_1
    .array-data 8
        -0x4025bd30b874bf0cL    # -0.4103277395888789
        0x3078db882e18f4fbL    # 3.4347834097013374E-75
        -0x7bc262e1d7b1160cL    # -3.038767286676375E-288
    .end array-data
.end method

.method public static hmacSha512([B)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x3c3a5dcddff3cd9aL    # -3.1177270684971694E18
        0x4170c00c8f954b85L    # 1.7563848973948974E7
        -0x70bfecf6282b9389L
    .end array-data
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x3

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p0, v2, v3

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    aput-object v1, v2, p0

    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    aput-object p1, v2, p0

    .line 35
    .line 36
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :array_0
    .array-data 8
        -0xe6c4a7fddb9ab5bL    # -1.2833965419161192E239
        0x333b5fc58eb8ed65L    # 6.654277100982379E-62
        -0x3d9bcb34533cc909L    # -6.942808734977177E11
        -0x475f1a605805198cL    # -6.355932715619688E-36
        0x7d30560b7890cfb3L    # 1.0433367006196505E295
        0x16c24c34a8bc3d4cL    # 4.78089127935155E-199
    .end array-data
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(IZ)V

    return-object v0
.end method

.method public static murmur3_32_fixed()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32_FIXED:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32_fixed(I)Lcom/google/common/hash/HashFunction;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(IZ)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8

    .line 2
    new-instance v7, Lcom/google/common/hash/SipHashFunction;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v7
.end method
