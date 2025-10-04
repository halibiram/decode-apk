.class public Landroidx/work/multiprocess/RemoteWorkContinuationImpl;
.super Landroidx/work/multiprocess/RemoteWorkContinuation;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

.field private final mContinuation:Landroidx/work/WorkContinuation;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V
    .locals 0
    .param p1    # Landroidx/work/multiprocess/RemoteWorkManagerClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkContinuation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/work/multiprocess/RemoteWorkContinuation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public combineInternal(Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "EnqueueWork"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/work/multiprocess/RemoteWorkContinuation;

    .line 25
    .line 26
    check-cast v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1}, Landroidx/work/WorkContinuation;->combine(Ljava/util/List;)Landroidx/work/WorkContinuation;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 41
    .line 42
    invoke-direct {v0, v1, p1}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public enqueue()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/work/multiprocess/RemoteWorkManagerClient;->enqueue(Landroidx/work/WorkContinuation;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public then(Ljava/util/List;)Landroidx/work/multiprocess/RemoteWorkContinuation;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "EnqueueWork"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Landroidx/work/multiprocess/RemoteWorkContinuation;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mClient:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;->mContinuation:Landroidx/work/WorkContinuation;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroidx/work/WorkContinuation;->then(Ljava/util/List;)Landroidx/work/WorkContinuation;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroidx/work/multiprocess/RemoteWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Landroidx/work/WorkContinuation;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
