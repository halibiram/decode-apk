.class public Lcom/trilead/ssh2/packets/PacketSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SIGNALS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public signalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/trilead/ssh2/packets/PacketSignal;->SIGNALS:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0xe

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    new-array v4, v3, [J

    .line 18
    .line 19
    fill-array-data v4, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v4, v3, [J

    .line 33
    .line 34
    fill-array-data v4, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v0, v1, v3}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v4, v3, [J

    .line 47
    .line 48
    fill-array-data v4, :array_2

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    const/16 v4, 0x9

    .line 55
    .line 56
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v4, v3, [J

    .line 63
    .line 64
    fill-array-data v4, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    const/16 v4, 0xd

    .line 71
    .line 72
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v4, v3, [J

    .line 79
    .line 80
    fill-array-data v4, :array_4

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    const/16 v4, 0xf

    .line 87
    .line 88
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v4, v3, [J

    .line 95
    .line 96
    fill-array-data v4, :array_5

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x6

    .line 103
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v4, v3, [J

    .line 110
    .line 111
    fill-array-data v4, :array_6

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    const/16 v4, 0x8

    .line 118
    .line 119
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v4, v3, [J

    .line 126
    .line 127
    fill-array-data v4, :array_7

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    const/4 v4, 0x4

    .line 134
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v4, v3, [J

    .line 141
    .line 142
    fill-array-data v4, :array_8

    .line 143
    .line 144
    .line 145
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    const/4 v4, 0x3

    .line 149
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array v4, v3, [J

    .line 156
    .line 157
    fill-array-data v4, :array_9

    .line 158
    .line 159
    .line 160
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    const/16 v4, 0xb

    .line 164
    .line 165
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v4, v3, [J

    .line 172
    .line 173
    fill-array-data v4, :array_a

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    const/4 v4, 0x5

    .line 180
    invoke-static {v2, v0, v1, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/panda912/muddy/ObfuscatedString;Ljava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    new-array v3, v3, [J

    .line 187
    .line 188
    fill-array-data v3, :array_b

    .line 189
    .line 190
    .line 191
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    nop

    .line 203
    :array_0
    .array-data 8
        -0x490ed3f0ce288318L    # -4.812649392364021E-44
        -0x2cddce302619ce38L    # -2.965040765388925E92
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 8
        -0x4d30a12379262f05L    # -5.9576241242686184E-64
        0x2f1cc3fb47bd932bL    # 9.476629796375905E-82
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_2
    .array-data 8
        -0x762f795e7686352eL
        -0xb48cd3482f0d60bL    # -1.700805758740051E254
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_3
    .array-data 8
        0x87ecc7e67139855L
        -0x4821573174613b53L    # -1.4078106804165731E-39
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_4
    .array-data 8
        -0x2d312853597f0cf1L    # -7.853404708053015E90
        0x3e72139338185748L    # 6.734008019983624E-8
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_5
    .array-data 8
        0x1cd24a9fc333f3faL    # 7.57306670659282E-170
        -0x5b37016b1ffa6a8fL
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_6
    .array-data 8
        0x78e4a84d8262f8b7L    # 2.23502514623909E274
        -0x2a016ace3e654cd4L    # -1.7535396904232364E106
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_7
    .array-data 8
        0x15cdfa35aa2a01d1L    # 1.195161616489903E-203
        -0x4574e9cc8c0dfaeaL    # -1.094024013665565E-26
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_8
    .array-data 8
        -0x2369b9bdd5b66725L    # -1.0361555657597777E138
        0x18707e1587759308L
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_9
    .array-data 8
        0x43f3c3ef32238c02L    # 2.278791849284784E19
        -0x428971bc3bef6fa7L    # -1.2821443263666275E-12
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    :array_a
    .array-data 8
        -0xbc4357d532667c0L    # -7.959053953281354E251
        0xfe4079f27ec32bfL    # 4.031710720548217E-232
    .end array-data

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_b
    .array-data 8
        0x157794b073e38d62L
        -0x74d0c26b84cb76e5L    # -8.322471359510325E-255
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSignal;->recipientChannelID:I

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x3

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :cond_0
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketSignal;->signalName:Ljava/lang/String;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        0x5a1787d5f636c141L    # 9.955231506964737E125
        0x7345a8a3955432fcL
    .end array-data
.end method

.method public static strsignal(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/trilead/ssh2/packets/PacketSignal;->SIGNALS:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSignal;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x62

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSignal;->recipientChannelID:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSignal;->signalName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSignal;->payload:[B

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSignal;->payload:[B

    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x544900356f883dcdL    # 1.0680283500844758E98
        0x1dab30a3d1014a53L    # 9.221925292808089E-166
    .end array-data
.end method
