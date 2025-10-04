.class Lorg/junit/runners/Parameterized$AssumptionViolationRunner;
.super Lorg/junit/runner/Runner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/Parameterized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssumptionViolationRunner"
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final exception:Lorg/junit/internal/AssumptionViolatedException;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/TestClass;Ljava/lang/String;Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, "() assumption violation"

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    .line 30
    .line 31
    iput-object p3, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->exception:Lorg/junit/internal/AssumptionViolatedException;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    .line 2
    .line 3
    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/junit/runner/notification/Failure;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->exception:Lorg/junit/internal/AssumptionViolatedException;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
