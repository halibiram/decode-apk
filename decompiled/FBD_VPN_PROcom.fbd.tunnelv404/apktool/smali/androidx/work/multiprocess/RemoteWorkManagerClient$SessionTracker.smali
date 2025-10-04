.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionTracker"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SessionHandler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;)V
    .locals 0
    .param p1    # Landroidx/work/multiprocess/RemoteWorkManagerClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionIndex()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionLock()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getSessionIndex()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iget-object v5, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getCurrentSession()Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    cmp-long v6, v0, v3

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "Unbinding service"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Landroidx/work/multiprocess/RemoteWorkManagerClient$Session;->onBindingDied()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Landroidx/work/multiprocess/RemoteWorkManagerClient$SessionTracker;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "Ignoring request to unbind."

    .line 65
    .line 66
    invoke-virtual {v0, v1, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    monitor-exit v2

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw v0
.end method
