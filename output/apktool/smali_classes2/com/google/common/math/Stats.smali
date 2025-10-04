.class public final Lcom/google/common/math/Stats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final BYTES:I = 0x28

.field private static final serialVersionUID:J


# instance fields
.field private final count:J

.field private final max:D

.field private final mean:D

.field private final min:D

.field private final sumOfSquaresOfDeltas:D


# direct methods
.method public constructor <init>(JDDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/common/math/Stats;->count:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/common/math/Stats;->mean:D

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/google/common/math/Stats;->min:D

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/google/common/math/Stats;->max:D

    .line 13
    .line 14
    return-void
.end method

.method public static fromByteArray([B)Lcom/google/common/math/Stats;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v3, 0x7

    .line 15
    new-array v3, v3, [J

    .line 16
    .line 17
    fill-array-data v3, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length v3, p0

    .line 28
    invoke-static {v0, v2, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/google/common/math/Stats;->readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x5d8feead8cf75b63L    # 4.867418095440044E142
        0x2c5f3af2f8e46c75L    # 5.848400657286654E-95
        0x6cae2440a72a600cL    # 3.247082965406421E215
        -0x72c4596f5e48fa14L    # -6.327451067462003E-245
        0xb85ab4610b839ecL
        -0x75a5a2b2e005e728L    # -8.573587540168467E-259
        0x14e5d06fac9715a9L    # 5.308262307085287E-208
    .end array-data
.end method

.method public static meanOf(Ljava/lang/Iterable;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/math/Stats;->meanOf(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static meanOf(Ljava/util/Iterator;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x1

    move-wide v4, v2

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-long/2addr v4, v2

    .line 6
    invoke-static {v6, v7}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v8

    if-eqz v8, :cond_0

    sub-double/2addr v6, v0

    long-to-double v8, v4

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    move-wide v0, v6

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, v1, v6, v7}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static varargs meanOf([D)D
    .locals 7

    .line 8
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 9
    aget-wide v0, p0, v1

    .line 10
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 11
    aget-wide v3, p0, v2

    .line 12
    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v3, v0

    move-wide v0, v3

    goto :goto_2

    .line 13
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs meanOf([I)D
    .locals 7

    .line 14
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 15
    aget v0, p0, v1

    int-to-double v0, v0

    .line 16
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 17
    aget v3, p0, v2

    int-to-double v3, v3

    .line 18
    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v3, v0

    move-wide v0, v3

    goto :goto_2

    .line 19
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static varargs meanOf([J)D
    .locals 7

    .line 20
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 21
    aget-wide v0, p0, v1

    long-to-double v0, v0

    .line 22
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 23
    aget-wide v3, p0, v2

    long-to-double v3, v3

    .line 24
    invoke-static {v3, v4}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    sub-double/2addr v3, v0

    add-int/lit8 v5, v2, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    add-double/2addr v3, v0

    move-wide v0, v3

    goto :goto_2

    .line 25
    :cond_1
    invoke-static {v0, v1, v3, v4}, Lcom/google/common/math/StatsAccumulator;->calculateNewMeanNonFinite(DD)D

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static of(Ljava/lang/Iterable;)Lcom/google/common/math/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll(Ljava/lang/Iterable;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/util/Iterator;)Lcom/google/common/math/Stats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/common/math/Stats;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll(Ljava/util/Iterator;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([D)Lcom/google/common/math/Stats;
    .locals 1

    .line 7
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([D)V

    .line 9
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([I)Lcom/google/common/math/Stats;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([J)Lcom/google/common/math/Stats;
    .locals 1

    .line 13
    new-instance v0, Lcom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lcom/google/common/math/StatsAccumulator;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/common/math/StatsAccumulator;->addAll([J)V

    .line 15
    invoke-virtual {v0}, Lcom/google/common/math/StatsAccumulator;->snapshot()Lcom/google/common/math/Stats;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/nio/ByteBuffer;)Lcom/google/common/math/Stats;
    .locals 15

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x28

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v3, v3, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v0, v2, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/google/common/math/Stats;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 53
    .line 54
    .line 55
    move-result-wide v11

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    move-object v4, v0

    .line 61
    invoke-direct/range {v4 .. v14}, Lcom/google/common/math/Stats;-><init>(JDDDD)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :array_0
    .array-data 8
        -0x221543f35179d87eL    # -2.6080812650905758E144
        -0x10dd599813472691L    # -2.2090529282191747E227
        0xdc6f7f5f10097c7L
        0x4ed7276619e9339cL    # 6.392094256363842E71
        0x587e7634af89d01eL    # 1.9204059586897506E118
        0x18b4c0a66e182831L    # 1.164431619534252E-189
        0x6524ab0a9331e942L    # 1.6750532749392288E179
        -0x224f17d1bc0c8408L
    .end array-data
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Lcom/google/common/math/Stats;

    .line 10
    .line 11
    if-eq v2, v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    check-cast p1, Lcom/google/common/math/Stats;

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/google/common/math/Stats;->count:J

    .line 17
    .line 18
    iget-wide v3, p1, Lcom/google/common/math/Stats;->count:J

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-nez v5, :cond_2

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/google/common/math/Stats;->mean:D

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iget-wide v3, p1, Lcom/google/common/math/Stats;->mean:D

    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    cmp-long v5, v1, v3

    .line 37
    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    iget-wide v1, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    iget-wide v3, p1, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    cmp-long v5, v1, v3

    .line 53
    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    iget-wide v1, p0, Lcom/google/common/math/Stats;->min:D

    .line 57
    .line 58
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    iget-wide v3, p1, Lcom/google/common/math/Stats;->min:D

    .line 63
    .line 64
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    cmp-long v5, v1, v3

    .line 69
    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    iget-wide v1, p0, Lcom/google/common/math/Stats;->max:D

    .line 73
    .line 74
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iget-wide v3, p1, Lcom/google/common/math/Stats;->max:D

    .line 79
    .line 80
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    cmp-long p1, v1, v3

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/common/math/Stats;->mean:D

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Lcom/google/common/math/Stats;->min:D

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Lcom/google/common/math/Stats;->max:D

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x5

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    aput-object v0, v5, v6

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v1, v5, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v2, v5, v0

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    aput-object v3, v5, v0

    .line 45
    .line 46
    const/4 v0, 0x4

    .line 47
    aput-object v4, v5, v0

    .line 48
    .line 49
    invoke-static {v5}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public max()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/common/math/Stats;->max:D

    .line 16
    .line 17
    return-wide v0
.end method

.method public mean()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    .line 16
    .line 17
    return-wide v0
.end method

.method public min()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/common/math/Stats;->min:D

    .line 16
    .line 17
    return-wide v0
.end method

.method public populationStandardDeviation()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationVariance()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public populationVariance()D
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 27
    .line 28
    const-wide/16 v2, 0x1

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    return-wide v0

    .line 37
    :cond_2
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    long-to-double v2, v2

    .line 48
    div-double/2addr v0, v2

    .line 49
    return-wide v0
.end method

.method public sampleStandardDeviation()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->sampleVariance()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public sampleVariance()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 24
    .line 25
    return-wide v0

    .line 26
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/google/common/math/DoubleUtils;->ensureNonNegative(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v4, p0, Lcom/google/common/math/Stats;->count:J

    .line 33
    .line 34
    sub-long/2addr v4, v2

    .line 35
    long-to-double v2, v4

    .line 36
    div-double/2addr v0, v2

    .line 37
    return-wide v0
.end method

.method public sum()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    .line 4
    .line 5
    long-to-double v2, v2

    .line 6
    mul-double v0, v0, v2

    .line 7
    .line 8
    return-wide v0
.end method

.method public sumOfSquaresOfDeltas()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public toByteArray()[B
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/common/math/Stats;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->count()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-lez v5, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v0, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-wide v3, p0, Lcom/google/common/math/Stats;->count:J

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v3, v0, [J

    .line 39
    .line 40
    fill-array-data v3, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-wide v3, p0, Lcom/google/common/math/Stats;->mean:D

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/4 v3, 0x5

    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    fill-array-data v3, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/google/common/math/Stats;->populationStandardDeviation()D

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v3, v0, [J

    .line 82
    .line 83
    fill-array-data v3, :array_3

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-wide v3, p0, Lcom/google/common/math/Stats;->min:D

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-wide v2, p0, Lcom/google/common/math/Stats;->max:D

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v0, v0, [J

    .line 131
    .line 132
    fill-array-data v0, :array_5

    .line 133
    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-wide v2, p0, Lcom/google/common/math/Stats;->count:J

    .line 143
    .line 144
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    return-object v0

    .line 153
    :array_0
    .array-data 8
        0x571893a98d2172cbL    # 3.694059212710244E111
        0x23555f6973e41eedL    # 1.794739621239278E-138
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x47bafd913a488f1fL    # 3.5876524562699023E37
        0x280d21d4f12d1f16L    # 9.241964528183104E-116
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        0x26ecd1640ebfd12aL    # 3.487502949049208E-121
        0x3bad9fe06e048268L    # 3.1366178783215583E-21
        0x48e3875d0e61c26dL    # 1.3609561960930665E43
        -0x20a0de8cfc1cc42bL    # -2.5475703532168783E151
        0x6c295b2d05638b84L    # 1.067014600085661E213
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 8
        -0x3c4c69db0534745dL    # -1.4113561928025792E18
        0x5d2faf585a919e8eL    # 7.546418877494907E140
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_4
    .array-data 8
        -0x7c9d951c926e36d5L
        -0x43bed2b1c555960eL    # -1.862331353832203E-18
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_5
    .array-data 8
        0x7fed68151f0fa70fL    # 1.6519997849468873E308
        0x7471fca3f65108d2L    # 8.241991012928645E252
    .end array-data
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x28

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v3, v3, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v0, v2, v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    iget-wide v0, p0, Lcom/google/common/math/Stats;->count:J

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-wide v0, p0, Lcom/google/common/math/Stats;->mean:D

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-wide v0, p0, Lcom/google/common/math/Stats;->sumOfSquaresOfDeltas:D

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-wide v0, p0, Lcom/google/common/math/Stats;->min:D

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-wide v0, p0, Lcom/google/common/math/Stats;->max:D

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x72793f41f0d48f6cL    # 2.6935684271075744E243
        -0x5e398cdbedae5672L
        -0x150c930cb1d96979L    # -1.5591618415570243E207
        0x530876b7a8067b7aL    # 9.966703647596723E91
        0x2c7079e3f4b4567fL    # 1.2341748749264423E-94
        0x398dc3d9a8c6010dL    # 1.8344122165808502E-31
        -0x10c43d4547c4fea7L    # -6.576374727280105E227
        -0x2a45a0a5fb2e48b3L    # -9.450815205877104E104
    .end array-data
.end method
