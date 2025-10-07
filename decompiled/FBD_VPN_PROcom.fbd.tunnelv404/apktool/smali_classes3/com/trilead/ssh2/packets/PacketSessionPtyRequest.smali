.class public Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public character_height:I

.field public character_width:I

.field payload:[B

.field public pixel_height:I

.field public pixel_width:I

.field public recipientChannelID:I

.field public term:Ljava/lang/String;

.field public terminal_modes:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    .line 11
    .line 12
    iput p5, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    .line 13
    .line 14
    iput p6, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    .line 15
    .line 16
    iput p7, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

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
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->recipientChannelID:I

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
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->wantReply:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->term:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_width:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->character_height:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_width:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->pixel_height:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->terminal_modes:[B

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    array-length v3, v1

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    .line 76
    .line 77
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyRequest;->payload:[B

    .line 78
    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x1e4a85cd49cfb400L    # -4.831234227223015E162
        0x2d57ecff9f3eb648L    # 2.936346701888351E-90
    .end array-data
.end method
