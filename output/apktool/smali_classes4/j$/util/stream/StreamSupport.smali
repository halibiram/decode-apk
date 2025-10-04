.class public final Lj$/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj$/util/T;)Lj$/util/stream/DoubleStream;
    .locals 3

    .line 274
    new-instance v0, Lj$/util/stream/z;

    .line 275
    invoke-static {p0}, Lj$/util/stream/a3;->m(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x0

    .line 79
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static b(Lj$/util/W;)Lj$/util/stream/IntStream;
    .locals 3

    .line 138
    new-instance v0, Lj$/util/stream/Y;

    .line 139
    invoke-static {p0}, Lj$/util/stream/a3;->m(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x0

    .line 80
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static c(Lj$/util/Z;)Lj$/util/stream/LongStream;
    .locals 3

    .line 206
    new-instance v0, Lj$/util/stream/h0;

    .line 207
    invoke-static {p0}, Lj$/util/stream/a3;->m(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x0

    .line 81
    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static d(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;
    .locals 2

    .line 68
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lj$/util/stream/c2;

    .line 70
    invoke-static {p0}, Lj$/util/stream/a3;->m(Lj$/util/Spliterator;)I

    move-result v1

    .line 84
    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/b;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+",
            "Lj$/util/Spliterator<",
            "TT;>;>;IZ)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lj$/util/stream/c2;

    .line 751
    sget v1, Lj$/util/stream/a3;->f:I

    and-int/2addr p1, v1

    .line 71
    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/b;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method
