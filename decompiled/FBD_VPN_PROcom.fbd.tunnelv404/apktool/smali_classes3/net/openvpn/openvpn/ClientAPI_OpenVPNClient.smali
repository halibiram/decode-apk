.class public Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;
.super Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;
    }
.end annotation


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 3
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_OpenVPNClient()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;-><init>(JZ)V

    .line 4
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    iget-boolean v3, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v3, v2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_director_connect(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;-><init>(JZ)V

    .line 2
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    return-void
.end method

.method public static app_expire()I
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_app_expire()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static copyright()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_copyright()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static crypto_self_test()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_crypto_self_test()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static eval_config_static(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;
    .locals 3

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 2
    .line 3
    invoke-static {p0}, Lnet/openvpn/openvpn/ClientAPI_Config;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_eval_config_static(JLnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/4 p0, 0x1

    .line 12
    invoke-direct {v0, v1, v2, p0}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;-><init>(JZ)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 7
    .line 8
    :goto_0
    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$1;

    .line 7
    .line 8
    invoke-direct {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->setListener(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote$OnFinishListener;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient$AppRemote;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    return-void
.end method

.method public static init_process()V
    .locals 0

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_init_process()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static max_profile_size()I
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_max_profile_size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static merge_config_static(Ljava/lang/String;Z)Lnet/openvpn/openvpn/ClientAPI_MergeConfig;
    .locals 2

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_merge_config_static(Ljava/lang/String;Z)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;-><init>(JZ)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static merge_config_string_static(Ljava/lang/String;)Lnet/openvpn/openvpn/ClientAPI_MergeConfig;
    .locals 3

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;

    .line 2
    .line 3
    invoke-static {p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_merge_config_string_static(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-direct {v0, v1, v2, p0}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;-><init>(JZ)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static parse_dynamic_challenge(Ljava/lang/String;Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_parse_dynamic_challenge(Ljava/lang/String;JLnet/openvpn/openvpn/ClientAPI_DynamicChallenge;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static platform()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_platform()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static stats_n()I
    .locals 1

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_stats_n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static stats_name(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_stats_name(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static uninit_process()V
    .locals 0

    .line 1
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_uninit_process()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public connect()Lnet/openvpn/openvpn/ClientAPI_Status;
    .locals 4

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lnet/openvpn/openvpn/ClientAPI_Status;-><init>(JZ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public connect_attach()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_attach(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_attachSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public connect_detach()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_detach(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_detachSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public connect_pre_run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_pre_run(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_pre_runSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public connect_run()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_run(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_runSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public connect_session_stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_session_stop(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connect_session_stopSwigExplicitClientAPI_OpenVPNClient(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public connection_info()Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;
    .locals 4

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_connection_info(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lnet/openvpn/openvpn/ClientAPI_ConnectionInfo;-><init>(JZ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

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
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_OpenVPNClient(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public eval_config(Lnet/openvpn/openvpn/ClientAPI_Config;)Lnet/openvpn/openvpn/ClientAPI_EvalConfig;
    .locals 7

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_Config;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    move-object v3, p0

    .line 10
    move-object v6, p1

    .line 11
    invoke-static/range {v1 .. v6}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_eval_config(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_Config;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {v0, v1, v2, p1}, Lnet/openvpn/openvpn/ClientAPI_EvalConfig;-><init>(JZ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public event(Lnet/openvpn/openvpn/ClientAPI_Event;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_Event;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_Event;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_event(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_Event;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public external_pki_cert_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_external_pki_cert_request(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public external_pki_sign_request(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_external_pki_sign_request(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ExternalPKISignRequest;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public log(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_LogInfo;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_LogInfo;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_log(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_LogInfo;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_pause(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause_on_connection_timeout()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_pause_on_connection_timeout(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public provide_creds(Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;)Lnet/openvpn/openvpn/ClientAPI_Status;
    .locals 7

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_Status;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_ProvideCreds;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    move-object v3, p0

    .line 10
    move-object v6, p1

    .line 11
    invoke-static/range {v1 .. v6}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_provide_creds(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_ProvideCreds;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {v0, v1, v2, p1}, Lnet/openvpn/openvpn/ClientAPI_Status;-><init>(JZ)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public reconnect(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_reconnect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_resume(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public session_token(Lnet/openvpn/openvpn/ClientAPI_SessionToken;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/ClientAPI_SessionToken;->getCPtr(Lnet/openvpn/openvpn/ClientAPI_SessionToken;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    move-object v2, p0

    .line 8
    move-object v5, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_session_token(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JLnet/openvpn/openvpn/ClientAPI_SessionToken;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public socket_protect(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_socket_protect(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stats_bundle()Lnet/openvpn/openvpn/ClientAPI_LLVector;
    .locals 4

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_LLVector;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_stats_bundle(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lnet/openvpn/openvpn/ClientAPI_LLVector;-><init>(JZ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public stats_value(I)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_stats_value(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_stop(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public swigDirectorDisconnect()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->delete()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 3
    .line 4
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 5
    .line 6
    invoke-static {p0, v1, v2, v0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_change_ownership(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/openvpn/openvpn/ClientAPI_TunBuilderBase;->swigCMemOwn:Z

    .line 3
    .line 4
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 5
    .line 6
    invoke-static {p0, v1, v2, v0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_change_ownership(Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;JZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public transport_stats()Lnet/openvpn/openvpn/ClientAPI_TransportStats;
    .locals 4

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_TransportStats;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_transport_stats(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lnet/openvpn/openvpn/ClientAPI_TransportStats;-><init>(JZ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public tun_stats()Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;
    .locals 4

    .line 1
    new-instance v0, Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;

    .line 2
    .line 3
    iget-wide v1, p0, Lnet/openvpn/openvpn/ClientAPI_OpenVPNClient;->swigCPtr:J

    .line 4
    .line 5
    invoke-static {v1, v2, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_OpenVPNClient_tun_stats(JLnet/openvpn/openvpn/ClientAPI_OpenVPNClient;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lnet/openvpn/openvpn/ClientAPI_InterfaceStats;-><init>(JZ)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
