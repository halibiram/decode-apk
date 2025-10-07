.class public Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field max:I

.field min:I

.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getMin_group_len()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->min:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->n:I

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getMax_group_len()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->max:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x22

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->min:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->n:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->max:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequest;->payload:[B

    .line 33
    .line 34
    return-object v0
.end method
