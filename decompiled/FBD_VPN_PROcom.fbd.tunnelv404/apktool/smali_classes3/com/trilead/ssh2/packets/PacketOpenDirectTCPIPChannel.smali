.class public Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field channelID:I

.field host_to_connect:Ljava/lang/String;

.field initialWindowSize:I

.field maxPacketSize:I

.field originator_IP_address:Ljava/lang/String;

.field originator_port:I

.field payload:[B

.field port_to_connect:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    .line 5
    .line 6
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    .line 7
    .line 8
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5a

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

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
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->channelID:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->initialWindowSize:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->maxPacketSize:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->host_to_connect:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->port_to_connect:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_IP_address:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->originator_port:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketOpenDirectTCPIPChannel;->payload:[B

    .line 71
    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        -0x2ee705cfc64fabc6L    # -4.738537161775312E82
        0x6ab2d086e61c4daeL    # 9.438241393743763E205
        -0x5f26ec36d5ccc093L
    .end array-data
.end method
