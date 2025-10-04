.class public Lcom/tknetwork/tunnel/thread/DNSTunnelThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DNS_BIN:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private dnsProcess:Ljava/lang/Process;

.field private filedns:Ljava/io/File;

.field private final mConfig:Lconfig/ConfigUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->DNS_BIN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x704a299658ccfc4eL    # 8.123535504965953E232
        0x3d421607e0a82811L    # 1.285091691877643E-13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 11
    .line 12
    return-void
.end method

.method private addLogInfo(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 18
    .line 19
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getDNSaddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 30
    .line 31
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getDNSserverName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 46
    .line 47
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getDNSaddress()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v1, [J

    .line 54
    .line 55
    fill-array-data v4, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v2, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 70
    .line 71
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getDNSserverName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v1, v1, [J

    .line 78
    .line 79
    fill-array-data v1, :array_1

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v2, v0, [J

    .line 96
    .line 97
    fill-array-data v2, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    iget-object v1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 114
    .line 115
    invoke-static {v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->isNetworkOnline(Landroid/content/Context;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v0, v0, [J

    .line 124
    .line 125
    fill-array-data v0, :array_3

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_2

    .line 140
    .line 141
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void

    .line 145
    :array_0
    .array-data 8
        0x27854f247a0cbbdcL    # 2.640692586348755E-118
        0x2b9bc5c02fcfea66L    # 1.2697430373503533E-98
        0xab504cb534f6fa9L
    .end array-data

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
    :array_1
    .array-data 8
        0x3206c66fd1210fd5L    # 1.0559712882520689E-67
        0xa119366a9827b98L
        0xdf24c65ef63f8baL
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        0x389895cd816c57e4L    # 4.6239559906096035E-36
        -0x37f74c075cea34d8L    # -1.0507499518410463E39
        -0x6b79fb03f8803329L    # -8.372205993898525E-210
        -0x395af92dfbe7cfebL    # -2.132354837268801E32
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 8
        -0x53798c3898163f79L    # -3.3636550881849587E-94
        0x695a468ac2b084d4L    # 3.142599535466006E199
        -0x6e4bd06c24488f60L    # -2.181374667361792E-223
        -0x6e2e2423de45fd43L    # -7.719624298421903E-223
    .end array-data
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->addLogInfo(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 46
    .line 47
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getDNSpublicKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->isTunnelActive()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    new-array v0, v0, [J

    .line 67
    .line 68
    fill-array-data v0, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->addLogInfo(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x7c79ebc38a15d2f2L    # 4.041725136722267E291
        0x586324b80700d02eL    # 6.034317336399524E117
        -0xd316393a7bd16a7L
        -0x6c7b93d4615e4ea8L
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
    :array_1
    .array-data 8
        0x21e27cb57dcf7b9dL    # 1.850639958037095E-145
        0x7305c2a231ebf94L    # 4.72528198638154E-274
        -0x1a2ee373df88ac6fL    # -2.84017961151081E182
        0x68a74686862a7caL
        0x23e0e58a13e22b8cL    # 7.2646093896264E-136
    .end array-data

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
    :array_2
    .array-data 8
        0x122d039b09e89cd0L
        -0x6bce33d864a6416dL    # -2.114664868633642E-211
        0x73b826be9e8f366cL    # 2.701828441622754E249
        0x73cef7dca7bb7996L    # 6.928871954894771E249
        0x7c0aaf9334bc87deL    # 3.2507736228467964E289
        0x14b910bdd3bf6792L    # 7.624258232537136E-209
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/thread/DNSTunnelThread;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->lambda$run$0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->filedns:Ljava/io/File;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lapp/tunnel/vpncommons/utils/VpnUtils;->killProcess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->filedns:Ljava/io/File;

    .line 22
    .line 23
    return-void
.end method

.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v3, v0, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 21
    .line 22
    const v4, 0x7f13007f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 38
    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v5, v1, [J

    .line 42
    .line 43
    fill-array-data v5, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    new-instance v5, Ljava/io/File;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v8, v1, [J

    .line 64
    .line 65
    fill-array-data v8, :array_2

    .line 66
    .line 67
    .line 68
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3, v4, v5}, Lapp/tunnel/vpncommons/utils/CustomNativeLoader;->loadNativeBinary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iput-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->filedns:Ljava/io/File;

    .line 83
    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v4, v1, [J

    .line 96
    .line 97
    fill-array-data v4, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 111
    .line 112
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getDNSaddress()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v4, v0, [J

    .line 122
    .line 123
    fill-array-data v4, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 137
    .line 138
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getDNSpublicKey()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v4, v1, [J

    .line 148
    .line 149
    fill-array-data v4, :array_5

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-object v3, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->mConfig:Lconfig/ConfigUtil;

    .line 163
    .line 164
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getDNSserverName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v1, v1, [J

    .line 174
    .line 175
    fill-array-data v1, :array_6

    .line 176
    .line 177
    .line 178
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v3, v0, [J

    .line 191
    .line 192
    fill-array-data v3, :array_7

    .line 193
    .line 194
    .line 195
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 218
    .line 219
    new-instance v2, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 220
    .line 221
    const/16 v3, 0xa

    .line 222
    .line 223
    invoke-direct {v2, p0, v3}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 224
    .line 225
    .line 226
    new-instance v3, Lcom/tknetwork/tunnel/thread/StreamGobbler;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {v3, v1, v2}, Lcom/tknetwork/tunnel/thread/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;)V

    .line 233
    .line 234
    .line 235
    new-instance v1, Lcom/tknetwork/tunnel/thread/StreamGobbler;

    .line 236
    .line 237
    iget-object v4, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-direct {v1, v4, v2}, Lcom/tknetwork/tunnel/thread/StreamGobbler;-><init>(Ljava/io/InputStream;Lcom/tknetwork/tunnel/thread/StreamGobbler$OnLineListener;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catch_0
    move-exception v1

    .line 259
    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    goto :goto_1

    .line 262
    :catch_2
    move-exception v0

    .line 263
    goto :goto_1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->interrupt()V

    .line 265
    .line 266
    .line 267
    new-instance v1, Ljava/io/IOException;

    .line 268
    .line 269
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    const/4 v3, 0x6

    .line 272
    new-array v3, v3, [J

    .line 273
    .line 274
    fill-array-data v3, :array_8

    .line 275
    .line 276
    .line 277
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 294
    .line 295
    new-array v0, v0, [J

    .line 296
    .line 297
    fill-array-data v0, :array_9

    .line 298
    .line 299
    .line 300
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :goto_1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->interrupt()V

    .line 326
    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    const/4 v3, 0x4

    .line 336
    new-array v3, v3, [J

    .line 337
    .line 338
    fill-array-data v3, :array_a

    .line 339
    .line 340
    .line 341
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->addLogInfo(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :goto_2
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/tknetwork/tunnel/thread/DNSTunnelThread;->dnsProcess:Ljava/lang/Process;

    .line 367
    .line 368
    return-void

    .line 369
    :array_0
    .array-data 8
        -0x4a35a0cfc5cdcca8L    # -1.4097139120809247E-49
        0x30984a2f690b3084L    # 1.3425323866135646E-74
        -0x716dc9d68335075bL
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_1
    .array-data 8
        -0x55c6992533166e0eL
        -0x17f332ce00e6402cL
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_2
    .array-data 8
        -0xf0d9b35a9e1da93L    # -1.1696771603919287E236
        -0xab2a21f7b43cdcfL
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :array_3
    .array-data 8
        -0x6b212e4dfa5107dfL    # -3.749758346025107E-208
        -0x770447e0ad583125L
    .end array-data

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_4
    .array-data 8
        -0x11a390bc2a1206f1L    # -4.111349184257419E223
        0x79f2bc23ed16faa7L    # 2.656855350634993E279
        0x6401ab8a8ed9ee20L    # 5.462935896107401E173
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :array_5
    .array-data 8
        -0x7f73bdb1ca6f0ed2L
        -0x693ab3806f2527c4L    # -5.565042029270295E-199
    .end array-data

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_6
    .array-data 8
        0x2f0c15a0ecea6c34L    # 4.626128417855147E-82
        0x2005e51ffed0cf84L
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_7
    .array-data 8
        -0x28a8577fe801bf02L    # -5.689579604954909E112
        -0x6feeb9d3c1b057bcL    # -2.781628228105625E-231
        -0x1dd1030e108175d9L    # -8.922408991169956E164
    .end array-data

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_8
    .array-data 8
        -0x3e56453c4d214734L    # -2.1583509743500364E8
        0x45757faf8c57fed5L    # 4.158467367724198E26
        -0x32ea3634126dff6dL    # -2.240793387423E63
        -0x70793ea3621f80dbL    # -7.156757714756039E-234
        0x77e40708cba3434aL    # 3.306377211777311E269
        0x32912f41a5ca6f28L
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_9
    .array-data 8
        -0x1b74360737484636L    # -2.199376880631996E176
        0x7424e99f6f00d240L    # 2.994568137259245E251
        0x7e606dd87aea866cL    # 5.501220444671217E300
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_a
    .array-data 8
        0x59aed2def84c84f7L    # 1.0188100308198406E124
        0x240f898c3e0dbfd4L    # 5.423709401580347E-135
        -0x6a3c76b8d33f82e1L    # -7.78886142122841E-204
        -0x68696f5f11020862L
    .end array-data
.end method
