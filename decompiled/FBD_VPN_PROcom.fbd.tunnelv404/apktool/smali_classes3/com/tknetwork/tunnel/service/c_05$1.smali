.class Lcom/tknetwork/tunnel/service/c_05$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/service/c_05;->update_notification_event(Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_05;

.field final synthetic val$evm:Lcom/tknetwork/tunnel/service/c_05$EventMsg;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_05;Lcom/tknetwork/tunnel/service/c_05$EventMsg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_05$1;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tknetwork/tunnel/service/c_05$1;->val$evm:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_05$1;->this$0:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_05$1;->val$evm:Lcom/tknetwork/tunnel/service/c_05$EventMsg;

    .line 4
    .line 5
    iget v1, v1, Lcom/tknetwork/tunnel/service/c_05$EventMsg;->res_id:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/tknetwork/tunnel/service/c_05;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_05;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_05;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x63

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x1b01d5917c6cb10fL
        0x2c3e6a1a760f8598L    # 1.4239068755567034E-95
        -0x31fc03889f78e15L    # -3.243068318724486E293
    .end array-data
.end method
