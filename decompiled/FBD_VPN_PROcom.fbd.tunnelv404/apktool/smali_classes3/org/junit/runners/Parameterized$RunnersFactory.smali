.class Lorg/junit/runners/Parameterized$RunnersFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/Parameterized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunnersFactory"
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;


# instance fields
.field private final allParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterCount:I

.field private final parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

.field private final runnerOverride:Lorg/junit/runner/Runner;

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParametersFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/junit/runners/Parameterized$RunnersFactory;->DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/junit/runners/model/TestClass;

    invoke-direct {v0, p1}, Lorg/junit/runners/model/TestClass;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    .line 4
    invoke-static {v0}, Lorg/junit/runners/Parameterized$RunnersFactory;->getParametersMethod(Lorg/junit/runners/model/TestClass;)Lorg/junit/runners/model/FrameworkMethod;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 5
    :try_start_0
    invoke-static {v0, p1}, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;

    iget-object v2, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    iget-object v3, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;-><init>(Lorg/junit/runners/model/TestClass;Ljava/lang/String;Lorg/junit/internal/AssumptionViolatedException;)V

    move-object p1, v0

    move-object v0, v1

    .line 8
    :goto_0
    iput-object p1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->runnerOverride:Lorg/junit/runner/Runner;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/junit/runners/Parameterized$RunnersFactory;->normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    :goto_1
    iput v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parameterCount:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/junit/runners/Parameterized$RunnersFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/junit/runners/Parameterized$RunnersFactory;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/runners/Parameterized$RunnersFactory;->createRunners()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lorg/junit/runners/Parameterized$RunnersFactory;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parameterCount:I

    .line 2
    .line 3
    return p0
.end method

.method private static allParameters(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    instance-of v1, v0, Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    instance-of v1, v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    check-cast v0, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-object p0

    .line 58
    :cond_3
    instance-of v1, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    check-cast v0, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_4
    invoke-static {p0, p1}, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    throw p0
.end method

.method private createRunners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->runnerOverride:Lorg/junit/runner/Runner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 11
    .line 12
    const-class v1, Lorg/junit/runners/Parameterized$Parameters;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lorg/junit/runners/Parameterized$Parameters;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->allParameters:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/junit/runners/Parameterized$Parameters;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0}, Lorg/junit/runners/Parameterized$RunnersFactory;->getParametersRunnerFactory()Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {p0, v1, v0, v2}, Lorg/junit/runners/Parameterized$RunnersFactory;->createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;Lorg/junit/runners/parameterized/ParametersRunnerFactory;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method private createRunnersForParameters(Ljava/lang/Iterable;Ljava/lang/String;Lorg/junit/runners/parameterized/ParametersRunnerFactory;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/junit/runners/parameterized/ParametersRunnerFactory;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestsForParameters(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/junit/runners/parameterized/TestWithParameters;

    .line 25
    .line 26
    invoke-interface {p3, v0}, Lorg/junit/runners/parameterized/ParametersRunnerFactory;->createRunnerForTestWithParameters(Lorg/junit/runners/parameterized/TestWithParameters;)Lorg/junit/runner/Runner;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object p2

    .line 35
    :catch_0
    iget-object p1, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    .line 36
    .line 37
    iget-object p2, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethod:Lorg/junit/runners/model/FrameworkMethod;

    .line 38
    .line 39
    invoke-static {p1, p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    throw p1
.end method

.method private createTestWithNotNormalizedParameters(Ljava/lang/String;ILjava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;
    .locals 1

    .line 1
    invoke-static {p3}, Lorg/junit/runners/Parameterized$RunnersFactory;->normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    .line 6
    .line 7
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestWithParameters(Lorg/junit/runners/model/TestClass;Ljava/lang/String;I[Ljava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private createTestWithParameters(Lorg/junit/runners/model/TestClass;Ljava/lang/String;I[Ljava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;
    .locals 2

    .line 1
    const-string v0, "\\{index\\}"

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance p3, Lorg/junit/runners/parameterized/TestWithParameters;

    .line 16
    .line 17
    const-string v0, "["

    .line 18
    .line 19
    const-string v1, "]"

    .line 20
    .line 21
    invoke-static {v0, p2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-direct {p3, p2, p1, p4}, Lorg/junit/runners/parameterized/TestWithParameters;-><init>(Ljava/lang/String;Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-object p3
.end method

.method private createTestsForParameters(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/runners/parameterized/TestWithParameters;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    invoke-direct {p0, p2, v1, v2}, Lorg/junit/runners/Parameterized$RunnersFactory;->createTestWithNotNormalizedParameters(Ljava/lang/String;ILjava/lang/Object;)Lorg/junit/runners/parameterized/TestWithParameters;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method private static getParametersMethod(Lorg/junit/runners/model/TestClass;)Lorg/junit/runners/model/FrameworkMethod;
    .locals 3

    .line 1
    const-class v0, Lorg/junit/runners/Parameterized$Parameters;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMember;->isPublic()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "No public static parameters method on class "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method private getParametersRunnerFactory()Lorg/junit/runners/parameterized/ParametersRunnerFactory;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/runners/Parameterized$RunnersFactory;->testClass:Lorg/junit/runners/model/TestClass;

    .line 2
    .line 3
    const-class v1, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/junit/runners/Parameterized$RunnersFactory;->DEFAULT_FACTORY:Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;->value()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/junit/runners/parameterized/ParametersRunnerFactory;

    .line 25
    .line 26
    return-object v0
.end method

.method private static normalizeParameters(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, [Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, [Ljava/lang/Object;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p0, v0, v1

    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
.end method

.method private static parametersMethodReturnedWrongType(Lorg/junit/runners/model/TestClass;Lorg/junit/runners/model/FrameworkMethod;)Ljava/lang/Exception;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "{0}.{1}() must return an Iterable of arrays."

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    aput-object p1, v1, p0

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Ljava/lang/Exception;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method
