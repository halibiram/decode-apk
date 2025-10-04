.class public Lcom/trilead/ssh2/packets/PacketKexInit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field kp:Lcom/trilead/ssh2/transport/KexParameters;

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/crypto/CryptoWishList;Ljava/security/SecureRandom;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/trilead/ssh2/transport/KexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/transport/KexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    const/16 v1, 0x10

    .line 3
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 4
    invoke-virtual {p2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 5
    iget-object p2, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->kexAlgorithms:[Ljava/lang/String;

    iput-object v0, p2, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;

    iput-object v0, p2, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;

    iput-object v0, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;

    iput-object v0, p2, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;

    iput-object v0, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;

    iput-object p1, p2, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 14
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 15
    iput-boolean p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 16
    iput p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    return-void

    :array_0
    .array-data 8
        -0x5efb9290271ba0d9L
        -0x69449b993b577830L
    .end array-data

    :array_1
    .array-data 8
        -0x358b6b0499a1b2ddL    # -4.812891165645929E50
        -0x27d1461ccdb5f5f7L    # -6.0533544427256604E116
    .end array-data
.end method

.method public constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Lcom/trilead/ssh2/transport/KexParameters;

    invoke-direct {v1}, Lcom/trilead/ssh2/transport/KexParameters;-><init>()V

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 19
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    const/4 v2, 0x0

    .line 20
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 22
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    .line 23
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    const/16 p2, 0x10

    invoke-virtual {v1, p2}, Lcom/trilead/ssh2/packets/TypesReader;->readBytes(I)[B

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 24
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 32
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 33
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readNameList()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 34
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readBoolean()Z

    move-result p2

    iput-boolean p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 35
    iget-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result p2

    iput p2, p1, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    .line 36
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 37
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

    .line 38
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

    .line 39
    invoke-static {p1, p3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 8
        -0x7396154158eebef6L    # -7.239654618540281E-249
        0x33161430b8f8d931L    # 1.3417689029687281E-62
        0x2a0a25b0b4c73b19L    # 3.562683037745522E-106
        -0x9988c46c9b3e526L
        -0x227c52677bbc4bf8L    # -2.999516923225888E142
    .end array-data

    :array_1
    .array-data 8
        0x2d60ad20131d0f22L    # 4.093268568705391E-90
        -0x3d8c08af3ce61e89L    # -1.3720583008300916E12
        -0x651e4890f93f286dL
        0x3ea29657709a5815L    # 5.539438642950261E-7
        -0x7fe10b00d812408aL
    .end array-data

    :array_2
    .array-data 8
        0x5e1bf0489342a54L
        -0x7d6e1eaa0fbf42a6L    # -2.733990960569455E-296
    .end array-data
.end method


# virtual methods
.method public getCompression_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getCompression_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getCookie()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 4
    .line 5
    return-object v0
.end method

.method public getEncryption_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getEncryption_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getKexParameters()Lcom/trilead/ssh2/transport/KexParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKex_algorithms()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getLanguages_client_to_server()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getLanguages_server_to_client()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getMac_algorithms_client_to_server()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getMac_algorithms_server_to_client()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getPayload()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    invoke-static {v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(I)Lcom/trilead/ssh2/packets/TypesWriter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->cookie:[B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBytes([BII)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 92
    .line 93
    iget-boolean v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 99
    .line 100
    iget v1, v1, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    .line 110
    .line 111
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->payload:[B

    .line 112
    .line 113
    return-object v0
.end method

.method public getReserved_field1()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->reserved_field1:I

    .line 4
    .line 5
    return v0
.end method

.method public getServer_host_key_algorithms()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public isFirst_kex_packet_follows()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketKexInit;->kp:Lcom/trilead/ssh2/transport/KexParameters;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/trilead/ssh2/transport/KexParameters;->first_kex_packet_follows:Z

    .line 4
    .line 5
    return v0
.end method
