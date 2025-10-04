.class public abstract Landroidx/camera/core/impl/StateObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/StateObservable$ErrorWrapper;,
        Landroidx/camera/core/impl/StateObservable$ObserverWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INITIAL_VERSION:I


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/camera/core/impl/StateObservable$ObserverWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdating:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVersion:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mWrapperMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;",
            "Landroidx/camera/core/impl/StateObservable$ObserverWrapper<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/camera/core/impl/StateObservable;->mVersion:I

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/camera/core/impl/StateObservable;->mUpdating:Z

    .line 15
    .line 16
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mWrapperMap:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    instance-of p2, p1, Ljava/lang/Throwable;

    .line 33
    .line 34
    const-string v0, "Initial errors must be Throwable"

    .line 35
    .line 36
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/Throwable;

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;->wrap(Ljava/lang/Throwable;)Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Landroidx/camera/core/impl/StateObservable;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Landroidx/camera/core/impl/StateObservable;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private removeObserverLocked(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mWrapperMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->close()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private updateStateInternal(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/impl/StateObservable;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget p1, p0, Landroidx/camera/core/impl/StateObservable;->mVersion:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    add-int/2addr p1, v1

    .line 24
    iput p1, p0, Landroidx/camera/core/impl/StateObservable;->mVersion:I

    .line 25
    .line 26
    iget-boolean v2, p0, Landroidx/camera/core/impl/StateObservable;->mUpdating:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1
    iput-boolean v1, p0, Landroidx/camera/core/impl/StateObservable;->mUpdating:Z

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/camera/core/impl/StateObservable;->mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->update(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_1
    iget v0, p0, Landroidx/camera/core/impl/StateObservable;->mVersion:I

    .line 61
    .line 62
    if-ne v0, p1, :cond_3

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Landroidx/camera/core/impl/StateObservable;->mUpdating:Z

    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object p1, p0, Landroidx/camera/core/impl/StateObservable;->mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget v0, p0, Landroidx/camera/core/impl/StateObservable;->mVersion:I

    .line 78
    .line 79
    monitor-exit v1

    .line 80
    move-object v1, p1

    .line 81
    move p1, v0

    .line 82
    goto :goto_0

    .line 83
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    throw p1

    .line 85
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p1
.end method


# virtual methods
.method public addObserver(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/camera/core/impl/StateObservable;->removeObserverLocked(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/camera/core/impl/StateObservable;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v1, v2, p1, p2}, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/Observable$Observer;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroidx/camera/core/impl/StateObservable;->mWrapperMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/camera/core/impl/StateObservable;->mNotifySet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v1, p1}, Landroidx/camera/core/impl/StateObservable$ObserverWrapper;->update(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public fetchData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;->getError()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public removeObserver(Landroidx/camera/core/impl/Observable$Observer;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/Observable$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Observable$Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/StateObservable;->removeObserverLocked(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public removeObservers()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/StateObservable;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/camera/core/impl/StateObservable;->mWrapperMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/camera/core/impl/Observable$Observer;

    .line 30
    .line 31
    invoke-direct {p0, v2}, Landroidx/camera/core/impl/StateObservable;->removeObserverLocked(Landroidx/camera/core/impl/Observable$Observer;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public updateState(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/StateObservable;->updateStateInternal(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateStateAsError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/camera/core/impl/StateObservable$ErrorWrapper;->wrap(Ljava/lang/Throwable;)Landroidx/camera/core/impl/StateObservable$ErrorWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/StateObservable;->updateStateInternal(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
