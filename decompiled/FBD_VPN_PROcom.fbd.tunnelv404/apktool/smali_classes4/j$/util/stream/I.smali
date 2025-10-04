.class final Lj$/util/stream/I;
.super Lj$/util/stream/J;
.source "SourceFile"


# static fields
.field static final c:Lj$/util/stream/E;

.field static final d:Lj$/util/stream/E;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 197
    new-instance v6, Lj$/util/stream/E;

    sget-object v7, Lj$/util/stream/b3;->REFERENCE:Lj$/util/stream/b3;

    .line 198
    invoke-static {}, Lj$/util/Optional;->a()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lj$/util/stream/q;

    const/16 v0, 0x8

    .line 0
    invoke-direct {v4, v0}, Lj$/util/stream/q;-><init>(I)V

    .line 198
    new-instance v5, Lj$/util/stream/k;

    const/16 v0, 0x9

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/k;-><init>(I)V

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, v7

    .line 198
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/E;-><init>(ZLj$/util/stream/b3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/I;->c:Lj$/util/stream/E;

    .line 201
    new-instance v6, Lj$/util/stream/E;

    .line 202
    invoke-static {}, Lj$/util/Optional;->a()Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lj$/util/stream/q;

    const/16 v0, 0x8

    .line 0
    invoke-direct {v4, v0}, Lj$/util/stream/q;-><init>(I)V

    .line 202
    new-instance v5, Lj$/util/stream/k;

    const/16 v0, 0x9

    .line 0
    invoke-direct {v5, v0}, Lj$/util/stream/k;-><init>(I)V

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, v7

    .line 202
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/E;-><init>(ZLj$/util/stream/b3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/I;->d:Lj$/util/stream/E;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 194
    iget-boolean v0, p0, Lj$/util/stream/J;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/J;->b:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->b(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
