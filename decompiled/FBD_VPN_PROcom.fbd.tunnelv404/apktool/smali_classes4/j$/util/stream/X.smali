.class final Lj$/util/stream/X;
.super Lj$/util/stream/g2;
.source "SourceFile"


# instance fields
.field b:Z

.field c:Lj$/util/stream/T;

.field final synthetic d:Lj$/util/stream/V;


# direct methods
.method constructor <init>(Lj$/util/stream/V;Lj$/util/stream/m2;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lj$/util/stream/X;->d:Lj$/util/stream/V;

    invoke-direct {p0, p2}, Lj$/util/stream/g2;-><init>(Lj$/util/stream/m2;)V

    .line 305
    iget-object p1, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/stream/T;

    invoke-direct {p2, p1}, Lj$/util/stream/T;-><init>(Lj$/util/stream/m2;)V

    iput-object p2, p0, Lj$/util/stream/X;->c:Lj$/util/stream/T;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    .line 314
    iget-object v0, p0, Lj$/util/stream/X;->d:Lj$/util/stream/V;

    iget-object v0, v0, Lj$/util/stream/V;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/O0;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_2

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/X;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/X;->c:Lj$/util/stream/T;

    if-nez v0, :cond_0

    .line 317
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 320
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/W;

    move-result-object v0

    .line 321
    :cond_1
    iget-object v2, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-interface {v2}, Lj$/util/stream/m2;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Lj$/util/W;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 314
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 324
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void
.end method

.method public final l(J)V
    .locals 2

    .line 309
    iget-object p1, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lj$/util/stream/X;->b:Z

    .line 334
    iget-object v0, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0
.end method
