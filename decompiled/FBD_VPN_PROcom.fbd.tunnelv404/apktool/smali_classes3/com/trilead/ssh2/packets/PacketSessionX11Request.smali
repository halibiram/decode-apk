.class public Lcom/trilead/ssh2/packets/PacketSessionX11Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public singleConnection:Z

.field public wantReply:Z

.field x11AuthenticationCookie:Ljava/lang/String;

.field x11AuthenticationProtocol:Ljava/lang/String;

.field x11ScreenNumber:I


# direct methods
.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

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
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->recipientChannelID:I

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
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->wantReply:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->singleConnection:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationProtocol:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11AuthenticationCookie:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->x11ScreenNumber:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionX11Request;->payload:[B

    .line 66
    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0xeac8421f66ecdeL
        0x1406e11480d9082fL    # 3.398085194162466E-212
    .end array-data
.end method
