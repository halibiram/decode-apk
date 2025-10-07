.class public Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCMemOwn:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCPtr:J

    .line 7
    .line 8
    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCPtr:J

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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCPtr:J

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
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_ExternalPKIBase(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCPtr:J
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
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sign(Ljava/lang/String;Lnet/openvpn/openvpn/SWIGTYPE_p_std__string;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {p2}, Lnet/openvpn/openvpn/SWIGTYPE_p_std__string;->getCPtr(Lnet/openvpn/openvpn/SWIGTYPE_p_std__string;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_ExternalPKIBase_sign(JLnet/openvpn/openvpn/ClientAPI_ExternalPKIBase;Ljava/lang/String;J)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
