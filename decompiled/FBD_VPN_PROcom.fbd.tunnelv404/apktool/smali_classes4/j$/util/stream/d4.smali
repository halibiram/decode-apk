.class final Lj$/util/stream/d4;
.super Lj$/util/stream/A;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/e4;


# virtual methods
.method final O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 1

    .line 581
    new-instance v0, Lj$/util/stream/g4;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/util/stream/g4;-><init>(Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)V

    .line 582
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/I0;

    return-object p1
.end method

.method final P(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .line 567
    sget-object v0, Lj$/util/stream/a3;->ORDERED:Lj$/util/stream/a3;

    invoke-virtual {p1}, Lj$/util/stream/b;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lj$/util/stream/c0;

    const/16 v1, 0xf

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/c0;-><init>(I)V

    .line 568
    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/d4;->O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    .line 569
    invoke-interface {p1}, Lj$/util/stream/I0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 572
    :cond_0
    new-instance v0, Lj$/util/stream/i4;

    .line 573
    invoke-virtual {p1, p2}, Lj$/util/stream/b;->X(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    check-cast p1, Lj$/util/T;

    const/4 p2, 0x0

    .line 1038
    invoke-direct {v0, p1, p2}, Lj$/util/stream/i4;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    .line 619
    new-instance p1, Lj$/util/stream/c4;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/c4;-><init>(Lj$/util/stream/d4;Lj$/util/stream/m2;Z)V

    return-object p1
.end method

.method public final j(Lj$/util/stream/A0;Z)Lj$/util/stream/f4;
    .locals 1

    .line 619
    new-instance v0, Lj$/util/stream/c4;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/c4;-><init>(Lj$/util/stream/d4;Lj$/util/stream/m2;Z)V

    return-object v0
.end method
