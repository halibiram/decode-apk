.class final Lj$/util/stream/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/S1;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/I1;->c:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/w0;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lj$/util/stream/I1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lj$/util/stream/I1;->a:Z

    .line 121
    iput-object p1, p0, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lj$/util/stream/I1;->c:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/util/stream/S1;)V
    .locals 1

    .line 107
    check-cast p1, Lj$/util/stream/I1;

    .line 134
    iget-boolean v0, p1, Lj$/util/stream/I1;->a:Z

    if-nez v0, :cond_0

    .line 135
    iget-object p1, p1, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lj$/util/stream/I1;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 129
    iget-boolean v0, p0, Lj$/util/stream/I1;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/util/Optional;->a()Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->b(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final synthetic k()V
    .locals 0

    return-void
.end method

.method public final l(J)V
    .locals 0

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lj$/util/stream/I1;->a:Z

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lj$/util/stream/I1;->b:Ljava/lang/Object;

    return-void
.end method

.method public final synthetic n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
