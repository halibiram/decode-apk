.class public Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;
.implements Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_START_REQUESTED:I = 0x1

.field private static final STATE_STOP_REQUESTED:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private mCurrentState:I

.field private final mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private mHasConstraints:Z

.field private volatile mJob:Lkotlinx/coroutines/Job;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mSerialExecutor:Ljava/util/concurrent/Executor;

.field private final mStartId:I

.field private final mToken:Landroidx/work/impl/StartStopToken;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field private final mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayMetCommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroidx/work/impl/StartStopToken;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/work/impl/StartStopToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 9
    .line 10
    invoke-virtual {p4}, Landroidx/work/impl/StartStopToken;->getId()Landroidx/work/impl/model/WorkGenerationalId;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mToken:Landroidx/work/impl/StartStopToken;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Landroidx/work/impl/WorkManagerImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getTrackers()Landroidx/work/impl/constraints/trackers/Trackers;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getTaskCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 55
    .line 56
    new-instance p2, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Landroidx/work/impl/constraints/trackers/Trackers;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    .line 65
    .line 66
    iput p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 67
    .line 68
    new-instance p1, Ljava/lang/Object;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    return-void
.end method

.method private cleanUp()V
    .locals 5

    .line 1
    const-string v0, "Releasing wakelock "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/Job;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/Job;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkTimer()Landroidx/work/impl/utils/WorkTimer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroidx/work/impl/utils/WorkTimer;->stopTimer(Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "for WorkSpec "

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 76
    .line 77
    .line 78
    :cond_1
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v0
.end method

.method private startWork()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 7
    .line 8
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "onAllConstraintsMet for "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getProcessor()Landroidx/work/impl/Processor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mToken:Landroidx/work/impl/StartStopToken;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkTimer()Landroidx/work/impl/utils/WorkTimer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 54
    .line 55
    const-wide/32 v2, 0x927c0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/work/impl/utils/WorkTimer;->startTimer(Landroidx/work/impl/model/WorkGenerationalId;JLandroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "Already started work for "

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method private stopWork()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    iput v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 13
    .line 14
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "Stopping work for WorkSpec "

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 40
    .line 41
    invoke-static {v1, v3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createStopWorkIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    new-instance v4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 50
    .line 51
    iget v6, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 52
    .line 53
    invoke-direct {v4, v5, v1, v6}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getProcessor()Landroidx/work/impl/Processor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "WorkSpec "

    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " needs to be rescheduled"

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createScheduleWorkIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 112
    .line 113
    new-instance v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 114
    .line 115
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 116
    .line 117
    iget v4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 118
    .line 119
    invoke-direct {v2, v3, v0, v4}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v4, "Processor does not have WorkSpec "

    .line 133
    .line 134
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ". No need to reschedule"

    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    sget-object v2, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v4, "Already stopped work for "

    .line 162
    .line 163
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->stopWork()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->startWork()V

    return-void
.end method


# virtual methods
.method public handleProcessWork()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, " ("

    .line 10
    .line 11
    invoke-static {v0, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ")"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "Acquiring wakelock "

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, "for WorkSpec "

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Landroidx/work/impl/WorkManagerImpl;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1, v0}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    .line 92
    .line 93
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 94
    .line 95
    new-instance v1, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-direct {v1, p0, v2}, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_0
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iput-boolean v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    .line 110
    .line 111
    if-nez v3, :cond_1

    .line 112
    .line 113
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v4, "No constraints for "

    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 135
    .line 136
    new-instance v1, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    invoke-direct {v1, p0, v2}, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 147
    .line 148
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCoroutineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 149
    .line 150
    invoke-static {v0, v1, v2, p0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/Job;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mJob:Lkotlinx/coroutines/Job;

    .line 155
    .line 156
    :goto_0
    return-void
.end method

.method public onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V
    .locals 1
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/constraints/ConstraintsState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p1, p2, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance p2, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p2, p0, v0}, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance p2, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p2, p0, v0}, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onExecuted(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "onExecuted "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, ", "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkGenerationalId:Landroidx/work/impl/model/WorkGenerationalId;

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createScheduleWorkIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 52
    .line 53
    iget v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 54
    .line 55
    invoke-direct {v1, v2, p1, v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-boolean p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createConstraintsChangedIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 76
    .line 77
    iget v3, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 78
    .line 79
    invoke-direct {v1, v2, p1, v3}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public onTimeLimitExceeded(Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 4
    .param p1    # Landroidx/work/impl/model/WorkGenerationalId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Exceeded time limits on execution for "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mSerialExecutor:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    new-instance v0, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, L뒉땹뒤땯땧둠듨뎡돛뒝뒝땥딅딝땦땁땠디돤딻득딠드뒈듌땅듨둣듬딄듽땟될뎨뒷둘딝땭땧뒼돰땫뎻딝땱둬딻돶땦땪땜땭도뒉돤뎬뎸땮딜든돸듟뒉들돸땄땯뎬돤땁딠돶들돼땯땦뒈뒤듸뎻딎뒾딐둑돛득딎땡딝딸돷땄땮땹땸듨돸뒨돛뒼돝딤땟됴됐돶둣땁땄따뒘땍땧땯뎽딜땵땦된돷땡돨땲듨뒘돵땨둣뒝따;-><init>(Landroidx/work/impl/background/systemalarm/DelayMetCommandHandler;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
