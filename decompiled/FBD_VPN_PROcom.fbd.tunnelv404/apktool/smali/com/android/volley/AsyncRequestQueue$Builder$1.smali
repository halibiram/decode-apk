.class Lcom/android/volley/AsyncRequestQueue$Builder$1;
.super Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$Builder;->getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue$Builder;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1;->this$0:Lcom/android/volley/AsyncRequestQueue$Builder;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    const/4 v1, 0x0

    .line 10
    const-wide/16 v3, 0x3c

    .line 11
    .line 12
    move-object v0, v8

    .line 13
    move v2, p1

    .line 14
    move-object v6, p3

    .line 15
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 16
    .line 17
    .line 18
    return-object v8
.end method

.method private getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;-><init>(Lcom/android/volley/AsyncRequestQueue$Builder$1;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public createBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {p0, v1, v0, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x80584333ae888a5L    # -8.744460937635877E269
        0x4ac7c931f96a220aL    # 1.7798737544773356E52
        0x39313601fc21c1e1L    # 3.314711823290457E-33
    .end array-data
.end method

.method public createNonBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, v1, v0, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x5a0ca138635e3dd3L    # -7.153798008146845E-126
        -0x684e7d5047ef18eL
        -0x491068a20e04e0c4L    # -4.426880828327183E-44
        -0x6fee8381a58ddcddL
    .end array-data
.end method

.method public createNonBlockingScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p0, v1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :array_0
    .array-data 8
        0x13fdf6b239ee8971L
        -0x196dcb3795aa5ba9L    # -1.237759429936848E186
        0x2d38fc537f958b9dL    # 7.666055415311341E-91
        0x332813d24a086c4fL    # 2.9264492038362704E-62
    .end array-data
.end method
