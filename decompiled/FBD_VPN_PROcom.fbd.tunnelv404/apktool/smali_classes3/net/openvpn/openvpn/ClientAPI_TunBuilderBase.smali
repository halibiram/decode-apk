.class public Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_TunBuilderBase()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 7
    .line 8
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_TunBuilderBase(J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    move v6, p4

    .line 8
    move v7, p5

    .line 9
    invoke-static/range {v0 .. v7}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_address(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;ILjava/lang/String;ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public tun_builder_add_dns_server(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_dns_server(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_add_proxy_bypass(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_proxy_bypass(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_add_route(Ljava/lang/String;IIZ)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move v5, p3

    .line 7
    move v6, p4

    .line 8
    invoke-static/range {v0 .. v6}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_route(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;IIZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public tun_builder_add_search_domain(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_search_domain(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_add_wins_server(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_add_wins_server(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_establish()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_establish(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tun_builder_establish_lite()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_establish_lite(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tun_builder_exclude_route(Ljava/lang/String;IIZ)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move v5, p3

    .line 7
    move v6, p4

    .line 8
    invoke-static/range {v0 .. v6}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_exclude_route(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;IIZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public tun_builder_new()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_new(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tun_builder_persist()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_persist(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tun_builder_reroute_gw(ZZJ)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move v3, p1

    .line 5
    move v4, p2

    .line 6
    move-wide v5, p3

    .line 7
    invoke-static/range {v0 .. v6}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_reroute_gw(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;ZZJ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public tun_builder_set_adapter_domain_suffix(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_adapter_domain_suffix(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_block_ipv6(Z)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_block_ipv6(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_layer(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_layer(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_mtu(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_mtu(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_proxy_auto_config_url(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_proxy_auto_config_url(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_proxy_http(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_proxy_http(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_proxy_https(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_proxy_https(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_remote_address(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_remote_address(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_route_metric_default(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_route_metric_default(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_set_session_name(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_set_session_name(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public tun_builder_teardown(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_TunBuilderBase_tun_builder_teardown(JLnet/openvpn/openvpn/ClientAPI_TunBuilderBase;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
