.class abstract Lj$/util/stream/j0;
.super Lj$/util/stream/b;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/LongStream;


# direct methods
.method static bridge synthetic Y(Lj$/util/Spliterator;)Lj$/util/Z;
    .locals 0

    invoke-static {p0}, Lj$/util/stream/j0;->Z(Lj$/util/Spliterator;)Lj$/util/Z;

    move-result-object p0

    return-object p0
.end method

.method private static Z(Lj$/util/Spliterator;)Lj$/util/Z;
    .locals 1

    .line 117
    instance-of v0, p0, Lj$/util/Z;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Lj$/util/Z;

    return-object p0

    .line 120
    :cond_0
    sget-boolean p0, Lj$/util/stream/O3;->a:Z

    if-eqz p0, :cond_1

    .line 121
    const-class p0, Lj$/util/stream/b;

    const-string v0, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {p0, v0}, Lj$/util/stream/O3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final E(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 140
    invoke-static {p1, p2, p3}, Lj$/util/stream/w0;->H(Lj$/util/stream/b;Lj$/util/Spliterator;Z)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method final G(Lj$/util/Spliterator;Lj$/util/stream/m2;)Z
    .locals 3

    .line 158
    invoke-static {p1}, Lj$/util/stream/j0;->Z(Lj$/util/Spliterator;)Lj$/util/Z;

    move-result-object p1

    .line 99
    instance-of v0, p2, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p2

    check-cast v0, Ljava/util/function/LongConsumer;

    goto :goto_0

    .line 102
    :cond_0
    sget-boolean v0, Lj$/util/stream/O3;->a:Z

    if-nez v0, :cond_3

    .line 105
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/b0;

    invoke-direct {v0, p2}, Lj$/util/stream/b0;-><init>(Lj$/util/stream/m2;)V

    .line 161
    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/m2;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    .line 103
    :cond_3
    const-class p1, Lj$/util/stream/b;

    const-string p2, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {p1, p2}, Lj$/util/stream/O3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method final H()Lj$/util/stream/b3;
    .locals 1

    .line 132
    sget-object v0, Lj$/util/stream/b3;->LONG_VALUE:Lj$/util/stream/b3;

    return-object v0
.end method

.method final N(JLjava/util/function/IntFunction;)Lj$/util/stream/A0;
    .locals 0

    .line 167
    invoke-static {p1, p2}, Lj$/util/stream/w0;->T(J)Lj$/util/stream/z0;

    move-result-object p1

    return-object p1
.end method

.method final U(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    .line 147
    new-instance v0, Lj$/util/stream/u3;

    .line 386
    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/c3;-><init>(Lj$/util/stream/b;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final a()Lj$/util/stream/LongStream;
    .locals 3

    .line 397
    sget v0, Lj$/util/stream/n4;->a:I

    const/4 v0, 0x0

    .line 177
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lj$/util/stream/X3;

    .line 91
    sget v1, Lj$/util/stream/n4;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/i0;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final asDoubleStream()Lj$/util/stream/DoubleStream;
    .locals 3

    .line 200
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/a3;->n:I

    const/4 v2, 0x5

    .line 90
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final average()Lj$/util/C;
    .locals 6

    .line 447
    new-instance v0, Lj$/util/stream/q;

    const/16 v1, 0x1b

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/q;-><init>(I)V

    .line 447
    new-instance v1, Lj$/util/stream/q;

    const/16 v2, 0x1c

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/q;-><init>(I)V

    .line 447
    new-instance v2, Lj$/util/stream/q;

    const/16 v3, 0x1d

    .line 0
    invoke-direct {v2, v3}, Lj$/util/stream/q;-><init>(I)V

    .line 447
    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/j0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    .line 456
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v3, 0x1

    .line 457
    aget-wide v3, v0, v3

    long-to-double v3, v3

    long-to-double v0, v1

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Lj$/util/C;->d(D)Lj$/util/C;

    move-result-object v0

    goto :goto_0

    .line 458
    :cond_0
    invoke-static {}, Lj$/util/C;->a()Lj$/util/C;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Lj$/util/stream/LongStream;
    .locals 3

    const/4 v0, 0x0

    .line 337
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/a3;->t:I

    const/4 v2, 0x5

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 4

    .line 215
    new-instance v0, Lj$/util/stream/q;

    const/16 v1, 0x1a

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/q;-><init>(I)V

    .line 171
    new-instance v1, Lj$/util/stream/t;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v0, v3}, Lj$/util/stream/t;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final c()Lj$/util/stream/LongStream;
    .locals 3

    .line 402
    sget v0, Lj$/util/stream/n4;->a:I

    const/4 v0, 0x0

    .line 483
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v0, Lj$/util/stream/Z3;

    .line 91
    sget v1, Lj$/util/stream/n4;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/i0;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    .line 486
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v2, Lj$/util/stream/r;

    const/4 v0, 0x2

    invoke-direct {v2, p3, v0}, Lj$/util/stream/r;-><init>(Ljava/util/function/BiConsumer;I)V

    .line 557
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance p3, Lj$/util/stream/C1;

    sget-object v1, Lj$/util/stream/b3;->LONG_VALUE:Lj$/util/stream/b3;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/C1;-><init>(Lj$/util/stream/b3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 491
    invoke-virtual {p0, p3}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    .line 596
    new-instance v0, Lj$/util/stream/E1;

    const/4 v1, 0x0

    .line 899
    invoke-direct {v0, v1}, Lj$/util/stream/E1;-><init>(I)V

    .line 463
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lj$/util/stream/LongStream;
    .locals 3

    const/4 v0, 0x0

    .line 220
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/a3;->p:I

    sget v2, Lj$/util/stream/a3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final distinct()Lj$/util/stream/LongStream;
    .locals 3

    .line 414
    invoke-virtual {p0}, Lj$/util/stream/j0;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/e2;

    invoke-virtual {v0}, Lj$/util/stream/e2;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/util/stream/q;

    const/16 v2, 0x17

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/q;-><init>(I)V

    .line 414
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lj$/util/stream/a;)Lj$/util/stream/LongStream;
    .locals 3

    .line 277
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Lj$/util/stream/g0;

    sget v1, Lj$/util/stream/a3;->p:I

    sget v2, Lj$/util/stream/a3;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/a3;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/g0;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final findAny()Lj$/util/E;
    .locals 1

    .line 82
    sget-object v0, Lj$/util/stream/H;->d:Lj$/util/stream/E;

    .line 516
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/E;

    return-object v0
.end method

.method public final findFirst()Lj$/util/E;
    .locals 1

    .line 82
    sget-object v0, Lj$/util/stream/H;->c:Lj$/util/stream/E;

    .line 511
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/E;

    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 2

    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/LongConsumer;Z)V

    .line 421
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 2

    .line 101
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lj$/util/stream/N;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/N;-><init>(Ljava/util/function/LongConsumer;Z)V

    .line 426
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Lj$/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lj$/util/stream/j0;->spliterator()Lj$/util/Z;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->h(Lj$/util/Z;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/j0;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lj$/util/stream/DoubleStream;
    .locals 3

    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Lj$/util/stream/u;

    sget v1, Lj$/util/stream/a3;->p:I

    sget v2, Lj$/util/stream/a3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x6

    .line 90
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/u;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/LongStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 382
    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/w0;->Y(Lj$/util/stream/j0;JJ)Lj$/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Z
    .locals 1

    .line 506
    sget-object v0, Lj$/util/stream/t0;->NONE:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/w0;->Z(Lj$/util/stream/t0;)Lj$/util/stream/u0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
    .locals 3

    .line 237
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget v0, Lj$/util/stream/a3;->p:I

    sget v1, Lj$/util/stream/a3;->n:I

    or-int/2addr v0, v1

    .line 171
    new-instance v1, Lj$/util/stream/t;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, p1, v2}, Lj$/util/stream/t;-><init>(Lj$/util/stream/b;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final max()Lj$/util/E;
    .locals 2

    .line 442
    new-instance v0, Lj$/util/stream/c0;

    const/4 v1, 0x0

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/c0;-><init>(I)V

    .line 442
    invoke-virtual {p0, v0}, Lj$/util/stream/j0;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/E;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/E;
    .locals 2

    .line 437
    new-instance v0, Lj$/util/stream/q;

    const/16 v1, 0x16

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/q;-><init>(I)V

    .line 437
    invoke-virtual {p0, v0}, Lj$/util/stream/j0;->reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/E;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;
    .locals 1

    .line 360
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Lj$/util/stream/g0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/g0;-><init>(Lj$/util/stream/j0;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 501
    sget-object v0, Lj$/util/stream/t0;->ALL:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/w0;->Z(Lj$/util/stream/t0;)Lj$/util/stream/u0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 2

    .line 459
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v0, Lj$/util/stream/y1;

    sget-object v1, Lj$/util/stream/b3;->LONG_VALUE:Lj$/util/stream/b3;

    invoke-direct {v0, v1, p3, p1, p2}, Lj$/util/stream/y1;-><init>(Lj$/util/stream/b3;Ljava/util/function/LongBinaryOperator;J)V

    .line 474
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/E;
    .locals 3

    .line 501
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    new-instance v0, Lj$/util/stream/A1;

    sget-object v1, Lj$/util/stream/b3;->LONG_VALUE:Lj$/util/stream/b3;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/A1;-><init>(Lj$/util/stream/b3;Ljava/lang/Object;I)V

    .line 479
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/E;

    return-object p1
.end method

.method public final skip(J)Lj$/util/stream/LongStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 392
    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/w0;->Y(Lj$/util/stream/j0;JJ)Lj$/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/LongStream;
    .locals 3

    .line 83
    new-instance v0, Lj$/util/stream/G2;

    .line 212
    sget v1, Lj$/util/stream/a3;->q:I

    sget v2, Lj$/util/stream/a3;->o:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/i0;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/Z;
    .locals 1

    .line 193
    invoke-super {p0}, Lj$/util/stream/b;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/j0;->Z(Lj$/util/Spliterator;)Lj$/util/Z;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    .line 432
    new-instance v0, Lj$/util/stream/c0;

    const/4 v1, 0x1

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/c0;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 432
    invoke-virtual {p0, v1, v2, v0}, Lj$/util/stream/j0;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Lj$/util/B;
    .locals 4

    .line 468
    new-instance v0, Lj$/util/stream/k;

    const/16 v1, 0x16

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/k;-><init>(I)V

    .line 468
    new-instance v1, Lj$/util/stream/q;

    const/16 v2, 0x15

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/q;-><init>(I)V

    .line 468
    new-instance v2, Lj$/util/stream/q;

    const/16 v3, 0x18

    .line 0
    invoke-direct {v2, v3}, Lj$/util/stream/q;-><init>(I)V

    .line 468
    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/j0;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/B;

    return-object v0
.end method

.method public final toArray()[J
    .locals 2

    .line 521
    new-instance v0, Lj$/util/stream/q;

    const/16 v1, 0x19

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/q;-><init>(I)V

    .line 521
    invoke-virtual {p0, v0}, Lj$/util/stream/b;->D(Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    invoke-static {v0}, Lj$/util/stream/w0;->P(Lj$/util/stream/G0;)Lj$/util/stream/G0;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Lj$/util/stream/H0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 496
    sget-object v0, Lj$/util/stream/t0;->ANY:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/w0;->Z(Lj$/util/stream/t0;)Lj$/util/stream/u0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/b;->C(Lj$/util/stream/L3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final w()Lj$/util/stream/IntStream;
    .locals 3

    const/4 v0, 0x0

    .line 243
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/a3;->p:I

    sget v2, Lj$/util/stream/a3;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x4

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/b;II)V

    return-object v0
.end method
