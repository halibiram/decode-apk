.class final Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LockFreeBitArray"
.end annotation


# static fields
.field private static final LONG_ADDRESSABLE_BITS:I = 0x6


# instance fields
.field private final bitCount:Lcom/google/common/hash/LongAddable;

.field final data:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method public constructor <init>(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    const-wide/16 v1, 0x40

    sget-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 4
    invoke-static {p1, p2, v1, v2, v3}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 5
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    return-void

    :array_0
    .array-data 8
        0x19017735ba1d7026L
        -0x29540cd78f3b1dd9L    # -3.282068980607119E109
        0x79359b747048f41eL    # 7.480927591206671E275
        0x4880d3e7961743b4L    # 1.8323799816398706E41
    .end array-data
.end method

.method public constructor <init>([J)V
    .locals 7

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 9
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 10
    array-length v1, p1

    const-wide/16 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-wide v5, p1, v2

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-int/2addr v2, v0

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {p1, v3, v4}, Lcom/google/common/hash/LongAddable;->add(J)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x426cf9a4b051047L    # -3.835550322783846E288
        0x3c32b38598e9d27eL    # 1.0137971887377937E-18
        -0x65d59727cd6362caL
        0x2cfca0804aa128d0L    # 5.489547279463991E-92
    .end array-data
.end method

.method public static toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [J

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    aput-wide v3, v1, v2

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bitCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/hash/LongAddable;->sum()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public bitSize()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    const-wide/16 v2, 0x40

    .line 9
    .line 10
    mul-long v0, v0, v2

    .line 11
    .line 12
    return-wide v0
.end method

.method public copy()Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public dataLength()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public get(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    ushr-long v1, p1, v1

    .line 5
    .line 6
    long-to-int v2, v1

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    long-to-int p2, p1

    .line 14
    shl-long p1, v2, p2

    .line 15
    .line 16
    and-long/2addr p1, v0

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long v2, p1, v0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public putAll(Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget-object v2, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v4, 0x7

    .line 23
    new-array v4, v4, [J

    .line 24
    .line 25
    fill-array-data v4, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-static {v1, v2, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ge v3, v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    invoke-virtual {p0, v3, v1, v2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->putData(IJ)V

    .line 65
    .line 66
    .line 67
    add-int/2addr v3, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x2f5a0935acac92d6L    # 1.3723820240744225E-80
        -0x760dd938babea1f1L    # -9.223075426526065E-261
        -0x44c2980280472d0eL    # -2.4324248319743263E-23
        -0x5ba55ba8e61bcb09L
        -0x431722ba098798f0L    # -2.760497252698595E-15
        -0x27e23ce011ddce0eL    # -2.9317265597590675E116
        0x6322020959f312d9L    # 3.398067311842727E169
    .end array-data
.end method

.method public putData(IJ)V
    .locals 11

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v7

    .line 7
    or-long v9, v7, p2

    .line 8
    .line 9
    cmp-long v0, v7, v9

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 15
    .line 16
    move v2, p1

    .line 17
    move-wide v3, v7

    .line 18
    move-wide v5, v9

    .line 19
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v9, v10}, Ljava/lang/Long;->bitCount(J)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Long;->bitCount(J)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    sub-int/2addr p1, p2

    .line 34
    iget-object p2, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 35
    .line 36
    int-to-long v0, p1

    .line 37
    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/LongAddable;->add(J)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public set(J)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x6

    .line 10
    ushr-long v2, p1, v0

    .line 11
    .line 12
    long-to-int v0, v2

    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    long-to-int p2, p1

    .line 16
    shl-long p1, v2, p2

    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    or-long v8, v6, p1

    .line 25
    .line 26
    cmp-long v2, v6, v8

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 32
    .line 33
    move v5, v0

    .line 34
    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/google/common/hash/LongAddable;->increment()V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1
.end method
