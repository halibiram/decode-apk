.class final Lj$/util/stream/F2;
.super Lj$/util/stream/Z;
.source "SourceFile"


# virtual methods
.method public final O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 2

    .line 191
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {p1}, Lj$/util/stream/b;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    check-cast p1, Lj$/util/stream/E0;

    .line 197
    invoke-interface {p1}, Lj$/util/stream/H0;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 200
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 201
    new-instance p2, Lj$/util/stream/e1;

    invoke-direct {p2, p1}, Lj$/util/stream/e1;-><init>([I)V

    return-object p2
.end method

.method public final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    .line 177
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 181
    :cond_0
    sget-object v0, Lj$/util/stream/a3;->SIZED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    new-instance p1, Lj$/util/stream/K2;

    .line 429
    invoke-direct {p1, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/m2;)V

    return-object p1

    .line 184
    :cond_1
    new-instance p1, Lj$/util/stream/C2;

    .line 429
    invoke-direct {p1, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/m2;)V

    return-object p1
.end method
