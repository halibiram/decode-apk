.class final Lj$/util/stream/Q;
.super Ljava/util/concurrent/CountedCompleter;
.source "SourceFile"


# instance fields
.field private final a:Lj$/util/stream/b;

.field private b:Lj$/util/Spliterator;

.field private final c:J

.field private final d:Lj$/util/concurrent/ConcurrentHashMap;

.field private final e:Lj$/util/stream/P;

.field private final f:Lj$/util/stream/Q;

.field private g:Lj$/util/stream/I0;


# direct methods
.method constructor <init>(Lj$/util/stream/Q;Lj$/util/Spliterator;Lj$/util/stream/Q;)V
    .locals 2

    .line 388
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 389
    iget-object v0, p1, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    iput-object v0, p0, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    .line 390
    iput-object p2, p0, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    .line 391
    iget-wide v0, p1, Lj$/util/stream/Q;->c:J

    iput-wide v0, p0, Lj$/util/stream/Q;->c:J

    .line 392
    iget-object p2, p1, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 393
    iget-object p1, p1, Lj$/util/stream/Q;->e:Lj$/util/stream/P;

    iput-object p1, p0, Lj$/util/stream/Q;->e:Lj$/util/stream/P;

    .line 394
    iput-object p3, p0, Lj$/util/stream/Q;->f:Lj$/util/stream/Q;

    return-void
.end method

.method protected constructor <init>(Lj$/util/stream/b;Lj$/util/Spliterator;Lj$/util/stream/P;)V
    .locals 2

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 376
    iput-object p1, p0, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    .line 377
    iput-object p2, p0, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    .line 378
    invoke-interface {p2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide p1

    invoke-static {p1, p2}, Lj$/util/stream/e;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lj$/util/stream/Q;->c:J

    .line 380
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lj$/util/stream/e;->b()I

    move-result p2

    shl-int/lit8 p2, p2, 0x1

    const/16 v1, 0x10

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 381
    iput-object p3, p0, Lj$/util/stream/Q;->e:Lj$/util/stream/P;

    .line 382
    iput-object v0, p0, Lj$/util/stream/Q;->f:Lj$/util/stream/Q;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 10

    .line 403
    iget-object v0, p0, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    .line 404
    iget-wide v1, p0, Lj$/util/stream/Q;->c:J

    const/4 v3, 0x0

    move-object v4, p0

    .line 406
    :goto_0
    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-lez v7, :cond_3

    .line 407
    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 408
    new-instance v6, Lj$/util/stream/Q;

    iget-object v7, v4, Lj$/util/stream/Q;->f:Lj$/util/stream/Q;

    invoke-direct {v6, v4, v5, v7}, Lj$/util/stream/Q;-><init>(Lj$/util/stream/Q;Lj$/util/Spliterator;Lj$/util/stream/Q;)V

    .line 410
    new-instance v7, Lj$/util/stream/Q;

    invoke-direct {v7, v4, v0, v6}, Lj$/util/stream/Q;-><init>(Lj$/util/stream/Q;Lj$/util/Spliterator;Lj$/util/stream/Q;)V

    const/4 v8, 0x1

    .line 416
    invoke-virtual {v4, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 419
    invoke-virtual {v7, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 420
    iget-object v9, v4, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v9, v4, Lj$/util/stream/Q;->f:Lj$/util/stream/Q;

    if-eqz v9, :cond_1

    .line 433
    invoke-virtual {v6, v8}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    .line 436
    iget-object v8, v4, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v9, v4, Lj$/util/stream/Q;->f:Lj$/util/stream/Q;

    invoke-virtual {v8, v9, v4, v6}, Lj$/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_0

    .line 439
    invoke-virtual {v4, v9}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    goto :goto_1

    .line 444
    :cond_0
    invoke-virtual {v6, v9}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    move-object v0, v5

    move-object v4, v6

    move-object v6, v7

    goto :goto_2

    :cond_2
    move-object v4, v7

    :goto_2
    xor-int/lit8 v3, v3, 0x1

    .line 460
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 471
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->getPendingCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 475
    new-instance v1, Lj$/util/stream/q;

    const/16 v2, 0x9

    .line 0
    invoke-direct {v1, v2}, Lj$/util/stream/q;-><init>(I)V

    .line 476
    iget-object v2, v4, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    .line 477
    invoke-virtual {v2, v0}, Lj$/util/stream/b;->F(Lj$/util/Spliterator;)J

    move-result-wide v5

    .line 476
    invoke-virtual {v2, v5, v6, v1}, Lj$/util/stream/b;->N(JLjava/util/function/IntFunction;)Lj$/util/stream/A0;

    move-result-object v1

    .line 479
    iget-object v2, v4, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    invoke-virtual {v2, v0, v1}, Lj$/util/stream/b;->V(Lj$/util/Spliterator;Lj$/util/stream/m2;)Lj$/util/stream/m2;

    invoke-interface {v1}, Lj$/util/stream/A0;->a()Lj$/util/stream/I0;

    move-result-object v0

    iput-object v0, v4, Lj$/util/stream/Q;->g:Lj$/util/stream/I0;

    const/4 v0, 0x0

    .line 480
    iput-object v0, v4, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    .line 482
    :cond_4
    invoke-virtual {v4}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    return-void
.end method

.method public final onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .locals 3

    .line 487
    iget-object p1, p0, Lj$/util/stream/Q;->g:Lj$/util/stream/I0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 489
    iget-object v1, p0, Lj$/util/stream/Q;->e:Lj$/util/stream/P;

    invoke-interface {p1, v1}, Lj$/util/stream/I0;->forEach(Ljava/util/function/Consumer;)V

    .line 490
    iput-object v0, p0, Lj$/util/stream/Q;->g:Lj$/util/stream/I0;

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    if-eqz p1, :cond_1

    .line 494
    iget-object v1, p0, Lj$/util/stream/Q;->a:Lj$/util/stream/b;

    iget-object v2, p0, Lj$/util/stream/Q;->e:Lj$/util/stream/P;

    invoke-virtual {v1, p1, v2}, Lj$/util/stream/b;->V(Lj$/util/Spliterator;Lj$/util/stream/m2;)Lj$/util/stream/m2;

    .line 495
    iput-object v0, p0, Lj$/util/stream/Q;->b:Lj$/util/Spliterator;

    .line 502
    :cond_1
    :goto_0
    iget-object p1, p0, Lj$/util/stream/Q;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Q;

    if-eqz p1, :cond_2

    .line 504
    invoke-virtual {p1}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    :cond_2
    return-void
.end method
