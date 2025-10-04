.class Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;
.super Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_05;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 p2, 0x4

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
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->getConnectionState()Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x3d58171a60eccc32L    # -1.3144526129561902E13
        -0x1498dcbb3fc7cd29L    # -2.3771055295291234E209
        -0x37a217b29508d585L    # -4.0707886048421377E40
        0x1e696c687a2b0e7eL    # 3.53188991233431E-162
    .end array-data
.end method

.method private checkNewState()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->getConnectionState()Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->hasChanged(Lcom/tknetwork/tunnel/connectivity/ConnectionState;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->onStateChange(Lcom/tknetwork/tunnel/connectivity/ConnectionState;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 17
    .line 18
    return-void
.end method

.method private getConnectionState()Lcom/tknetwork/tunnel/connectivity/ConnectionState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->getManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->getInstance(Landroid/net/ConnectivityManager;)Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private getPVBS()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_05;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_05;)Lnet/openvpn/openvpn/PrefUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lnet/openvpn/openvpn/PrefUtil;->get_boolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x42bd4661e532f987L    # 3.2188127326969527E13
        0x60d3a9225c52e38L
        -0x21a244d0779bd06L    # -2.859039189286985E298
        -0x330a5d82073f6792L    # -5.562508516382809E62
        -0x48da77c8a6007e7cL    # -4.827662574952913E-43
    .end array-data
.end method

.method private onStateChange(Lcom/tknetwork/tunnel/connectivity/ConnectionState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->getPVBS()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->isConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->isDisconnected()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05;->network_pause()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->currentState:Lcom/tknetwork/tunnel/connectivity/ConnectionState;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->isDisconnected()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/connectivity/ConnectionState;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 52
    .line 53
    iget-boolean v1, p1, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 66
    .line 67
    iget-boolean p1, p1, Lcom/tknetwork/tunnel/service/c_05;->screen_on:Z

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_05;->network_resume()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_05;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/tknetwork/tunnel/service/c_05;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 86
    .line 87
    iget-boolean v0, p1, Lcom/tknetwork/tunnel/service/c_05;->paused:Z

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Lcom/tknetwork/tunnel/service/c_05;->network_reconnect(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onAvailable(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->checkNewState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLost(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_05$ConnectivityReceiver;->checkNewState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
