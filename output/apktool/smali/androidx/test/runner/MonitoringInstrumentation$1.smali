.class Landroidx/test/runner/MonitoringInstrumentation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/runner/MonitoringInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;


# direct methods
.method public constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$1;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$1;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$000(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method
