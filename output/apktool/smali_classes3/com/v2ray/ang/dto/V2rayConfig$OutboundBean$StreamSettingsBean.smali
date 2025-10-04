.class public final Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamSettingsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;,
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008I\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u000bklmnopqrstuB\u00b9\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\t\u0010U\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u00bb\u0001\u0010d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00c6\u0001J\u0013\u0010e\u001a\u00020f2\u0008\u0010g\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010h\u001a\u00020iH\u00d6\u0001J\t\u0010j\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010 \"\u0004\u0008$\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010>\"\u0004\u0008F\u0010@R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010PR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010T\u00a8\u0006v"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;",
        "",
        "network",
        "",
        "security",
        "tcpSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;",
        "kcpSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;",
        "wsSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;",
        "httpupgradeSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;",
        "xhttpSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;",
        "httpSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;",
        "tlsSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;",
        "quicSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;",
        "realitySettings",
        "grpcSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;",
        "hy2steriaSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;",
        "dsSettings",
        "sockopt",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V",
        "getNetwork",
        "()Ljava/lang/String;",
        "setNetwork",
        "(Ljava/lang/String;)V",
        "getSecurity",
        "setSecurity",
        "getTcpSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;",
        "setTcpSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;)V",
        "getKcpSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;",
        "setKcpSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;)V",
        "getWsSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;",
        "setWsSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;)V",
        "getHttpupgradeSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;",
        "setHttpupgradeSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;)V",
        "getXhttpSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;",
        "setXhttpSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;)V",
        "getHttpSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;",
        "setHttpSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;)V",
        "getTlsSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;",
        "setTlsSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V",
        "getQuicSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;",
        "setQuicSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;)V",
        "getRealitySettings",
        "setRealitySettings",
        "getGrpcSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;",
        "setGrpcSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;)V",
        "getHy2steriaSettings",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;",
        "setHy2steriaSettings",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;)V",
        "getDsSettings",
        "()Ljava/lang/Object;",
        "getSockopt",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;",
        "setSockopt",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "TcpSettingsBean",
        "KcpSettingsBean",
        "WsSettingsBean",
        "HttpupgradeSettingsBean",
        "XhttpSettingsBean",
        "HttpSettingsBean",
        "SockoptBean",
        "TlsSettingsBean",
        "QuicSettingBean",
        "GrpcSettingsBean",
        "Hy2steriaSettingsBean",
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
.field private final dsSettings:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private network:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private security:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    move-object/from16 v1, p12

    .line 14
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    return-void

    :array_0
    .array-data 8
        -0x4f8cb4cab55f3e4aL    # -2.665989642791635E-75
        0x309c4a71ae992a76L    # 1.5636741935723444E-74
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v3

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v3

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v3

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v3

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v3

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v3

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v3

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v3

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v3

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    move-object v15, v3

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v3, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v2

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v3

    .line 19
    invoke-direct/range {p1 .. p16}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x5a2181f0efa437ffL
        -0x4c70f4bcde18412cL
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    return-object v0
.end method

.method public final component11()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    return-object v0
.end method

.method public final component12()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    return-object v0
.end method

.method public final component13()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    return-object v0
.end method

.method public final component14()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    return-object v0
.end method

.method public final component15()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    return-object v0
.end method

.method public final component4()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    return-object v0
.end method

.method public final component5()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    return-object v0
.end method

.method public final component6()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    return-object v0
.end method

.method public final component7()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    return-object v0
.end method

.method public final component8()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    return-object v0
.end method

.method public final component9()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    move-object v1, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V

    return-object v0

    nop

    :array_0
    .array-data 8
        0x4eeb896a4f04af11L    # 1.5204148773272272E72
        0x228a6a54ff8958bcL
    .end array-data
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    iget-object p1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getDsSettings()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGrpcSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHttpupgradeSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHy2steriaSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuicSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRealitySettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSecurity()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSockopt()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTlsSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWsSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getXhttpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    if-nez v1, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    return v0
.end method

.method public final setGrpcSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHttpupgradeSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setHy2steriaSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setKcpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x171d434c8681519aL
        -0x31efc361bab2463eL    # -1.0943574824278863E68
    .end array-data
.end method

.method public final setQuicSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRealitySettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setSecurity(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSockopt(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTcpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setWsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setXhttpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;)V
    .locals 0
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->network:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->security:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->kcpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->wsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpupgradeSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->xhttpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->httpSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->tlsSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->quicSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->realitySettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->grpcSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->hy2steriaSettings:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->dsSettings:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->sockopt:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 32
    .line 33
    const-string v0, "StreamSettingsBean(network="

    .line 34
    .line 35
    move-object/from16 v16, v15

    .line 36
    .line 37
    const-string v15, ", security="

    .line 38
    .line 39
    move-object/from16 v17, v14

    .line 40
    .line 41
    const-string v14, ", tcpSettings="

    .line 42
    .line 43
    invoke-static {v0, v1, v15, v2, v14}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", kcpSettings="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", wsSettings="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", httpupgradeSettings="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", xhttpSettings="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", httpSettings="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", tlsSettings="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", quicSettings="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", realitySettings="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", grpcSettings="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", hy2steriaSettings="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", dsSettings="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-object/from16 v1, v17

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", sockopt="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-object/from16 v1, v16

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ")"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    return-object v0
.end method
