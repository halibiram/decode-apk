.class final Lj$/util/stream/E2;
.super Lj$/util/stream/A;
.source "SourceFile"


# virtual methods
.method public final O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 2

    .line 273
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {p1}, Lj$/util/stream/b;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C0;

    .line 279
    invoke-interface {p1}, Lj$/util/stream/H0;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 282
    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 275
    new-instance p2, Lj$/util/stream/V0;

    invoke-direct {p2, p1}, Lj$/util/stream/V0;-><init>([D)V

    return-object p2
.end method

.method public final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    .line 259
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 263
    :cond_0
    sget-object v0, Lj$/util/stream/a3;->SIZED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Lj$/util/stream/J2;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/f2;-><init>(Lj$/util/stream/m2;)V

    return-object p1

    .line 266
    :cond_1
    new-instance p1, Lj$/util/stream/B2;

    .line 627
    invoke-direct {p1, p2}, Lj$/util/stream/f2;-><init>(Lj$/util/stream/m2;)V

    return-object p1
.end method
