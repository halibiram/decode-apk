.class Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/internal/platform/ThreadChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
.method public checkMainThread()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

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
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v1, v2, v3

    .line 30
    .line 31
    const-string v1, "Method cannot be called off the main application thread (on: %s)"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public checkNotMainThread()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    xor-int/2addr v1, v0

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v2, v0, v3

    .line 31
    .line 32
    const-string v2, "Method cannot be called on the main application thread (on: %s)"

    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
