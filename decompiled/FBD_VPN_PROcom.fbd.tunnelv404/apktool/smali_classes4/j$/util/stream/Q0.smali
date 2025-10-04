.class final Lj$/util/stream/Q0;
.super Lj$/util/stream/T0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/C0;


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 0

    .line 534
    new-array p1, p1, [D

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->q(Lj$/util/stream/C0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic h(JJLjava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/w0;->t(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 471
    check-cast p1, [Ljava/lang/Double;

    .line 0
    invoke-static {p0, p1, p2}, Lj$/util/stream/w0;->n(Lj$/util/stream/C0;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 929
    new-instance v0, Lj$/util/stream/h1;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/m1;-><init>(Lj$/util/stream/I0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/c0;
    .locals 1

    .line 929
    new-instance v0, Lj$/util/stream/h1;

    .line 1124
    invoke-direct {v0, p0}, Lj$/util/stream/m1;-><init>(Lj$/util/stream/I0;)V

    return-object v0
.end method
