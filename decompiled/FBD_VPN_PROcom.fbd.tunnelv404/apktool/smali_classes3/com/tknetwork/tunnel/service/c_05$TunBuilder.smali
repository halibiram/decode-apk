.class Lcom/tknetwork/tunnel/service/c_05$TunBuilder;
.super Landroid/net/VpnService$Builder;
.source "SourceFile"

# interfaces
.implements Lnet/openvpn/openvpn/OpenVPNClientThread$TunBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TunBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method private constructor <init>(Lcom/tknetwork/tunnel/service/c_05;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 3
    invoke-direct {p0, p1}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tknetwork/tunnel/service/c_05;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;-><init>(Lcom/tknetwork/tunnel/service/c_05;)V

    return-void
.end method

.method private log_error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-array v0, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    aput-object p2, v0, p1

    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 p2, 0x4

    .line 30
    new-array p2, p2, [J

    .line 31
    .line 32
    fill-array-data p2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x74705b1e58ed8ccaL    # -5.395180350769359E-253
        -0x5e1fba86b9592d13L
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        -0xbe62752845d3030L
        -0x61ee46b91e9f5304L    # -7.694451809733705E-164
        -0x1454f345afb5db55L    # -4.446412261245393E210
        0x699d3a6eb71999fdL    # 5.5931951303366524E200
    .end array-data
.end method


# virtual methods
.method public tun_builder_add_address(Ljava/lang/String;ILjava/lang/String;ZZ)Z
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v5, v3, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v5, 0x7

    .line 21
    new-array v5, v5, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    const/4 v6, 0x5

    .line 46
    new-array v6, v6, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p1, v6, v2

    .line 49
    .line 50
    aput-object v5, v6, v1

    .line 51
    .line 52
    aput-object p3, v6, v3

    .line 53
    .line 54
    const/4 p3, 0x3

    .line 55
    aput-object p4, v6, p3

    .line 56
    .line 57
    aput-object p5, v6, v0

    .line 58
    .line 59
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array p3, v0, [J

    .line 70
    .line 71
    fill-array-data p3, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 82
    .line 83
    .line 84
    return v2

    .line 85
    :array_0
    .array-data 8
        -0x37acadf0d16f4a28L    # -2.629776198424419E40
        -0x178ac6ff91f31aceL    # -1.5492342210595785E195
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        0x5f4973c2b5844502L    # 1.0414369869704215E151
        0x5396eff2e80c5b59L    # 4.78454842612736E94
        -0x6611291f36b784afL    # -9.072314976062686E-184
        -0x609d3af9981a3affL    # -1.708865825765747E-157
        -0x448764daa021317fL    # -3.2565821512332635E-22
        0x6d050e03939d51f1L    # 1.4516329471791809E217
        -0x74d250051447e978L
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 8
        -0x4bc06ac4097e9de0L    # -5.031453613914724E-57
        0x5a922d1bc8654450L    # 1.9686177055363643E128
        -0x47a15c97dfd6d5c5L    # -3.601515748021599E-37
        -0x3db55e793413e1b0L    # -2.2875823100023682E11
    .end array-data
.end method

.method public tun_builder_add_dns_server(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v4, v2, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, v2, v1

    .line 24
    .line 25
    aput-object p2, v2, v0

    .line 26
    .line 27
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    new-array v3, v3, [J

    .line 31
    .line 32
    fill-array-data v3, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v0, 0x5

    .line 53
    new-array v0, v0, [J

    .line 54
    .line 55
    fill-array-data v0, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :array_0
    .array-data 8
        -0x169bdbdab1c2a89aL    # -4.817839859002937E199
        0x7207ce7c35f2145aL    # 1.984282971787242E241
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0xf6076d8dfd2ff8bL    # -3.1334289594503913E234
        0x69dbde238b4498f0L
        0x174bf8df7c026607L    # 1.871021790234904E-196
        0x62a545bc20180eadL    # 1.5679930690746844E167
        0x5cc37d62bc06c1dfL    # 7.252957447600568E138
        0xd92886535fa6bb7L
    .end array-data

    .line 82
    :array_2
    .array-data 8
        0x56f3de25a59e79e6L    # 7.46564559305821E110
        0x78135c25e28135f8L    # 2.5569393332641333E270
        0x618b5c8c4ad45d1dL    # 7.69356877376925E161
        0x3f4193a4c147cbf8L    # 5.363993137151848E-4
        -0x5fa8106645a94e16L    # -7.140895685989504E-153
    .end array-data
.end method

.method public tun_builder_add_route(Ljava/lang/String;IZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v4, v2, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 v4, 0x3

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p1, v4, v1

    .line 29
    .line 30
    aput-object v3, v4, v0

    .line 31
    .line 32
    aput-object p3, v4, v2

    .line 33
    .line 34
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-static {p3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return v0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 p3, 0x4

    .line 60
    new-array p3, p3, [J

    .line 61
    .line 62
    fill-array-data p3, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0xab7fea9cf018961L    # -9.010980191792404E256
        0x602a8739392a2957L    # 1.778426185148881E155
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 8
        -0x33e6cfcfcf2c1780L    # -3.952727892882773E58
        -0x531ada063fc7553eL    # -2.0277185201101877E-92
        0x1d0aeecdc0e8091aL    # 8.920606519799996E-169
        -0x6b3ca3e6caa3e685L    # -1.177749625488883E-208
        -0x4d6f2761c63e169eL    # -3.999097366598024E-65
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_2
    .array-data 8
        -0x43c2077905b289a9L    # -1.6247208438071083E-18
        0x3f8c74b797d9b2a0L    # 0.013894495317083255
        -0x273cfaa7d71e0c68L    # -3.837238743792152E119
        -0x78d2265bcd109ea1L
    .end array-data
.end method

.method public tun_builder_add_search_domain(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, v3, v1

    .line 21
    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v5, v0, [J

    .line 25
    .line 26
    fill-array-data v5, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->addSearchDomain(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :catch_0
    move-exception p1

    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x74f7918b8b43b1c1L    # -1.627133513958649E-255
        0x63564329776f03f5L    # 3.36069111881961E170
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x2e3ec93e7e0df4f9L    # -6.688177797899E85
        -0x2124a9941bfcf65fL    # -8.738924803836526E148
        0x6dab84a69ee3204L
        0x552cdc506e20ffe5L    # 2.020011943259784E102
        -0x348c455b750472c9L    # -3.0234716743366856E55
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_2
    .array-data 8
        0x6eb4b716e85689L
        0x16695e7e4f6907f7L
        -0x6cc1086a5d284673L    # -5.614408874705652E-216
        -0x3f04a9a5050ae0edL    # -111973.68626892222
        0x1991211bf1cd4968L
    .end array-data
.end method

.method public tun_builder_establish()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v2, v0, [J

    .line 19
    .line 20
    fill-array-data v2, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/tknetwork/tunnel/service/c_05;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_05;)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/net/VpnService$Builder;->setConfigureIntent(Landroid/app/PendingIntent;)Landroid/net/VpnService$Builder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return v0

    .line 52
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    return v0

    .line 71
    :array_0
    .array-data 8
        -0x2dc313101d2ea632L    # -1.438534086508368E88
        0x252624bb6cc4737eL    # 9.98292589789425E-130
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x14a6f1bc0c024044L    # -1.287075345316494E209
        0x43079484dbdd356fL    # 8.296528512058059E14
        -0x404fd41eb4bde3f4L    # -0.06316955649718653
        0x1e266b7518cf740bL
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_2
    .array-data 8
        -0x415d70e84263e01dL    # -5.530999900036121E-7
        -0x671780aaacd2be09L
        0x34b6c4afb26f842dL    # 9.285633023282975E-55
        0x31d782b7cf50e4f6L    # 1.3625894684656127E-68
    .end array-data
.end method

.method public tun_builder_exclude_route(Ljava/lang/String;IZ)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v4, v2, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p1, v3, v1

    .line 29
    .line 30
    aput-object p2, v3, v0

    .line 31
    .line 32
    aput-object p3, v3, v2

    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 p2, 0x8

    .line 37
    .line 38
    new-array p2, p2, [J

    .line 39
    .line 40
    fill-array-data p2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 p3, 0x5

    .line 58
    new-array p3, p3, [J

    .line 59
    .line 60
    fill-array-data p3, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x61de590162dc7e24L
        0x3d7c4ba3e4f48bcfL    # 1.6084112291658828E-12
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        -0x2684eb54f48d800dL    # -1.1188675917604315E123
        0x63b25176c1c24239L    # 1.769786052860769E172
        0x665a0454ddb73256L
        0x10913a2eacd91cb0L    # 7.101660114016876E-229
        -0x518bc472126c75c8L    # -6.509290672511931E-85
        0x43fd4464862d11d7L    # 3.3742736847372382E19
        0x4ede64ab032254caL    # 8.390655790464154E71
        -0x1518dacb7366f75bL    # -9.288604547566816E206
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_2
    .array-data 8
        0x1b2ee045dc42e616L    # 9.524332131018646E-178
        0x308ae685e3fd56c4L    # 7.434146684214915E-75
        0x3c453d1afef310c0L    # 2.3027037280750303E-18
        -0x7dbd2ac0bf38484L    # -5.329715827379252E270
        -0x283418060a50d987L    # -8.590301592418638E114
    .end array-data
.end method

.method public tun_builder_reroute_gw(ZZJ)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v4, v2, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x3

    .line 30
    new-array v6, v6, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v3, v6, v1

    .line 33
    .line 34
    aput-object v4, v6, v0

    .line 35
    .line 36
    aput-object v5, v6, v2

    .line 37
    .line 38
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v4, 0x7

    .line 41
    new-array v4, v4, [J

    .line 42
    .line 43
    fill-array-data v4, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    const-wide/32 v3, 0x10000

    .line 57
    .line 58
    .line 59
    and-long/2addr p3, v3

    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v5, p3, v3

    .line 63
    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    return v0

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array p3, v2, [J

    .line 72
    .line 73
    fill-array-data p3, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1, v1}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 90
    .line 91
    return v0

    .line 92
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array p2, v2, [J

    .line 95
    .line 96
    fill-array-data p2, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1, v1}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return v0

    .line 110
    :goto_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    const/4 p3, 0x4

    .line 113
    new-array p3, p3, [J

    .line 114
    .line 115
    fill-array-data p3, :array_4

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    return v1

    .line 129
    :array_0
    .array-data 8
        0xd490dc064197647L
        -0x5e9f73341294d2dcL    # -6.471571986018297E-148
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        0x6d312332226cb044L    # 9.4524400981669E217
        0x31d78e9d0aa01eccL    # 1.3652824997930931E-68
        -0x1d0c350cfff83b91L    # -4.668573232858542E168
        0x7ec457a9fb6f447eL    # 4.3594193684844115E302
        0x39c35ff9d93f54abL    # 1.9105132492681276E-30
        -0x366ee2968fcaef3aL    # -2.442718742173669E46
        0x15ac9aa984b3c81fL    # 2.851031309387187E-204
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_2
    .array-data 8
        -0xb963c3e1e1a9144L    # -5.902976909578667E252
        -0x477a1768c2d4c101L    # -2.0602708670535173E-36
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_3
    .array-data 8
        -0x70b0475d5f1f2b43L    # -6.235387308640838E-235
        -0x2011276795d2caf0L    # -1.2924320559463638E154
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_4
    .array-data 8
        -0x668af0ff86f10c9dL    # -4.83985336288241E-186
        -0x25a7ad8889e68b71L    # -1.6464171762729494E127
        -0x2e7adc4fe8e93a9cL    # -5.1333582251549584E84
        0xb3965913f53547aL
    .end array-data
.end method

.method public tun_builder_set_mtu(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-array v4, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object v3, v4, v1

    .line 25
    .line 26
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v0, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x7e2d008c8f11bb5aL    # 6.0695405732665915E299
        -0x4763d4ab84fb1bc2L    # -5.2980485496315054E-36
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        -0x1abd7cbe1cbac7edL    # -6.001471636611542E179
        -0x76d885e4583c2277L
        0x28a7dff3d48e1665L    # 7.755889930601599E-113
        0x28161b932f6e9a93L
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_2
    .array-data 8
        0x66698a5af6f20a48L
        -0x41042ff36e8a457eL    # -2.6524249816468292E-5
        -0x5aa073e452f7fa4cL
        0x10a26f2322ce9979L    # 1.519833254525791E-228
    .end array-data
.end method

.method public tun_builder_set_remote_address(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v4, v2, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, v2, v1

    .line 24
    .line 25
    aput-object p2, v2, v0

    .line 26
    .line 27
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 p2, 0x6

    .line 30
    new-array p2, p2, [J

    .line 31
    .line 32
    fill-array-data p2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p0, p2, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x7790e7a04e7fb194L    # 8.721394550687485E267
        0x275ef7521b3aec0fL
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x658b468a58a68672L
        0x101b3bdd90fe3d52L    # 4.385431918588466E-231
        -0x25a351129a1b6a6cL    # -1.9416343775456254E127
        -0x74acc73d14e02ddbL    # -4.096528779439608E-254
        -0x6a83c40584167c6L    # -3.291147409773776E276
        0x636464614bbc761eL    # 6.156724436521655E170
    .end array-data

    .line 80
    .line 81
    .line 82
    :array_2
    .array-data 8
        0x49057a7548973c96L    # 5.987290719742862E43
        -0x218b68417b883724L    # -1.0285662400911086E147
        0x5d770f26ce75dd01L    # 1.757445803796939E142
        0x7e5101fad9559f3eL    # 2.8474895725145925E300
        -0x6cc8f5d7b7b8b941L    # -4.177144616933264E-216
    .end array-data
.end method

.method public tun_builder_set_session_name(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, v3, v1

    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v4, v0, [J

    .line 25
    .line 26
    fill-array-data v4, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 40
    .line 41
    const v3, 0x7f130024

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v0, v0, [J

    .line 56
    .line 57
    fill-array-data v0, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :array_0
    .array-data 8
        -0x5154c193d4990aa2L    # -7.011961262471473E-84
        0x3da6860cb8c4e2ccL    # 1.0242561810884793E-11
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x48998ea2b035a4aeL    # -8.050970449092736E-42
        -0x2a810922f8004ea9L    # -6.935215089651291E103
        -0x409109ab06f7cbbbL    # -0.003779569590057127
        0x42272342d0bb0cf2L    # 4.968791458952528E10
        0x5dffd49f5902a55bL    # 6.210437091410117E144
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_2
    .array-data 8
        -0x710b2bf061f00d8bL
        -0xc727040c9d7f392L
        -0x6c010ba047ec39f6L
        -0x298913a72b6409b7L    # -3.364761427313488E108
        -0x7f6d48aca3f4e443L    # -6.66315836989007E-306
    .end array-data
.end method

.method public tun_builder_teardown(Z)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p1, v0, v1

    .line 24
    .line 25
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    new-array v1, v1, [J

    .line 49
    .line 50
    fill-array-data v1, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/tknetwork/tunnel/service/c_05$TunBuilder;->log_error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0xea0016defffbb26L    # -1.3021193190886346E238
        -0x10a0985a9350c2acL    # -2.975868264465153E228
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x277bcb7872796509L    # -2.54760049423221E118
        0x25fbdf049588a03bL
        0x212e0270330ef6acL    # 7.33417501847931E-149
        -0x51bf86c6969c76bdL    # -6.624879384909898E-86
        -0x6ab6257359f14a6cL    # -4.026389907918533E-206
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_2
    .array-data 8
        -0x266032814dbd67fcL    # -5.2558435581060556E123
        0x37d3d7c853fe417bL    # 9.111413069674497E-40
        -0x6b00a304566f6fccL
        0x7d6aa730041af9ecL    # 1.3617992777038988E296
    .end array-data
.end method
