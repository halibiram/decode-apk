.class final Lj$/util/stream/a2;
.super Lj$/util/stream/i2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field c:Z

.field d:Ljava/lang/Object;

.field final synthetic e:Lj$/util/stream/b;


# direct methods
.method public constructor <init>(Lj$/util/stream/V;Lj$/util/stream/m2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/a2;->b:I

    .line 305
    iput-object p1, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/m2;)V

    .line 310
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/stream/T;

    invoke-direct {p2, p1}, Lj$/util/stream/T;-><init>(Lj$/util/stream/m2;)V

    iput-object p2, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/g0;Lj$/util/stream/m2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/a2;->b:I

    .line 394
    iput-object p1, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/m2;)V

    .line 399
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/stream/b0;

    invoke-direct {p2, p1}, Lj$/util/stream/b0;-><init>(Lj$/util/stream/m2;)V

    iput-object p2, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/y;Lj$/util/stream/m2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/a2;->b:I

    .line 349
    iput-object p1, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    invoke-direct {p0, p2}, Lj$/util/stream/i2;-><init>(Lj$/util/stream/m2;)V

    .line 354
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/stream/p;

    invoke-direct {p2, p1}, Lj$/util/stream/p;-><init>(Lj$/util/stream/m2;)V

    iput-object p2, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lj$/util/stream/a2;->b:I

    packed-switch v0, :pswitch_data_0

    .line 363
    iget-object v0, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/y;

    iget-object v0, v0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/DoubleStream;

    if-eqz p1, :cond_2

    .line 365
    :try_start_0
    iget-boolean v0, p0, Lj$/util/stream/a2;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/p;

    if-nez v0, :cond_0

    .line 366
    :try_start_1
    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {p1}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/T;

    move-result-object v0

    .line 370
    :cond_1
    iget-object v2, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v2}, Lj$/util/stream/m2;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Lj$/util/T;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 363
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

    .line 373
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_3
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/V;

    iget-object v0, v0, Lj$/util/stream/V;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_6

    .line 321
    :try_start_3
    iget-boolean v0, p0, Lj$/util/stream/a2;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/T;

    if-nez v0, :cond_4

    .line 322
    :try_start_4
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 325
    :cond_4
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/W;

    move-result-object v0

    .line 326
    :cond_5
    iget-object v2, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v2}, Lj$/util/stream/m2;->n()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0, v1}, Lj$/util/W;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_5

    goto :goto_5

    .line 319
    :goto_3
    :try_start_5
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 329
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_7
    return-void

    .line 408
    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/a2;->e:Lj$/util/stream/b;

    check-cast v0, Lj$/util/stream/g0;

    iget-object v0, v0, Lj$/util/stream/g0;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/LongStream;

    if-eqz p1, :cond_a

    .line 410
    :try_start_6
    iget-boolean v0, p0, Lj$/util/stream/a2;->c:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object v1, p0, Lj$/util/stream/a2;->d:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/b0;

    if-nez v0, :cond_8

    .line 411
    :try_start_7
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_6

    .line 414
    :cond_8
    invoke-interface {p1}, Lj$/util/stream/LongStream;->sequential()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Z;

    move-result-object v0

    .line 415
    :cond_9
    iget-object v2, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v2}, Lj$/util/stream/m2;->n()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0, v1}, Lj$/util/Z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-nez v2, :cond_9

    goto :goto_8

    .line 408
    :goto_6
    :try_start_8
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    :cond_a
    :goto_8
    if-eqz p1, :cond_b

    .line 418
    invoke-interface {p1}, Lj$/util/stream/BaseStream;->close()V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(J)V
    .locals 2

    iget p1, p0, Lj$/util/stream/a2;->b:I

    packed-switch p1, :pswitch_data_0

    .line 358
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void

    .line 314
    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void

    .line 403
    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lj$/util/stream/a2;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lj$/util/stream/a2;->c:Z

    .line 379
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lj$/util/stream/a2;->c:Z

    .line 335
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lj$/util/stream/a2;->c:Z

    .line 424
    iget-object v0, p0, Lj$/util/stream/i2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
