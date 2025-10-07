.class public Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;
    }
.end annotation


# static fields
.field private static final DNS_RESOLVER_IP:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_RESOLVER_PORT:I = 0x35

.field private static final VPN_INTERFACE_NETMASK:Ljava/lang/String; = "255.255.255.0"

.field private static mTunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;


# instance fields
.field private mBuilderThread:Ljava/lang/Thread;

.field private final mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

.field private final mInterface:Landroid/os/ParcelFileDescriptor;

.field private final mMtu:I

.field private mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

.field private mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

.field private final mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

.field private final mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

.field private mTun2SocksThread:Ljava/lang/Thread;

.field private final mTunFd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x5dc

    .line 5
    .line 6
    iput v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mMtu:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mInterface:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance p1, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 29
    .line 30
    invoke-direct {p1}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 34
    .line 35
    return-void
.end method

.method public static declared-synchronized newTunnel(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;)Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;
    .locals 2

    .line 1
    const-class v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stop()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunnel:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method private routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v6, v1

    .line 20
    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    if-eqz p3, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x1f9b

    .line 28
    .line 29
    const/16 v4, 0xa

    .line 30
    .line 31
    invoke-static {v1, v4}, Lapp/tunnel/vpncommons/utils/VpnUtils;->findAvailablePort(II)I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 36
    .line 37
    iget-object v1, v1, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x2

    .line 44
    new-array v5, v5, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v1, v5, v2

    .line 47
    .line 48
    aput-object v4, v5, v3

    .line 49
    .line 50
    const-string v1, "%s:%d"

    .line 51
    .line 52
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 57
    .line 58
    iget-object v4, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 59
    .line 60
    invoke-interface {v4}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v4, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 65
    .line 66
    iget-object v11, v4, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    .line 67
    .line 68
    const/16 v10, 0x35

    .line 69
    .line 70
    move-object v7, v2

    .line 71
    move-object/from16 v9, p2

    .line 72
    .line 73
    invoke-direct/range {v7 .. v12}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;-><init>(Landroid/content/Context;[Ljava/lang/String;ILjava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 77
    .line 78
    new-instance v4, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;

    .line 79
    .line 80
    invoke-direct {v4, p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->setOnPdnsdListener(Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 89
    .line 90
    .line 91
    :goto_0
    move-object v12, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/4 v1, 0x0

    .line 94
    goto :goto_0

    .line 95
    :goto_1
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 96
    .line 97
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 98
    .line 99
    invoke-interface {v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v2, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 104
    .line 105
    iget-object v8, v2, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mRouter:Ljava/lang/String;

    .line 106
    .line 107
    const-string v9, "255.255.255.0"

    .line 108
    .line 109
    const/16 v7, 0x5dc

    .line 110
    .line 111
    move-object v4, v1

    .line 112
    move-object v10, p1

    .line 113
    move-object/from16 v11, p4

    .line 114
    .line 115
    move/from16 v13, p5

    .line 116
    .line 117
    invoke-direct/range {v4 .. v13}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    iput-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 121
    .line 122
    new-instance v2, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$2;

    .line 123
    .line 124
    invoke-direct {v2, p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$2;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->setOnTun2SocksListener(Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 136
    .line 137
    invoke-interface {v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onTunnelConnected()V

    .line 138
    .line 139
    .line 140
    return v3
.end method

.method private startVpn(Z[Ljava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v8, "Routes: "

    .line 13
    .line 14
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v9, "Routes Excluded: "

    .line 20
    .line 21
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lapp/tunnel/vpncommons/utils/VpnUtils;->selectPrivateAddress()Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    iput-object v9, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 29
    .line 30
    array-length v9, v3

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x20

    .line 34
    .line 35
    if-ge v11, v9, :cond_0

    .line 36
    .line 37
    aget-object v13, v3, v11

    .line 38
    .line 39
    iget-object v14, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 40
    .line 41
    new-instance v15, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 42
    .line 43
    invoke-direct {v15, v13, v12}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v14, v15, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 47
    .line 48
    .line 49
    add-int/2addr v11, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :try_start_0
    new-instance v9, Ljava/util/Locale;

    .line 56
    .line 57
    const-string v11, "en"

    .line 58
    .line 59
    invoke-direct {v9, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v9}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 63
    .line 64
    .line 65
    iget-object v9, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 66
    .line 67
    invoke-interface {v9}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->newVpnServiceBuilder()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Landroid/net/VpnService$Builder;

    .line 72
    .line 73
    iget-object v11, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 74
    .line 75
    iget-object v13, v11, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mIpAddress:Ljava/lang/String;

    .line 76
    .line 77
    iget v11, v11, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mPrefixLength:I

    .line 78
    .line 79
    invoke-virtual {v9, v13, v11}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    iget-object v11, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 84
    .line 85
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 86
    .line 87
    const-string v14, "0.0.0.0"

    .line 88
    .line 89
    invoke-direct {v13, v14, v10}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v13, v6}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 93
    .line 94
    .line 95
    iget-object v11, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 96
    .line 97
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 98
    .line 99
    const-string v14, "10.0.0.0"

    .line 100
    .line 101
    const/16 v15, 0x8

    .line 102
    .line 103
    invoke-direct {v13, v14, v15}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11, v13, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 107
    .line 108
    .line 109
    iget-object v11, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 110
    .line 111
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 112
    .line 113
    iget-object v14, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPrivateAddress:Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;

    .line 114
    .line 115
    iget-object v15, v14, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mSubnet:Ljava/lang/String;

    .line 116
    .line 117
    iget v14, v14, Lapp/tunnel/vpncommons/utils/VpnUtils$PrivateAddress;->mPrefixLength:I

    .line 118
    .line 119
    invoke-direct {v13, v15, v14}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v13, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 123
    .line 124
    .line 125
    const/16 v11, 0x18

    .line 126
    .line 127
    if-eqz p7, :cond_1

    .line 128
    .line 129
    iget-object v13, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 130
    .line 131
    new-instance v14, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 132
    .line 133
    const-string v15, "192.168.42.0"

    .line 134
    .line 135
    const/16 v5, 0x17

    .line 136
    .line 137
    invoke-direct {v14, v15, v5}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13, v14, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 141
    .line 142
    .line 143
    iget-object v5, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 144
    .line 145
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 146
    .line 147
    const-string v14, "192.168.44.0"

    .line 148
    .line 149
    invoke-direct {v13, v14, v11}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v13, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 156
    .line 157
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 158
    .line 159
    const-string v14, "192.168.49.0"

    .line 160
    .line 161
    invoke-direct {v13, v14, v11}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v13, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    move-object v2, v0

    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :catch_0
    move-exception v0

    .line 173
    :goto_1
    move-object v2, v0

    .line 174
    goto/16 :goto_d

    .line 175
    .line 176
    :catch_1
    move-exception v0

    .line 177
    goto :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    goto :goto_1

    .line 180
    :cond_1
    :goto_2
    iget-object v5, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 181
    .line 182
    new-instance v13, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 183
    .line 184
    const-string v14, "169.254.1.0"

    .line 185
    .line 186
    invoke-direct {v13, v14, v11}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v13, v10}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 190
    .line 191
    .line 192
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v11, 0x0

    .line 194
    :goto_3
    const-string v13, ", "

    .line 195
    .line 196
    if-ge v11, v5, :cond_2

    .line 197
    .line 198
    :try_start_1
    aget-object v14, v2, v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .line 200
    :try_start_2
    invoke-virtual {v9, v14}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 201
    .line 202
    .line 203
    iget-object v15, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 204
    .line 205
    new-instance v10, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 206
    .line 207
    invoke-direct {v10, v14, v12}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .line 209
    .line 210
    move/from16 v12, p1

    .line 211
    .line 212
    :try_start_3
    invoke-virtual {v15, v10, v12}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->addIP(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :catch_3
    move-exception v0

    .line 217
    :goto_4
    move-object v10, v0

    .line 218
    goto :goto_5

    .line 219
    :catch_4
    move-exception v0

    .line 220
    move/from16 v12, p1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_5
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    new-instance v15, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v6, "Error Adding dns "

    .line 233
    .line 234
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v6}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    :goto_6
    add-int/2addr v11, v6

    .line 255
    const/4 v10, 0x0

    .line 256
    const/16 v12, 0x20

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_2
    const/16 v2, 0x5dc

    .line 260
    .line 261
    invoke-virtual {v9, v2}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 262
    .line 263
    .line 264
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 265
    .line 266
    const/4 v5, 0x1

    .line 267
    invoke-virtual {v2, v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->getNetworks(Z)Ljava/util/Collection;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v5
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    const-string v6, "%s/%d"

    .line 280
    .line 281
    if-eqz v5, :cond_3

    .line 282
    .line 283
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    check-cast v5, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 288
    .line 289
    invoke-virtual {v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    iget v5, v5, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 294
    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    const/4 v11, 0x2

    .line 300
    new-array v12, v11, [Ljava/lang/Object;

    .line 301
    .line 302
    const/4 v11, 0x0

    .line 303
    aput-object v10, v12, v11

    .line 304
    .line 305
    const/4 v10, 0x1

    .line 306
    aput-object v5, v12, v10

    .line 307
    .line 308
    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_3
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 327
    .line 328
    const/4 v5, 0x0

    .line 329
    invoke-virtual {v2, v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->getNetworks(Z)Ljava/util/Collection;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_4

    .line 342
    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    check-cast v5, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 348
    .line 349
    invoke-virtual {v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    iget v5, v5, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 354
    .line 355
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    const/4 v11, 0x2

    .line 360
    new-array v12, v11, [Ljava/lang/Object;

    .line 361
    .line 362
    const/4 v14, 0x0

    .line 363
    aput-object v10, v12, v14

    .line 364
    .line 365
    const/4 v10, 0x1

    .line 366
    aput-object v5, v12, v10

    .line 367
    .line 368
    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    goto :goto_8

    .line 379
    :cond_4
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->logs(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->logs(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 401
    .line 402
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-interface {v2, v5}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;

    .line 410
    .line 411
    new-instance v5, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;

    .line 412
    .line 413
    const-string v6, "224.0.0.0"

    .line 414
    .line 415
    const/4 v7, 0x3

    .line 416
    invoke-direct {v5, v6, v7}, Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;-><init>(Ljava/lang/String;I)V

    .line 417
    .line 418
    .line 419
    const/4 v6, 0x1

    .line 420
    invoke-direct {v2, v5, v6}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/CIDRIP;Z)V

    .line 421
    .line 422
    .line 423
    iget-object v5, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 424
    .line 425
    invoke-virtual {v5}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->getPositiveIPList()Ljava/util/Collection;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    :catch_5
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v6

    .line 437
    if-eqz v6, :cond_6

    .line 438
    .line 439
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    check-cast v6, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 444
    .line 445
    :try_start_6
    invoke-virtual {v2, v6}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->containsNet(Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;)Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    if-eqz v7, :cond_5

    .line 450
    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    const-string v8, "VPN: Ignoring multicast route: "

    .line 457
    .line 458
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    invoke-static {v6}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_5
    invoke-virtual {v6}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->getIPv4Address()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    iget v6, v6, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace$IpAddress;->networkMask:I

    .line 477
    .line 478
    invoke-virtual {v9, v7, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 479
    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_6
    if-eqz p8, :cond_7

    .line 483
    .line 484
    :try_start_7
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 485
    .line 486
    const-string v5, "<strong>UDP Bypass OK</strong>"

    .line 487
    .line 488
    invoke-interface {v2, v5}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 492
    .line 493
    invoke-interface {v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v9, v2}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 502
    .line 503
    .line 504
    :cond_7
    if-eqz p4, :cond_9

    .line 505
    .line 506
    array-length v2, v4

    .line 507
    const/4 v11, 0x0

    .line 508
    :goto_a
    if-ge v11, v2, :cond_9

    .line 509
    .line 510
    aget-object v5, v4, v11
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 511
    .line 512
    const-string v6, "\""

    .line 513
    .line 514
    if-eqz p5, :cond_8

    .line 515
    .line 516
    :try_start_8
    invoke-virtual {v9, v5}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 517
    .line 518
    .line 519
    iget-object v7, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 520
    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v10, "Filtro de Apps: Vpn desativada para \""

    .line 527
    .line 528
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    invoke-interface {v7, v6}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto :goto_b

    .line 545
    :cond_8
    invoke-virtual {v9, v5}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 546
    .line 547
    .line 548
    iget-object v7, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 549
    .line 550
    new-instance v8, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    const-string v10, "Filtro de Apps: Vpn ativada para \""

    .line 556
    .line 557
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v6

    .line 570
    invoke-interface {v7, v6}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 571
    .line 572
    .line 573
    :goto_b
    const/4 v5, 0x1

    .line 574
    goto :goto_c

    .line 575
    :catch_6
    :try_start_9
    iget-object v6, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 576
    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string v8, "Aplicativo \""

    .line 583
    .line 584
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v5, "\" n\u00e3o encontrado. Filtro de Apps n\u00e3o ir\u00e1 funcionar, verifique as configura\u00e7\u00f5es."

    .line 591
    .line 592
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    invoke-interface {v6, v5}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    goto :goto_b

    .line 603
    :goto_c
    add-int/2addr v11, v5

    .line 604
    goto :goto_a

    .line 605
    :cond_9
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 606
    .line 607
    invoke-interface {v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->getAppName()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-virtual {v9, v2}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    iget-object v4, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 616
    .line 617
    invoke-interface {v4}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->getContext()Landroid/content/Context;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-static {v4}, Lapp/tunnel/vpncommons/utils/VpnUtils;->getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    invoke-virtual {v2, v4}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    invoke-virtual {v2}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 630
    .line 631
    .line 632
    move-result-object v2
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 633
    if-nez v2, :cond_a

    .line 634
    .line 635
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 636
    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    return v4

    .line 640
    :cond_a
    const/4 v4, 0x0

    .line 641
    :try_start_a
    iget-object v5, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 642
    .line 643
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 647
    .line 648
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 649
    .line 650
    .line 651
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 652
    .line 653
    invoke-interface {v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onVpnEstablished()V

    .line 654
    .line 655
    .line 656
    iget-object v2, v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutes:Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;

    .line 657
    .line 658
    invoke-virtual {v2}, Lapp/tunnel/ssh2/tunnel/vpn/NetworkSpace;->clear()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 659
    .line 660
    .line 661
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 662
    .line 663
    .line 664
    const/4 v2, 0x1

    .line 665
    return v2

    .line 666
    :goto_d
    :try_start_b
    new-instance v4, Ljava/lang/Exception;

    .line 667
    .line 668
    const-string v5, "startVpn failed"

    .line 669
    .line 670
    invoke-direct {v4, v5, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    .line 672
    .line 673
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 674
    :goto_e
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 675
    .line 676
    .line 677
    throw v2
.end method

.method private stopRoutingThroughTunnel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 12
    .line 13
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 18
    .line 19
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stopTun2Socks()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 33
    .line 34
    invoke-virtual {v1}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->interrupt()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 38
    .line 39
    return-void
.end method

.method private stopTun2Socks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2SocksThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2SocksThread:Ljava/lang/Thread;

    .line 18
    .line 19
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mRoutingThroughTunnel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 26
    .line 27
    const-string v1, "tun2socks stopped"

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private stopVpn()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->submit_destroy_builder()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTunFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 16
    .line 17
    const-string v2, "<strong>Disconnected</strong>"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    :cond_0
    return-void
.end method

.method private submit_destroy_builder()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;-><init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static bridge synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mHostService:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    return-object p0
.end method

.method public static bridge synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mInterface:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static bridge synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    return-object p0
.end method

.method public static bridge synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    return-object p0
.end method

.method public static bridge synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mPdnsd:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    return-void
.end method

.method public static bridge synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->mTun2Socks:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public logs(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized startRouting(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v1, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 3
    .line 4
    iget-object v2, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v4, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 9
    .line 10
    iget-boolean v5, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 11
    .line 12
    iget-object v6, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v7, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    .line 15
    .line 16
    iget-boolean v8, p1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->bypass:Z

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v8}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->startVpn(Z[Ljava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;ZZ)Z

    .line 20
    .line 21
    .line 22
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public declared-synchronized startTunneling(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stopVpn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized stopTunneling()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->submit_destroy_builder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method
