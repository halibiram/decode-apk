.class public final synthetic Lj$/util/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# instance fields
.field public final synthetic a:Lj$/util/W;


# direct methods
.method private synthetic constructor <init>(Lj$/util/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/V;->a:Lj$/util/W;

    return-void
.end method

.method public static synthetic a(Lj$/util/W;)Ljava/util/Spliterator$OfInt;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/util/U;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/util/U;

    iget-object p0, p0, Lj$/util/U;->a:Ljava/util/Spliterator$OfInt;

    return-object p0

    :cond_1
    new-instance v0, Lj$/util/V;

    invoke-direct {v0, p0}, Lj$/util/V;-><init>(Lj$/util/W;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    instance-of v1, p1, Lj$/util/V;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/util/V;

    iget-object p1, p1, Lj$/util/V;->a:Lj$/util/W;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/c0;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/W;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/c0;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0, p1}, Lj$/util/W;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public final synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/W;->trySplit()Lj$/util/W;

    move-result-object v0

    invoke-static {v0}, Lj$/util/V;->a(Lj$/util/W;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/c0;->trySplit()Lj$/util/c0;

    move-result-object v0

    invoke-static {v0}, Lj$/util/b0;->a(Lj$/util/c0;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/V;->a:Lj$/util/W;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
