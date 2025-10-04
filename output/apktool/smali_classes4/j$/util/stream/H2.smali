.class final Lj$/util/stream/H2;
.super Lj$/util/stream/d2;
.source "SourceFile"


# instance fields
.field private final n:Z

.field private final o:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lj$/util/stream/e2;)V
    .locals 2

    .line 111
    sget v0, Lj$/util/stream/a3;->q:I

    sget v1, Lj$/util/stream/a3;->o:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/b;II)V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lj$/util/stream/H2;->n:Z

    .line 116
    invoke-static {}, Lj$/util/Comparator$-CC;->a()Ljava/util/Comparator;

    move-result-object p1

    .line 117
    iput-object p1, p0, Lj$/util/stream/H2;->o:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/e2;Ljava/util/Comparator;)V
    .locals 2

    .line 126
    sget v0, Lj$/util/stream/a3;->q:I

    sget v1, Lj$/util/stream/a3;->p:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/d2;-><init>(Lj$/util/stream/b;II)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lj$/util/stream/H2;->n:Z

    .line 129
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lj$/util/stream/H2;->o:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final O(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 2

    .line 152
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {p1}, Lj$/util/stream/b;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/H2;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->B(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/I0;->o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lj$/util/stream/H2;->o:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    new-instance p2, Lj$/util/stream/L0;

    invoke-direct {p2, p1}, Lj$/util/stream/L0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final R(ILj$/util/stream/m2;)Lj$/util/stream/m2;
    .locals 1

    .line 134
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/H2;->n:Z

    if-eqz v0, :cond_0

    return-object p2

    .line 140
    :cond_0
    sget-object v0, Lj$/util/stream/a3;->SIZED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->n(I)Z

    move-result p1

    iget-object v0, p0, Lj$/util/stream/H2;->o:Ljava/util/Comparator;

    if-eqz p1, :cond_1

    .line 141
    new-instance p1, Lj$/util/stream/M2;

    .line 348
    invoke-direct {p1, p2, v0}, Lj$/util/stream/A2;-><init>(Lj$/util/stream/m2;Ljava/util/Comparator;)V

    return-object p1

    .line 143
    :cond_1
    new-instance p1, Lj$/util/stream/I2;

    .line 388
    invoke-direct {p1, p2, v0}, Lj$/util/stream/A2;-><init>(Lj$/util/stream/m2;Ljava/util/Comparator;)V

    return-object p1
.end method
