.class public Lorg/junit/internal/runners/statements/RunBefores;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# instance fields
.field private final befores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/internal/runners/statements/RunBefores;->next:Lorg/junit/runners/model/Statement;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/junit/internal/runners/statements/RunBefores;->befores:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/junit/internal/runners/statements/RunBefores;->target:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->befores:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/statements/RunBefores;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->next:Lorg/junit/runners/model/Statement;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->target:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method
