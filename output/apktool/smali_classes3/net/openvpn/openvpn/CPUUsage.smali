.class public Lnet/openvpn/openvpn/CPUUsage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private end_time:D

.field private halted:Z

.field private start_time:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lnet/openvpn/openvpn/CPUUsage;->end_time:D

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lnet/openvpn/openvpn/CPUUsage;->halted:Z

    .line 10
    .line 11
    invoke-static {}, Lnet/openvpn/openvpn/CPUUsage;->cpu_usage()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lnet/openvpn/openvpn/CPUUsage;->start_time:D

    .line 16
    .line 17
    return-void
.end method

.method private static native cpu_usage()D
.end method


# virtual methods
.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/openvpn/openvpn/CPUUsage;->halted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lnet/openvpn/openvpn/CPUUsage;->cpu_usage()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lnet/openvpn/openvpn/CPUUsage;->end_time:D

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lnet/openvpn/openvpn/CPUUsage;->halted:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public usage()D
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnet/openvpn/openvpn/CPUUsage;->halted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lnet/openvpn/openvpn/CPUUsage;->end_time:D

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lnet/openvpn/openvpn/CPUUsage;->cpu_usage()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    iget-wide v2, p0, Lnet/openvpn/openvpn/CPUUsage;->start_time:D

    .line 13
    .line 14
    sub-double/2addr v0, v2

    .line 15
    return-wide v0
.end method
