.class final Lj$/util/s;
.super Lj$/util/v;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 804
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 807
    :cond_0
    new-instance v0, Lj$/util/q;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {v0, p1}, Lj$/util/q;-><init>(Ljava/util/Map$Entry;)V

    iget-object p1, p0, Lj$/util/m;->a:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 815
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 816
    invoke-virtual {p0, v0}, Lj$/util/s;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 828
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 831
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 832
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lj$/util/m;->a:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 835
    :cond_2
    invoke-virtual {p0, p1}, Lj$/util/s;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    .line 677
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v0, Lj$/util/p;

    invoke-direct {v0, p1}, Lj$/util/p;-><init>(Ljava/util/function/Consumer;)V

    .line 678
    iget-object p1, p0, Lj$/util/m;->a:Ljava/util/Collection;

    invoke-static {p1, v0}, Lj$/util/b;->q(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 749
    new-instance v0, Lj$/util/l;

    invoke-direct {v0, p0}, Lj$/util/l;-><init>(Lj$/util/s;)V

    return-object v0
.end method

.method public final parallelStream()Lj$/util/stream/Stream;
    .locals 2

    .line 745
    invoke-virtual {p0}, Lj$/util/s;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->d(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 2

    .line 734
    new-instance v0, Lj$/util/r;

    iget-object v1, p0, Lj$/util/m;->a:Ljava/util/Collection;

    .line 735
    invoke-static {v1}, Lj$/util/b;->x(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/r;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method public final stream()Lj$/util/stream/Stream;
    .locals 2

    .line 740
    invoke-virtual {p0}, Lj$/util/s;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->d(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 772
    iget-object v0, p0, Lj$/util/m;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 773
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 774
    new-instance v2, Lj$/util/q;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Lj$/util/q;-><init>(Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 784
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lj$/util/m;->a:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 785
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 786
    new-instance v3, Lj$/util/q;

    aget-object v4, v0, v2

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v4}, Lj$/util/q;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 788
    :cond_1
    array-length v2, v0

    array-length v3, p1

    if-le v2, v3, :cond_2

    return-object v0

    .line 791
    :cond_2
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 793
    array-length v0, v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
