.class Landroidx/camera/core/impl/utils/executor/IoExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/executor/IoExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final THREAD_NAME_STEM:Ljava/lang/String; = "CameraX-camerax_io_%d"


# instance fields
.field private final mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroidx/camera/core/impl/utils/executor/IoExecutor;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/executor/IoExecutor;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/IoExecutor$1;->this$0:Landroidx/camera/core/impl/utils/executor/IoExecutor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/IoExecutor$1;->mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/camera/core/impl/utils/executor/IoExecutor$1;->mThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "CameraX-camerax_io_"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
