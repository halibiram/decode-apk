.class public final Landroidx/test/runner/intent/IntentStubberRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Landroidx/test/runner/intent/IntentStubber;

.field private static isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkMain()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const-string v1, "Must be called on main thread."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static getInstance()Landroidx/test/runner/intent/IntentStubber;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/test/runner/intent/IntentStubberRegistry;->checkMain()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/test/runner/intent/IntentStubberRegistry;->instance:Landroidx/test/runner/intent/IntentStubber;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "No intent monitor registered! Are you running under an Instrumentation which registers intent monitors?"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroidx/test/runner/intent/IntentStubberRegistry;->instance:Landroidx/test/runner/intent/IntentStubber;

    .line 17
    .line 18
    return-object v0
.end method

.method public static isLoaded()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static load(Landroidx/test/runner/intent/IntentStubber;)V
    .locals 2

    .line 1
    const-string v0, "IntentStubber cannot be null!"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/2addr v0, v1

    .line 14
    const-string v1, "Intent stubber already registered! Multiple stubbers are notallowedAre you running under an "

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object p0, Landroidx/test/runner/intent/IntentStubberRegistry;->instance:Landroidx/test/runner/intent/IntentStubber;

    .line 20
    .line 21
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 3

    .line 1
    const-class v0, Landroidx/test/runner/intent/IntentStubberRegistry;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Landroidx/test/runner/intent/IntentStubberRegistry;->instance:Landroidx/test/runner/intent/IntentStubber;

    .line 6
    .line 7
    sget-object v1, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v1
.end method
