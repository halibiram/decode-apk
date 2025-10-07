.class public final Lcom/v2ray/ang/dto/Hysteria2Bean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;,
        Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;,
        Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;,
        Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;,
        Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u000556789Bo\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010(\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003Jz\u0010.\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00c6\u0001\u00a2\u0006\u0002\u0010/J\u0013\u00100\u001a\u00020\u00062\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u000203H\u00d6\u0001J\t\u00104\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006:"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/Hysteria2Bean;",
        "",
        "server",
        "",
        "auth",
        "lazy",
        "",
        "obfs",
        "Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;",
        "socks5",
        "Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;",
        "http",
        "tls",
        "Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;",
        "transport",
        "Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;",
        "bandwidth",
        "Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)V",
        "getServer",
        "()Ljava/lang/String;",
        "getAuth",
        "getLazy",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getObfs",
        "()Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;",
        "getSocks5",
        "()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;",
        "getHttp",
        "getTls",
        "()Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;",
        "getTransport",
        "()Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;",
        "getBandwidth",
        "()Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)Lcom/v2ray/ang/dto/Hysteria2Bean;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "ObfsBean",
        "Socks5Bean",
        "TlsBean",
        "TransportBean",
        "BandwidthBean",
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


# instance fields
.field private final auth:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lazy:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final server:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    .line 5
    iput-object p4, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    .line 6
    iput-object p5, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 7
    iput-object p6, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 8
    iput-object p7, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    .line 9
    iput-object p8, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    .line 10
    iput-object p9, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 12
    invoke-direct/range {v2 .. v11}, Lcom/v2ray/ang/dto/Hysteria2Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/Hysteria2Bean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;ILjava/lang/Object;)Lcom/v2ray/ang/dto/Hysteria2Bean;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/v2ray/ang/dto/Hysteria2Bean;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)Lcom/v2ray/ang/dto/Hysteria2Bean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    return-object v0
.end method

.method public final component5()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    return-object v0
.end method

.method public final component6()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    return-object v0
.end method

.method public final component7()Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    return-object v0
.end method

.method public final component8()Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    return-object v0
.end method

.method public final component9()Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)Lcom/v2ray/ang/dto/Hysteria2Bean;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v10, Lcom/v2ray/ang/dto/Hysteria2Bean;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/v2ray/ang/dto/Hysteria2Bean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/Hysteria2Bean;

    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    iget-object p1, p1, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAuth()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBandwidth()Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttp()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLazy()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getObfs()Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSocks5()Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTls()Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransport()Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->server:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->auth:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->lazy:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->obfs:Lcom/v2ray/ang/dto/Hysteria2Bean$ObfsBean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->socks5:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->http:Lcom/v2ray/ang/dto/Hysteria2Bean$Socks5Bean;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->tls:Lcom/v2ray/ang/dto/Hysteria2Bean$TlsBean;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->transport:Lcom/v2ray/ang/dto/Hysteria2Bean$TransportBean;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/v2ray/ang/dto/Hysteria2Bean;->bandwidth:Lcom/v2ray/ang/dto/Hysteria2Bean$BandwidthBean;

    .line 18
    .line 19
    const-string v9, "Hysteria2Bean(server="

    .line 20
    .line 21
    const-string v10, ", auth="

    .line 22
    .line 23
    const-string v11, ", lazy="

    .line 24
    .line 25
    invoke-static {v9, v0, v10, v1, v11}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", obfs="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", socks5="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", http="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", tls="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", transport="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", bandwidth="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ")"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
