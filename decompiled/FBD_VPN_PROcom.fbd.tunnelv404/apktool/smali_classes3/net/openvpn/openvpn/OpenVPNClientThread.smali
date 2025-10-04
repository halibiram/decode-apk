.class public Lnet/openvpn/openvpn/OpenVPNClientThread;
.super Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openvpn/openvpn/OpenVPNClientThread$ConnectCalledTwice;,
        Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;,
        Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;
    }
.end annotation


# instance fields
.field private bytes_in_index:I

.field private bytes_out_index:I

.field private connect_called:Z

.field private m_connect_status:Lnet/openvpn/openvpn/ClientAPI_Status;

.field private parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

.field private thread:Ljava/lang/Thread;

.field private tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_in_index:I

    .line 6
    .line 7
    iput v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_out_index:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->connect_called:Z

    .line 11
    .line 12
    invoke-static {}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_n()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    if-ge v0, v1, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_name(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "BYTES_IN"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iput v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_in_index:I

    .line 31
    .line 32
    :cond_0
    const-string v3, "BYTES_OUT"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iput v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_out_index:I

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method private call_done(Lnet/openvpn/openvpn/ClientAPI_Status;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread;->finalize_thread(Lnet/openvpn/openvpn/ClientAPI_Status;)Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->m_connect_status:Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->done(Lnet/openvpn/openvpn/ClientAPI_Status;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private declared-synchronized finalize_thread(Lnet/openvpn/openvpn/ClientAPI_Status;)Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->m_connect_status:Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 10
    .line 11
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 12
    .line 13
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method


# virtual methods
.method public bytes_in()J
    .locals 2

    .line 1
    iget v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_in_index:I

    .line 2
    .line 3
    invoke-super {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_value(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public bytes_out()J
    .locals 2

    .line 1
    iget v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->bytes_out_index:I

    .line 2
    .line 3
    invoke-super {p0, v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stats_value(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public connect(Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->connect_called:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->connect_called:Z

    .line 7
    .line 8
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->m_connect_status:Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Thread;

    .line 14
    .line 15
    const-string v0, "OpenVPNClientThread"

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->thread:Ljava/lang/Thread;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Lnet/openvpn/openvpn/OpenVPNClientThread$ConnectCalledTwice;

    .line 27
    .line 28
    invoke-direct {p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$ConnectCalledTwice;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public event(Lnet/openvpn/openvpn/ClientAPI_Event;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->event(Lnet/openvpn/openvpn/ClientAPI_Event;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pause_on_connection_timeout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->pause_on_connection_timeout()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->connect()Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lnet/openvpn/openvpn/OpenVPNClientThread;->call_done(Lnet/openvpn/openvpn/ClientAPI_Status;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public socket_protect(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->socket_protect(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public tun_builder_add_dns_server(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_add_dns_server(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_add_route(Ljava/lang/String;IIZ)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-interface {p3, p1, p2, p4}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_add_route(Ljava/lang/String;IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_add_search_domain(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_add_search_domain(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_establish()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_establish()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public tun_builder_exclude_route(Ljava/lang/String;IIZ)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-interface {p3, p1, p2, p4}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_exclude_route(Ljava/lang/String;IZ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->parent:Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Lnet/openvpn/openvpn/OpenVPNClientThread$EventReceiver;->tun_builder_new()Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_1
    return v1
.end method

.method public tun_builder_reroute_gw(ZZJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_reroute_gw(ZZJ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_set_mtu(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_set_mtu(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_set_remote_address(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_set_remote_address(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_set_session_name(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_set_session_name(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public tun_builder_teardown(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->tun_builder:Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;->tun_builder_teardown(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public wait_thread_long()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->thread:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    invoke-super {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->stop()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :goto_1
    return-void
.end method

.method public wait_thread_short()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/openvpn/openvpn/OpenVPNClientThread;->thread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x1388

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 19
    .line 20
    invoke-direct {v0}, Lnet/openvpn/openvpn/ClientAPI_Status;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lnet/openvpn/openvpn/ClientAPI_Status;->setError(Z)V

    .line 25
    .line 26
    .line 27
    const-string v1, "CORE_THREAD_ABANDONED"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lnet/openvpn/openvpn/ClientAPI_Status;->setMessage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0}, Lnet/openvpn/openvpn/OpenVPNClientThread;->call_done(Lnet/openvpn/openvpn/ClientAPI_Status;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
