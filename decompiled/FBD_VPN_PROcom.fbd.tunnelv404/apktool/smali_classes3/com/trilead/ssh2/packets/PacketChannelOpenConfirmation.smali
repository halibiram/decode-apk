.class public Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public initialWindowSize:I

.field public maxPacketSize:I

.field payload:[B

.field public recipientChannelID:I

.field public senderChannelID:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 3
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    .line 4
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    .line 5
    iput p4, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    const/16 v0, 0x8

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->payload:[B

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 10
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x5b

    if-ne p1, p2, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 12
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    .line 13
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    .line 14
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    .line 15
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 8
        -0x1a75bd2c10280fcfL    # -1.3621327611633155E181
        -0x2a8ee09852f3b867L    # -3.835042291529441E103
        0x1646399d6972fa4L
        -0x327650b59e60bb1fL    # -3.3811470528701773E65
        0x357c40090668e322L    # 4.719123195600468E-51
        -0x1d275b2067c2c23cL    # -1.453213575300166E168
        0x6979c6dabbe0b528L    # 1.233177865337075E200
        -0xc4e9170de1a7059L    # -1.95011599135848E249
    .end array-data

    :array_1
    .array-data 8
        -0x31f32b1ff6c11746L    # -9.71621094533114E67
        -0x51f62b275a9f9d22L    # -6.49261608559771E-87
        -0x4594d10a2a7baabdL    # -2.7448258565912543E-27
        -0x3a583d429cd37003L    # -3.676790595800082E27
        -0x12edd0c67dc38a48L    # -2.507480501967609E217
        -0x79320d83c5c72738L    # -6.757566445379319E-276
        -0x2880d0042ce07e84L    # -3.0001161082692037E113
        -0x14538c2340004e6bL    # -4.677014845059272E210
    .end array-data

    :array_2
    .array-data 8
        0x6d8d2ba3dbcbbafcL    # 5.1486132332864046E219
        0x6fb5a2987c84e579L    # 1.3120681690338463E230
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5b

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->recipientChannelID:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->senderChannelID:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->initialWindowSize:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->maxPacketSize:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->payload:[B

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenConfirmation;->payload:[B

    .line 38
    .line 39
    return-object v0
.end method
