.class public final Lapp/tunnel/ssh2/tunnel/SSLProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BQ\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J$\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lapp/tunnel/ssh2/tunnel/SSLProxy;",
        "Lcom/trilead/ssh2/ProxyData;",
        "mAddress",
        "",
        "mPort",
        "",
        "proxyUser",
        "proxyPass",
        "mPayload",
        "mSni",
        "isAutoReplace",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "mSocket",
        "Ljava/net/Socket;",
        "openConnection",
        "hostname",
        "port",
        "connectTimeout",
        "readTimeout",
        "getRequestPayload",
        "doSSLHandshake",
        "Ljavax/net/ssl/SSLSocket;",
        "host",
        "sni",
        "close",
        "",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSSLProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSLProxy.kt\napp/tunnel/ssh2/tunnel/SSLProxy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
    }
.end annotation


# instance fields
.field private final isAutoReplace:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mAddress:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPayload:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPort:I

.field private final mSni:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSocket:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final proxyPass:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final proxyUser:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mAddress:Ljava/lang/String;

    .line 3
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mPort:I

    .line 4
    iput-object p3, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->proxyUser:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->proxyPass:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mPayload:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSni:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->isAutoReplace:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p5

    move-object/from16 v8, p6

    .line 10
    invoke-direct/range {v2 .. v9}, Lapp/tunnel/ssh2/tunnel/SSLProxy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final doSSLHandshake(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Lapp/tunnel/ssh2/tunnel/TLSSocketFactory;

    .line 4
    .line 5
    invoke-direct {v2}, Lapp/tunnel/ssh2/tunnel/TLSSocketFactory;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v2, p1, p3}, Lapp/tunnel/ssh2/tunnel/TLSSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "setHostname"

    .line 24
    .line 25
    new-array v5, v1, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v6, Ljava/lang/String;

    .line 28
    .line 29
    aput-object v6, v5, v0

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p2, v1, v0

    .line 38
    .line 39
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :catchall_0
    :try_start_2
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v2, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lapp/tunnel/ssh2/tunnel/HandshakeTunnelCompletedListener;

    .line 50
    .line 51
    invoke-direct {p2, p1, p3, v2}, Lapp/tunnel/ssh2/tunnel/HandshakeTunnelCompletedListener;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocket;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "Starting SSL Handshake..."

    .line 58
    .line 59
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .line 64
    .line 65
    return-object v2

    .line 66
    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/io/IOException;

    .line 68
    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "Could not do SSL handshake: "

    .line 72
    .line 73
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2
.end method

