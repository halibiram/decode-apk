.class final Lj$/util/stream/g1;
.super Lj$/util/stream/R2;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/E0;
.implements Lj$/util/stream/y0;


# virtual methods
.method public final a()Lj$/util/stream/E0;
    .locals 0

    return-object p0
.end method

.method public final a()Lj$/util/stream/I0;
    .locals 0

    return-object p0
.end method

.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->h(Lj$/util/stream/k2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Lj$/util/stream/H0;
    .locals 0

    .line 253
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic b(I)Lj$/util/stream/I0;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lj$/util/stream/g1;->b(I)Lj$/util/stream/H0;

    const/4 p1, 0x0

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1696
    invoke-super {p0}, Lj$/util/stream/V2;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p1, Ljava/util/function/IntConsumer;

    .line 1662
    invoke-super {p0, p1}, Lj$/util/stream/V2;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/w0;->u(Lj$/util/stream/E0;JJ)Lj$/util/stream/E0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 317
    check-cast p1, [Ljava/lang/Integer;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/w0;->o(Lj$/util/stream/E0;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l(J)V
    .locals 0

    .line 1670
    invoke-virtual {p0}, Lj$/util/stream/V2;->clear()V

    .line 1671
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/V2;->v(J)V

    return-void
.end method

.method public final synthetic m(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->g(Lj$/util/stream/k2;Ljava/lang/Integer;)V

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->m(Lj$/util/stream/H0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r(ILjava/lang/Object;)V
    .locals 0

    .line 1646
    check-cast p2, [I

    .line 1690
    invoke-super {p0, p1, p2}, Lj$/util/stream/V2;->r(ILjava/lang/Object;)V

    return-void
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/R2;->y()Lj$/util/W;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/c0;
    .locals 1

    .line 1656
    invoke-super {p0}, Lj$/util/stream/R2;->y()Lj$/util/W;

    move-result-object v0

    return-object v0
.end method
