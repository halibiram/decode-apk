.class public final Landroidx/work/multiprocess/RemoteWorkManagerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static volatile sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mConfiguration:Landroidx/work/Configuration;

.field private final mForegroundUpdater:Landroidx/work/ForegroundUpdater;

.field private final mProgressUpdater:Landroidx/work/ProgressUpdater;

.field private final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/work/impl/WorkManagerImpl;->getInstance()Landroidx/work/impl/WorkManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v0, p1, Landroidx/work/Configuration$Provider;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast p1, Landroidx/work/Configuration$Provider;

    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/work/Configuration$Provider;->getWorkManagerConfiguration()Landroidx/work/Configuration;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroidx/work/Configuration$Builder;->setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 58
    .line 59
    :goto_0
    new-instance p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 71
    .line 72
    :goto_1
    new-instance p1, Landroidx/work/multiprocess/RemoteProgressUpdater;

    .line 73
    .line 74
    invoke-direct {p1}, Landroidx/work/multiprocess/RemoteProgressUpdater;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    .line 78
    .line 79
    new-instance p1, Landroidx/work/multiprocess/RemoteForegroundUpdater;

    .line 80
    .line 81
    invoke-direct {p1}, Landroidx/work/multiprocess/RemoteForegroundUpdater;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 85
    .line 86
    return-void
.end method

.method public static clearInstance()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/work/multiprocess/RemoteWorkManagerInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroidx/work/multiprocess/RemoteWorkManagerInfo;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->sInstance:Landroidx/work/multiprocess/RemoteWorkManagerInfo;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public getConfiguration()Landroidx/work/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mConfiguration:Landroidx/work/Configuration;

    .line 2
    .line 3
    return-object v0
.end method

.method public getForegroundUpdater()Landroidx/work/ForegroundUpdater;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mForegroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgressUpdater()Landroidx/work/ProgressUpdater;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mProgressUpdater:Landroidx/work/ProgressUpdater;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerInfo;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 2
    .line 3
    return-object v0
.end method
