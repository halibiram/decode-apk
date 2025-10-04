.class public Lcom/trilead/ssh2/packets/PacketUserauthBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field language:Ljava/lang/String;

.field message:Ljava/lang/String;

.field payload:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->message:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->language:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->payload:[B

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x35

    if-ne p1, p2, :cond_1

    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, v0, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->message:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->language:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x7

    new-array p3, p3, [J

    fill-array-data p3, :array_1

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

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 8
        0x31da7d3baa51acbfL    # 1.5352167604756233E-68
        -0x540924aebdfc3ad8L    # -6.687982026083545E-97
    .end array-data

    :array_1
    .array-data 8
        -0x1c0c0deebb73a3ebL    # -3.08321707252143E173
        0x4cd7f73f93799b73L    # 1.540463121096157E62
        -0x30bddd8aad89ff96L    # -6.408213907942564E73
        0x2ef92319ebd2e00aL    # 2.070315893893088E-82
        -0x22729c728a781192L    # -4.479720944038161E142
        0x184dfc97ab6e627aL
        -0x5e280a76d09c33b3L
    .end array-data

    :array_2
    .array-data 8
        0x6e0a716e3c265d2dL    # 1.1948104076195872E222
        -0x1dbb4552f09d2b0fL    # -2.3874277931655924E165
        -0x2710aa1f85a53d27L    # -2.5286243361563222E120
        -0x590c6a122bbfcd49L
        0x3275b7aec59690cL
        0x127638bc6aeb411L
    .end array-data

    :array_3
    .array-data 8
        0x79e5aec6b21d984L    # 5.611210966000285E-272
        -0x7af73764e6c20aebL    # -2.083333457369414E-284
    .end array-data
.end method


# virtual methods
.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayload()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x35

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->message:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->language:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->payload:[B

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthBanner;->payload:[B

    .line 28
    .line 29
    return-object v0
.end method
