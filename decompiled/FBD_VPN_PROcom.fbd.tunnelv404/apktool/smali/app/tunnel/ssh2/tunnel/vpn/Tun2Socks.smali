.class public Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lapp/tunnel/vpncommons/utils/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tun2Socks"

.field private static final TUN2SOCKS_BIN:Ljava/lang/String; = "libtun2socks"


# instance fields
.field private fileTun2Socks:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDnsResolverAddress:Ljava/lang/String;

.field private mListener:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

.field private final mSocksServerAddress:Ljava/lang/String;

.field private final mUdpgwServerAddress:Ljava/lang/String;

.field private final mUdpgwTransparentDNS:Z

.field private final mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mVpnInterfaceMTU:I

.field private final mVpnIpAddress:Ljava/lang/String;

.field private final mVpnNetMask:Ljava/lang/String;

.field private tun2SocksProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    iput p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceMTU:I

    .line 9
    .line 10
    iput-object p4, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnIpAddress:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnNetMask:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mSocksServerAddress:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p9, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mUdpgwTransparentDNS:Z

    .line 21
    .line 22
    return-void
.end method

.method private sendFd(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "Sending FD to socks"

    .line 4
    .line 5
    invoke-static {v2}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    :goto_0
    if-ltz v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Landroid/net/LocalSocketAddress;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    .line 24
    .line 25
    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    new-array v5, v1, [Ljava/io/FileDescriptor;

    .line 36
    .line 37
    aput-object v4, v5, v0

    .line 38
    .line 39
    invoke-virtual {v3, v5}, Landroid/net/LocalSocket;->setFileDescriptorsForSend([Ljava/io/FileDescriptor;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/16 v5, 0x2a

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :catch_0
    const-wide/16 v3, 0x1f4

    .line 59
    .line 60
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized interrupt()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lapp/tunnel/vpncommons/utils/VpnUtils;->killProcess(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 23
    :try_start_2
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 24
    .line 25
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw v0
.end method

.method public onLine(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Tun2Socks: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "libtun2socks"

    .line 2
    .line 3
    const-string v1, "Falha ao criar arquivo: "

    .line 4
    .line 5
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-interface {v2}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;->onStart()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v4, Ljava/io/File;

    .line 20
    .line 21
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v0, v4}, Lapp/tunnel/vpncommons/utils/CustomNativeLoader;->loadNativeBinary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    new-instance v0, Ljava/io/File;

    .line 43
    .line 44
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v3}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "sock_path"

    .line 51
    .line 52
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->fileTun2Socks:Ljava/io/File;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, " --netif-ipaddr "

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnIpAddress:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " --netif-netmask "

    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnNetMask:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, " --socks-server-addr "

    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mSocksServerAddress:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " --tunmtu "

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceMTU:I

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, " --tunfd "

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, " --sock "

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, " --loglevel 3"

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v1, :cond_3

    .line 151
    .line 152
    iget-boolean v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mUdpgwTransparentDNS:Z

    .line 153
    .line 154
    if-eqz v1, :cond_2

    .line 155
    .line 156
    const-string v1, " --udpgw-transparent-dns"

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_2
    :goto_1
    const-string v1, " --udpgw-remote-server-addr "

    .line 166
    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mUdpgwServerAddress:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    :cond_3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    .line 176
    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    const-string v1, " --dnsgw "

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mDnsResolverAddress:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iput-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 202
    .line 203
    new-instance v2, Lapp/tunnel/vpncommons/utils/StreamGobbler;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v2, v1, p0}, Lapp/tunnel/vpncommons/utils/StreamGobbler;-><init>(Ljava/io/InputStream;Lapp/tunnel/vpncommons/utils/StreamGobbler$OnLineListener;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lapp/tunnel/vpncommons/utils/StreamGobbler;

    .line 213
    .line 214
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-direct {v1, v3, p0}, Lapp/tunnel/vpncommons/utils/StreamGobbler;-><init>(Ljava/io/InputStream;Lapp/tunnel/vpncommons/utils/StreamGobbler$OnLineListener;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mVpnInterfaceFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 230
    .line 231
    invoke-direct {p0, v1, v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->sendFd(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_5

    .line 236
    .line 237
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 244
    .line 245
    const-string v1, "Failed to send Fd to sock, this may not be supported on your device. Please contact the developer."

    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :catch_2
    new-instance v2, Ljava/io/IOException;

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v2

    .line 273
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 274
    .line 275
    const-string v1, "Bin Tun2Socks not found"

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v2, "Tun2Socks Error: "

    .line 284
    .line 285
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :goto_3
    const-string v1, "Tun2Socks Error"

    .line 304
    .line 305
    invoke-static {v1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 306
    .line 307
    .line 308
    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->tun2SocksProcess:Ljava/lang/Process;

    .line 310
    .line 311
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    .line 312
    .line 313
    if-eqz v0, :cond_8

    .line 314
    .line 315
    invoke-interface {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;->onStop()V

    .line 316
    .line 317
    .line 318
    :cond_8
    return-void
.end method

.method public setOnTun2SocksListener(Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks$OnTun2SocksListener;

    .line 2
    .line 3
    return-void
.end method