.method private final getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getBytes(...)"

    .line 2
    .line 3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mPayload:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2, v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->formatCustomPayload(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    const-string v2, "CONNECT "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x3a

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    const-string p1, " HTTP/1.0\r\n"

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->proxyUser:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "\r\n"

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->proxyPass:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const-string v3, ":"

    .line 46
    .line 47
    invoke-static {p1, v3, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :try_start_0
    const-string v2, "ISO-8859-1"

    .line 52
    .line 53
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "forName(...)"

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    const-string v0, "Proxy-Authorization: Basic "

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    :cond_0
    return-void
.end method

.method public openConnection(Ljava/lang/String;III)Ljava/net/Socket;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "substring(...)"

    .line 2
    .line 3
    const-string v1, "hostname"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 17
    .line 18
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mAddress:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 25
    .line 26
    if-eqz v2, :cond_b

    .line 27
    .line 28
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 29
    .line 30
    iget v4, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mPort:I

    .line 31
    .line 32
    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSni:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, p1, p3, p2}, Lapp/tunnel/ssh2/tunnel/SSLProxy;->doSSLHandshake(Ljava/lang/String;Ljava/lang/String;I)Ljavax/net/ssl/SSLSocket;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object p4, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mPayload:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p4, :cond_a

    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lapp/tunnel/ssh2/tunnel/SSLProxy;->getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    const-string p2, "Sending Payload"

    .line 58
    .line 59
    invoke-static {p2}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    if-eqz p3, :cond_9

    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-eqz p2, :cond_9

    .line 69
    .line 70
    invoke-static {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    const-string v1, "getBytes(...)"

    .line 75
    .line 76
    if-nez p4, :cond_1

    .line 77
    .line 78
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const-string p4, "ISO-8859-1"

    .line 82
    .line 83
    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    const-string v3, "forName(...)"

    .line 88
    .line 89
    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 107
    .line 108
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 119
    .line 120
    .line 121
    :cond_1
    const/16 p1, 0x400

    .line 122
    .line 123
    new-array p1, p1, [B

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 130
    .line 131
    .line 132
    move-result p4

    .line 133
    const/4 v3, 0x0

    .line 134
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .line 135
    .line 136
    sget-object v5, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-direct {v4, p1, v3, p4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :catch_1
    new-instance v4, Ljava/lang/String;

    .line 143
    .line 144
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 145
    .line 146
    invoke-direct {v4, p1, v3, p4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v5, "<strong>"

    .line 152
    .line 153
    invoke-direct {p4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v5, "</strong>"

    .line 160
    .line 161
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    invoke-static {p4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    move-object p4, v4

    .line 172
    :goto_2
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_2

    .line 177
    .line 178
    const-string v6, "\n"

    .line 179
    .line 180
    invoke-static {p4, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 185
    .line 186
    sget-object v7, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 187
    .line 188
    invoke-direct {v6, p1, v3, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catch_2
    new-instance v6, Ljava/lang/String;

    .line 193
    .line 194
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 195
    .line 196
    invoke-direct {v6, p1, v3, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-static {p4, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    goto :goto_2

    .line 204
    :cond_2
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-lez p1, :cond_3

    .line 209
    .line 210
    invoke-static {p4}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    const/4 p1, 0x2

    .line 214
    const/4 p2, 0x0

    .line 215
    const-string p4, "HTTP/"

    .line 216
    .line 217
    invoke-static {v4, p4, v3, p1, p2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    const-string p2, "The proxy did not send back a valid HTTP response."

    .line 222
    .line 223
    if-eqz p1, :cond_8

    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    const/16 p4, 0xe

    .line 230
    .line 231
    if-lt p1, p4, :cond_7

    .line 232
    .line 233
    const/16 p1, 0x8

    .line 234
    .line 235
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    const/16 p4, 0x20

    .line 240
    .line 241
    if-ne p1, p4, :cond_7

    .line 242
    .line 243
    const/16 p1, 0xc

    .line 244
    .line 245
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ne v3, p4, :cond_7

    .line 250
    .line 251
    const/16 p4, 0x9

    .line 252
    .line 253
    :try_start_3
    invoke-virtual {v4, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-ltz p1, :cond_6

    .line 265
    .line 266
    const/16 p4, 0x3e7

    .line 267
    .line 268
    if-gt p1, p4, :cond_6

    .line 269
    .line 270
    const/16 p4, 0xc8

    .line 271
    .line 272
    if-eq p1, p4, :cond_5

    .line 273
    .line 274
    iget-object p4, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->isAutoReplace:Ljava/lang/Boolean;

    .line 275
    .line 276
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result p4

    .line 283
    if-eqz p4, :cond_4

    .line 284
    .line 285
    const-string p1, "HTTP/1.1 200 OK\r\n\r\n"

    .line 286
    .line 287
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 288
    .line 289
    .line 290
    move-result-object p4

    .line 291
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_4
    new-instance p3, Lcom/trilead/ssh2/HTTPProxyException;

    .line 312
    .line 313
    const/16 p4, 0xd

    .line 314
    .line 315
    invoke-virtual {v4, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p4

    .line 319
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-direct {p3, p4, p1}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    throw p3

    .line 326
    :cond_5
    :goto_4
    return-object p3

    .line 327
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 328
    .line 329
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 333
    :catch_3
    new-instance p1, Ljava/io/IOException;

    .line 334
    .line 335
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw p1

    .line 339
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 340
    .line 341
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1

    .line 345
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 346
    .line 347
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p1

    .line 351
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 352
    .line 353
    const-string p2, "Socket is closed"

    .line 354
    .line 355
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw p1

    .line 359
    :cond_a
    iput-object p3, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 360
    .line 361
    :cond_b
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/SSLProxy;->mSocket:Ljava/net/Socket;

    .line 362
    .line 363
    return-object p1
.end method
