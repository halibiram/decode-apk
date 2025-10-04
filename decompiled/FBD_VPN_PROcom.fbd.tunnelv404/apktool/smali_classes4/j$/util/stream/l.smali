.class final Lj$/util/stream/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Collector;


# instance fields
.field private final a:Lj$/util/stream/k;

.field private final b:Lj$/util/stream/k;

.field private final c:Lj$/util/stream/k;

.field private final d:Lj$/util/stream/k;

.field private final e:Ljava/util/Set;


# direct methods
.method constructor <init>(Lj$/util/stream/k;Lj$/util/stream/k;Lj$/util/stream/k;Ljava/util/Set;)V
    .locals 2

    .line 218
    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    .line 186
    new-instance v0, Lj$/util/stream/k;

    const/4 v1, 0x1

    .line 0
    invoke-direct {v0, v1}, Lj$/util/stream/k;-><init>(I)V

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lj$/util/stream/l;->a:Lj$/util/stream/k;

    .line 208
    iput-object p2, p0, Lj$/util/stream/l;->b:Lj$/util/stream/k;

    .line 209
    iput-object p3, p0, Lj$/util/stream/l;->c:Lj$/util/stream/k;

    .line 210
    iput-object v0, p0, Lj$/util/stream/l;->d:Lj$/util/stream/k;

    .line 211
    iput-object p4, p0, Lj$/util/stream/l;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accumulator()Ljava/util/function/BiConsumer;
    .locals 1

    .line 223
    iget-object v0, p0, Lj$/util/stream/l;->b:Lj$/util/stream/k;

    return-object v0
.end method

.method public final characteristics()Ljava/util/Set;
    .locals 1

    .line 243
    iget-object v0, p0, Lj$/util/stream/l;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final combiner()Ljava/util/function/BinaryOperator;
    .locals 1

    .line 233
    iget-object v0, p0, Lj$/util/stream/l;->c:Lj$/util/stream/k;

    return-object v0
.end method

.method public final finisher()Ljava/util/function/Function;
    .locals 1

    .line 238
    iget-object v0, p0, Lj$/util/stream/l;->d:Lj$/util/stream/k;

    return-object v0
.end method

.method public final supplier()Ljava/util/function/Supplier;
    .locals 1

    .line 228
    iget-object v0, p0, Lj$/util/stream/l;->a:Lj$/util/stream/k;

    return-object v0
.end method
