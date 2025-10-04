.class public Lcom/tknetwork/tunnel/service/c_10;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lde/blinkt/openvpn/core/TkLogStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_10$TunListener;,
        Lcom/tknetwork/tunnel/service/c_10$StatusPoller;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String;

.field public static final NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String;

.field public static final NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String;

.field private static final PRIORITY_DEFAULT:I = 0x0

.field private static final PRIORITY_MAX:I = 0x2

.field private static final PRIORITY_MIN:I = -0x2

.field public static final START_SERVICE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static final TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

.field public static final TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

.field public static isRunning:Z

.field private static lastStateMsg:Ljava/lang/String;

.field private static mConnecttime:J

.field public static mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

.field private static mTunnelThread:Ljava/lang/Thread;

.field public static tunListener:Lcom/tknetwork/tunnel/service/c_10$TunListener;


# instance fields
.field private adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

.field private config:Lconfig/ConfigUtil;

.field private connMgr:Landroid/net/ConnectivityManager;

.field private dataTransferStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

.field private lastChannel:Ljava/lang/String;

.field private listLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tknetwork/tunnel/service/c_05$LogMsg;",
            ">;"
        }
    .end annotation
.end field

.field private logView:Landroid/widget/ListView;

.field private final mBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationShowing:Z

.field private final mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private statuspoller:Lcom/tknetwork/tunnel/service/c_10$StatusPoller;

.field private v:Landroid/view/View;

