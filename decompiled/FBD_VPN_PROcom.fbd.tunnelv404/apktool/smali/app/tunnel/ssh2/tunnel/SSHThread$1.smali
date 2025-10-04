.class Lapp/tunnel/ssh2/tunnel/SSHThread$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/tunnel/ssh2/tunnel/SSHThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/tunnel/ssh2/tunnel/SSHThread;


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/SSHThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread$1;->this$0:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const-string v0, "tunnelVpnStartBroadcast"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "tunnelVpnStartSuccessExtra"

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread$1;->this$0:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 24
    .line 25
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string p2, "tunnelVpnDisconnectBroadcast"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSHThread$1;->this$0:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 40
    .line 41
    invoke-virtual {p1}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p1
.end method
