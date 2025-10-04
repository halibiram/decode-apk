.class public Lnet/openvpn/openvpn/ClientAPI_LLVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_LLVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/openvpn/openvpn/ClientAPI_LLVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 5
    invoke-static {p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->new_ClientAPI_LLVector__SWIG_1(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/openvpn/openvpn/ClientAPI_LLVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/ClientAPI_LLVector;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 7
    .line 8
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_add(JLnet/openvpn/openvpn/ClientAPI_LLVector;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public capacity()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_capacity(JLnet/openvpn/openvpn/ClientAPI_LLVector;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_clear(JLnet/openvpn/openvpn/ClientAPI_LLVector;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

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
    iget-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCMemOwn:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCMemOwn:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/openvpn/openvpn/ovpncliJNI;->delete_ClientAPI_LLVector(J)V

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
    iput-wide v2, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J
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
    invoke-virtual {p0}, Lnet/openvpn/openvpn/ClientAPI_LLVector;->delete()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public get(I)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_get(JLnet/openvpn/openvpn/ClientAPI_LLVector;I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_isEmpty(JLnet/openvpn/openvpn/ClientAPI_LLVector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public reserve(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0, p1, p2}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_reserve(JLnet/openvpn/openvpn/ClientAPI_LLVector;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public set(IJ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    move v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    invoke-static/range {v0 .. v5}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_set(JLnet/openvpn/openvpn/ClientAPI_LLVector;IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/openvpn/openvpn/ClientAPI_LLVector;->swigCPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lnet/openvpn/openvpn/ovpncliJNI;->ClientAPI_LLVector_size(JLnet/openvpn/openvpn/ClientAPI_LLVector;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
