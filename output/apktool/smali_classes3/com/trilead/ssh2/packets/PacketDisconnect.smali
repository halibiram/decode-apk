.class public Lcom/trilead/ssh2/packets/PacketDisconnect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field desc:Ljava/lang/String;

.field lang:Ljava/lang/String;

.field payload:[B

.field reason:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->reason:I

    .line 17
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->desc:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->lang:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 5
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->reason:I

    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->desc:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->lang:Ljava/lang/String;

    return-void

    .line 9
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 8
        0x18805941489dc1ebL
        0x17e132186b52d636L    # 1.177801980692086E-193
        -0x13c51253a8e5136bL    # -2.2663536196581714E213
        0x2a19c7f340e8c605L    # 7.025580734192785E-106
        -0x51d9af5b65064ec5L    # -2.2435118696394815E-86
        -0x24c06bb24d86d213L    # -3.5023598945477015E131
    .end array-data

    :array_1
    .array-data 8
        0x3a588aa7023c17ffL    # 1.2390347104948136E-27
        -0x2c4ef36835dd71c7L    # -1.4225332506502957E95
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->reason:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->desc:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->lang:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    .line 32
    .line 33
    return-object v0
.end method
