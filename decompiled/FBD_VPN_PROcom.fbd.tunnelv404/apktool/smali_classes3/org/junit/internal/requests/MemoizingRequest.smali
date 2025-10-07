.class abstract Lorg/junit/internal/requests/MemoizingRequest;
.super Lorg/junit/runner/Request;
.source "SourceFile"


# instance fields
.field private volatile runner:Lorg/junit/runner/Runner;

.field private final runnerLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract createRunner()Lorg/junit/runner/Runner;
.end method

.method public final getRunner()Lorg/junit/runner/Runner;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/junit/internal/requests/MemoizingRequest;->createRunner()Lorg/junit/runner/Runner;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :goto_1
    iget-object v1, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    .line 36
    .line 37
    return-object v0
.end method
