.class public Lorg/junit/internal/runners/statements/FailOnTimeout;
.super Lorg/junit/runners/model/Statement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;,
        Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    }
.end annotation


# instance fields
.field private final lookForStuckThread:Z

.field private final originalStatement:Lorg/junit/runners/model/Statement;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method private constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    .line 5
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 6
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$200(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    iput-object p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$300(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/Statement;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/junit/internal/runners/statements/FailOnTimeout;)Lorg/junit/runners/model/Statement;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    .line 2
    .line 3
    return-object p0
.end method

.method public static builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .locals 2

    .line 1
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private cpuTime(Ljava/lang/Thread;)J
    .locals 3

    .line 1
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory;->getThreadMXBean()Lorg/junit/internal/management/ThreadMXBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/junit/internal/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-interface {v0, v1, v2}, Lorg/junit/internal/management/ThreadMXBean;->getThreadCpuTime(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-wide v0

    .line 20
    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method private createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Lorg/junit/runners/model/TestTimedOutException;

    .line 16
    .line 17
    iget-wide v3, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 18
    .line 19
    iget-object v5, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-direct {v2, v3, v4, v5}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    new-instance p1, Ljava/lang/Exception;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Appears to be stuck in thread "

    .line 39
    .line 40
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lorg/junit/runners/model/MultipleFailureException;

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    new-array v1, v1, [Ljava/lang/Throwable;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    aput-object v2, v1, v3

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aput-object p1, v1, v2

    .line 74
    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Lorg/junit/runners/model/MultipleFailureException;-><init>(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    return-object v2
.end method

.method private getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Throwable;

    .line 16
    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    .line 28
    return-object p1

    .line 29
    :catch_2
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    return-object p1
.end method

.method private getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 8
    .line 9
    return-object p1
.end method

.method private getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getThreadsInGroup(Ljava/lang/ThreadGroup;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/Thread;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v7, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    .line 41
    .line 42
    if-ne v6, v7, :cond_1

    .line 43
    .line 44
    invoke-direct {p0, v5}, Lorg/junit/internal/runners/statements/FailOnTimeout;->cpuTime(Ljava/lang/Thread;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    cmp-long v8, v6, v3

    .line 51
    .line 52
    if-lez v8, :cond_1

    .line 53
    .line 54
    :cond_2
    move-object v1, v5

    .line 55
    move-wide v3, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    if-ne v1, p1, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move-object v2, v1

    .line 61
    :goto_1
    return-object v2
.end method

.method private getThreadsInGroup(Ljava/lang/ThreadGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    const/4 v3, 0x5

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    new-array v3, v0, [Ljava/lang/Thread;

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v4, v0, :cond_0

    .line 25
    .line 26
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x64

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method private threadGroupForNewThread()Ljava/lang/ThreadGroup;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ThreadGroup;

    .line 8
    .line 9
    const-string v1, "FailOnTimeoutGroup"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->isDaemon()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ThreadGroup;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .locals 5

    .line 1
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/FutureTask;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroupForNewThread()Ljava/lang/ThreadGroup;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/Thread;

    .line 17
    .line 18
    const-string v4, "Time-limited test"

    .line 19
    .line 20
    invoke-direct {v3, v2, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->awaitStarted()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    throw v0
.end method
