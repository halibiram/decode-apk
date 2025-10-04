.class public Lnet/openvpn/openvpn/ClientAPI_Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_Config()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_Config;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_Config;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

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
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_Config(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J
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
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_Config;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAltProxy()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_altProxy_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAutologinSessions()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_autologinSessions_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCompressionMode()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_compressionMode_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getConnTimeout()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_connTimeout_get(JLnet/openvpn/openvpn/ClientAPI_Config;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_content_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentList()Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_contentList_get(JLnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;-><init>(JZ)V

    .line 19
    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :goto_0
    return-object v0
.end method

.method public getDco()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_dco_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDefaultKeyDirection()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_defaultKeyDirection_get(JLnet/openvpn/openvpn/ClientAPI_Config;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDisableClientCert()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_disableClientCert_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getEcho()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_echo_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExternalPkiAlias()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_externalPkiAlias_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getForceAesCbcCiphersuites()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_forceAesCbcCiphersuites_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getGoogleDnsFallback()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_googleDnsFallback_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getGremlinConfig()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_gremlinConfig_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getGuiVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_guiVersion_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInfo()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_info_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_ipv6_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPeerInfo()Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_peerInfo_get(JLnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;-><init>(JZ)V

    .line 19
    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :goto_0
    return-object v0
.end method

.method public getPrivateKeyPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_privateKeyPassword_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProtoOverride()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_protoOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProxyAllowCleartextAuth()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyAllowCleartextAuth_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyHost_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyPassword_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProxyPort()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyPort_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyUsername_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getServerOverride()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_serverOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTlsVersionMinOverride()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_tlsVersionMinOverride_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTunPersist()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_tunPersist_get(JLnet/openvpn/openvpn/ClientAPI_Config;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAltProxy(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_altProxy_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutologinSessions(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_autologinSessions_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCompressionMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_compressionMode_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setConnTimeout(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_connTimeout_set(JLnet/openvpn/openvpn/ClientAPI_Config;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_content_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setContentList(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;->getCPtr(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, p0, v2, v3}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_contentList_set(JLnet/openvpn/openvpn/ClientAPI_Config;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDco(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_dco_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultKeyDirection(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_defaultKeyDirection_set(JLnet/openvpn/openvpn/ClientAPI_Config;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDisableClientCert(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_disableClientCert_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEcho(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_echo_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExternalPkiAlias(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_externalPkiAlias_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setForceAesCbcCiphersuites(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_forceAesCbcCiphersuites_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGoogleDnsFallback(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_googleDnsFallback_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGremlinConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_gremlinConfig_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGuiVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_guiVersion_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInfo(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_info_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIpv6(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_ipv6_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPeerInfo(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;->getCPtr(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, p0, v2, v3}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_peerInfo_set(JLnet/openvpn/openvpn/ClientAPI_Config;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setPrivateKeyPassword(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_privateKeyPassword_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProtoOverride(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_protoOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyAllowCleartextAuth(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyAllowCleartextAuth_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyHost_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyPassword_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyPort(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyPort_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_proxyUsername_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setServerOverride(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_serverOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTlsVersionMinOverride(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_tlsVersionMinOverride_set(JLnet/openvpn/openvpn/ClientAPI_Config;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTunPersist(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_Config;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_Config_tunPersist_set(JLnet/openvpn/openvpn/ClientAPI_Config;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
