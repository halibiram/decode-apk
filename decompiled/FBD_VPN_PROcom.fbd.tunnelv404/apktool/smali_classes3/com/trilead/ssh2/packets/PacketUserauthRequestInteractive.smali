.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field submethods:[Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x32

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    const-wide v3, -0x7757ca7fd37ad9e8L    # -5.865573381954523E-267

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-wide v3, v2, v5

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 74
    .line 75
    return-object v0

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x639cf75266cb1093L    # 6.99628653671283E171
        0x3bb9267b10aa8613L    # 5.32578642840719E-21
        -0x5afbc00f32aa9e6fL    # -2.28229584797193E-130
        -0x4ea34d817914345fL    # -6.496825610188094E-71
    .end array-data
.end method
