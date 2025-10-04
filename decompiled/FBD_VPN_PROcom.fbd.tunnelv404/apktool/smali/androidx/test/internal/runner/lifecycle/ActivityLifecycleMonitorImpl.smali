.class public final Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LifecycleMonitor"


# instance fields
.field private activityStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final declawThreadCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 5
    iput-boolean p1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    return-void
.end method

.method private checkMainThread()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Querying activity state off main thread is not allowed."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method


# virtual methods
.method public addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    if-ne v3, p1, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/runner/lifecycle/Stage;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/app/Activity;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-ne p1, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method

.method public getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/app/Activity;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ne p1, v2, :cond_0

    .line 42
    .line 43
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unknown activity: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 27
    .line 28
    invoke-static {v4}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/app/Activity;

    .line 37
    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-ne p2, v5, :cond_0

    .line 45
    .line 46
    invoke-static {v4, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$102(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 54
    .line 55
    new-instance v3, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 56
    .line 57
    invoke-direct {v3, p2, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;-><init>(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 64
    .line 65
    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 89
    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :try_start_1
    invoke-interface {v4, p2, p1}, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;->onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catch_0
    :try_start_2
    const-string v5, "Callback threw exception! (callback: %s activity: %s stage: %s)"

    .line 103
    .line 104
    const/4 v6, 0x3

    .line 105
    new-array v6, v6, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v4, v6, v0

    .line 108
    .line 109
    aput-object p2, v6, v2

    .line 110
    .line 111
    const/4 v4, 0x2

    .line 112
    aput-object p1, v6, v4

    .line 113
    .line 114
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    monitor-exit v1

    .line 119
    return-void

    .line 120
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    throw p1
.end method
