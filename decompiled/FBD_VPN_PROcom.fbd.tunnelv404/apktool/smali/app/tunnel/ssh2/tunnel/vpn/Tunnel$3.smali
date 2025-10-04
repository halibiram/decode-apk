.class Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->submit_destroy_builder()V
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
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 2
    .line 3
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 10
    .line 11
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 22
    .line 23
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Pdnsd;->interrupt()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 34
    .line 35
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 39
    .line 40
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 47
    .line 48
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 59
    .line 60
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tun2Socks;->interrupt()V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 68
    .line 69
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 73
    .line 74
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Landroid/os/ParcelFileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 81
    .line 82
    invoke-static {v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;)Landroid/os/ParcelFileDescriptor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 90
    .line 91
    const-string v1, "Closing interface, destroying VPN interface"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->logs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v3, "VPN interface error: "

    .line 102
    .line 103
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->logs(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel$3;->this$0:Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;

    .line 121
    .line 122
    const-string v1, "Failed to close the VPN interface file descriptor."

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lapp/tunnel/ssh2/tunnel/vpn/Tunnel;->logs(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_2
    return-void
.end method
