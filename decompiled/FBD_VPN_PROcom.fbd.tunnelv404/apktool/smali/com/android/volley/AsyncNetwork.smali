.class public abstract Lcom/android/volley/AsyncNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Network;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncNetwork$OnRequestComplete;
    }
.end annotation


# instance fields
.field private mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBlockingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNonBlockingExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNonBlockingScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncNetwork;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    new-instance v4, Lcom/android/volley/AsyncNetwork$1;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/volley/AsyncNetwork$1;-><init>(Lcom/android/volley/AsyncNetwork;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, p1, v4}, Lcom/android/volley/AsyncNetwork;->performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 5
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/NetworkResponse;

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/volley/VolleyError;

    throw p1

    .line 10
    :cond_1
    new-instance p1, Lcom/android/volley/VolleyError;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :array_0
    .array-data 8
        0x442a750d555d73eL
        0x25aeb7c628711f7eL    # 3.545217661189779E-127
        -0x303d0dafffa79930L    # -1.7139520826385367E76
        0x143389f434b2e841L
        -0x37dc813eea68f786L    # -3.3169251250785525E39
    .end array-data

    :array_1
    .array-data 8
        0x51804612d691ab3dL    # 3.951807402021482E84
        -0x160509159af7a520L    # -3.3024001999977034E202
        0x568c7951c3a689eeL    # 8.359021968118369E108
        0x1558eb21709a8cf5L    # 7.761479315475235E-206
        0x36fcdc1763f77b39L    # 8.08821960143821E-44
    .end array-data
.end method

.method public abstract performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncNetwork;->mBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-void
.end method

.method public setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncNetwork;->mNonBlockingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-void
.end method

.method public setNonBlockingScheduledExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncNetwork;->mNonBlockingScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-void
.end method
