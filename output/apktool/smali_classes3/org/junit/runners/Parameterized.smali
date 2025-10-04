.class public Lorg/junit/runners/Parameterized;
.super Lorg/junit/runners/Suite;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/Parameterized$RunnersFactory;,
        Lorg/junit/runners/Parameterized$AssumptionViolationRunner;,
        Lorg/junit/runners/Parameterized$AfterParam;,
        Lorg/junit/runners/Parameterized$BeforeParam;,
        Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;,
        Lorg/junit/runners/Parameterized$Parameter;,
        Lorg/junit/runners/Parameterized$Parameters;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/junit/runners/Parameterized$RunnersFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/junit/runners/Parameterized$RunnersFactory;-><init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$1;)V

    invoke-direct {p0, p1, v0}, Lorg/junit/runners/Parameterized;-><init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$RunnersFactory;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$RunnersFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runners/Parameterized$RunnersFactory;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->access$100(Lorg/junit/runners/Parameterized$RunnersFactory;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 3
    invoke-static {p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->access$200(Lorg/junit/runners/Parameterized$RunnersFactory;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/junit/runners/Parameterized;->validateBeforeParamAndAfterParamMethods(Ljava/lang/Integer;)V

    return-void
.end method

.method private validateBeforeParamAndAfterParamMethods(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/junit/runners/Parameterized$BeforeParam;

    .line 7
    .line 8
    invoke-direct {p0, v1, p1, v0}, Lorg/junit/runners/Parameterized;->validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    const-class v1, Lorg/junit/runners/Parameterized$AfterParam;

    .line 12
    .line 13
    invoke-direct {p0, v1, p1, v0}, Lorg/junit/runners/Parameterized;->validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Lorg/junit/runners/model/InvalidTestClassError;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p1, v1, v0}, Lorg/junit/runners/model/InvalidTestClassError;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method private validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/ParentRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoid(ZLjava/util/List;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    array-length v1, v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v1, v2, :cond_0

    .line 47
    .line 48
    new-instance v1, Ljava/lang/Exception;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Method "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "() should have 0 or "

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, " parameter(s)"

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
