.class public abstract synthetic Lj$/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/util/T;Ljava/util/function/Consumer;)V
    .locals 1

    .line 827
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 828
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/T;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 831
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 834
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/F;

    invoke-direct {v0, p1}, Lj$/util/F;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/T;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Lj$/util/W;Ljava/util/function/Consumer;)V
    .locals 1

    .line 698
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 699
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/W;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_0

    .line 702
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 705
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/I;

    invoke-direct {v0, p1}, Lj$/util/I;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/W;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lj$/util/Z;Ljava/util/function/Consumer;)V
    .locals 1

    .line 762
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 763
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Z;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_0

    .line 766
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 769
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/L;

    invoke-direct {v0, p1}, Lj$/util/L;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Z;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lj$/util/Spliterator;)J
    .locals 2

    .line 408
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static e(Lj$/util/Spliterator;I)Z
    .locals 0

    .line 447
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Lj$/util/T;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 803
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 804
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/T;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    return p0

    .line 807
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 810
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/F;

    invoke-direct {v0, p1}, Lj$/util/F;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/T;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    return p0

    .line 808
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Lj$/util/W;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 675
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 676
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/W;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0

    .line 679
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 682
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/I;

    invoke-direct {v0, p1}, Lj$/util/I;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/W;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0

    .line 680
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Lj$/util/Z;Ljava/util/function/Consumer;)Z
    .locals 1

    .line 739
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 740
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    return p0

    .line 743
    :cond_0
    sget-boolean v0, Lj$/util/s0;->a:Z

    if-nez v0, :cond_1

    .line 746
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/L;

    invoke-direct {v0, p1}, Lj$/util/L;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    return p0

    .line 744
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)"

    invoke-static {p0, p1}, Lj$/util/s0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static i(Ljava/util/Optional;)Lj$/util/Optional;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Optional;->b(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    invoke-static {}, Lj$/util/Optional;->a()Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/OptionalDouble;)Lj$/util/C;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/C;->d(D)Lj$/util/C;

    move-result-object p0

    return-object p0

    .line 48
    :cond_1
    invoke-static {}, Lj$/util/C;->a()Lj$/util/C;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/OptionalInt;)Lj$/util/D;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    invoke-static {p0}, Lj$/util/D;->d(I)Lj$/util/D;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    invoke-static {}, Lj$/util/D;->a()Lj$/util/D;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/OptionalLong;)Lj$/util/E;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/E;->d(J)Lj$/util/E;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1
    invoke-static {}, Lj$/util/E;->a()Lj$/util/E;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lj$/util/Optional;)Ljava/util/Optional;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lj$/util/C;)Ljava/util/OptionalDouble;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lj$/util/C;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lj$/util/C;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lj$/util/D;)Ljava/util/OptionalInt;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lj$/util/D;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lj$/util/D;->b()I

    move-result p0

    invoke-static {p0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 78
    :cond_1
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lj$/util/E;)Ljava/util/OptionalLong;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lj$/util/E;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lj$/util/E;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    .locals 1

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0, p1}, Lj$/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 663
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 665
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic r(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 0
    instance-of v0, p0, Lj$/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Map;

    invoke-interface {p0, p1}, Lj$/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static s(Ljava/util/Iterator;Ljava/util/function/Consumer;)V
    .locals 1

    instance-of v0, p0, Lj$/util/A;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/A;

    invoke-interface {p0, p1}, Lj$/util/A;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic t(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    instance-of v0, p0, Lj$/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Map;

    invoke-interface {p0, p1, p2}, Lj$/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->parallelStream()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    instance-of v0, p0, Lj$/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Map;

    invoke-interface {p0, p1, p2}, Lj$/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 1

    .line 0
    instance-of v0, p0, Lj$/util/List;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/List;

    invoke-interface {p0, p1}, Lj$/util/List;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lj$/util/List$-CC;->$default$sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static x(Ljava/util/Collection;)Lj$/util/Spliterator;
    .locals 1

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/LinkedHashSet;

    const/16 v0, 0x11

    .line 196
    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/SortedSet;

    .line 256
    new-instance v0, Lj$/util/P;

    invoke-direct {v0, p0, p0}, Lj$/util/P;-><init>(Ljava/util/SortedSet;Ljava/util/Collection;)V

    return-object v0

    .line 0
    :cond_2
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/Set;

    const/4 v0, 0x1

    .line 439
    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0

    .line 0
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/util/List;

    .line 773
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_4

    .line 774
    new-instance v0, Lj$/util/a;

    invoke-direct {v0, p0}, Lj$/util/a;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x10

    .line 776
    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliterator(Ljava/util/Collection;I)Lj$/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0

    .line 0
    :cond_5
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1

    instance-of v0, p0, Lj$/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Collection;

    invoke-interface {p0}, Lj$/util/Collection;->stream()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    .line 0
    instance-of v0, p0, Lj$/util/Comparator;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/Comparator;

    invoke-interface {p0, p1}, Lj$/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lj$/util/Comparator$-CC;->$default$thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 858
    const/16 v0, 0x4040

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 854
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 850
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 845
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 841
    const/4 v0, 0x0

    return-object v0
.end method
