.class final Lj$/util/concurrent/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/Z;


# instance fields
.field a:J

.field final b:J

.field final c:J

.field final d:J


# direct methods
.method constructor <init>(JJJJ)V
    .locals 0

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-wide p1, p0, Lj$/util/concurrent/z;->a:J

    iput-wide p3, p0, Lj$/util/concurrent/z;->b:J

    .line 850
    iput-wide p5, p0, Lj$/util/concurrent/z;->c:J

    iput-wide p7, p0, Lj$/util/concurrent/z;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lj$/util/concurrent/z;
    .locals 10

    .line 854
    iget-wide v1, p0, Lj$/util/concurrent/z;->a:J

    iget-wide v3, p0, Lj$/util/concurrent/z;->b:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 856
    :cond_0
    new-instance v9, Lj$/util/concurrent/z;

    iput-wide v3, p0, Lj$/util/concurrent/z;->a:J

    iget-wide v5, p0, Lj$/util/concurrent/z;->c:J

    iget-wide v7, p0, Lj$/util/concurrent/z;->d:J

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/z;-><init>(JJJJ)V

    :goto_0
    return-object v0
.end method

.method public final characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    .line 860
    iget-wide v0, p0, Lj$/util/concurrent/z;->b:J

    iget-wide v2, p0, Lj$/util/concurrent/z;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/z;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->c(Lj$/util/Z;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 9

    .line 880
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    iget-wide v0, p0, Lj$/util/concurrent/z;->a:J

    .line 882
    iget-wide v2, p0, Lj$/util/concurrent/z;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 883
    iput-wide v2, p0, Lj$/util/concurrent/z;->a:J

    .line 885
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    .line 887
    :cond_0
    iget-wide v5, p0, Lj$/util/concurrent/z;->c:J

    iget-wide v7, p0, Lj$/util/concurrent/z;->d:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lj$/util/concurrent/ThreadLocalRandom;->e(JJ)J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    :cond_1
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/b;->d(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->e(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 841
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/concurrent/z;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->h(Lj$/util/Z;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 7

    .line 869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    iget-wide v0, p0, Lj$/util/concurrent/z;->a:J

    iget-wide v2, p0, Lj$/util/concurrent/z;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 872
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    iget-wide v3, p0, Lj$/util/concurrent/z;->c:J

    iget-wide v5, p0, Lj$/util/concurrent/z;->d:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lj$/util/concurrent/ThreadLocalRandom;->e(JJ)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 873
    iput-wide v0, p0, Lj$/util/concurrent/z;->a:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/z;->a()Lj$/util/concurrent/z;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/Z;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/z;->a()Lj$/util/concurrent/z;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic trySplit()Lj$/util/c0;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lj$/util/concurrent/z;->a()Lj$/util/concurrent/z;

    move-result-object v0

    return-object v0
.end method
