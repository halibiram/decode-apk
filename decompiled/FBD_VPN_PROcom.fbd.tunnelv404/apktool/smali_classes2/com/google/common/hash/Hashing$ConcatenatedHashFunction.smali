.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatenatedHashFunction"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 8

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v7, 0xa

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v7

    .line 6
    invoke-static {v5, v6, v7, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x24d43314209b967aL
        0x21679bacfe69ba5fL    # 9.231522419682546E-148
        -0x33d5d3ee73482ca6L    # -8.214260145310777E58
        -0x222aff48c78949caL    # -1.0244601109947247E144
        0x43c1e6fb5651d298L
        -0x754c2e2c904536b6L    # -4.124955895464524E-257
        -0x1d6560c47270c0fL    # -5.370910765769506E299
        0x368bc1166b8d8649L    # 6.0768727495250715E-46
        0x439b29309f4e34c9L    # 4.8928724345980166E17
        0x64ccf55cce181147L    # 3.6670998565484335E177
    .end array-data
.end method

.method public synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-interface {v4}, Lcom/google/common/hash/HashFunction;->bits()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    add-int/2addr v3, v4

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget-object v4, p1, v2

    .line 15
    .line 16
    invoke-interface {v4}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->bits()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    div-int/lit8 v5, v5, 0x8

    .line 25
    .line 26
    invoke-virtual {v4, v0, v3, v5}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v3, v4

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method
