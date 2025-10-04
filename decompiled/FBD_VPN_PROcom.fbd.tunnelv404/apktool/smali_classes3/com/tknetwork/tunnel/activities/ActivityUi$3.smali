.class Lcom/tknetwork/tunnel/activities/ActivityUi$3;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/ActivityUi;->updateByteCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/ActivityUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sub-long v3, v0, v3

    .line 12
    .line 13
    invoke-static {v2, v3, v4}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뒬땄딀듻딻땸돳딤땫돼딠땨딎둑도둑땤뎡땐딨땳뎰돝둡들뎡딐딻돛듟듐됫둠두둑땤듌딹듻땔땠땐땫딐됫땹땦뒨뒤딃듬돸딹땀뒨딁디뒝뒬땠듌땲뒀듰딽됨뒉땜뒾땲땣듰득됩땁땧뒻땪듔땯땡뒨듽땰됨땩뒝돨뒵돵둑뒈듟뒤땨돨땪듟딁돨듬뒵뎨땟됫딨듰땨도딝돛땅땋됫딽딻됩뎽딟땀땍땧땹딎득딁딠될돰(Lcom/tknetwork/tunnel/activities/ActivityUi;J)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뎹딸든땳듸땠둣땻돼땩뎻돼땨땫땬드딸딹두듸둘딝될땵딎뒉딄든딁둑둡뒈뎬됩돵뎹뎠딎땄될듽듻뒾뎻뒙뒈뒘딟돠딄돼돳된돷들땝뎨딜딜돷땹뎻딅드돵뒋땱땃뒉되딄딜둔뎠땤딽땸땅딨돛뒷땻둣둬뎡땪딤땦둘돝뎻뎹땭딄땋땮땔돼땻드뎡딟돠땮듻돠돼듸땭뒵뒬둑둣됴뒷딨듌딽딽뒹땨둬땠둣뎹땍둠땲뎽(Lcom/tknetwork/tunnel/activities/ActivityUi;J)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    new-array v5, v4, [J

    .line 35
    .line 36
    fill-array-data v5, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v5, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    cmp-long v9, v5, v0

    .line 55
    .line 56
    if-lez v9, :cond_0

    .line 57
    .line 58
    move-wide v0, v7

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣득듔땡딠돶돶딄딜뒤된땲딎돨땬뒾땡돠땤뒋뒵돸뒀뒙돼딄뒛도땝딠된딅됨땃됴땣둡돰딅땅땫딐땹뎬땃땸뒾땬뒷뒨땔됴듸되뒉둡듨둣뒈땻땥땬땥득땧뒬땳드뒻듽듻딝땋땹돛뒀뎬딝땣땡뒼되뒉듬될뎡땣땠돨듸둠딠뒉땝뎸딝땳뎽둣될듐딝딠둣딐딸돨땔뒋뎹땮딄둥땫뒤땄된땤뒬땝딌딹뒘둠땃뎹듼뎬딄(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    :goto_0
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    sub-long v5, v0, v5

    .line 84
    .line 85
    invoke-static {v2, v5, v6}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴뒹딁둬둥땸듸디둠딃딎딀땁땁되딨땬듟돴뎬땬뒵둑땄땠듟따땐뒼듸돝듰땜돝둑돳돵땠듨든됩돰됐딻도득돤됐돼땐득뒉땳뒋딄뎬땤듼땲듟딻딄뎨돠땯뒛땲둣돳듸땩둠됫듼들땥뒤뒨돤돤딻땍땹딹뎡딎뒬땵뒛딠듌땁듟된뎸뒼둥딄뎽뒵땥되땮땅땀딟땫돝돶땝뎡뒻되딄뒈듻둣돸됴땄뒛도뒝땵뒷땯돝디딽딅(Lcom/tknetwork/tunnel/activities/ActivityUi;J)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 89
    .line 90
    invoke-static {v2, v0, v1}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돴됨돵딎딸둘땀땠돠뎠뒀듼땝돸돷땮듰땣돶땟뒤딀뎽듬땪듐땭딠땳듌딟딅듐돼득뎽땫뒹둡듽들딐돝돵딟돛땝땫돴땵돝둠됫땣땔된딽뎻듻둑듰땃뎠듔땩땔뒹뒻뒛듐땮둠뎰돸든뎨듻딜딅득딄돨뒝뒝뒛듻됩땬뎽땵따땰듸땃땅땳뒀뎸뒷돠땄둬될될땮땡딁땮돳딀뎨둡땝뒼듼돰듟뒘땄듸됐딤딌돝뒝돝뎬됫듼뎨(Lcom/tknetwork/tunnel/activities/ActivityUi;J)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳돼땲듸돼땍딞땵돰땵돝딅딝듟될됩드땍땫딀듐땦뎻둘딟뒤됩됩뒋듟뒹됴땟딝돼딃뒈득따땭될듼뒼뒋땥됐딄돼뒙뎽돤딅되돵뒋땟땱땅됫들듻딄돶땝듔딟땃땔돛땲돨딅됩땱뎰딄땳딟돨땤땄됐돵뎨될뎨딅듟딝뎬땸딌딁딃땍뎬됩됩돛땁땰뎡두뒐땬돳땸땍됩듼듟듽땐돼듰둠뒷땟땤땅듟뒻득듐딨뒋땄뎠디땬(Lcom/tknetwork/tunnel/activities/ActivityUi;)Landroid/content/SharedPreferences;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v4, v4, [J

    .line 106
    .line 107
    fill-array-data v4, :array_1

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget-object v4, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    cmp-long v6, v4, v0

    .line 124
    .line 125
    if-lez v6, :cond_1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돰땣땅됩뒛땧땵득땮됨땡땻땨딨뒾땃돳땜뎹됫땁뒘딐땩딤들뒐딟뒝둠드땸든딀땜땵득뎠땍땩땱땝듰돝뎬뒵됫듐딞두돸든들딠뒐딎돳땵딌땩둔딟뒻듻뎡둠딻땵뎬땹뒋뒉딐뎠디둡뒈뒻땪땐딐땅딠땳땥딅돶땨딸둡땐돨둬둡뒘됨듨뒘될땮디듌딟뎹딞뎸딠뎰땅딁딄뒵둬든땻딟도듸돳딨땹딃돰땧땡땟드딅땟딜(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    :goto_1
    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳뎬돸뎨땁땋딀뎰뒀땁뎠둥뎰땲듌땝뎻땔들둬됩땦땀뒼됴드딅딁땪돳땠뒼듌돛딠땸든둥듸딤득딤땐듸돶됩딝딁될듟딄드땹됩뒨땐땥땮땀듰땔땤뒛됩돛뒛된딸딎땻땅땋됐딤뒋딞된땦땫뒷되돤뒐뒈땸땡땯땡둥뒋둑둠땻듰돳땮따땠듰뒋돛땳땪뒹될딀뒙뎨뎽딟됫듰뎻딞될되둔듔듔듸득둣딽뒐뎽뎨땫뒷뒛돨(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-static {v0, v1}, Lapp/tunnel/logger/utils/TrafficData;->addBytesDownload(J)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/tknetwork/tunnel/activities/ActivityUi$3;->this$0:Lcom/tknetwork/tunnel/activities/ActivityUi;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/tknetwork/tunnel/activities/ActivityUi;->돳뎻뎡딅땲두돨뒤땧뒻딻둣땔땫땪땟뒝땱땀땯딀딠뒾뒵땭땪듰땦돴딐돵뒾땁돼땋땵됨됩디들딃딄딠땱둘땥돠땐딎땩땤뒘뒻딠뒹뎹됫뎸딄뎨듰뎹땦뒉뒵뎡따딻둑딻됴됩땸뎨땣땠딀땝딨드득뒉땀됩딠돤땁땪뎠땫돵따드둘돴땬둣딞땱딸딤땤딻도뒼뒾뒤땮땍됩둬땲딹뒷땄딅딠땲듟딹되디듻뒙땱돴뒬돤듐뒋(Lcom/tknetwork/tunnel/activities/ActivityUi;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    invoke-static {v0, v1}, Lapp/tunnel/logger/utils/TrafficData;->addBytesSend(J)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    nop

    .line 161
    :array_0
    .array-data 8
        0x3af7892e1f05cb71L    # 1.2167754434104051E-24
        -0xde2411537f06087L    # -4.958630588795328E241
        0x391863a87ba3c9abL    # 1.1743015788850156E-33
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        -0x383fae61f840b423L    # -4.338285842523568E37
        0x7caa2799584b9224L    # 3.262535739189773E292
        0x353cc6527ee69a73L    # 3.0042184676971147E-52
    .end array-data
.end method
