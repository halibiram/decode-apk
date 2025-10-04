.class public Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;
.super Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_ExternalPKICertRequest()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKICertRequest_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;-><init>(JZ)V

    .line 2
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

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
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_ExternalPKICertRequest(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIRequestBase;->delete()V
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

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getCert()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKICertRequest_cert_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSupportingChain()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKICertRequest_supportingChain_get(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setCert(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKICertRequest_cert_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSupportingChain(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKICertRequest_supportingChain_set(JLnet/openvpn/openvpn/ClientAPI_ExternalPKICertRequest;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
