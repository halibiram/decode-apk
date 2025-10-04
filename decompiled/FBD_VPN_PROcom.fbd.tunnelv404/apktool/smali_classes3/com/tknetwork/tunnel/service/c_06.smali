.class public Lcom/tknetwork/tunnel/service/c_06;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lde/blinkt/openvpn/core/TkLogStatus$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/service/c_06$StatusPoller;,
        Lcom/tknetwork/tunnel/service/c_06$TunListener;
    }
.end annotation


# static fields
.field public static final DESTROY_BUILDER:Ljava/lang/String;

.field public static final ESTABLISH_BUILDER:Ljava/lang/String;

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

.field public static tunListener:Lcom/tknetwork/tunnel/service/c_06$TunListener;


# instance fields
.field public DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

.field private adapter:Lcom/tknetwork/tunnel/adapter/Adapter$LogAdapter;

.field private config:Lconfig/ConfigUtil;

.field private connMgr:Landroid/net/ConnectivityManager;

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

.field private mDnsThread:Lcom/tknetwork/tunnel/thread/UDPTunnelThread;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

.field private final mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private selectedServerType:I

.field private statuspoller:Lcom/tknetwork/tunnel/service/c_06$StatusPoller;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->START_SERVICE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v2, v1, [J

    .line 21
    .line 22
    fill-array-data v2, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->ESTABLISH_BUILDER:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x4

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
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->DESTROY_BUILDER:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    new-array v4, v3, [J

    .line 55
    .line 56
    fill-array-data v4, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->NOTIFICATION_CHANNEL_BG_ID:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v4, v3, [J

    .line 71
    .line 72
    fill-array-data v4, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->NOTIFICATION_CHANNEL_NEWSTATUS_ID:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v3, v3, [J

    .line 87
    .line 88
    fill-array-data v3, :array_5

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->NOTIFICATION_CHANNEL_USERREQ_ID:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-class v3, Lcom/tknetwork/tunnel/service/c_06;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v1, v1, [J

    .line 117
    .line 118
    fill-array-data v1, :array_6

    .line 119
    .line 120
    .line 121
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v2, v2, [J

    .line 145
    .line 146
    fill-array-data v2, :array_7

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "c_06"

    .line 159
    .line 160
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    sput-boolean v0, Lcom/tknetwork/tunnel/service/c_06;->isRunning:Z

    .line 164
    .line 165
    const-wide/16 v0, 0x0

    .line 166
    .line 167
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_06;->mConnecttime:J

    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        0x55d903d7430b3879L    # 3.585742227765959E105
        -0x4fd40b24b8e831ebL    # -1.2071839750200957E-76
        -0x4ad32199caaffb89L    # -1.50701891414834E-52
        -0x19d477079532c14L    # -6.268640119110602E300
        -0x40aba423a094b6dbL    # -0.001242604453797266
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x6040389eb4b5d1c9L    # 4.349807080275547E155
        0x6922bf6be66e8f37L    # 2.802825667023361E198
        -0x5051bdc9cd6ccb31L    # -5.103881071793759E-79
        0x60ea2e64a34f707aL    # 7.189151966608008E158
        0x432ed1aab2644a0fL    # 4.3373901844410955E15
    .end array-data

    :array_2
    .array-data 8
        -0x7995aa7212cbea21L    # -9.284832831350664E-278
        0x243b4d3ab44b992aL    # 3.75622212928485E-134
        0x48fe4570f72b4d67L    # 4.2191971490903683E43
        0x5fc7a102602c776aL    # 2.475096270526185E153
    .end array-data

    :array_3
    .array-data 8
        -0x2355c7b23825a76aL    # -2.4393811767183148E138
        0x6f38d53e7f9a5957L    # 5.882821402601287E227
        -0x4ee528f7360a69f8L    # -3.7977222807046686E-72
    .end array-data

    :array_4
    .array-data 8
        -0x387494ad6c08a684L    # -4.55580081634179E36
        0x5b62d4534794940aL    # 1.67064623819471E132
        -0x342384551c5a06ffL    # -2.793611996151958E57
    .end array-data

    :array_5
    .array-data 8
        0x73cb76a79f9691a4L    # 6.144721884035765E249
        0x6ef3d4791bc70719L    # 2.9360191158701454E226
        -0x4d9cecfe2713c86dL    # -5.660025125088822E-66
    .end array-data

    :array_6
    .array-data 8
        -0x4a08fe055815111fL    # -9.839080217333552E-49
        0x2a56483da7fb2246L    # 9.715371373337952E-105
        0x5bfe5ce29afa3513L    # 1.379305162680909E135
        0x32226cd5099ce9a7L    # 3.417129477762711E-67
        -0x6385827ff49e3268L
    .end array-data

    :array_7
    .array-data 8
        0x40a0ae229724ec48L    # 2135.0675593889646
        0x4781e30be1764345L    # 2.971971035584217E36
        0x13403e97e42cf15fL    # 5.890329702668985E-216
        -0x1868f363019910bcL    # -1.0269621884160483E191
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 5
    .line 6
    iput v0, p0, Lcom/tknetwork/tunnel/service/c_06;->selectedServerType:I

    .line 7
    .line 8
    new-instance v0, Lcom/tknetwork/tunnel/service/c_06$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_06$1;-><init>(Lcom/tknetwork/tunnel/service/c_06;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 14
    .line 15
    new-instance v0, Lcom/tknetwork/tunnel/service/c_06$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_06$2;-><init>(Lcom/tknetwork/tunnel/service/c_06;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    new-instance v0, Lcom/tknetwork/tunnel/service/c_06$3;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_06$3;-><init>(Lcom/tknetwork/tunnel/service/c_06;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mBinder:Landroid/os/IBinder;

    .line 28
    .line 29
    return-void
.end method

.method private ServerType()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lcom/tknetwork/tunnel/service/c_06;->selectedServerType:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 7
    .line 8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Lconfig/ConfigUtil;->setServerType(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Lconfig/ConfigUtil;->setServerType(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 52
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
    invoke-virtual {v1, v0}, Lconfig/ConfigUtil;->setServerType(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v2, 0x3

    .line 72
    if-ne v1, v2, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 75
    .line 76
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v0, v0, [J

    .line 79
    .line 80
    fill-array-data v0, :array_3

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Lconfig/ConfigUtil;->setServerType(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v2, 0x4

    .line 95
    if-ne v1, v2, :cond_4

    .line 96
    .line 97
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 98
    .line 99
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Lconfig/ConfigUtil;->setServerType(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    return-void

    .line 117
    :array_0
    .array-data 8
        -0x35e474bf5fc18989L    # -1.006388378299808E49
        0x1073e1401a5b53a3L    # 2.048788685382623E-229
    .end array-data

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
    :array_1
    .array-data 8
        -0x6c106cca45c12fbbL
        0x71f03454b297e3ccL    # 6.753205561754442E240
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
    :array_2
    .array-data 8
        0x7c0e943b7b379449L    # 3.7250284372153233E289
        -0x2a53c7a0c4f5da9fL    # -5.056484122029413E104
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
    :array_3
    .array-data 8
        -0x1740309918248e7aL    # -3.715378793800784E196
        0x5f3c25b5434b5e5cL    # 5.758568623184692E150
    .end array-data

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
    :array_4
    .array-data 8
        -0x6aa1f72d44d4601dL    # -9.354980403429348E-206
        0x1953b26916ebf3b6L
    .end array-data
.end method

.method private addVpnActionsToNotification(Landroid/app/Notification$Builder;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tknetwork/tunnel/core/MainReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f1301d2

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080153

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void

    :array_0
    .array-data 8
        0x447c7563702a1aecL    # 8.399480990642272E21
        -0x403d470bc2ece285L    # -0.1462693498817592
        0x43b8332ceb8110b7L    # 1.74378687071680691E18
        -0x587587633b156ddaL
    .end array-data
.end method

.method private addVpnActionsToNotification(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x3

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x4000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    .line 6
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tknetwork/tunnel/service/TunnelVPN;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x6

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 7
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x4

    new-array v6, v6, [J

    fill-array-data v6, :array_1

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v4, v3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080153

    invoke-virtual {p1, v4, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0800fc

    invoke-virtual {p1, v2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void

    :array_0
    .array-data 8
        0xb0137b64feacea1L
        -0x7a5b58de60829951L
        0x3256e6b7ea2f4215L    # 3.3978173769597977E-66
        0x746e4c1339189540L    # 6.941421540188129E252
        0x37f5a50cd5e30d57L    # 3.975508505622871E-39
        0x49f005d1cf6523f0L    # 1.4635781295971584E48
    .end array-data

    :array_1
    .array-data 8
        -0x5a1730a3b26baf82L    # -4.581404393198691E-126
        -0x43863de4d7f4e162L    # -2.2341700429001165E-17
        -0x4ee78e66c4148a33L    # -3.4586672643465217E-72
        0x61ed0b793a34a147L    # 5.226805390288682E163
    .end array-data

    :array_2
    .array-data 8
        0x70255d5d0e2d60dfL    # 1.6584542545622335E232
        0x126a27ef963e08c3L    # 5.788746076101772E-220
        0x73f8c53595dc0646L    # 4.433722763255984E250
    .end array-data

    :array_3
    .array-data 8
        -0x3b1e74590bf38bL
        -0x7491b29df1ddee32L
        -0x739cd1ea2c9e9bf8L    # -5.357752681715693E-249
    .end array-data
.end method

.method private connected()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/tknetwork/tunnel/service/c_06;->isRunning:Z

    .line 3
    .line 4
    return-void
.end method

.method private createNotificationChannels()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/NotificationManager;

    .line 21
    .line 22
    const v2, 0x7f130057

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v4, v1, [J

    .line 35
    .line 36
    fill-array-data v4, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3, v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const v3, 0x7f130052

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v2, v3}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Landroid/app/NotificationChannel;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 67
    .line 68
    .line 69
    const v2, 0x7f130059

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v4, v1, [J

    .line 82
    .line 83
    fill-array-data v4, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3, v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const v3, 0x7f130054

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/app/NotificationChannel;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v2}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 114
    .line 115
    .line 116
    const v2, 0x7f13005a

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v1, v1, [J

    .line 129
    .line 130
    fill-array-data v1, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1, v2}, L됴땀돰듸딜듨듼딅땭뒋땣둘땸돷땜둬돴뒹딅돰듨뒐둣땋딅듟들돛둡땣드딠땭따땋뒬땥든땡뒉땔땰땪딌딻뒉드뒾뎸뒘딃돰듐딟드돼둔둘땻뎸뒛둥돳뎠땔뎸딀땦땭둘드뒛돠땥뒐딄땐듬둘됨땬듽땋땻땹뎨땥딞둡땃돷땬땍뒵땬든듽뒛땦됨땋딞땄돶듰땍둑뎰뒻딎딄둡돶땮뒼땱듼뒙땦딹뒛땩될둔든딻딠돸땥둡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const v2, 0x7f130055

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v1, v2}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, L뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Landroid/app/NotificationChannel;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬땲땰땄뒬딤뒙땯듬돤뒾땁뎻돛딌뒷돛뒹듐땠딨될땸둥땰뒵돷땍뒷돵듬땐땣돛뒵뒋뒷딃돷듽둡돝뒬됐뒈땻뒋딝딸땲딟두됨딁뒐땍듨돳되돠땥땥뎡뎹뎬듰뒻듻딄듸땋땱딹땥두듨뎠둠둬됫땱둔딁땤두될뒨딟둠뎡돨땫듨딤돤딃딟뒐땲돰땜딀둘됫딻돸든돷둠둔땻되됨듰땪땣두딎돳듐땄될땬뎬드땟딁듰돷디(Landroid/app/NotificationChannel;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v1}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    nop

    .line 165
    :array_0
    .array-data 8
        0x402525663b0f6b57L    # 10.57304558337425
        -0x2eef46a4e19def57L    # -3.172781748328985E82
        -0x2d1c936b6cbaf3cbL    # -1.9783838111913412E91
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
    :array_1
    .array-data 8
        0x5967f1d464a4c530L    # 4.946484966886262E122
        0x2cb104e21720469L
        0x22b54f043d7b81c8L
    .end array-data

    :array_2
    .array-data 8
        0x55d1201a58929c70L    # 2.4548178627062696E105
        0x523eee3a563caddcL    # 1.5382494980869019E88
        0xa4f0e2dde2fac19L
    .end array-data

    :array_3
    .array-data 8
        -0x29eb7760c3a7cffeL    # -4.709396607467208E106
        0xd1b9f8d4c7c6635L
        -0x2e8bff21cbd09de5L    # -2.428747786446925E84
    .end array-data
.end method

.method private getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lde/blinkt/openvpn/core/ConnectionStatus;->CONNECTED:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_06;->connected()V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0800ff

    .line 12
    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
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
    sget-wide v4, Lcom/tknetwork/tunnel/service/c_06;->mConnecttime:J

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
        0x77d9cb6ab6a76426L    # 2.1292413381595346E269
        -0x2ffcbc9c8a9f2988L    # -2.788162980423204E77
        0x76f333527e939262L    # 9.673602358339898E264
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
        0x68f80934e1ffb6d7L    # 4.491782335906592E197
        -0x6ddb28f82cee8dcfL
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
        0x66034e8118242549L    # 2.5636248045971753E183
        -0x6eb2897166f3eb2aL
        -0x1ffc36f0ae97e623L    # -3.3159838590644177E154
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
        -0x32f582668589e127L    # -1.3622012846788399E63
        0x76d1ca2fb21d9d87L    # 2.2407171523016354E264
        0x2e9c9a3d01403d22L    # 3.680824544413761E-84
        -0x3954e2caed15b630L    # -2.749695507920447E32
    .end array-data
.end method

.method private synthetic lambda$endTunnelService$1()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->removeStateListener(Lde/blinkt/openvpn/core/TkLogStatus$StateListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$startTunnel$0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->endTunnelService()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private lpNotificationExtras(Landroid/app/Notification$Builder;)V
    .locals 2

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
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        -0x58f435e74ff395e0L    # -1.345214469756971E-120
        0x2e3673cd3a50f1d1L    # 4.514639299735676E-86
    .end array-data
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

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
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
    const/4 v6, 0x1

    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    invoke-direct {v0, v7}, Lcom/tknetwork/tunnel/service/c_06;->getIconByConnectionStatus(Lde/blinkt/openvpn/core/ConnectionStatus;)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/c_06;->ServerType()V

    .line 18
    .line 19
    .line 20
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v9, 0x3

    .line 23
    new-array v10, v9, [J

    .line 24
    .line 25
    fill-array-data v10, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Landroid/app/NotificationManager;

    .line 40
    .line 41
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v11, 0x1a

    .line 44
    .line 45
    if-lt v10, v11, :cond_0

    .line 46
    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/tknetwork/tunnel/service/c_06;->createNotificationChannels()V

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v12, Landroid/app/Notification$Builder;

    .line 51
    .line 52
    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    const v13, 0x7f0800fd

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    const v13, 0x7f130024

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    const v13, 0x7f130258

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    new-instance v13, Ljava/util/Date;

    .line 93
    .line 94
    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    invoke-virtual {v12, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    const/4 v13, 0x2

    .line 110
    invoke-direct {v0, v13, v12}, Lcom/tknetwork/tunnel/service/c_06;->jbNotificationExtras(ILandroid/app/Notification$Builder;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v12}, Lcom/tknetwork/tunnel/service/c_06;->lpNotificationExtras(Landroid/app/Notification$Builder;)V

    .line 114
    .line 115
    .line 116
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v15, v9, [J

    .line 119
    .line 120
    fill-array-data v15, :array_1

    .line 121
    .line 122
    .line 123
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    if-eqz v14, :cond_1

    .line 135
    .line 136
    const/4 v13, -0x2

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v9, v9, [J

    .line 141
    .line 142
    fill-array-data v9, :array_2

    .line 143
    .line 144
    .line 145
    invoke-direct {v14, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_2

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    const/4 v13, 0x0

    .line 160
    :goto_0
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-object/from16 v7, p1

    .line 164
    .line 165
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 166
    .line 167
    .line 168
    new-instance v7, Landroid/content/Intent;

    .line 169
    .line 170
    const-class v9, Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 171
    .line 172
    invoke-direct {v7, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .line 174
    .line 175
    const/high16 v9, 0xc000000

    .line 176
    .line 177
    invoke-static {v0, v5, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    const-wide/16 v14, 0x0

    .line 185
    .line 186
    cmp-long v7, v3, v14

    .line 187
    .line 188
    if-eqz v7, :cond_3

    .line 189
    .line 190
    invoke-virtual {v12, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 191
    .line 192
    .line 193
    :cond_3
    invoke-direct {v0, v13, v12}, Lcom/tknetwork/tunnel/service/c_06;->jbNotificationExtras(ILandroid/app/Notification$Builder;)V

    .line 194
    .line 195
    .line 196
    if-lt v10, v11, :cond_4

    .line 197
    .line 198
    invoke-static {v12, v2}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    if-eqz v1, :cond_5

    .line 202
    .line 203
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v4, v6, [J

    .line 206
    .line 207
    const-wide v6, -0x7607aee55cf99482L

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    aput-wide v6, v4, v5

    .line 213
    .line 214
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-nez v3, :cond_5

    .line 226
    .line 227
    invoke-virtual {v12, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 228
    .line 229
    .line 230
    :cond_5
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v8, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_06;->lastChannel:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_6

    .line 253
    .line 254
    iget-object v1, v0, Lcom/tknetwork/tunnel/service/c_06;->lastChannel:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    invoke-virtual {v8, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 261
    .line 262
    .line 263
    :cond_6
    iput-object v2, v0, Lcom/tknetwork/tunnel/service/c_06;->lastChannel:Ljava/lang/String;

    .line 264
    .line 265
    return-void

    .line 266
    nop

    :array_0
    .array-data 8
        0x524b33bb815ae127L    # 2.7056452779852404E88
        0x2dfc4622e8c1dab1L    # 3.5532687925906116E-87
        0x1df7487a19936b33L    # 2.526989421433223E-164
    .end array-data

    :array_1
    .array-data 8
        -0x6d18c4a19a50663eL
        0x6c5a7be06428315L
        0x1fb2989f1c675dd4L    # 5.417837134067568E-156
    .end array-data

    :array_2
    .array-data 8
        -0x51331bec3d5b9c08L    # -2.9743541613484002E-83
        -0x2dff01b61cb15095L    # -1.0563962979224046E87
        -0x6a5088265e1ffa4aL
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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->connMgr:Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

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
    sget-object v1, Lcom/tknetwork/tunnel/service/c_06;->TUNNEL_SSH_STOP_SERVICE:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/tknetwork/tunnel/service/c_06;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

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
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_06;->mConnecttime:J

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Thread;

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/service/c_06;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelThread:Ljava/lang/Thread;

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
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelSSHBroadcastReceiver:Landroid/content/BroadcastReceiver;

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
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->connMgr:Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/service/c_06;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_06;->lambda$endTunnelService$1()V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_06;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_06;->lambda$startTunnel$0()V

    return-void
.end method


# virtual methods
.method public endTunnelService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, L땸뒋되돸땭딞딎돼딠뒼듽딤땱뒐땃땤듬됨땰뎨뎡딐돛되돛돤됩땡땸돼돷둔뒼됫땡돵땃돰땟땣둑딁둠땪됴땡땭돴땫둡뒝됴둘두뎸땋둥딜뒾돝땅뒘딐든땦땃딐돶땩뎠딄뒀땱듨딹뒻딽딞딝됩땳딞땋땫두땫둥뒨뎽땋될듐뒘땱땭땱뒹땬땳될됴따땍둑딀돝됫뒤둠땔돤땰듽된땁땦듻딝땱땮딀뒐드뒙땔된됫땣뎹뎨;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, L땸뒋되돸땭딞딎돼딠뒼듽딤땱뒐땃땤듬됨땰뎨뎡딐돛되돛돤됩땡땸돼돷둔뒼됫땡돵땃돰땟땣둑딁둠땪됴땡땭돴땫둡뒝됴둘두뎸땋둥딜뒾돝땅뒘딐든땦땃딐돶땩뎠딄뒀땱듨딹뒻딽딞딝됩땳딞땋땫두땫둥뒨뎽땋될듐뒘땱땭땱뒹땬땳될됴따땍둑딀돝됫뒤둠땔돤땰듽된땁땦듻딝땱땮딀뒐드뒙땔된됫땣뎹뎨;-><init>(Lcom/tknetwork/tunnel/service/c_06;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getIpPublic()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->connMgr:Landroid/net/ConnectivityManager;

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
        -0x3f0a5c09eecb79ecL    # -88639.37920048117
        -0x6c9a4cd5dae318a5L    # -3.147386498805596E-215
        -0x54ef41e9a3ce92bL    # -9.901678511249478E282
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

.method public networkStateChange(Landroid/content/Context;)V
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
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_06;->connMgr:Landroid/net/ConnectivityManager;

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
    const-wide v6, -0x4e2ae067b43206eaL    # -1.2242361015811861E-68

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
    const-wide v7, 0x3ca321391b0aba03L    # 1.327394972605551E-16

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
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object p1, Lcom/tknetwork/tunnel/service/c_06;->lastStateMsg:Ljava/lang/String;

    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x31ddbecc33511196L    # 1.7239290960330938E-68
        0x9c8437116219386L
        0x2bfadc23f9446be9L    # 7.859341917635975E-97
    .end array-data

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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        -0x301473f1f51ad1a2L    # -9.967921935200862E76
        0x3b1dfe2be015ef06L    # 6.20237745315875E-24
        -0x631aefa308cb98f7L    # -1.744181261964502E-169
        0x63c52fe64bf23c63L    # 4.093918654524086E172
    .end array-data
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_06;->mBinder:Landroid/os/IBinder;

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mHandler:Landroid/os/Handler;

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
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->connMgr:Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getStatisticData()Lcom/tknetwork/tunnel/utils/StatisticsGraphData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/utils/StatisticsGraphData;->getDataTransferStats()Lcom/tknetwork/tunnel/utils/StatisticsGraphData$DataTransferStats;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v1, v1, [J

    .line 75
    .line 76
    fill-array-data v1, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/app/NotificationManager;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mNotificationManager:Landroid/app/NotificationManager;

    .line 93
    .line 94
    :cond_0
    return-void

    .line 95
    :array_0
    .array-data 8
        -0x6b5baaf63d6a13b9L    # -3.092266900758108E-209
        -0x1a7f37f99aa2c269L    # -8.704307888779289E180
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
    :array_1
    .array-data 8
        0x1d32b40674ee914dL    # 4.955858436588284E-168
        0x48f548f7d57afcbbL    # 2.9667004204063037E43
        -0x2f8b4d7ef331972bL    # -3.834530373521995E79
    .end array-data

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
        -0x17e2fa5e9f3f195fL    # -3.310278069478083E193
        -0x79a2b31a885b9854L
        0x7d2b1dff08810978L    # 8.6594474322013E294
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
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->stopTunnel()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->statuspoller:Lcom/tknetwork/tunnel/service/c_06$StatusPoller;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;->stop()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_06;->stopTunnelBroadcast()V

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
        -0x703c90d03fa222a0L    # -9.779637631223288E-233
        0x3f29760c5b110e62L    # 1.9425297571916677E-4
        -0x3dd35fab67bf8c2aL    # -6.147449142422624E10
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
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_06;->startTunnelBroadcast()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lde/blinkt/openvpn/core/TkLogStatus;->addStateListener(Lde/blinkt/openvpn/core/TkLogStatus$StateListener;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;

    .line 25
    .line 26
    const-wide/16 v0, 0x3e8

    .line 27
    .line 28
    invoke-direct {p2, v0, v1}, Lcom/tknetwork/tunnel/service/c_06$StatusPoller;-><init>(J)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_06;->statuspoller:Lcom/tknetwork/tunnel/service/c_06$StatusPoller;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/Thread;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->statuspoller:Lcom/tknetwork/tunnel/service/c_06$StatusPoller;

    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, p3, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 p2, 0x2

    .line 81
    if-eqz p1, :cond_0

    .line 82
    .line 83
    return p2

    .line 84
    :cond_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getLastState()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->getLocalizedState(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v0, 0x18

    .line 99
    .line 100
    if-lt p1, v0, :cond_1

    .line 101
    .line 102
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array p3, p3, [J

    .line 105
    .line 106
    fill-array-data p3, :array_3

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    sget-object v6, Lde/blinkt/openvpn/core/ConnectionStatus;->LEVEL_START:Lde/blinkt/openvpn/core/ConnectionStatus;

    .line 117
    .line 118
    const/4 v7, 0x0

    .line 119
    const-wide/16 v4, 0x0

    .line 120
    .line 121
    move-object v0, p0

    .line 122
    move-object v1, v2

    .line 123
    invoke-direct/range {v0 .. v7}, Lcom/tknetwork/tunnel/service/c_06;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    .line 127
    .line 128
    new-instance p3, L땸뒋되돸땭딞딎돼딠뒼듽딤땱뒐땃땤듬됨땰뎨뎡딐돛되돛돤됩땡땸돼돷둔뒼됫땡돵땃돰땟땣둑딁둠땪됴땡땭돴땫둡뒝됴둘두뎸땋둥딜뒾돝땅뒘딐든땦땃딐돶땩뎠딄뒀땱듨딹뒻딽딞딝됩땳딞땋땫두땫둥뒨뎽땋될듐뒘땱땭땱뒹땬땳될됴따땍둑딀돝됫뒤둠땔돤땰듽된땁땦듻딝땱땮딀뒐드뒙땔된됫땣뎹뎨;

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    invoke-direct {p3, p0, v0}, L땸뒋되돸땭딞딎돼딠뒼듽딤땱뒐땃땤듬됨땰뎨뎡딐돛되돛돤됩땡땸돼돷둔뒼됫땡돵땃돰땟땣둑딁둠땪됴땡땭돴땫둡뒝됴둘두뎸땋둥딜뒾돝땅뒘딐든땦땃딐돶땩뎠딄뒀땱듨딹뒻딽딞딝됩땳딞땋땫두땫둥뒨뎽땋될듐뒘땱땭땱뒹땬땳될됴따땍둑딀돝됫뒤둠땔돤땰듽된땁땦듻딝땱땮딀뒐드뒙땔된됫땣뎹뎨;-><init>(Lcom/tknetwork/tunnel/service/c_06;I)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 138
    .line 139
    .line 140
    return p2

    .line 141
    :array_0
    .array-data 8
        -0x10100d483fa45522L    # -1.5500008939899593E231
        0x6118c3994adf9b14L    # 5.440007874959636E159
        0x4f2decf05f868a44L    # 2.6436928731815065E73
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
    :array_1
    .array-data 8
        0x7f4f7c0917e46a0L
        0x3b3fd3976997162aL    # 2.632628785359147E-23
        -0x1bc08495cf6f87faL    # -7.786477730453404E174
    .end array-data

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
        0x8d70bd867cb90d2L
        0x19b90fe53ce793c0L    # 9.215947343633274E-185
        0x4bba34ffca98e13cL    # 6.425944584310291E56
        0x2a3bbf88b67316d6L
        -0x7490df12aeae187L
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
    :array_3
    .array-data 8
        -0x1c30e97298a62ff2L
        -0x77a751c150bd5b52L    # -1.868703349110639E-268
        -0x70e0b655f0dfc92L    # -3.8853772234891E274
    .end array-data
.end method

.method public declared-synchronized startClientDNSTT()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_04;->interrupt()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_3

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lconfig/ConfigUtil;->setBypass(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/tknetwork/tunnel/service/c_04;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_04;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 29
    .line 30
    new-instance v1, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-direct {v1, p0, v2}, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;-><init>(Lcom/tknetwork/tunnel/service/c_06;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/tknetwork/tunnel/service/c_04;->setOnTun2SocksListener(Lcom/tknetwork/tunnel/service/c_04$OnTun2SocksListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_1
    :try_start_1
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->endTunnelService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_2
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method

.method public declared-synchronized startClientSSH()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_07;->interrupt()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_3

    .line 15
    :catch_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    new-instance v0, Lcom/tknetwork/tunnel/service/c_07;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/service/c_07;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 23
    .line 24
    new-instance v1, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;-><init>(Lcom/tknetwork/tunnel/service/c_06;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/tknetwork/tunnel/service/c_07;->setOnTun2SocksListener(Lcom/tknetwork/tunnel/service/c_07$OnTun2SocksListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    :try_start_1
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->endTunnelService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_2
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0
.end method

.method public declared-synchronized startTunnel()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 5
    .line 6
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getConnectionType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    new-array v4, v4, [J

    .line 14
    .line 15
    fill-array-data v4, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v4, v1, [J

    .line 32
    .line 33
    fill-array-data v4, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const v4, 0x7f130251

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lde/blinkt/openvpn/core/TkLogStatus;->updateStateString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p0}, Lcom/tknetwork/tunnel/service/c_06;->networkStateChange(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v1, [J

    .line 59
    .line 60
    fill-array-data v1, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->getIpPublic()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-array v4, v0, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    aput-object v3, v4, v5

    .line 78
    .line 79
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/tknetwork/tunnel/service/c_06;->logs(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->startClientSSH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_4

    .line 94
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 95
    .line 96
    invoke-virtual {v1}, Lconfig/ConfigUtil;->getTunnelType()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x6

    .line 101
    if-ne v1, v2, :cond_1

    .line 102
    .line 103
    new-instance v2, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;

    .line 104
    .line 105
    invoke-direct {v2, p0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/tknetwork/tunnel/service/c_06;->mDnsThread:Lcom/tknetwork/tunnel/thread/UDPTunnelThread;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    :goto_1
    const/16 v2, 0x9

    .line 117
    .line 118
    if-ne v1, v2, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->startClientDNSTT()V

    .line 121
    .line 122
    .line 123
    :cond_2
    new-instance v1, Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/tknetwork/tunnel/service/c_06;->mHandler:Landroid/os/Handler;

    .line 126
    .line 127
    invoke-direct {v1, v2, p0}, Lapp/tunnel/ssh2/tunnel/SSHThread;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    sput-object v1, Lcom/tknetwork/tunnel/service/c_06;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 131
    .line 132
    new-instance v2, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0}, L땸돵땄땦돛뒈땐땣딁딎땫듸뒉듐땁둑땧둡뒨땻돠땥땪뒘딄땠땅땄둔듰땯땫뒵딄뒝둬땦둘뒐땍땐땣땸뒀돰듬땨땧듸듻됫땋따땻땣딽뒼뒾딁따땰듰뒹땀땥땨뒈땜딹둑뎸뎨땻땟땅뒷땹딝딁디들땸땦됐돤땤돴땡둑땩뒛돶디땵땭딌뒷땱땣땡땋뒷땁듟둡땁드돛땤돨땰됴두뒬땝땻되듌뒘땀됫뒐뒉땤돰뎨뒾딟뒾둘;-><init>(Lcom/tknetwork/tunnel/service/c_06;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lapp/tunnel/ssh2/tunnel/SSHThread;->setOnStopClienteListener(Lapp/tunnel/ssh2/tunnel/SSHThread$OnStopCliente;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_2
    :try_start_2
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logException(Ljava/lang/Exception;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/service/c_06;->endTunnelService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    .line 146
    .line 147
    :goto_3
    monitor-exit p0

    .line 148
    return-void

    .line 149
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    throw v0

    .line 151
    :array_0
    .array-data 8
        0x78e6c45c42de8c05L    # 2.463272737878736E274
        -0x50e9b850e26e0bb4L    # -7.340010523383228E-82
    .end array-data

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
        -0x17d25aa1d80b61f5L    # -6.7628984179485265E193
        0x1e8d13f4e33df76cL
        0x1faa55b099f35ac9L    # 3.836198425190732E-156
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
        0x358e9f9af5ec7890L    # 1.02311623178604E-50
        0x1083f5398fbfafc8L    # 4.113659669265741E-229
        -0x2f42cba66edba78fL    # -8.657021714253714E80
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
    sput-wide v0, Lcom/tknetwork/tunnel/service/c_06;->mConnecttime:J

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mDnsThread:Lcom/tknetwork/tunnel/thread/UDPTunnelThread;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/thread/UDPTunnelThread;->interrupt()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->mDnsThread:Lcom/tknetwork/tunnel/thread/UDPTunnelThread;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_07;->interrupt()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->mSSHTunnelThread:Lcom/tknetwork/tunnel/service/c_07;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/tknetwork/tunnel/service/c_04;->interrupt()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/tknetwork/tunnel/service/c_06;->DNSTTTunnelThread:Lcom/tknetwork/tunnel/service/c_04;

    .line 36
    .line 37
    :cond_2
    sget-object v0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/SSHThread;->stopAll()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p0}, Lcom/tknetwork/tunnel/service/c_06;->networkStateChange(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/tknetwork/tunnel/service/c_06;->mTunnelThread:Ljava/lang/Thread;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    const v2, 0x7f130317

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    sput-object v1, Lcom/tknetwork/tunnel/service/c_06;->mTunnelManager:Lapp/tunnel/ssh2/tunnel/SSHThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    :cond_4
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v0
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/String;ILde/blinkt/openvpn/core/ConnectionStatus;I)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_06;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getSSH()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/tknetwork/tunnel/service/c_06;->mTunnelThread:Ljava/lang/Thread;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lde/blinkt/openvpn/core/TkLogStatus;->getLastState()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->getLocalizedState(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 p3, 0x18

    .line 33
    .line 34
    if-lt p1, p3, :cond_1

    .line 35
    .line 36
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 p3, 0x3

    .line 39
    new-array p3, p3, [J

    .line 40
    .line 41
    fill-array-data p3, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v0, p0

    .line 55
    move-object v1, p2

    .line 56
    move-object v6, p4

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/tknetwork/tunnel/service/c_06;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLde/blinkt/openvpn/core/ConnectionStatus;Landroid/content/Intent;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :array_0
    .array-data 8
        0x58677573b9a25d6eL    # 7.394589341800551E117
        -0x2e9b36c7e9a4cc77L    # -1.2618855953435932E84
        0x6d104a37f5d47587L    # 2.246237854505044E217
    .end array-data
.end method
