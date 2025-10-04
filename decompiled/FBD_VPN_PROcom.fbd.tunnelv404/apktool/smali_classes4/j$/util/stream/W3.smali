.class final Lj$/util/stream/W3;
.super Lj$/util/stream/h2;
.source "SourceFile"


# instance fields
.field b:Z

.field final synthetic c:Lj$/util/stream/X3;


# direct methods
.method constructor <init>(Lj$/util/stream/X3;Lj$/util/stream/m2;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lj$/util/stream/W3;->c:Lj$/util/stream/X3;

    invoke-direct {p0, p2}, Lj$/util/stream/h2;-><init>(Lj$/util/stream/m2;)V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lj$/util/stream/W3;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lj$/util/stream/W3;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj$/util/stream/W3;->c:Lj$/util/stream/X3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongPredicate;->test(J)Z

    throw v0
.end method

.method public final l(J)V
    .locals 2

    .line 207
    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/m2;->l(J)V

    return-void
.end method

.method public final n()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lj$/util/stream/W3;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/m2;

    invoke-interface {v0}, Lj$/util/stream/m2;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
