.class public Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;
.super Landroid/net/VpnService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TunnelVpnService"

.field public static final TUNNEL_VPN_DISCONNECT_BROADCAST:Ljava/lang/String; = "tunnelVpnDisconnectBroadcast"

.field public static final TUNNEL_VPN_START_BROADCAST:Ljava/lang/String; = "tunnelVpnStartBroadcast"

.field public static final TUNNEL_VPN_START_SUCCESS_EXTRA:Ljava/lang/String; = "tunnelVpnStartSuccessExtra"


# instance fields
.field private dataBundle:Landroid/os/Bundle;

.field private final m_binder:Landroid/os/IBinder;

.field private final m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 10
    .line 11
    new-instance v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService$LocalBinder;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_binder:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method

.method private dispatchBroadcast(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public broadcastVpnDisconnect()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "tunnelVpnDisconnectBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->dispatchBroadcast(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public broadcastVpnStart(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "tunnelVpnStartBroadcast"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "tunnelVpnStartSuccessExtra"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->dispatchBroadcast(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public newBuilder()Landroid/net/VpnService$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/VpnService$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "android.net.VpnService"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_binder:Landroid/os/IBinder;

    .line 21
    .line 22
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->setTunnelManager(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->setTunnelManager(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->onDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRevoke()V
    .locals 1

    .line 1
    const-string v0, "<strong>VPN service revoked</strong>"

    .line 2
    .line 3
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->broadcastVpnDisconnect()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnService;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->onStartCommand(Landroid/content/Intent;II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
