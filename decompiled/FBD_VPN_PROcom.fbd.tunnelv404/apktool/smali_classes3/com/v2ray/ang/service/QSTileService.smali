.class public final Lcom/v2ray/ang/service/QSTileService;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/v2ray/ang/service/QSTileService;",
        "Landroid/service/quicksettings/TileService;",
        "<init>",
        "()V",
        "setState",
        "",
        "state",
        "",
        "onStartListening",
        "onStopListening",
        "onClick",
        "mMsgReceive",
        "Landroid/content/BroadcastReceiver;",
        "ReceiveMessageHandler",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mMsgReceive:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->stopVService(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/v2ray/ang/service/V2RayServiceManager;->startVServiceFromToggle(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public onStartListening()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    new-instance v0, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;-><init>(Lcom/v2ray/ang/service/QSTileService;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/v2ray/ang/service/QSTileService;->mMsgReceive:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    .line 29
    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    new-array v3, v3, [J

    .line 34
    .line 35
    fill-array-data v3, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/v2ray/ang/service/QSTileService;->mMsgReceive:Landroid/content/BroadcastReceiver;

    .line 53
    .line 54
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/v2ray/ang/util/Utils;->receiverFlags()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v2, v3, v0, v4}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 64
    .line 65
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v3, v1, [J

    .line 68
    .line 69
    const-wide v4, -0x77e1a6f53f388eaL    # -3.025519749642435E272

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    aput-wide v4, v3, v6

    .line 76
    .line 77
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, p0, v1, v2}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2Service(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x4f85a831be97bfbL
        0x555a7b36508f4480L    # 1.482783672516543E103
        -0x47f7025030acbfe1L    # -9.180230275286749E-39
        -0x2b5134c8a8fc71fbL    # -8.419223771817968E99
        0x41fe0f72c731618bL    # 8.069262451086314E9
    .end array-data
.end method

.method public onStopListening()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/v2ray/ang/service/QSTileService;->mMsgReceive:Landroid/content/BroadcastReceiver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/v2ray/ang/service/QSTileService;->mMsgReceive:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    new-array v1, v1, [J

    .line 35
    .line 36
    fill-array-data v1, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x309c135dbb4622c1L    # -2.816262489415032E74
        -0x613888b56b608ca9L    # -2.086368650803248E-160
        -0x3bde1cb5258f2e03L    # -1.649863962130214E20
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        -0x254aedb269002761L    # -9.128796805153547E128
        0x62b5b9b3ea19c60eL    # 3.202767540079665E167
        0x75bc40fcf60e9090L    # 1.3575445026248214E259
        -0x6bd61206406f80bfL
        -0x13dc9875f3367cb3L    # -8.165603622293716E212
    .end array-data
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, L딹뒋둔둔듌들됐두뒛둣땥뒤땃딌돸딻듸땫돛듨도땱뎽땦땧딸딸땀땥듻됴뎹뒹뒛돤듟돠돷딝땱뒉돳됴뒨득뒷듐땥땹땭득됩땃뒤땩뒾뒝디뒀땦딹돼돵됴듔딞될돨땦둘둔둣딽뎸땁딽딃뒾땭돠땐딹땯뒉뎽땅든뎨땜뒹땪될디딀뎽돸땄딐딅땟돴땹돸뎽듐땤땝딻땲딁땻돸땅딟땄딝딤땩땅뒻둘딀둡뎠두땫돴뒷뒉둑;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Landroid/service/quicksettings/Tile;Landroid/graphics/drawable/Icon;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/service/quicksettings/Tile;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    sget-object v0, Lcom/v2ray/ang/service/V2RayServiceManager;->INSTANCE:Lcom/v2ray/ang/service/V2RayServiceManager;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/v2ray/ang/service/V2RayServiceManager;->getRunningServerName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/service/quicksettings/Tile;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-static {p1}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎰딌뒝뒙땸땫땨둘뒘둔뎹됐딜땬듬뎽돛땃뒤땟뎰땠땧딞딝뎰딐땦뎹디딻둑뎠듸땋돵듟땯둠땀듟듰땃땁땍땁땱땵땬딨뒝딤뒻땱둑뒀땩땄땩뎽땤돼땱딃딠됐땬뎽딝된둡득도돴듼땪딀땨땜땪땰땸되뒾뒀땹땵뎨땐뒈딻드듼땱땹듔도딄될땹딄둠딞됩뎹딟딨듐뒈땬뎨두딜둬땐딀땔땥둥땻돸돼뒹돼듔듌되뒝땠듨(Landroid/service/quicksettings/Tile;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    const v0, 0x7f130024

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두(Landroid/service/quicksettings/Tile;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_0
    invoke-static {p0}, L듨딞든딟둔땃딨돨딄땩돴둡땦됨돝땐땀뒬딄뒉땜딌딝딞뒵땻딨땰딞딤땭됐뒻들땝듰뒤돰딜뒼돸될땝둬뒹딞둔둡딠둔뎽땻됴뒀돷딌둣뒨돠땟듬뒋되땨돷뎬듌됴디돰뎹디땪딄듌땫땜도딄됐딐땰됴뒼둘딜땫땳돛듨딽듬뎸들땔땯듼땮듨딻두뒝뎠딌돶땔둥뒛딄든땰됫뒙둬땧땔땃될땋땧뎠되듔땄둬둥돷뒼둔둣;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/v2ray/ang/service/QSTileService;)Landroid/service/quicksettings/Tile;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-static {p1}, L딻땔땫듨뎬딜땋뒀돸딃딝듌딽딜딻뒤땫땄듽딀돨땻뒤뒼땝땸듬뎠돠딄뒈된딄둠둣뒬듼따뒵된돸땁땨돰돠뒻딄뒈둥뒐됨딁둠뎡땲땋뎻딐땩둬딝땻딠딄됨땩땃돤딀땳땫딅디둬둑돠든뎰땠뒐뎻뒉돸돳됐딌땵듽둠뎬땐돼뎰둔딄땟땧됨뎻듰드뒙딸되듼뒬듽따딻딽딀뒾둠뒤돠땡듼되땋땩딝딄돰돝딞됴돴땩돸뎨;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Landroid/service/quicksettings/Tile;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    return-void
.end method
