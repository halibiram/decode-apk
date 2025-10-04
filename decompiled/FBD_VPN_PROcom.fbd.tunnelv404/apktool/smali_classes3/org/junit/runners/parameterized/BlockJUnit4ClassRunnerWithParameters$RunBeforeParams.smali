.class Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;
.super Lorg/junit/internal/runners/statements/RunBefores;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunBeforeParams"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;


# direct methods
.method public constructor <init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;->this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p3, p1}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;->this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;

    .line 16
    .line 17
    invoke-static {v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->access$000(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void
.end method