.field private v2rayThread:Lcom/v2ray/ang/service/V2RayVpnService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->START_SERVICE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v3, v2, [J

    .line 22
    .line 23
    fill-array-data v3, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v3, v2, [J

    .line 38
    .line 39
    fill-array-data v3, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_3

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-class v2, Lcom/tknetwork/tunnel/service/c_10;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_4

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    new-array v2, v2, [J

    .line 113
    .line 114
    fill-array-data v2, :array_5

    .line 115
    .line 116
    .line 117
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "c_10"

    .line 127
    .line 128
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->TAG:Ljava/lang/String;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    sput-boolean v0, Lcom/tknetwork/tunnel/service/c_10;->isRunning:Z

    .line 132
    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .line 135
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_10;->mConnecttime:J

    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :array_0
    .array-data 8
        -0x689492a1a8039161L    # -7.338286012182519E-196
        0x4eb6395f7693846eL    # 1.533851900365641E71
        -0x374938df2d5f30cdL    # -1.984230110455799E42
        -0xd5d802b87b85345L    # -1.578929126356208E244
        0x75b0c09bc74423b1L    # 8.04920013895081E258
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
    :array_1
    .array-data 8
        0x721ad7df3b410b43L    # 4.4747794592646456E241
        -0x64e9170550245298L    # -3.533532498266717E-178
        -0x7383e45639a3fda1L
    .end array-data

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
    .line 178
    .line 179
    :array_2
    .array-data 8
        0x3fdb9ceb8e68d393L    # 0.4314526453702509
        -0x7ce8957c8ff51454L    # -9.165965383009886E-294
        -0x632883820c61acadL    # -9.723822001277903E-170
    .end array-data

    :array_3
    .array-data 8
        -0x2b817277c89884daL    # -1.0441681973010371E99
        0x69bc9a90a58dfad9L    # 2.1894770262373265E201
        0x7998b92d2320d838L    # 5.47826767463159E277
    .end array-data

    :array_4
    .array-data 8
        0x279ef1b15afba2b2L    # 7.669370867013599E-118
        0x16707128f3087033L
        0x6ef7b447f0972847L    # 3.509639227669356E226
        -0x479c5e10482b14L
        -0x49a6fc2c681acb18L    # -6.846368630511818E-47
    .end array-data

    :array_5
    .array-data 8
        -0xadde5c0bbd91b29L    # -1.698812907462734E256
        -0x5ab3ba7edccd0722L
        0x2583be196221d658L    # 5.696336598830327E-128
        -0x196f3e48555e1f29L    # -1.1392159573796489E186
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mNotificationShowing:Z

    .line 6
    .line 7
    new-instance v0, Lcom/tknetwork/tunnel/service/c_10$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_10$1;-><init>(Lcom/tknetwork/tunnel/service/c_10;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 13
    .line 14
    new-instance v0, Lcom/tknetwork/tunnel/service/c_10$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_10$2;-><init>(Lcom/tknetwork/tunnel/service/c_10;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    new-instance v0, Lcom/tknetwork/tunnel/service/c_10$3;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_10$3;-><init>(Lcom/tknetwork/tunnel/service/c_10;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mBinder:Landroid/os/IBinder;

    .line 27
    .line 28
    return-void
.end method

.method private addVpnActionsToNotification(Landroid/app/Notification$Builder;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/core/MainReceiver;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    fill-array-data v2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/high16 v2, 0x14000000

    .line 28
    .line 29
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f1301d2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const v2, 0x7f08010a

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        -0x29e69ce78338de3cL    # -5.822526127946142E106
        0x547091a584c3f23cL    # 5.662563785563533E98
        -0x6da78530c94dfb44L
        -0x57ad11b63dc261c1L
    .end array-data
.end method

.method private connected()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/tknetwork/tunnel/service/c_10;->isRunning:Z

    .line 3
    .line 4
    return-void
.end method

.method private createNotificationChannels(Landroid/app/NotificationManager;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    new-array v1, v0, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/NotificationManager;

    .line 21
    .line 22
    const v1, 0x7f130057

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v3, v0, [J

    .line 35
    .line 36
    fill-array-data v3, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f130052

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/app/NotificationChannel;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 67
    .line 68
    .line 69
    const v1, 0x7f130059

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v3, v0, [J

    .line 82
    .line 83
    fill-array-data v3, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2, v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const v2, 0x7f130054

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v1, v2}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/app/NotificationChannel;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 114
    .line 115
    .line 116
    const v1, 0x7f13005a

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v0, v0, [J

    .line 129
    .line 130
    fill-array-data v0, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0, v1}, L됴땀돰듸딜듨듼딅땭뒋땣둘땸돷땜둬돴뒹딅돰듨뒐둣땋딅듟들돛둡땣드딠땭따땋뒬땥든땡뒉땔땰땪딌딻뒉드뒾뎸뒘딃돰듐딟드돼둔둘땻뎸뒛둥돳뎠땔뎸딀땦땭둘드뒛돠땥뒐딄땐듬둘됨땬듽땋땻땹뎨땥딞둡땃돷땬땍뒵땬든듽뒛땦됨땋딞땄돶듰땍둑뎰뒻딎딄둡돶땮뒼땱듼뒙땦딹뒛땩될둔든딻딠돸땥둡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const v1, 0x7f130055

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/app/NotificationChannel;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v0}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        0x6a9b9356c5fca15L
        -0x8c2884487227cf7L
        0x4cfc2fb7a00b52bfL    # 7.247006639512078E62
    .end array-data

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
    .line 178
    .line 179
    .line 180
    .line 181
    :array_1
    .array-data 8
        0x5b820153c56f29a1L    # 6.390070962335029E132
        -0x98514567734d04dL    # -5.29810127584623E262
        -0x61b592702f562430L    # -9.178595969586195E-163
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x2bc22b46fe240799L    # 6.645439156045702E-98
        -0x317edaf0f35fa577L    # -1.4791098850086405E70
        -0x2a49d85780ebf475L    # -7.939416630236901E104
    .end array-data

    :array_3
    .array-data 8
        0x239b2172abd1d9d4L
        0x5ce66ea9e8df7845L    # 3.3391922918006487E139
        0x584aed88c49932L
    .end array-data
.end method

.method public static getGraphPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x4000000

    .line 10
    .line 11
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_10$6;->$SwitchMap$de$blinkt$openvpn$core$ConnectionStatus:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const p1, 0x7f080100

    .line 13
    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_10;->connected()V

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0800ff

    .line 20
    .line 21
    .line 22
    return p1
.end method

.method public static getTime()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    sget-wide v4, Lcom/tknetwork/tunnel/service/c_10;->mConnecttime:J

    .line 13
    .line 14
    sub-long/2addr v2, v4

    .line 15
    const-wide/16 v6, 0x0

    .line 16
    .line 17
    cmp-long v8, v4, v6

    .line 18
    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    const-wide/16 v4, 0x3e8

    .line 22
    .line 23
    div-long v4, v2, v4

    .line 24
    .line 25
    const-wide/16 v6, 0x3c

    .line 26
    .line 27
    rem-long/2addr v4, v6

    .line 28
    const-wide/32 v8, 0xea60

    .line 29
    .line 30
    .line 31
    div-long v8, v2, v8

    .line 32
    .line 33
    rem-long/2addr v8, v6

    .line 34
    const-wide/32 v6, 0x36ee80

    .line 35
    .line 36
    .line 37
    div-long/2addr v2, v6

    .line 38
    const-wide/16 v6, 0x18

    .line 39
    .line 40
    rem-long/2addr v2, v6

    .line 41
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v7, v1, [J

    .line 44
    .line 45
    fill-array-data v7, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    aput-object v2, v1, v5

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aput-object v3, v1, v2

    .line 74
    .line 75
    aput-object v4, v1, v0

    .line 76
    .line 77
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :array_0
    .array-data 8
        -0x5e0c6ce8aeaf32a0L
        -0x1fd7ed0dba3de531L    # -1.6138984629757669E155
        0x19ae28e220317e1dL
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
    :array_1
    .array-data 8
        0x385c14fa10bd1fb3L    # 3.301016264706816E-37
        -0x201099c3ccacfd20L    # -1.3156141735367996E154
    .end array-data
.end method

.method private jbNotificationExtras(ILandroid/app/Notification$Builder;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    new-array v4, v4, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-array v4, v1, [Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    aput-object v5, v4, v0

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-array v3, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p1, v3, v0

    .line 41
    .line 42
    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    new-array v3, v3, [J

    .line 53
    .line 54
    fill-array-data v3, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-array v3, v1, [Ljava/lang/Class;

    .line 65
    .line 66
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v4, v3, v0

    .line 69
    .line 70
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    .line 76
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    aput-object v2, v1, v0

    .line 79
    .line 80
    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    goto :goto_0

    .line 86
    :catch_1
    move-exception p1

    .line 87
    goto :goto_0

    .line 88
    :catch_2
    move-exception p1

    .line 89
    goto :goto_0

    .line 90
    :catch_3
    move-exception p1

    .line 91
    :goto_0
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    :goto_1
    return-void

    .line 95
    :array_0
    .array-data 8
        -0x30874a70bad086c8L    # -6.98518531230421E74
        0x5f4ec2be8747faf0L    # 1.258648138339204E151
        0x5a835ed3c883d17L
    .end array-data

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
    :array_1
    .array-data 8
        0x6d4062e2125314caL
        0x123940dcfabf1c71L    # 6.986224951129452E-221
        -0xd8141c11a3e10d5L    # -3.279931992086383E243
        -0x5c4e452b11786fa0L
    .end array-data
.end method

.method private lpNotificationExtras(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setTunListener(Lcom/tknetwork/tunnel/service/c_10$TunListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/service/c_10;->tunListener:Lcom/tknetwork/tunnel/service/c_10$TunListener;

    .line 2
    .line 3
    return-void
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ForegroundServiceType"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p4

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x2

    .line 11
    const/4 v7, 0x1

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct {v0, v8}, Lcom/tknetwork/tunnel/service/c_10;->getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v10, 0x3

    .line 21
    new-array v11, v10, [J

    .line 22
    .line 23
    fill-array-data v11, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    check-cast v9, Landroid/app/NotificationManager;

    .line 38
    .line 39
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v12, 0x1a

    .line 42
    .line 43
    if-lt v11, v12, :cond_0

    .line 44
    .line 45
    invoke-direct {v0, v9}, Lcom/tknetwork/tunnel/service/c_10;->createNotificationChannels(Landroid/app/NotificationManager;)V

    .line 46
    .line 47
    .line 48
    new-instance v13, Landroid/app/Notification$Builder;

    .line 49
    .line 50
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v14, v10, [J

    .line 53
    .line 54
    fill-array-data v14, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    invoke-static {v0, v13}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Lcom/tknetwork/tunnel/service/c_10;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v13, Landroid/app/Notification$Builder;

    .line 69
    .line 70
    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    new-instance v13, Landroid/app/Notification$Builder;

    .line 74
    .line 75
    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    const v14, 0x7f130024

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    invoke-direct {v0, v13}, Lcom/tknetwork/tunnel/service/c_10;->addVpnActionsToNotification(Landroid/app/Notification$Builder;)V

    .line 98
    .line 99
    .line 100
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v15, v6, [J

    .line 103
    .line 104
    fill-array-data v15, :array_2

    .line 105
    .line 106
    .line 107
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    invoke-direct {v0, v13, v14}, Lcom/tknetwork/tunnel/service/c_10;->lpNotificationExtras(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v15, v10, [J

    .line 120
    .line 121
    fill-array-data v15, :array_3

    .line 122
    .line 123
    .line 124
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-eqz v14, :cond_1

    .line 136
    .line 137
    const/4 v6, -0x2

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v10, v10, [J

    .line 142
    .line 143
    fill-array-data v10, :array_4

    .line 144
    .line 145
    .line 146
    invoke-direct {v14, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-eqz v10, :cond_2

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    const/4 v6, 0x0

    .line 161
    :goto_1
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 162
    .line 163
    .line 164
    move-object/from16 v8, p1

    .line 165
    .line 166
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 167
    .line 168
    .line 169
    new-instance v8, Landroid/content/Intent;

    .line 170
    .line 171
    const-class v10, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 172
    .line 173
    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    const/high16 v10, 0xc000000

    .line 177
    .line 178
    invoke-static {v0, v5, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 183
    .line 184
    .line 185
    const-wide/16 v14, 0x0

    .line 186
    .line 187
    cmp-long v8, v3, v14

    .line 188
    .line 189
    if-eqz v8, :cond_3

    .line 190
    .line 191
    invoke-virtual {v13, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 192
    .line 193
    .line 194
    :cond_3
    invoke-direct {v0, v6, v13}, Lcom/tknetwork/tunnel/service/c_10;->jbNotificationExtras(ILandroid/app/Notification$Builder;)V

    .line 195
    .line 196
    .line 197
    if-lt v11, v12, :cond_4

    .line 198
    .line 199
    invoke-static {v13, v2}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    if-eqz v1, :cond_5

    .line 203
    .line 204
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v4, v7, [J

    .line 207
    .line 208
    const-wide v6, -0x171d0a8949ab18abL    # -1.771491200858694E197

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    aput-wide v6, v4, v5

    .line 214
    .line 215
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-nez v3, :cond_5

    .line 227
    .line 228
    invoke-virtual {v13, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 229
    .line 230
    .line 231
    :cond_5
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    invoke-virtual {v9, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v3, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_10;->lastChannel:Ljava/lang/String;

    .line 246
    .line 247
    if-eqz v1, :cond_6

    .line 248
    .line 249
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_6

    .line 254
    .line 255
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_10;->lastChannel:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {v9, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 262
    .line 263
    .line 264
    :cond_6
    iput-object v2, v0, Lcom/tknetwork/tunnel/service/c_10;->lastChannel:Ljava/lang/String;

    .line 265
    .line 266
    return-void

    :array_0
    .array-data 8
        0x44ccd3f6ecd0f5f3L    # 2.7227263469177076E23
        -0x16b5e045f7836a48L    # -1.5622326220349104E199
        -0x194abe077cee70bbL    # -5.780874842189879E186
    .end array-data

    :array_1
    .array-data 8
        0x3565dd3c06f1d207L    # 1.8261829583542578E-51
        -0x1eacf0b41fe30465L    # -6.699076486097926E160
        -0x5a4155b3527a76f2L    # -7.078285902009584E-127
    .end array-data

    :array_2
    .array-data 8
        -0x550fef80a4d4456eL    # -7.172443804821632E-102
        0x1fa093ebbeb30d46L
    .end array-data

    :array_3
    .array-data 8
        -0x78892bd691e254bbL
        0x4d8298c95ed345L
        0x44ddb98c11e8fd2eL    # 5.6148547504507995E23
    .end array-data

    :array_4
    .array-data 8
        0x4f69d25819972862L    # 3.6498334818065854E74
        0x432b52ddead77dcdL    # 3.8454687262143745E15
        -0x751ed2a253d58484L    # -2.860002010479635E-256
    .end array-data
.end method

.method private startTunnelBroadcast()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->connMgr:Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_10;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 10
    .line 11
    invoke-static {v0, v1}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/tknetwork/tunnel/service/c_10;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static startmanager()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_10;->mConnecttime:J

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Thread;

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/service/c_10;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelThread:Ljava/lang/Thread;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    const v1, 0x7f130316

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private stopTunnelBroadcast()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x18

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->connMgr:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_10;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public endTunnelService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/tknetwork/tunnel/service/c_10$5;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/tknetwork/tunnel/service/c_10$5;-><init>(Lcom/tknetwork/tunnel/service/c_10;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getIpPublic()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->connMgr:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->getLocalIpAddress()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x799213d7362da038L
        -0x148ef517b9cea3bfL    # -3.501813573398126E209
        -0x5e3024c4f0fb68baL
    .end array-data
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

.method public networkStateChange(Landroid/content/Context;Z)V
    .locals 9

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_10;->connMgr:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v0, v0, [J

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v5, v2, [J

    .line 39
    .line 40
    const-wide v6, -0x3798cbc852944275L    # -6.316722710946044E40

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    aput-wide v6, v5, v1

    .line 46
    .line 47
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-nez v5, :cond_2

    .line 59
    .line 60
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v6, v2, [J

    .line 63
    .line 64
    const-wide v7, -0x37ba9c53402e8b02L    # -1.455684048503442E40

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    aput-wide v7, v6, v1

    .line 70
    .line 71
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :cond_2
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v7, p1, [J

    .line 81
    .line 82
    fill-array-data v7, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v7, p1, v1

    .line 103
    .line 104
    aput-object v3, p1, v2

    .line 105
    .line 106
    const/4 v1, 0x2

    .line 107
    aput-object v5, p1, v1

    .line 108
    .line 109
    aput-object v4, p1, v0

    .line 110
    .line 111
    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_1

    .line 116
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :goto_1
    if-nez p2, :cond_3

    .line 121
    .line 122
    sget-object p2, Lcom/tknetwork/tunnel/service/c_10;->lastStateMsg:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_4

    .line 129
    .line 130
    :cond_3
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    sput-object p1, Lcom/tknetwork/tunnel/service/c_10;->lastStateMsg:Ljava/lang/String;

    .line 134
    .line 135
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x7c319685b5003760L    # -2.438032513705742E-290
        -0x930a3ae019d5052L
        -0x30c01d2f7e6b213fL    # -5.6337674997938595E73
    .end array-data

    .line 138
    .line 139
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
    :array_1
    .array-data 8
        0x12364c7b25c065afL    # 6.168844021551469E-221
        0x45e4860c729f1570L    # 5.081404031236058E28
        -0x333f85e38453a67bL    # -5.295502704681294E61
        0x4ff89def4589298aL    # 1.781528759556268E77
    .end array-data
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_10;->mBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
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
    invoke-static {p0}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->config:Lconfig/ConfigUtil;

    .line 20
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    new-array v2, v1, [J

    .line 35
    .line 36
    fill-array-data v2, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->connMgr:Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    invoke-static {}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getStatisticData()Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getDataTransferStats()Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->dataTransferStats:Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v1, v1, [J

    .line 71
    .line 72
    fill-array-data v1, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/app/NotificationManager;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->mNotificationManager:Landroid/app/NotificationManager;

    .line 89
    .line 90
    :cond_0
    return-void

    .line 91
    :array_0
    .array-data 8
        -0x4af0012b984315a1L    # -4.17559825700595E-53
        0xc560d44fa191f53L
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
    :array_1
    .array-data 8
        -0x7145e0f94425b458L
        0x362723648e868727L    # 7.915917619615104E-48
        0x34f1fbb434708ec8L
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
    :array_2
    .array-data 8
        0x1c6d86483d495697L    # 9.549829575312216E-172
        0x4ba9d465d59dfea3L    # 3.1667094152550114E56
        -0x9696048fe8b39e2L
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_10;->stopTunnel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->statuspoller:Lcom/tknetwork/tunnel/service/c_10$StatusPoller;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_10$StatusPoller;->stop()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_10;->stopTunnelBroadcast()V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->removeStateListener(Lde/blinkt/openvpn/core/TkLogStatus$StateListener;)V

    .line 32
    .line 33
    .line 34
    return-void

    :array_0
    .array-data 8
        -0x6c61d31688edf4c6L
        0x4274dc89871401cdL    # 1.4335895432321125E12
        -0x2f05cc586ef96c40L    # -1.2427093359977781E82
    .end array-data
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p3, 0x3

    .line 4
    new-array v0, p3, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_10;->startTunnelBroadcast()V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->addStateListener(Lde/blinkt/openvpn/core/TkLogStatus$StateListener;)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/tknetwork/tunnel/service/c_10$StatusPoller;

    .line 22
    .line 23
    const-wide/16 v0, 0x3e8

    .line 24
    .line 25
    invoke-direct {p2, v0, v1}, Lcom/tknetwork/tunnel/service/c_10$StatusPoller;-><init>(J)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_10;->statuspoller:Lcom/tknetwork/tunnel/service/c_10$StatusPoller;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/Thread;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->statuspoller:Lcom/tknetwork/tunnel/service/c_10$StatusPoller;

    .line 33
    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v2, p3, [J

    .line 37
    .line 38
    fill-array-data v2, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x2

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    return p2

    .line 83
    :cond_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getLastState()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->getLocalizedState(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array p3, p3, [J

    .line 98
    .line 99
    fill-array-data p3, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    sget-object v6, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_START:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    const-wide/16 v4, 0x0

    .line 113
    .line 114
    move-object v0, p0

    .line 115
    move-object v1, v2

    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/tknetwork/tunnel/service/c_10;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Ljava/lang/Thread;

    .line 120
    .line 121
    new-instance p3, Lcom/tknetwork/tunnel/service/c_10$4;

    .line 122
    .line 123
    invoke-direct {p3, p0}, Lcom/tknetwork/tunnel/service/c_10$4;-><init>(Lcom/tknetwork/tunnel/service/c_10;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 130
    .line 131
    .line 132
    return p2

    .line 133
    :array_0
    .array-data 8
        -0x6f43e5fb46aa3273L    # -4.633774310693709E-228
        0x209e4ba0997820b8L
        -0x2f4f1d00c4342a49L    # -5.005688551108624E80
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
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
    :array_1
    .array-data 8
        -0x2db42c060e3742dL    # -6.622757632965497E294
        0x6b2766a58aab707L    # 2.08303186669167E-276
        0x48e96cf2b235072L
    .end array-data

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
    :array_2
    .array-data 8
        -0x673e3915080baa2eL    # -1.994948856279564E-189
        0x14f6c619a096994L
        -0x5c3854c70ec8e7cL    # -6.461975729055049E280
        0x2b68cf446492e849L    # 1.4178551332281833E-99
        0xc4c54ba86cea7dL
    .end array-data

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
    .line 188
    .line 189
    :array_3
    .array-data 8
        0x677d82452138dc9eL    # 3.2869251688647702E190
        -0x459823df6eca4c38L    # -2.4092313823010867E-27
        -0x2f18f877a9e3d312L    # -5.4612482619575525E81
    .end array-data
.end method

.method public declared-synchronized startTunnel()V
    .locals 4
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Lkotlinx/coroutines/DelicateCoroutinesApi;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v3, v1, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f130251

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p0, v0}, Lcom/tknetwork/tunnel/service/c_10;->networkStateChange(Landroid/content/Context;Z)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_10;->getIpPublic()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    aput-object v2, v0, v3

    .line 53
    .line 54
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/tknetwork/tunnel/service/c_10;->logs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-class v1, Lcom/v2ray/ang/service/V2RayVpnService;

    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->v2rayThread:Lcom/v2ray/ang/service/V2RayVpnService;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayVpnService;->startService()V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_10;->mHandler:Landroid/os/Handler;

    .line 79
    .line 80
    invoke-direct {v0, v1, p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 84
    .line 85
    new-instance v1, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;

    .line 86
    .line 87
    const/16 v2, 0x1c

    .line 88
    .line 89
    invoke-direct {v1, p0, v2}, L돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯;-><init>(Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lapp/tunnel/ssh2/tunnel/SSHThread;->setOnStopClienteListener(Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_10;->endTunnelService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :goto_0
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    throw v0

    .line 109
    :array_0
    .array-data 8
        -0x63139a23679ab195L
        0x61fba17197d77833L    # 9.944629231592218E163
        -0x7ade0c09958668e8L    # -6.036575191633027E-284
    .end array-data

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
    :array_1
    .array-data 8
        -0x342406297d2a16b5L    # -2.7438711745236777E57
        0x5f1d5283753b6720L    # 1.4997406502515811E150
        -0x4f5222456becdb71L    # -3.3014901416416453E-74
    .end array-data
.end method

.method public declared-synchronized stopTunnel()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_10;->mConnecttime:J

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->v2rayThread:Lcom/v2ray/ang/service/V2RayVpnService;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayVpnService;->onRevoke()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_10;->v2rayThread:Lcom/v2ray/ang/service/V2RayVpnService;

    .line 18
    .line 19
    sget-object v1, Lcom/tknetwork/tunnel/service/c_10;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, p0, v1}, Lcom/tknetwork/tunnel/service/c_10;->networkStateChange(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/tknetwork/tunnel/service/c_10;->mTunnelThread:Ljava/lang/Thread;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const v2, 0x7f130317

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    sput-object v0, Lcom/tknetwork/tunnel/service/c_10;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :cond_2
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILde/blinkt/openvpn/core/ConnectionStatus;I)V
    .locals 8

    .line 1
    sget-object p1, Lcom/tknetwork/tunnel/service/c_10;->mTunnelThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p2, 0x3

    .line 9
    new-array p2, p2, [J

    .line 10
    .line 11
    fill-array-data p2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getLastState()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->getLocalizedState(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move-object v1, v2

    .line 38
    move-object v6, p4

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/tknetwork/tunnel/service/c_10;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x3ba87da2e98366afL    # 2.5930608288391706E-21
        0x5353c7767efc2cdeL    # 2.5786140103726616E93
        0x7f9a47387788b722L    # 4.613295838350311E306
    .end array-data
.end method
