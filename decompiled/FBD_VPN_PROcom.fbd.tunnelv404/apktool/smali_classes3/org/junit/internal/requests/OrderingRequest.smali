.class public Lorg/junit/internal/requests/OrderingRequest;
.super Lorg/junit/internal/requests/MemoizingRequest;
.source "SourceFile"


# instance fields
.field private final ordering:Lorg/junit/runner/manipulation/Ordering;

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Ordering;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/internal/requests/MemoizingRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/internal/requests/OrderingRequest;->request:Lorg/junit/runner/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createRunner()Lorg/junit/runner/Runner;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/junit/internal/requests/OrderingRequest;->request:Lorg/junit/runner/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Ordering;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/InvalidOrderingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lorg/junit/internal/runners/ErrorReportingRunner;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method
