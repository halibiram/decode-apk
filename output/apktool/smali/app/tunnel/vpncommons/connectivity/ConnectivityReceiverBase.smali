.class public Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected context:Landroid/content/Context;

.field public 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑;

.field public 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    iput-object p1, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->context:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->context:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object v0
.end method

.method public onAvailable(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onLosing(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onLost(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public register()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->getManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xf

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, L둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑;

    .line 21
    .line 22
    invoke-direct {v2, p0}, L둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑;-><init>(Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->getManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lapp/tunnel/vpncommons/connectivity/ConnectivityReceiverBase;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L둥됐땪땰땯딜땍됴둥드둬딁뒘뒘돼땳득들뒻듽따들된됴돼딻딞땟땸딝됩딄뒤땯땲둑딸딜도딄뒈땃돛땹땣딌뎠돸딝딄뒷땠딻돠뒵딻뒬뒼딄따따땭땅될땔둘땱딠됨딅뒵듬돤듬땋딻둔뒀땰땫돛듟돠뎸될뎽듰뒾돳돝뒻땨땪딎땧따듼딻돶듨딟됴딅듽딸돳둔딸듬땯둥땩땱땝돛든뎬됐들땫둔딨뎨땻땧땪뒀땃땃둑;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
