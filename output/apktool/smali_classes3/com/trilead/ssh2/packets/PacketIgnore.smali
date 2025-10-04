.class public Lcom/trilead/ssh2/packets/PacketIgnore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field data:[B

.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 6
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, p2, [J

    fill-array-data p2, :array_1

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 8
    invoke-static {p1, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    :array_0
    .array-data 8
        -0xe9c3a10f4e5377fL    # -1.6094707198740634E238
        -0x38f4a7567c2bebd8L    # -1.7748787197993794E34
        0x7eb708e0f78ea679L    # 2.4681860802903643E302
        -0x39de85aa19699b75L    # -6.923698907769563E29
        -0x707fee170650ac27L    # -5.054150909516542E-234
        0x4379bd59dc4c287cL    # 1.15921089015744448E17
    .end array-data

    :array_1
    .array-data 8
        -0x3e85b113ebfd9edfL    # -2.758624125058091E7
        0x3792572cbe264de5L    # 5.263472963184203E-41
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    .line 3
    .line 4
    if-nez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->data:[B

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    invoke-virtual {v1, v2, v0, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    new-array v3, v3, [J

    .line 24
    .line 25
    const-wide v4, -0x23ca6626b05cf1dL    # -6.327440384983094E297

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    aput-wide v4, v3, v0

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    .line 49
    .line 50
    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->data:[B

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketIgnore;->payload:[B

    .line 5
    .line 6
    return-void
.end method
