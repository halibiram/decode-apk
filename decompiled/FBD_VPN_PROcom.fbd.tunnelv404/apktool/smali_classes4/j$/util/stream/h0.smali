.class final Lj$/util/stream/h0;
.super Lj$/util/stream/j0;
.source "SourceFile"


# virtual methods
.method final M(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 1

    .line 153
    new-instance v0, Lj$/util/stream/l3;

    .line 563
    invoke-direct {v0, p1}, Lj$/util/stream/n3;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method final Q()Z
    .locals 1

    .line 564
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 0

    .line 569
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 576
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lj$/util/stream/b;->T()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/j0;->Y(Lj$/util/Spliterator;)Lj$/util/Z;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Z;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/j0;->forEach(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    .line 585
    invoke-virtual {p0}, Lj$/util/stream/b;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lj$/util/stream/b;->T()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/j0;->Y(Lj$/util/Spliterator;)Lj$/util/Z;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Z;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/j0;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/b;->parallel()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/b;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lj$/util/stream/j0;->spliterator()Lj$/util/Z;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/BaseStream;
    .locals 3

    .line 325
    invoke-virtual {p0}, Lj$/util/stream/b;->K()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Lj$/util/stream/w;

    sget v1, Lj$/util/stream/a3;->r:I

    const/4 v2, 0x4

    .line 91
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/w;-><init>(Lj$/util/stream/b;II)V

    :goto_0
    return-object v0
.end method
