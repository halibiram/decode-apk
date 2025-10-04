.class public Lcom/trilead/ssh2/packets/PacketServiceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 7
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->serviceName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x7

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x7192bfeb0ae8c8a6L
        -0x69e119744ff70beeL
        -0x50cdb7019a6bc904L    # -2.409568483957623E-81
        -0x78e220ae6418402dL
        -0x72a2c9698bb0064aL    # -2.674010792864558E-244
        0x776da5e7ca5162c4L    # 1.911976590618547E267
        0x1994f3e69d337a6eL
    .end array-data

    :array_1
    .array-data 8
        0x339c5a0ae8ccdac6L    # 4.410831062397697E-60
        0x2cb550fe8ed36db1L    # 2.554788149497095E-93
        -0x44c23aa4f18c7c42L    # -2.46259283887701E-23
        0x53f2a369501e7751L    # 2.488201378929735E96
        -0x50e59cc9260b978bL    # -8.693213612286736E-82
        0x5f8739efdac6a9a2L    # 1.520576102216818E152
    .end array-data

    :array_2
    .array-data 8
        -0x1b8001e5d2039100L    # -1.2660383006927007E176
        0x1878ffe0e4e181dL
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->serviceName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    .line 22
    .line 23
    return-object v0
.end method
