.class Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd$OnPdnsdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->routeThroughTunnel(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;


# direct methods
.method public constructor <init>(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 2
    .line 3
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DNS Forwarding Started"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 2
    .line 3
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DNS Forwarding Stopped"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$HostService;->onDiagnosticMessage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$1;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->stop()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
