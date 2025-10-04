.class public Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/ListenableCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenableCallbackRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroidx/work/multiprocess/ListenableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/multiprocess/ListenableCallback<",
            "TI;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ListenableCallbackRbl"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/ListenableCallback;)V
    .locals 0
    .param p1    # Landroidx/work/multiprocess/ListenableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/multiprocess/ListenableCallback<",
            "TI;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    .line 5
    .line 6
    return-void
.end method

.method public static reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "Unable to notify failures in operation"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public static reportSuccess(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    .locals 2
    .param p0    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback;->onSuccess([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "Unable to notify successful operation"

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, p0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/multiprocess/ListenableCallback;->mFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/work/multiprocess/ListenableCallback;->toByteArray(Ljava/lang/Object;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v2, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportSuccess(Landroidx/work/multiprocess/IWorkManagerImplCallback;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    iget-object v1, p0, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->mCallback:Landroidx/work/multiprocess/ListenableCallback;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/work/multiprocess/ListenableCallback;->mCallback:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
