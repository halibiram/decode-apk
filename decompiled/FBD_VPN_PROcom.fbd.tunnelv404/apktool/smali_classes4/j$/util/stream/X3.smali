.class final Lj$/util/stream/X3;
.super Lj$/util/stream/i0;
.source "SourceFile"


# virtual methods
.method final O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 1

    .line 196
    new-instance v0, Lj$/util/stream/h4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/h4;-><init>(Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1
.end method

.method final P(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 182
    sget-object v0, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    invoke-virtual {p1}, Lj$/util/stream/b;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lj$/util/stream/c0;

    const/16 v1, 0xc

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/c0;-><init>(I)V

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/X3;->O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 187
    :cond_0
    new-instance v0, Lj$/util/stream/k4;

    .line 188
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->X(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/Z;

    const/4 p2, 0x1

    .line 933
    invoke-direct {v0, p1, p2}, Lj$/util/stream/k4;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 0

    .line 202
    new-instance p1, Lj$/util/stream/W3;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/W3;-><init>(Lj$/util/stream/X3;Lj$/util/stream/m2;)V

    return-object p1
.end method
