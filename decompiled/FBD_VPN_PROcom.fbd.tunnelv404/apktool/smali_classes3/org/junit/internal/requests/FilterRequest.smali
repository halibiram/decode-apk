.class public final Lorg/junit/internal/requests/FilterRequest;
.super Lorg/junit/runner/Request;
.source "SourceFile"


# instance fields
.field private final fFilter:Lorg/junit/runner/manipulation/Filter;

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Filter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    new-instance v0, Lorg/junit/internal/runners/ErrorReportingRunner;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/Exception;

    .line 16
    .line 17
    iget-object v2, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/junit/runner/manipulation/Filter;->describe()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v5, "No tests found matching "

    .line 32
    .line 33
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " from "

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-class v2, Lorg/junit/runner/manipulation/Filter;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method
