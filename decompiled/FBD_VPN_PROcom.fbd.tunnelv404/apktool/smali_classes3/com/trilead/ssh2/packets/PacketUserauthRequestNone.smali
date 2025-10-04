.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->serviceName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->userName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    const/4 v0, 0x7

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v2, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v2, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x32

    if-ne p1, p2, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->userName:Ljava/lang/String;

    .line 10
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->serviceName:Ljava/lang/String;

    .line 11
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v1, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0x8

    new-array p3, p3, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v1, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 8
        -0x78c0aea7aebf1ee6L    # -9.045541303129637E-274
        0x7a4dcea7ddb1ddc9L    # 1.352657567041375E281
    .end array-data

    :array_1
    .array-data 8
        0x35e3be6f3a9a1b7eL    # 4.2216606652665834E-49
        -0x4d4641abb6eaf52L    # -2.052750045138945E285
        0xab497bc448275b0L
        0x2a5159033dfac0f5L    # 7.563861429733154E-105
        0xe2ce29c6a68ab8aL
        0x55665bddf469167L    # 6.02479456466345E-283
        -0x47467d26cb03fdebL    # -1.91924386909101E-35
    .end array-data

    :array_2
    .array-data 8
        -0x528c0592272a3fc1L    # -9.807504071836964E-90
        0x3f1507798aa00b89L    # 8.022002535316824E-5
        -0x7f825adfe3d35672L    # -2.638494469222017E-306
        -0x34b3487175b6f2e9L    # -5.5010878958466114E54
        -0x5ead5062ac9ea526L    # -3.653409512137934E-148
        -0x337c107695e7db9dL    # -4.004427443464927E60
        -0x364e4f55f36f074L    # -1.690578462762326E292
        0x2e9da50ebe756842L    # 3.8149522473823613E-84
    .end array-data

    :array_3
    .array-data 8
        -0x1076a8c019392655L    # -1.9209999841214448E229
        0x3b2d34f11fab0e6bL    # 1.207965111748771E-23
        -0x2eb2d123cb1c4cd5L    # -4.429140525450314E83
        0x4f61cb60bde204d8L    # 2.5152050209210385E74
        0x267623d7f8c5a302L
        -0x3caab6dad3a4d836L    # -2.3965594070851368E16
        -0x4137976471901ecfL    # -2.9097346785322735E-6
    .end array-data

    :array_4
    .array-data 8
        -0x6a41afe6bc8004d9L    # -6.042688784787678E-204
        0x3b38702b3927f840L    # 2.021477177358227E-23
    .end array-data
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

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
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->userName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->serviceName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x2

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
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    .line 46
    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x172d41cd7ab7d494L    # -8.756596185505538E196
        0x20a0f045a2f54046L
    .end array-data
.end method
