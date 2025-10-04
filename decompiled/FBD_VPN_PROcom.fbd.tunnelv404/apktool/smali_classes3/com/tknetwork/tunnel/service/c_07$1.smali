.class Lcom/tknetwork/tunnel/service/c_07$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/service/c_07;->startPinger(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_07;

.field final synthetic val$timePing:I


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_07;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 2
    .line 3
    iput p2, p0, Lcom/tknetwork/tunnel/service/c_07$1;->val$timePing:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private declared-synchronized MakePinger()V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/tknetwork/tunnel/service/c_07;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_07;)Lcom/trilead/ssh2/Connection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/tknetwork/tunnel/service/c_07;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/tknetwork/tunnel/service/c_07;)Lcom/trilead/ssh2/Connection;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/trilead/ssh2/Connection;->ping()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/tknetwork/tunnel/service/c_07;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/tknetwork/tunnel/service/c_07;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v7, v3, v5

    .line 30
    .line 31
    if-gez v7, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 34
    .line 35
    invoke-static {v3, v1, v2}, Lcom/tknetwork/tunnel/service/c_07;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/tknetwork/tunnel/service/c_07;J)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/InterruptedException;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catch_0
    :try_start_1
    sget v1, Lcom/tknetwork/tunnel/service/c_07;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v2, v0, [J

    .line 52
    .line 53
    fill-array-data v2, :array_0

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget v1, p0, Lcom/tknetwork/tunnel/service/c_07$1;->val$timePing:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_2
    if-lez v1, :cond_3

    .line 69
    .line 70
    int-to-long v0, v1

    .line 71
    const-wide/16 v2, 0x3e8

    .line 72
    .line 73
    mul-long v0, v0, v2

    .line 74
    .line 75
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_3
    :try_start_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v0, v0, [J

    .line 83
    .line 84
    fill-array-data v0, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logError(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Ljava/lang/InterruptedException;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    throw v0

    .line 105
    :array_0
    .array-data 8
        0x7d946321468823f1L    # 8.333239999787591E296
        -0x5e437a9e58e35935L
        0x6a91ef13e9500f5L
    .end array-data

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
    :array_1
    .array-data 8
        0x547c2992446b02deL    # 9.624719344987194E98
        -0x26ea64874a0a7577L    # -1.3948868823129305E121
        -0x17684886480b3bf4L    # -6.92518656554729E195
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/service/c_07$1;->this$0:Lcom/tknetwork/tunnel/service/c_07;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tknetwork/tunnel/service/c_07;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/tknetwork/tunnel/service/c_07;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/tknetwork/tunnel/service/c_07$1;->MakePinger()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x4ec33f48aa07af57L    # -1.6273506663812506E-71
        0x47443ad1d8dea120L    # 2.1007788546315675E35
        -0x7681c6125eaf752dL    # -5.9994098394375635E-263
    .end array-data
.end method
