.class Lcom/tknetwork/tunnel/service/c_05$ProxyContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyContext"
.end annotation


# instance fields
.field private allow_creds_dialog:Z

.field private connect_intent:Landroid/content/Intent;

.field private expires:J

.field private explicit_creds:Z

.field private n_retries:I

.field private profile_name:Ljava/lang/String;

.field private proxy:Lnet/openvpn/openvpn/ProxyList$Item;

.field private proxy_password:Ljava/lang/String;

.field private proxy_username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->profile_name:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->connect_intent:Landroid/content/Intent;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->expires:J

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->explicit_creds:Z

    .line 14
    .line 15
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->allow_creds_dialog:Z

    .line 20
    .line 21
    iput v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->n_retries:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public client_api_config(Lnet/openvpn/openvpn/ClientAPI_Config;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lnet/openvpn/openvpn/ProxyList$Item;->host:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProxyHost(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 11
    .line 12
    iget-object v0, v0, Lnet/openvpn/openvpn/ProxyList$Item;->port:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProxyPort(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProxyUsername(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProxyPassword(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 34
    .line 35
    iget-boolean v0, v0, Lnet/openvpn/openvpn/ProxyList$Item;->allow_cleartext_auth:Z

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ClientAPI_Config;->setProxyAllowCleartextAuth(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public configure_creds_dialog_intent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->profile_name:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v2, v0, [J

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->profile_name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v0, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 44
    .line 45
    invoke-virtual {v2}, Lnet/openvpn/openvpn/ProxyList$Item;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v2, v0, [J

    .line 55
    .line 56
    fill-array-data v2, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget v2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->n_retries:I

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v0, v0, [J

    .line 74
    .line 75
    fill-array-data v0, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-wide v1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->expires:J

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void

    .line 91
    :array_0
    .array-data 8
        -0x2330640d7f9105f8L    # -1.1763081264844077E139
        0x47a3966cccbd73e9L    # 1.3018191585054383E37
        -0x6577ff6a096f58c8L    # -7.230448909505286E-181
        0x32e5e5660cc47a3eL    # 1.6633263267234402E-63
        0x441ea781d96c54d5L    # 1.4136812243672978E20
    .end array-data

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
    :array_1
    .array-data 8
        0x65be2a2c6ab89c9eL    # 1.2516905928947387E182
        0x3d61b01eff93abafL    # 5.027224289403461E-13
        0xeac6c624cbadb3L
        -0xe081cf173bab79bL    # -9.95490409815705E240
        -0x77bafe5141b40d5dL    # -7.952598932532921E-269
    .end array-data

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
    :array_2
    .array-data 8
        0x3d86152336b76154L    # 2.5104973893763295E-12
        0x4071316e17a45b0eL    # 275.0893780155319
        -0x7ccb825512601a5cL    # -3.208374392132496E-293
        0x6b516718cbbc8593L    # 8.939519856146421E208
        -0x529091eb5ef8ae0cL    # -7.714640938838414E-90
    .end array-data

    .line 140
    .line 141
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
    :array_3
    .array-data 8
        0x7d2a29601c24e483L    # 8.354307406358667E294
        0x7083c95df71ddcfaL    # 9.830092490372064E233
        0x3a63712d7e17cf7dL    # 1.9631504550151836E-27
        0x61497840f29627ccL    # 4.476022235404316E160
        -0x2332bc9cffd06237L    # -1.0890059935848367E139
    .end array-data
.end method

.method public invalidate_proxy_creds(Lnet/openvpn/openvpn/ProxyList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ProxyList$Item;->invalidate_creds()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lnet/openvpn/openvpn/ProxyList;->put(Lnet/openvpn/openvpn/ProxyList$Item;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lnet/openvpn/openvpn/ProxyList;->save()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public is_expired()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->expires:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->expires:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ProxyList$Item;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public new_connection(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ProxyList;Z)V
    .locals 0

    .line 1
    if-nez p8, :cond_4

    .line 2
    .line 3
    invoke-virtual {p7, p3}, Lnet/openvpn/openvpn/ProxyList;->get(Ljava/lang/String;)Lnet/openvpn/openvpn/ProxyList$Item;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_3

    .line 8
    .line 9
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->profile_name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->connect_intent:Landroid/content/Intent;

    .line 14
    .line 15
    iput-boolean p6, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->allow_creds_dialog:Z

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->n_retries:I

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    const-wide/32 p6, 0x1d4c0

    .line 25
    .line 26
    .line 27
    add-long/2addr p1, p6

    .line 28
    iput-wide p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->expires:J

    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->explicit_creds:Z

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    if-nez p5, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p4, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    iget-object p1, p3, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p3, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 51
    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->reset()V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public should_launch_creds_dialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->allow_creds_dialog:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public submit_proxy_creds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/openvpn/openvpn/ProxyList;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lnet/openvpn/openvpn/ProxyList$Item;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_username:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy_password:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->explicit_creds:Z

    .line 26
    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->proxy:Lnet/openvpn/openvpn/ProxyList$Item;

    .line 30
    .line 31
    iput-object p2, v0, Lnet/openvpn/openvpn/ProxyList$Item;->username:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, v0, Lnet/openvpn/openvpn/ProxyList$Item;->password:Ljava/lang/String;

    .line 34
    .line 35
    iput-boolean p4, v0, Lnet/openvpn/openvpn/ProxyList$Item;->remember_creds:Z

    .line 36
    .line 37
    invoke-virtual {p5, v0}, Lnet/openvpn/openvpn/ProxyList;->put(Lnet/openvpn/openvpn/ProxyList$Item;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5}, Lnet/openvpn/openvpn/ProxyList;->save()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget p2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->n_retries:I

    .line 44
    .line 45
    add-int/2addr p2, p1

    .line 46
    iput p2, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->n_retries:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ProxyContext;->connect_intent:Landroid/content/Intent;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method
