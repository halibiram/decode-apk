.class public Lcom/android/volley/AsyncRequestQueue;
.super Lcom/android/volley/RequestQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncRequestQueue$ThrowingCache;,
        Lcom/android/volley/AsyncRequestQueue$Builder;,
        Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;,
        Lcom/android/volley/AsyncRequestQueue$CachePutTask;,
        Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;,
        Lcom/android/volley/AsyncRequestQueue$NetworkTask;,
        Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;,
        Lcom/android/volley/AsyncRequestQueue$CacheParseTask;,
        Lcom/android/volley/AsyncRequestQueue$CacheTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCKING_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mAsyncCache:Lcom/android/volley/AsyncCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mCacheInitializationLock:Ljava/lang/Object;

.field private mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

.field private volatile mIsCacheInitialized:Z

.field private final mNetwork:Lcom/android/volley/AsyncNetwork;

.field private mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mRequestsAwaitingCacheInitialization:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mWaitingRequestManager:Lcom/android/volley/WaitingRequestManager;


# direct methods
.method private constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/AsyncNetwork;Lcom/android/volley/AsyncCache;Lcom/android/volley/ResponseDelivery;Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;)V
    .locals 1
    .param p3    # Lcom/android/volley/AsyncCache;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    .line 3
    new-instance p1, Lcom/android/volley/WaitingRequestManager;

    invoke-direct {p1, p0}, Lcom/android/volley/WaitingRequestManager;-><init>(Lcom/android/volley/RequestQueue;)V

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->mWaitingRequestManager:Lcom/android/volley/WaitingRequestManager;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->mRequestsAwaitingCacheInitialization:Ljava/util/List;

    .line 5
    iput-boolean v0, p0, Lcom/android/volley/AsyncRequestQueue;->mIsCacheInitialized:Z

    .line 6
    new-array p1, v0, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->mCacheInitializationLock:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 8
    iput-object p2, p0, Lcom/android/volley/AsyncRequestQueue;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 9
    iput-object p5, p0, Lcom/android/volley/AsyncRequestQueue;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/AsyncNetwork;Lcom/android/volley/AsyncCache;Lcom/android/volley/ResponseDelivery;Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;Lcom/android/volley/AsyncRequestQueue$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/volley/AsyncRequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/AsyncNetwork;Lcom/android/volley/AsyncCache;Lcom/android/volley/ResponseDelivery;Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/volley/AsyncRequestQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue;->onCacheInitializationComplete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/volley/AsyncRequestQueue;->handleEntry(Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->mWaitingRequestManager:Lcom/android/volley/WaitingRequestManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncNetwork;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/AsyncRequestQueue;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/AsyncRequestQueue;->finishRequest(Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private finishRequest(Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/Response<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p1, p3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-interface {p3, p1, p2}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->notifyListenerResponseReceived(Lcom/android/volley/Response;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        0x7160c9d1aa509475L    # 1.3665160730151772E238
        0x3e1272b151a31f83L    # 1.073815986259162E-9
        -0x389f834e16867824L    # -6.848469133528317E35
        0x281e52106ae1ef91L
    .end array-data
.end method

.method private static getBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$3;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/volley/AsyncRequestQueue$3;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private handleEntry(Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->mWaitingRequestManager:Lcom/android/volley/WaitingRequestManager;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/android/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/volley/AsyncRequestQueue;->sendRequestOverNetwork(Lcom/android/volley/Request;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    invoke-virtual {p1, v4, v5}, Lcom/android/volley/Cache$Entry;->isExpired(J)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue;->mWaitingRequestManager:Lcom/android/volley/WaitingRequestManager;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/android/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Lcom/android/volley/AsyncRequestQueue;->sendRequestOverNetwork(Lcom/android/volley/Request;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    iget-object v6, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    new-instance v7, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;

    .line 79
    .line 80
    move-object v0, v7

    .line 81
    move-object v1, p0

    .line 82
    move-object v2, p2

    .line 83
    move-object v3, p1

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :array_0
    .array-data 8
        -0x14b969cafa25ad98L    # -5.801238110548063E208
        -0x74f11439c20d381aL
        -0x62f412ff62831f9dL    # -9.249492805404929E-169
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 8
        0x636ba51231f47a5L
        0x574db511f146ed0eL    # 3.5721661892570245E112
        0x36910a4bf7a3ad2fL    # 7.462011392942247E-46
        0x47470a984ee97b95L    # 2.392754378902676E35
    .end array-data
.end method

.method private onCacheInitializationComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mCacheInitializationLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue;->mRequestsAwaitingCacheInitialization:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue;->mRequestsAwaitingCacheInitialization:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/android/volley/AsyncRequestQueue;->mIsCacheInitialized:Z

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/volley/Request;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/volley/AsyncRequestQueue;->beginRequest(Lcom/android/volley/Request;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method


# virtual methods
.method public beginRequest(Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/AsyncRequestQueue;->mIsCacheInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mCacheInitializationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/volley/AsyncRequestQueue;->mIsCacheInitialized:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mRequestsAwaitingCacheInitialization:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    goto :goto_1

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$CacheTask;

    .line 38
    .line 39
    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$CacheTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$CacheTask;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$CacheTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/volley/AsyncRequestQueue;->sendRequestOverNetwork(Lcom/android/volley/Request;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method public sendRequestOverNetwork(Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/volley/AsyncRequestQueue$NetworkTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/AsyncRequestQueue;->stop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/volley/AsyncRequestQueue;->getBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;->createNonBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/volley/AsyncRequestQueue;->getBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;->createBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;->createNonBlockingScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncNetwork;->setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncNetwork;->setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/android/volley/AsyncNetwork;->setNonBlockingScheduledExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$1;-><init>(Lcom/android/volley/AsyncRequestQueue;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 73
    .line 74
    new-instance v1, Lcom/android/volley/AsyncRequestQueue$2;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/volley/AsyncRequestQueue$2;-><init>(Lcom/android/volley/AsyncRequestQueue;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/volley/AsyncRequestQueue;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    :cond_2
    return-void
.end method
