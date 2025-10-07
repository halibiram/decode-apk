.class public Lcom/tknetwork/tunnel/utils/SSLUtil;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/SSLUtil$MyX509TrustManager;
    }
.end annotation


# instance fields
.field private final mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

.field private final mSSLContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/TunnelVPN;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 5
    .line 6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 26
    .line 27
    new-instance v0, Lcom/tknetwork/tunnel/utils/SSLUtil$MyX509TrustManager;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/tknetwork/tunnel/utils/SSLUtil$MyX509TrustManager;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    aput-object v0, v1, v2

    .line 37
    .line 38
    new-instance v0, Ljava/security/SecureRandom;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1, v2, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x645649bf5abe1006L    # 2.2050075227020533E175
        -0x4a702aa48e07085fL    # -1.0635407399917433E-50
    .end array-data
.end method

.method private createSSLSocket(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/tknetwork/tunnel/service/TunnelVPN;->server:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1, p2, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 20
    .line 21
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    new-array p3, p3, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 p3, 0x4

    .line 61
    new-array p3, p3, [J

    .line 62
    .line 63
    fill-array-data p3, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 p3, 0x2

    .line 79
    new-array p3, p3, [J

    .line 80
    .line 81
    fill-array-data p3, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object p3, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 92
    .line 93
    iget-object p3, p3, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 94
    .line 95
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/SSLUtil;->log(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 116
    .line 117
    new-instance p2, L땋땫뒝땍둥뒷듼듼뎬딸땀돸땁돸땡뒉뎹돳땳둠뎹땜뒛돨땱땮돵돨됴딸딃돝됩뒻듨땀돼뒈듸딅뒨둥듸딝딁땬뎻땟딅뒛돤듰돼뎹뎽딅득된뒷딄뒀딟뒝듰뎨뒬두뒷뒤딠뒤뒾땡듽땲돼땻땳땩든땧듽뎨디뒀됫땰됴땻땨될땹돷돵됩둔듌땯뒾돶딜땳땵땱됨땡돳뎡돶딄둠딜땜땬딽땍딄땲돨딻땅든딜돷딐디땡뎸땐든;

    .line 118
    .line 119
    invoke-direct {p2, p0}, L땋땫뒝땍둥뒷듼듼뎬딸땀돸땁돸땡뒉뎹돳땳둠뎹땜뒛돨땱땮돵돨됴딸딃돝됩뒻듨땀돼뒈듸딅뒨둥듸딝딁땬뎻땟딅뒛돤듰돼뎹뎽딅득된뒷딄뒀딟뒝듰뎨뒬두뒷뒤딠뒤뒾땡듽땲돼땻땳땩든땧듽뎨디뒀됫땰됴땻땨될땹돷돵됩둔듌땯뒾돶딜땳땵땱됨땡돳뎡돶딄둠딜땜땬딽땍딄땲돨딻땅든딜돷딐디땡뎸땐든;-><init>(Lcom/tknetwork/tunnel/utils/SSLUtil;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x292f6302e56fc9beL
        0x19702139f2dc09bfL    # 3.707075356420734E-186
        -0x749ce17949d1eed2L    # -8.149376033641037E-254
        0x125f5d085200da2cL    # 3.47061495032835E-220
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        -0x1369d2baaee9c6deL    # -1.1945286316956027E215
        -0x14afeeb9e8ad67c0L    # -8.253623639461837E208
    .end array-data
.end method

.method private synthetic lambda$createSSLSocket$0(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSession()Ljavax/net/ssl/SSLSession;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v2, v1, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p1, v2, v3

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/SSLUtil;->log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v1, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/SSLUtil;->log(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x755fa3ddf634efd3L
        -0x4d7089d617e126f4L
        -0x1470610ea5677b41L    # -1.2994537104328122E210
        0x5046360e8bfae40aL    # 5.1437531180202075E78
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        0x404eaca564808ba7L    # 61.34879738117825
        -0x6497ba891901e408L    # -1.197916115079076E-176
        -0x7fdb016665bc6af5L    # -5.839297843006176E-308
        -0x19020dac0ba5ae8eL    # -1.3030009722215285E188
    .end array-data
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tknetwork/tunnel/service/TunnelVPN;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lcom/tknetwork/tunnel/utils/SSLUtil;Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tknetwork/tunnel/utils/SSLUtil;->lambda$createSSLSocket$0(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/tknetwork/tunnel/utils/SSLUtil;->createSSLSocket(Ljava/lang/String;IZ)V

    .line 5
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    iget-object p1, p1, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 0

    .line 3
    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lcom/tknetwork/tunnel/utils/SSLUtil;->createSSLSocket(Ljava/lang/String;IZ)V

    .line 7
    iget-object p1, p0, Lcom/tknetwork/tunnel/utils/SSLUtil;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    iget-object p1, p1, Lcom/tknetwork/tunnel/service/TunnelVPN;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method
