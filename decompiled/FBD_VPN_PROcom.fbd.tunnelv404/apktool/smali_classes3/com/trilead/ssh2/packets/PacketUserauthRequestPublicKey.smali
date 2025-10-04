.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field pk:[B

.field pkAlgoName:Ljava/lang/String;

.field serviceName:Ljava/lang/String;

.field sig:[B

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 6
    iput-object p5, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-instance v0, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 11
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_0

    .line 12
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

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

    .line 13
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x3

    new-array p3, p3, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x585dccb9891510eL    # -9.488997012922821E281
        0x3375b76ab6c6a147L    # 8.446371094361043E-61
        0x64a7565a010ceddcL    # 7.388193872295793E176
        0x5fd3fc912c41e39fL    # 4.187130657365557E153
        0x55e30413ee430b39L    # 5.451625889382783E105
        -0x73c390ad815d86cL
        0x279e9ca6d45491b3L    # 7.587038481351264E-118
    .end array-data

    :array_1
    .array-data 8
        -0x150f1d67fc26ba3fL    # -1.3552564907726435E207
        -0xa4c948d1da947c5L    # -9.330808818862673E258
    .end array-data

    :array_2
    .array-data 8
        -0x315ae0c03706b58cL    # -7.288957448974071E70
        -0x6cc7a67280b9099cL
        0x7605d229e797443bL    # 3.3550574329185255E260
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

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
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x3

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
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 49
    .line 50
    array-length v2, v1

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 68
    .line 69
    return-object v0

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        0x6d57ae01160b2292L    # 5.224360534323356E218
        0x1568e1d7ae3f41ffL
        -0x293e380a956acd92L    # -8.351928704952864E109
    .end array-data
.end method
