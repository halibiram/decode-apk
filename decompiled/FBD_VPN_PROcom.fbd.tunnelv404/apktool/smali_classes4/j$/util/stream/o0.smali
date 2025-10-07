.class final Lj$/util/stream/o0;
.super Lj$/util/stream/s0;
.source "SourceFile"


# instance fields
.field final synthetic c:Lj$/util/stream/t0;

.field final synthetic d:Ljava/util/function/Predicate;


# direct methods
.method constructor <init>(Lj$/util/stream/t0;Ljava/util/function/Predicate;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lj$/util/stream/o0;->c:Lj$/util/stream/t0;

    iput-object p2, p0, Lj$/util/stream/o0;->d:Ljava/util/function/Predicate;

    .line 85
    invoke-direct {p0, p1}, Lj$/util/stream/s0;-><init>(Lj$/util/stream/t0;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lj$/util/stream/s0;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/o0;->d:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lj$/util/stream/o0;->c:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/t0;->k(Lj$/util/stream/t0;)Z

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lj$/util/stream/s0;->a:Z

    .line 92
    invoke-static {v0}, Lj$/util/stream/t0;->j(Lj$/util/stream/t0;)Z

    move-result p1

    iput-boolean p1, p0, Lj$/util/stream/s0;->b:Z

    :cond_0
    return-void
.end method
