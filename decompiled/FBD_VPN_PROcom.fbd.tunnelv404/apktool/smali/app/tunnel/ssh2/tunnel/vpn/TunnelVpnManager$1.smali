.class Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->startTunnel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 2
    .line 3
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 10
    .line 11
    invoke-static {v2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 18
    .line 19
    invoke-static {v3}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v3, v3, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 24
    .line 25
    iget-object v4, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 26
    .line 27
    invoke-static {v4}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v4, v4, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;

    .line 34
    .line 35
    invoke-static {v5}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;)Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-boolean v5, v5, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 40
    .line 41
    invoke-static/range {v0 .. v5}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnManager;Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
