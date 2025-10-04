.class public final Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MuxBean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001c\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J<\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;",
        "",
        "enabled",
        "",
        "concurrency",
        "",
        "xudpConcurrency",
        "xudpProxyUDP443",
        "",
        "<init>",
        "(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getConcurrency",
        "()Ljava/lang/Integer;",
        "setConcurrency",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getXudpConcurrency",
        "setXudpConcurrency",
        "getXudpProxyUDP443",
        "()Ljava/lang/String;",
        "setXudpProxyUDP443",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private concurrency:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enabled:Z

.field private xudpConcurrency:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private xudpProxyUDP443:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    .line 3
    iput-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;-><init>(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->copy(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;-><init>(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
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
    instance-of v1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    iget-boolean v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    iget-boolean v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    iget-object p1, p1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConcurrency()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getXudpConcurrency()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getXudpProxyUDP443()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_3
    add-int/2addr v0, v2

    .line 49
    return v0
.end method

.method public final setConcurrency(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setXudpConcurrency(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setXudpProxyUDP443(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->enabled:Z

    iget-object v1, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->concurrency:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpConcurrency:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->xudpProxyUDP443:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MuxBean(enabled="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", concurrency="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", xudpConcurrency="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", xudpProxyUDP443="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
