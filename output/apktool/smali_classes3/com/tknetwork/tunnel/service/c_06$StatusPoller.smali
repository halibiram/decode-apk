.class Lcom/tknetwork/tunnel/service/c_06$StatusPoller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusPoller"
.end annotation


# instance fields
.field private final mSleeptime:J

.field mStopped:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->mStopped:Z

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->mSleeptime:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->mStopped:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->mSleeptime:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    nop

    .line 12
    :goto_1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_06;->tunListener:Lcom/tknetwork/tunnel/service/c_06$TunListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/tknetwork/tunnel/service/c_06$TunListener;->updateBytesTime()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->mStopped:Z

    .line 3
    .line 4
    return-void
.end method
