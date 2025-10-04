.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/volley/Request<",
            "*>;>;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 14
    .line 15
    return-void
.end method

.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private processRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/volley/NetworkDispatcher;->processRequest(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/volley/Request;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x3

    .line 4
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->sendEvent(I)V

    .line 5
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V

    .line 11
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v4, p1}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v4

    .line 12
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_2

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 13
    iget-boolean v5, v4, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_3

    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->sendEvent(I)V

    return-void

    .line 17
    :cond_1
    :try_start_2
    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 18
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_4

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v4, :cond_2

    .line 20
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_5

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    .line 23
    iget-object v4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v4, p1, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    .line 24
    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->notifyListenerResponseReceived(Lcom/android/volley/Response;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->sendEvent(I)V

    goto :goto_3

    .line 26
    :goto_1
    :try_start_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v0, [J

    fill-array-data v5, :array_6

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v3, v4, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 29
    iget-object v1, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v1, p1, v4}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_0

    .line 31
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 32
    invoke-direct {p0, p1, v3}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    return-void

    .line 34
    :goto_4
    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->sendEvent(I)V

    throw v1

    nop

    :array_0
    .array-data 8
        -0x7e812ff0fda9c27fL    # -1.797274936388368E-301
        0x4ee30dbbcfcb487L
        0x6a6b6566beb38128L    # 4.294729351446102E204
        0x1fb588afedac1780L    # 6.273727361119421E-156
    .end array-data

    :array_1
    .array-data 8
        0x4108600ba99c4dafL    # 199681.45781765642
        0x3c79da4e5f6aadb7L    # 2.2423693434048758E-17
        -0x56227792fe4773cfL    # -5.029998353395808E-107
        -0x169402925fc258c1L    # -6.695288992249744E199
        -0x73218080eeb30a44L
    .end array-data

    :array_2
    .array-data 8
        0xdb9f39703411320L    # 1.52028970275404E-242
        -0x78de1bff76f7f66eL    # -2.583685630000535E-274
        0x5ebacd3078acdafdL    # 2.1418907879826855E148
        0x7f43409a5eb464e5L    # 1.0562081088048972E305
    .end array-data

    :array_3
    .array-data 8
        -0x5cddc04cb195e1abL    # -1.9155215210810006E-139
        0x2e3e5f74669ff955L    # 6.1072694100753984E-86
        -0x16d51c0a1c6c42e2L    # -4.020180609619044E198
    .end array-data

    :array_4
    .array-data 8
        0x3f1ec3113d6b6f2L
        0x74cf88b8562f6ab1L    # 4.6238770860926347E254
        0x7a31b01d95251d93L    # 4.013409851093741E280
        -0x6913be247c89cf9eL
    .end array-data

    :array_5
    .array-data 8
        0x5549fb26a5224591L    # 7.273867375935433E102
        0x7a9c60f0c79b79b9L    # 4.121051571136467E282
        0x4a3baba873f4cfcbL    # 4.044053825615659E49
        -0x10f0619040ff1aaeL    # -9.362965171046344E226
    .end array-data

    :array_6
    .array-data 8
        -0x5d13ef32faee3e1eL
        -0x2c370db63e4d8585L    # -4.1629115644940723E95
        0x6c69aa4af73866b2L
        -0x5fa2951b8a9b00afL    # -8.776244007931849E-153
    .end array-data
.end method

.method public quit()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/volley/NetworkDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v1, 0xc

    .line 25
    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :array_0
    .array-data 8
        -0xb2f248649c38b43L    # -4.943619456057507E254
        -0xf5a2af8b1409dc1L    # -4.3385339675149895E234
        -0x7377fac0c2e73707L
        -0x16761c415aeeded1L    # -2.4771536200412437E200
        0x7f71d87438c5cac8L    # 7.832220437108162E305
        0x269396128508e2b6L    # 7.407171636137354E-123
        0x5251815c3527dee4L    # 3.482319611352164E88
        -0x483ae8c5745ee1c4L
        0x4420118922ef637cL
        0x25f78ba47ba5567fL    # 8.695796004070746E-126
        -0x22ec39c9f5a14a4aL    # -2.354823075160106E140
        0x418a7f4c9c808f81L    # 5.556878756277371E7
    .end array-data
.end method
