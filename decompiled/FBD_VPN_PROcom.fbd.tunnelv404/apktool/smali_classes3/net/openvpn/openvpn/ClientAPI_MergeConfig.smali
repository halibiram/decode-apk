.class public Lnet/openvpn/openvpn/ClientAPI_MergeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_MergeConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_MergeConfig;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

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
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_MergeConfig(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J
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
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getBasename()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_basename_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_errorText_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getProfileContent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_profileContent_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRefPathList()Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_refPathList_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)J

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
    new-instance v2, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;-><init>(JZ)V

    .line 19
    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :goto_0
    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_status_get(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setBasename(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_basename_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_errorText_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProfileContent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_profileContent_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRefPathList(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p1}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;->getCPtr(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_std__string_t;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, p0, v2, v3}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_refPathList_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_MergeConfig;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_MergeConfig_status_set(JLnet/openvpn/openvpn/ClientAPI_MergeConfig;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
