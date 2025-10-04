.class public final Lorg/junit/runner/manipulation/Orderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ordering:Lorg/junit/runner/manipulation/Ordering;


# direct methods
.method public constructor <init>(Lorg/junit/runner/manipulation/Ordering;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/junit/runner/manipulation/Orderable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/junit/runner/manipulation/Orderable;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lorg/junit/runner/manipulation/Orderable;->order(Lorg/junit/runner/manipulation/Orderer;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public order(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/junit/runner/manipulation/Ordering;->orderItems(Ljava/util/Collection;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/junit/runner/manipulation/Orderer;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/junit/runner/manipulation/Ordering;->validateOrderingIsCorrect()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    new-instance p1, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    new-instance p1, Lorg/junit/runner/manipulation/InvalidOrderingException;

    .line 54
    .line 55
    const-string v0, "Ordering removed items"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    new-instance p1, Lorg/junit/runner/manipulation/InvalidOrderingException;

    .line 62
    .line 63
    const-string v0, "Ordering duplicated items"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_3
    new-instance p1, Lorg/junit/runner/manipulation/InvalidOrderingException;

    .line 70
    .line 71
    const-string v0, "Ordering added items"

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lorg/junit/runner/manipulation/InvalidOrderingException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method
