.class public final Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TcpSettingsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0019B\u001d\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ$\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;",
        "",
        "header",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;",
        "acceptProxyProtocol",
        "",
        "<init>",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)V",
        "getHeader",
        "()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;",
        "setHeader",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;)V",
        "getAcceptProxyProtocol",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "copy",
        "(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "HeaderBean",
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
.field private final acceptProxyProtocol:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;-><init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 4
    iput-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    return-void

    :array_0
    .array-data 8
        0x2ebea4a1e0a8e21eL    # 1.5773709651927709E-83
        0x22ae009dca6e2808L
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;-><init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->copy(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;
    .locals 2
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    invoke-direct {v0, p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;-><init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;)V

    return-object v0

    :array_0
    .array-data 8
        0x48a8b81f48fc02e4L    # 1.076674201450169E42
        -0x456c034ac3b44c00L
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAcceptProxyProtocol()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setHeader(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;)V
    .locals 2
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;
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
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x204a0d5b1efee569L    # -1.149501043095554E153
        0x6ffe33382924cd50L    # 2.930385244039653E231
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->header:Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->acceptProxyProtocol:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TcpSettingsBean(header="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", acceptProxyProtocol="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
