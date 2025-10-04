.class Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/InstrumentationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final latches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field messengerHandler:Landroid/os/Messenger;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field otherInstrumentations:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field typedClients:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Messenger;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eq v0, p1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eq v0, p1, :cond_0

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "This handler should not be using the main thread looper nor the instrumentation thread looper."

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public static synthetic access$000(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->doDie()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->associateLatch(Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->disassociateLatch(Ljava/util/UUID;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->getClientsForType(Ljava/lang/String;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private associateLatch(Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "InstrConnection"

    .line 5
    .line 6
    const-string v3, "clientsRegistrationFromBundle called"

    .line 7
    .line 8
    invoke-static {v2, v3, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "instr_clients"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    array-length v4, v3

    .line 50
    const/4 v5, 0x0

    .line 51
    :goto_0
    if-ge v5, v4, :cond_2

    .line 52
    .line 53
    aget-object v6, v3, v5

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    check-cast v6, Landroid/os/Messenger;

    .line 58
    .line 59
    invoke-direct {p0, v2, v6}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    check-cast v6, Landroid/os/Messenger;

    .line 64
    .line 65
    invoke-direct {p0, v2, v6}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    return-void
.end method

.method private disassociateLatch(Ljava/util/UUID;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$2;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private doDie()V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v2, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "InstrConnection"

    .line 20
    .line 21
    const-string v4, "quitting looper..."

    .line 22
    .line 23
    invoke-static {v3, v4, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 31
    .line 32
    .line 33
    const-string v2, "finishing instrumentation..."

    .line 34
    .line 35
    new-array v4, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v3, v2, v4}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$600()Landroid/app/Instrumentation;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/test/internal/runner/InstrumentationConnection;->access$602(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Landroidx/test/internal/runner/InstrumentationConnection;->access$502(Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private getClientsForType(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    new-instance v1, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$3;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method private instrBinderDied(Landroid/os/Messenger;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private notifyLatch(Ljava/util/UUID;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private registerClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 3

    .line 1
    const-string v0, "registerClient called with type = [%s] client = [%s]"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object p2, v1, v2

    .line 11
    .line 12
    const-string v2, "InstrConnection"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "type cannot be null!"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v0, "client cannot be null!"

    .line 23
    .line 24
    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Set;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :catch_1
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private sendMessageToOtherInstr(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object p2, v1, v0

    .line 13
    .line 14
    const-string v0, "InstrConnection"

    .line 15
    .line 16
    const-string v2, "sendMessageToOtherInstr() called with: what = [%s], data = [%s]"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/os/Messenger;

    .line 38
    .line 39
    invoke-direct {p0, v1, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "sendMessageWithReply type: "

    .line 2
    .line 3
    const-string v1, " called"

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v2, "InstrConnection"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 22
    .line 23
    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p3, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "instr_clients"

    .line 54
    .line 55
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/util/Set;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    new-array v1, v1, [Landroid/os/Messenger;

    .line 105
    .line 106
    invoke-interface {v3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, [Landroid/os/Messenger;

    .line 111
    .line 112
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->instrBinderDied(Landroid/os/Messenger;)V

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void
.end method

.method private unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 3

    .line 1
    const-string v0, "unregisterClient called with type = [%s] client = [%s]"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object p2, v1, v2

    .line 11
    .line 12
    const-string v2, "InstrConnection"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "type cannot be null!"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v0, "client cannot be null!"

    .line 23
    .line 24
    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0xc

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "instr_client_msgr"

    .line 8
    .line 9
    const-string v5, "instr_client_type"

    .line 10
    .line 11
    const-string v6, "InstrConnection"

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_0
    const-string v0, "handleMessage(MSG_PERFORM_CLEANUP_FINISHED)"

    .line 23
    .line 24
    new-array v1, v7, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "instr_uuid"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/UUID;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->notifyLatch(Ljava/util/UUID;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_1
    const-string v0, "handleMessage(MSG_PERFORM_CLEANUP)"

    .line 47
    .line 48
    new-array v1, v7, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$600()Landroid/app/Instrumentation;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$500()Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, v0, v2, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_2
    const-string v0, "handleMessage(MSG_REMOTE_CLEANUP_REQUEST)"

    .line 76
    .line 77
    new-array v1, v7, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_0
    const/16 v0, 0xb

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, v0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_3
    const-string v0, "handleMessage(MSG_UN_REG_CLIENT)"

    .line 118
    .line 119
    new-array v1, v7, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/os/Messenger;

    .line 141
    .line 142
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p0, v3, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_4
    const-string v0, "handleMessage(MSG_REG_CLIENT)"

    .line 155
    .line 156
    new-array v1, v7, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/os/Messenger;

    .line 178
    .line 179
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0, v7, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_5
    const-string v0, "handleMessage(MSG_REMOVE_CLIENTS_IN_BUNDLE)"

    .line 192
    .line 193
    new-array v1, v7, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {p0, p1, v7}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :pswitch_6
    const-string v0, "handleMessage(MSG_ADD_CLIENTS_IN_BUNDLE)"

    .line 208
    .line 209
    new-array v1, v7, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-direct {p0, p1, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :pswitch_7
    const-string v0, "handleMessage(MSG_REMOVE_INSTRUMENTATION)"

    .line 224
    .line 225
    new-array v1, v7, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 231
    .line 232
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 233
    .line 234
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_8
    const-string v0, "handleMessage(MSG_ADD_INSTRUMENTATION)"

    .line 240
    .line 241
    new-array v2, v7, [Ljava/lang/Object;

    .line 242
    .line 243
    invoke-static {v6, v0, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 247
    .line 248
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 249
    .line 250
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_2

    .line 255
    .line 256
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_1

    .line 263
    .line 264
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 265
    .line 266
    const/4 v2, 0x6

    .line 267
    invoke-direct {p0, v0, v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 268
    .line 269
    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-direct {p0, p1, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_0

    .line 278
    :pswitch_9
    const-string v0, "handleMessage(MSG_HANDLE_INSTRUMENTATION_FROM_BROADCAST)"

    .line 279
    .line 280
    new-array v2, v7, [Ljava/lang/Object;

    .line 281
    .line 282
    invoke-static {v6, v0, v2}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 286
    .line 287
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 288
    .line 289
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_2

    .line 294
    .line 295
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 296
    .line 297
    const/4 v0, 0x4

    .line 298
    invoke-direct {p0, p1, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :pswitch_a
    const-string p1, "handleMessage(MSG_TERMINATE)"

    .line 303
    .line 304
    new-array v0, v7, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v6, p1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-direct {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->doDie()V

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :pswitch_b
    const-string v0, "handleMessage(MSG_REMOTE_REMOVE_CLIENT)"

    .line 314
    .line 315
    new-array v1, v7, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 329
    .line 330
    invoke-direct {p0, v0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 331
    .line 332
    .line 333
    goto :goto_0

    .line 334
    :pswitch_c
    const-string v0, "handleMessage(MSG_REMOTE_ADD_CLIENT)"

    .line 335
    .line 336
    new-array v1, v7, [Ljava/lang/Object;

    .line 337
    .line 338
    invoke-static {v6, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Landroid/os/Messenger;

    .line 358
    .line 359
    invoke-direct {p0, v0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 360
    .line 361
    .line 362
    :cond_2
    :goto_0
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
