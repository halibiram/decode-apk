.class public final Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloseableErrorListener"
.end annotation


# instance fields
.field private final mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V
    .locals 2
    .param p1    # Landroidx/camera/core/impl/SessionConfig$ErrorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/SessionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/SessionConfig$SessionError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$ErrorListener;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroidx/camera/core/impl/SessionConfig$ErrorListener;->onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
