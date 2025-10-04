.class public final Lcom/google/common/math/Quantiles$ScaleAndIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final scale:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 4
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 5
    iput p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/google/common/math/Quantiles$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(II)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([D)D
    .locals 2

    .line 2
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([I)D
    .locals 2

    .line 4
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([J)D
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs computeInPlace([D)D
    .locals 13

    .line 1
    array-length v0, p1

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v4, 0x7

    .line 12
    new-array v4, v4, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_1
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    .line 37
    .line 38
    int-to-long v3, v0

    .line 39
    array-length v0, p1

    .line 40
    sub-int/2addr v0, v2

    .line 41
    int-to-long v5, v0

    .line 42
    mul-long v3, v3, v5

    .line 43
    .line 44
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 45
    .line 46
    int-to-long v5, v0

    .line 47
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 48
    .line 49
    invoke-static {v3, v4, v5, v6, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    long-to-int v0, v5

    .line 54
    int-to-long v5, v0

    .line 55
    iget v7, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 56
    .line 57
    int-to-long v7, v7

    .line 58
    mul-long v5, v5, v7

    .line 59
    .line 60
    sub-long/2addr v3, v5

    .line 61
    long-to-int v4, v3

    .line 62
    array-length v3, p1

    .line 63
    sub-int/2addr v3, v2

    .line 64
    invoke-static {v0, p1, v1, v3}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 65
    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    aget-wide v0, p1, v0

    .line 70
    .line 71
    return-wide v0

    .line 72
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 73
    .line 74
    array-length v3, p1

    .line 75
    sub-int/2addr v3, v2

    .line 76
    invoke-static {v1, p1, v1, v3}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 77
    .line 78
    .line 79
    aget-wide v5, p1, v0

    .line 80
    .line 81
    aget-wide v7, p1, v1

    .line 82
    .line 83
    int-to-double v9, v4

    .line 84
    iget p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 85
    .line 86
    int-to-double v11, p1

    .line 87
    invoke-static/range {v5 .. v12}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    return-wide v0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        -0x6427e2728dec16c1L
        0x36847f9a14d28767L    # 4.488193637784613E-46
        -0x3b3f9101b126c4e3L    # -1.552106607936082E23
        0x17b8c1dd726565feL
        0x1246c83f0c1c53bcL
        0x108c05d20cb06c6dL    # 5.775955640789101E-229
        0x143e380ff0c45976L
    .end array-data
.end method
