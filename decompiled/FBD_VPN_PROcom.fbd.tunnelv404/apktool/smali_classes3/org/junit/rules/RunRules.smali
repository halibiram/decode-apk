.class public Lorg/junit/rules/RunRules;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# instance fields
.field private final statement:Lorg/junit/runners/model/Statement;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/lang/Iterable<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lorg/junit/rules/RunRules;->applyAll(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/junit/rules/RunRules;->statement:Lorg/junit/runners/model/Statement;

    .line 9
    .line 10
    return-void
.end method

.method private static applyAll(Lorg/junit/runners/model/Statement;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/lang/Iterable<",
            "Lorg/junit/rules/TestRule;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")",
            "Lorg/junit/runners/model/Statement;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/junit/rules/TestRule;

    .line 16
    .line 17
    invoke-interface {v0, p0, p2}, Lorg/junit/rules/TestRule;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p0
.end method


# virtual methods
.method public evaluate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/rules/RunRules;->statement:Lorg/junit/runners/model/Statement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
