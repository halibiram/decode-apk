.class public Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public windowChange:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 3
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x5d

    if-ne p1, p2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 10
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p1

    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 11
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 12
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

    .line 13
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

    .line 14
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        0x3737c0cc80c4a3a6L    # 1.0651267595179733E-42
        0x3695c894f776ccdcL    # 9.539130437079582E-46
        0x379f1d76001f6c52L    # 8.92959054558612E-41
        -0x767e53b870017753L    # -7.015574800596683E-263
        0x7efe54be3832da3eL    # 5.199993128332563E303
        0x5cc54485a24bb4a7L    # 7.914578860932043E138
        0x3215305f79c38495L    # 1.9648552261847766E-67
    .end array-data

    :array_1
    .array-data 8
        0x557d73dd2526c76eL
        0x71d3be5ba911542bL    # 2.057039332059448E240
        0x6ab6bcfba39c509bL    # 1.1406526520032996E206
        -0x69479a3cbf5de3d2L    # -3.1873400063375586E-199
        0x170bfd983eaa8d8L    # 9.76976098100028E-302
        0x539301a32ea05b71L    # 3.964591397256878E94
        0x19c0db9f237b8458L
    .end array-data

    :array_2
    .array-data 8
        -0x6682d208b82d342cL
        -0x64714ee6a3aaea02L
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5d

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 28
    .line 29
    return-object v0
.end method
