.class public Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;
    }
.end annotation


# static fields
.field private static final PDNSD_BIN:Ljava/lang/String; = "libpdnsd"

.field private static final PDNSD_SERVER:Ljava/lang/String; = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n uptest = none;\n }\n"

.field private static final PDNSD_SERVER_TEST:Ljava/lang/String; = "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n reject = ::/0;\n reject_policy = negate;\n reject_recursively = on;\n timeout = 5;\n }\n"

.field private static final TAG:Ljava/lang/String; = "PdnsdThread"


# instance fields
.field private filePdnsd:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mDnsHosts:[Ljava/lang/String;

.field private final mDnsPort:I

.field private mListener:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;

.field private final mPdnsdHost:Ljava/lang/String;

.field private final mPdnsdPort:I

.field private mProcess:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mDnsHosts:[Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mDnsPort:I

    .line 9
    .line 10
    iput-object p4, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mPdnsdHost:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mPdnsdPort:I

    .line 13
    .line 14
    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Pdnsd: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private makePdnsdConf(Ljava/io/File;[Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x1

    .line 7
    move-object v5, p0

    .line 8
    iget-object v6, v5, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const v7, 0x7f120006

    .line 11
    .line 12
    .line 13
    invoke-static {v6, v7}, Lapp/tunnel/vpncommons/utils/FileUtils;->readFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    :goto_0
    array-length v10, v1

    .line 25
    if-ge v9, v10, :cond_0

    .line 26
    .line 27
    aget-object v10, v1, v9

    .line 28
    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v12, "server"

    .line 32
    .line 33
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    add-int/2addr v9, v4

    .line 37
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    new-array v13, v3, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v11, v13, v8

    .line 51
    .line 52
    aput-object v10, v13, v4

    .line 53
    .line 54
    aput-object v12, v13, v2

    .line 55
    .line 56
    const-string v10, "server {\n label= \"%1$s\";\n ip = %2$s;\n port = %3$d;\n uptest = none;\n }\n"

    .line 57
    .line 58
    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const/4 v10, 0x4

    .line 75
    new-array v10, v10, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v7, v10, v8

    .line 78
    .line 79
    aput-object v1, v10, v4

    .line 80
    .line 81
    aput-object p4, v10, v2

    .line 82
    .line 83
    aput-object v9, v10, v3

    .line 84
    .line 85
    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Ljava/io/File;

    .line 90
    .line 91
    const-string v3, "pdnsd.conf"

    .line 92
    .line 93
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-static {v2, v1}, Lapp/tunnel/vpncommons/utils/FileUtils;->saveTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/io/File;

    .line 109
    .line 110
    const-string v3, "pdnsd.cache"

    .line 111
    .line 112
    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    :cond_2
    return-object v2
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->lambda$run$0(Ljava/lang/String;)V

    return-void
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
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

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
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;

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
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 24
    .line 25
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;
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

.method public run()V
    .locals 7

    .line 1
    const-string v0, "libpdnsd"

    .line 2
    .line 3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;->onStart()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lapp/tunnel/vpncommons/utils/CustomNativeLoader;->loadNativeBinary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mDnsHosts:[Ljava/lang/String;

    .line 38
    .line 39
    iget v4, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mDnsPort:I

    .line 40
    .line 41
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mPdnsdHost:Ljava/lang/String;

    .line 42
    .line 43
    iget v6, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mPdnsdPort:I

    .line 44
    .line 45
    move-object v1, p0

    .line 46
    invoke-direct/range {v1 .. v6}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->makePdnsdConf(Ljava/io/File;[Ljava/lang/String;ILjava/lang/String;I)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->filePdnsd:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " -v9 -c "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 85
    .line 86
    new-instance v1, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;

    .line 87
    .line 88
    const/16 v2, 0x13

    .line 89
    .line 90
    invoke-direct {v1, v2}, L뎰돼땰땮땣땅땜될딝딀땰득땩둡따됴뎠뒉뎰땸딜둬땩뒼뒻뒙돰돛돷돝뒉돤딤듸딁땯뎡땰땻땁돷듽듸땜땟딝돰듬디뒛듸땸듼둠땧듨듌뒵뎹뒻든돵될든듌듬돠땣딎뒼듽땠듻딤땱드땰땦득땐뒘땄될땧뒾듨땝디땦든딁딅뒘뒉됐뒋땸땋돛든돷땻돠됫뒼될돳돛땄땃땦드둑땱뒀뒹딌땡딀듐뒀돰땋땨뒼뒉따뎻됩뒻;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lapp/tunnel/vpncommons/utils/StreamGobbler;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {v2, v0, v1}, Lapp/tunnel/vpncommons/utils/StreamGobbler;-><init>(Ljava/io/InputStream;Lapp/tunnel/vpncommons/utils/StreamGobbler$OnLineListener;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lapp/tunnel/vpncommons/utils/StreamGobbler;

    .line 103
    .line 104
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {v0, v3, v1}, Lapp/tunnel/vpncommons/utils/StreamGobbler;-><init>(Ljava/io/InputStream;Lapp/tunnel/vpncommons/utils/StreamGobbler$OnLineListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 130
    .line 131
    const-string v1, "Pdnsd bin not found"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "Pdnsd error: "

    .line 140
    .line 141
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :goto_1
    const-string v1, "Pdnsd error"

    .line 156
    .line 157
    invoke-static {v1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mProcess:Ljava/lang/Process;

    .line 162
    .line 163
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;

    .line 164
    .line 165
    if-eqz v0, :cond_2

    .line 166
    .line 167
    invoke-interface {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;->onStop()V

    .line 168
    .line 169
    .line 170
    :cond_2
    return-void
.end method

.method public setOnPdnsdListener(Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->mListener:Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;

    .line 2
    .line 3
    return-void
.end method
