.class public Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static m_tunnelState:Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;


# instance fields
.field private m_startingTunnelManager:Z

.field private m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z

    .line 9
    .line 10
    return-void
.end method

.method public static declared-synchronized getTunnelState()Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;
    .locals 2

    .line 1
    const-class v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelState:Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 9
    .line 10
    invoke-direct {v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelState:Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelState:Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public declared-synchronized getStartingTunnelManager()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized getTunnelManager()Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized setStartingTunnelManager()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized setTunnelManager(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_tunnelManager:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelState;->m_startingTunnelManager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method
