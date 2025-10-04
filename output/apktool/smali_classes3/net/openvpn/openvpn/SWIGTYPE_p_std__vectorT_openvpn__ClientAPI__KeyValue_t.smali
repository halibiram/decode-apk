.class public Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;)J
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
    iget-wide v0, p0, Lnet/openvpn/openvpn/SWIGTYPE_p_std__vectorT_openvpn__ClientAPI__KeyValue_t;->swigCPtr:J

    .line 7
    .line 8
    :goto_0
    return-wide v0
.end method
