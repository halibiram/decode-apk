.class public Lcom/trilead/ssh2/packets/PacketUserauthFailure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field authThatCanContinue:[Ljava/lang/String;

.field partialSuccess:Z

.field payload:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x7

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->payload:[B

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 8
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x33

    if-ne p1, p2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

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
        0x13485e95826713d1L    # 8.83647759855999E-216
        0x530fd9c4f1bc36ffL    # 1.2976188620709483E92
        -0x45b8e713e6dcb807L    # -5.8305915067488595E-28
        -0x38116826a6381e0L    # -4.819965654610533E291
        -0x6e2e409e0d3cc3dcL    # -7.671540170495196E-223
        0x74513e1f9492bc0L
        -0x7d662d65cf4f52f0L
    .end array-data

    :array_1
    .array-data 8
        0x374d8f4073206888L    # 2.6509945664530937E-42
        0x21bb70b5d2041cddL
        -0x57dda6d6b7a8792dL    # -2.328344155981562E-115
        -0x3d4070eb8f504055L    # -3.4699383713727668E13
        0x1006010d1521c897L    # 1.771646493440606E-231
        0x644eec73f5cd77a8L    # 1.5296714774724103E175
        0x6163d7fa12e95c14L    # 1.39492052802904E161
    .end array-data

    :array_2
    .array-data 8
        -0x5396e37b5d47709aL    # -9.405075381743944E-95
        0x56f52673e41aff2eL    # 7.947545454293018E110
    .end array-data
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

    return-void
.end method


# virtual methods
.method public getAuthThatCanContinue()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->authThatCanContinue:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPartialSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/trilead/ssh2/packets/PacketUserauthFailure;->partialSuccess:Z

    .line 2
    .line 3
    return v0
.end method
