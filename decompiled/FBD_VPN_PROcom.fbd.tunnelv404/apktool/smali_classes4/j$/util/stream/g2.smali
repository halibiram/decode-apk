.class public abstract Lj$/util/stream/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/k2;


# instance fields
.field protected final a:Lj$/util/stream/m2;


# direct methods
.method public constructor <init>(Lj$/util/stream/m2;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/m2;

    iput-object p1, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->h(Lj$/util/stream/k2;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->c(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/d;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1

    .line 290
    iget-object v0, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->k()V

    return-void
.end method

.method public l(J)V
    .locals 1

    .line 285
    iget-object v0, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/m2;->l(J)V

    return-void
.end method

.method public final synthetic m(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/w0;->g(Lj$/util/stream/k2;Ljava/lang/Integer;)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lj$/util/stream/g2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    return v0
.end method
