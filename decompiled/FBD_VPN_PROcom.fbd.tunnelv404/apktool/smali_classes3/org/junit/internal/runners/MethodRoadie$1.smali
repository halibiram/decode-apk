.class Lorg/junit/internal/runners/MethodRoadie$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/internal/runners/MethodRoadie;->runWithTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/runners/MethodRoadie;

.field final synthetic val$timeout:J


# direct methods
.method public constructor <init>(Lorg/junit/internal/runners/MethodRoadie;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    .line 2
    .line 3
    iput-wide p2, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/junit/internal/runners/MethodRoadie$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/junit/internal/runners/MethodRoadie$1$1;-><init>(Lorg/junit/internal/runners/MethodRoadie$1;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-wide v2, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    .line 18
    .line 19
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catch_1
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    .line 46
    .line 47
    new-instance v1, Lorg/junit/runners/model/TestTimedOutException;

    .line 48
    .line 49
    iget-wide v2, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    .line 50
    .line 51
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    .line 53
    invoke-direct {v1, v2, v3, v4}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void
.end method
