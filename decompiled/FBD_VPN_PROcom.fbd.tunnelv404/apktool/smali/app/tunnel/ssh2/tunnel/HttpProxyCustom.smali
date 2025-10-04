.class public final Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/trilead/ssh2/ProxyData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BO\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ*\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;",
        "Lcom/trilead/ssh2/ProxyData;",
        "mAddress",
        "",
        "mPort",
        "",
        "proxyUser",
        "proxyPass",
        "requestPayload",
        "isDropbear",
        "",
        "isAutoReplace",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "mSocket",
        "Ljava/net/Socket;",
        "openConnection",
        "hostname",
        "port",
        "connectTimeout",
        "readTimeout",
        "getRequestPayload",
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
        "SMAP\nHttpProxyCustom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpProxyCustom.kt\napp/tunnel/ssh2/tunnel/HttpProxyCustom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"
    }
.end annotation


# instance fields
.field private final isAutoReplace:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isDropbear:Z

.field private final mAddress:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mPort:I

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

.field private final requestPayload:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V
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
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mAddress:Ljava/lang/String;

    .line 3
    iput p2, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mPort:I

    .line 4
    iput-object p3, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->proxyUser:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->proxyPass:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->requestPayload:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->isDropbear:Z

    .line 8
    iput-object p7, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->isAutoReplace:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p5

    move/from16 v8, p6

    .line 10
    invoke-direct/range {v2 .. v9}, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private final getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getBytes(...)"

    .line 2
    .line 3
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->requestPayload:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2, v1}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->formatCustomPayload(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    const-string v2, "CONNECT "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x3a

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    const-string p1, " HTTP/1.0\r\n"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->proxyUser:Ljava/lang/String;

    .line 43
    .line 44
    const-string p2, "\r\n"

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->proxyPass:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const-string v3, ":"

    .line 53
    .line 54
    invoke-static {p1, v3, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎰둣땀땀땪돶돛땥딀뎽돝뎡땔딤뒬돠딝땠뒀됨딅딻땜뒉딟딠든듌돤뒛뒨돼도딠뎽땭뒻딃땝딠뒾드땫땜땥됨땩둡딎돸딽듽땠땄뎻됴둔딄땤뒷돴딻둥뎨듼둥돴듰땮뎰땦듌땜뎡돸땅땫땣득뒵드둘딹땡딄듽땬땐뎹둘딹돼뒛땻둑따돤뎡딄듻뒷돨땐뎻두땲득듬뒬땩둘땮뒻도도땥뒬딻두땔따들딅둑땔뒈딤땮뎻뎬(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :try_start_0
    const-string v2, "ISO-8859-1"

    .line 59
    .line 60
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "forName(...)"

    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/Base64;->encode([B)[C

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_1
    const-string v0, "Proxy-Authorization: Basic "

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_2
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mSocket:Ljava/net/Socket;

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
    new-instance v1, Ljava/net/Socket;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mSocket:Ljava/net/Socket;

    .line 14
    .line 15
    iget-object v1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mAddress:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/trilead/ssh2/transport/TransportManager;->createInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mSocket:Ljava/net/Socket;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_b

    .line 25
    .line 26
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 27
    .line 28
    iget v5, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mPort:I

    .line 29
    .line 30
    invoke-direct {v4, v1, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 37
    .line 38
    .line 39
    iget-boolean p3, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->isDropbear:Z

    .line 40
    .line 41
    const/4 p4, 0x0

    .line 42
    if-nez p3, :cond_0

    .line 43
    .line 44
    const p3, 0x7f13025f

    .line 45
    .line 46
    .line 47
    new-array v1, p4, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-static {p3, v1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(I[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->getRequestPayload(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const-string p2, "Sending Payload"

    .line 59
    .line 60
    invoke-static {p2}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p1, p2}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelUtils;->injectSplitPayload(Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    const-string v1, "getBytes(...)"

    .line 72
    .line 73
    if-nez p3, :cond_2

    .line 74
    .line 75
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string p3, "ISO-8859-1"

    .line 79
    .line 80
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const-string v4, "forName(...)"

    .line 85
    .line 86
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-boolean p1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->isDropbear:Z

    .line 119
    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    return-object v2

    .line 123
    :cond_3
    const/16 p1, 0x400

    .line 124
    .line 125
    new-array p1, p1, [B

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .line 136
    .line 137
    sget-object v5, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    invoke-direct {v4, p1, p4, p3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_1
    new-instance v4, Ljava/lang/String;

    .line 144
    .line 145
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 146
    .line 147
    invoke-direct {v4, p1, p4, p3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-static {v4}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move-object p3, v4

    .line 154
    :goto_2
    invoke-static {p2, p1}, Lcom/trilead/ssh2/transport/ClientServerHello;->readLineRN(Ljava/io/InputStream;[B)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_4

    .line 159
    .line 160
    const-string v6, "\n"

    .line 161
    .line 162
    invoke-static {p3, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    :try_start_2
    new-instance v6, Ljava/lang/String;

    .line 167
    .line 168
    sget-object v7, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 169
    .line 170
    invoke-direct {v6, p1, p4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_2
    new-instance v6, Ljava/lang/String;

    .line 175
    .line 176
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-direct {v6, p1, p4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-static {p3, v6}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-lez p1, :cond_5

    .line 191
    .line 192
    invoke-static {p3}, Lde/blinkt/openvpn/core/TkLogStatus;->logDebug(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_5
    const-string p1, "HTTP/"

    .line 196
    .line 197
    const/4 p2, 0x2

    .line 198
    invoke-static {v4, p1, p4, p2, v3}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    const-string p2, "The proxy did not send back a valid HTTP response."

    .line 203
    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    const/16 p3, 0xe

    .line 211
    .line 212
    if-lt p1, p3, :cond_9

    .line 213
    .line 214
    const/16 p1, 0x8

    .line 215
    .line 216
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    const/16 p3, 0x20

    .line 221
    .line 222
    if-ne p1, p3, :cond_9

    .line 223
    .line 224
    const/16 p1, 0xc

    .line 225
    .line 226
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    if-ne p4, p3, :cond_9

    .line 231
    .line 232
    const/16 p3, 0x9

    .line 233
    .line 234
    :try_start_3
    invoke-virtual {v4, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-ltz p1, :cond_8

    .line 246
    .line 247
    const/16 p3, 0x3e7

    .line 248
    .line 249
    if-gt p1, p3, :cond_8

    .line 250
    .line 251
    const/16 p3, 0xc8

    .line 252
    .line 253
    if-eq p1, p3, :cond_7

    .line 254
    .line 255
    iget-object p3, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->isAutoReplace:Ljava/lang/Boolean;

    .line 256
    .line 257
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 258
    .line 259
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p3

    .line 263
    if-eqz p3, :cond_6

    .line 264
    .line 265
    const-string p1, "HTTP/1.1 200 OK\r\n\r\n"

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 272
    .line 273
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mSocket:Ljava/net/Socket;

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_6
    new-instance p3, Lcom/trilead/ssh2/HTTPProxyException;

    .line 294
    .line 295
    const/16 p4, 0xd

    .line 296
    .line 297
    invoke-virtual {v4, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p4

    .line 301
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {p3, p4, p1}, Lcom/trilead/ssh2/HTTPProxyException;-><init>(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    throw p3

    .line 308
    :cond_7
    iget-object p1, p0, Lapp/tunnel/ssh2/tunnel/HttpProxyCustom;->mSocket:Ljava/net/Socket;

    .line 309
    .line 310
    :goto_4
    return-object p1

    .line 311
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 312
    .line 313
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    :catch_3
    new-instance p1, Ljava/io/IOException;

    .line 318
    .line 319
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p1

    .line 323
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 324
    .line 325
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p1

    .line 329
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 330
    .line 331
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw p1

    .line 335
    :cond_b
    return-object v3
.end method
