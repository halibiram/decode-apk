.class Lcom/trilead/ssh2/StreamGobbler$GobblerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/StreamGobbler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GobblerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trilead/ssh2/StreamGobbler;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/StreamGobbler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/trilead/ssh2/StreamGobbler;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/trilead/ssh2/StreamGobbler;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/trilead/ssh2/StreamGobbler;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-gtz v2, :cond_0

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/trilead/ssh2/StreamGobbler;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Lcom/trilead/ssh2/StreamGobbler;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/trilead/ssh2/StreamGobbler;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 36
    .line 37
    .line 38
    monitor-exit v3

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 45
    .line 46
    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    array-length v4, v4

    .line 51
    iget-object v5, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 52
    .line 53
    invoke-static {v5}, Lcom/trilead/ssh2/StreamGobbler;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sub-int/2addr v4, v5

    .line 58
    const/4 v5, 0x0

    .line 59
    if-ge v4, v2, :cond_5

    .line 60
    .line 61
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 62
    .line 63
    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 68
    .line 69
    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    sub-int/2addr v4, v6

    .line 74
    add-int v6, v4, v2

    .line 75
    .line 76
    iget-object v7, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 77
    .line 78
    invoke-static {v7}, Lcom/trilead/ssh2/StreamGobbler;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    iget-object v8, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 83
    .line 84
    invoke-static {v8}, Lcom/trilead/ssh2/StreamGobbler;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    array-length v8, v8

    .line 89
    if-le v6, v8, :cond_3

    .line 90
    .line 91
    div-int/lit8 v7, v6, 0x3

    .line 92
    .line 93
    const/16 v8, 0x100

    .line 94
    .line 95
    if-ge v7, v8, :cond_1

    .line 96
    .line 97
    const/16 v7, 0x100

    .line 98
    .line 99
    :cond_1
    if-le v7, v0, :cond_2

    .line 100
    .line 101
    const/16 v7, 0x2000

    .line 102
    .line 103
    :cond_2
    add-int/2addr v6, v7

    .line 104
    new-array v7, v6, [B

    .line 105
    .line 106
    :cond_3
    if-lez v4, :cond_4

    .line 107
    .line 108
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 109
    .line 110
    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    iget-object v8, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 115
    .line 116
    invoke-static {v8}, Lcom/trilead/ssh2/StreamGobbler;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-static {v6, v8, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 124
    .line 125
    invoke-static {v6, v7}, Lcom/trilead/ssh2/StreamGobbler;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/trilead/ssh2/StreamGobbler;[B)V

    .line 126
    .line 127
    .line 128
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 129
    .line 130
    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Lcom/trilead/ssh2/StreamGobbler;)V

    .line 131
    .line 132
    .line 133
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 134
    .line 135
    invoke-static {v6, v4}, Lcom/trilead/ssh2/StreamGobbler;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/trilead/ssh2/StreamGobbler;I)V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/trilead/ssh2/StreamGobbler;)[B

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v6, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 145
    .line 146
    invoke-static {v6}, Lcom/trilead/ssh2/StreamGobbler;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-static {v1, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 154
    .line 155
    invoke-static {v4}, Lcom/trilead/ssh2/StreamGobbler;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/trilead/ssh2/StreamGobbler;)I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    add-int/2addr v5, v2

    .line 160
    invoke-static {v4, v5}, Lcom/trilead/ssh2/StreamGobbler;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/trilead/ssh2/StreamGobbler;I)V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 164
    .line 165
    invoke-static {v2}, Lcom/trilead/ssh2/StreamGobbler;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 170
    .line 171
    .line 172
    monitor-exit v3

    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 179
    .line 180
    invoke-static {v1}, Lcom/trilead/ssh2/StreamGobbler;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    monitor-enter v1

    .line 185
    :try_start_3
    iget-object v2, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 186
    .line 187
    invoke-static {v2, v0}, Lcom/trilead/ssh2/StreamGobbler;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Lcom/trilead/ssh2/StreamGobbler;Ljava/io/IOException;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/trilead/ssh2/StreamGobbler$GobblerThread;->this$0:Lcom/trilead/ssh2/StreamGobbler;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/trilead/ssh2/StreamGobbler;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/trilead/ssh2/StreamGobbler;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    .line 198
    .line 199
    monitor-exit v1

    .line 200
    :goto_2
    return-void

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    throw v0
.end method
