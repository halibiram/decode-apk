.class final Lj$/util/stream/f0;
.super Lj$/util/stream/h2;
.source "SourceFile"


# instance fields
.field b:Z

.field c:Lj$/util/stream/b0;

.field final synthetic d:Lj$/util/stream/g0;


# direct methods
.method constructor <init>(Lj$/util/stream/g0;Lj$/util/stream/m2;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lj$/util/stream/f0;->d:Lj$/util/stream/g0;

    invoke-direct {p0, p2}, Lj$/util/stream/h2;-><init>(Lj$/util/stream/m2;)V

    .line 287
    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/stream/b0;

    invoke-direct {p2, p1}, Lj$/util/stream/b0;-><init>(Lj$/util/stream/m2;)V

    iput-object p2, p0, Lj$/util/stream/f0;->c:Lj$/util/stream/b0;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 2

    .line 296
    iget-object v0, p0, Lj$/util/stream/f0;->d:Lj$/util/stream/g0;

    iget-object v0, v0, Lj$/util/stream/g0;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_2

    .line 298
    :try_start_0
    iget-boolean p2, p0, Lj$/util/stream/f0;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lj$/util/stream/f0;->c:Lj$/util/stream/b0;

    if-nez p2, :cond_0

    .line 299
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object p2

    invoke-interface {p2, v0}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 302
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object p2

    invoke-interface {p2}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Z;

    move-result-object p2

    .line 303
    :cond_1
    iget-object v1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    invoke-interface {v1}, Lj$/util/stream/m2;->n()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2, v0}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_2

    .line 296
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 306
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void
.end method

.method public final l(J)V
    .locals 2

    .line 291
    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lj$/util/stream/f0;->b:Z

    .line 316
    iget-object v0, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0
.end method
