.class Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;
.super Lorg/junit/experimental/theories/PotentialAssignment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/theories/internal/AllMembersSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodParameterValue"
.end annotation


# instance fields
.field private final method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method private constructor <init>(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/junit/experimental/theories/PotentialAssignment;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/AllMembersSupplier$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;-><init>(Lorg/junit/runners/model/FrameworkMethod;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    .line 3
    .line 4
    new-array v2, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;->method:Lorg/junit/runners/model/FrameworkMethod;

    .line 14
    .line 15
    const-class v3, Lorg/junit/experimental/theories/DataPoint;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lorg/junit/experimental/theories/DataPoint;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lorg/junit/experimental/theories/DataPoint;->ignoredExceptions()[Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->access$000([Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    :cond_1
    invoke-static {v0}, Lorg/junit/Assume;->assumeTrue(Z)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v1, "unexpected: getMethods returned an inaccessible method"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string v1, "unexpected: argument length is checked"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method
