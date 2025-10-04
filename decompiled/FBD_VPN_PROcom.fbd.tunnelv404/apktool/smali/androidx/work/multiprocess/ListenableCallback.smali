.class public abstract Landroidx/work/multiprocess/ListenableCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/util/concurrent/ListenableFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/work/multiprocess/IWorkManagerImplCallback;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/multiprocess/ListenableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public dispatchCallbackSafely()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;-><init>(Landroidx/work/multiprocess/ListenableCallback;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/work/multiprocess/ListenableCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public abstract toByteArray(Ljava/lang/Object;)[B
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)[B"
        }
    .end annotation
.end method
