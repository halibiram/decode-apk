.class public final Lcom/v2ray/ang/dto/RoutingType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/RoutingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/v2ray/ang/dto/RoutingType$Companion;",
        "",
        "<init>",
        "()V",
        "fromIndex",
        "Lcom/v2ray/ang/dto/RoutingType;",
        "index",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/dto/RoutingType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIndex(I)Lcom/v2ray/ang/dto/RoutingType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/v2ray/ang/dto/RoutingType;->WHITE:Lcom/v2ray/ang/dto/RoutingType;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/v2ray/ang/dto/RoutingType;->WHITE_IRAN:Lcom/v2ray/ang/dto/RoutingType;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object p1, Lcom/v2ray/ang/dto/RoutingType;->GLOBAL:Lcom/v2ray/ang/dto/RoutingType;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-object p1, Lcom/v2ray/ang/dto/RoutingType;->BLACK:Lcom/v2ray/ang/dto/RoutingType;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    sget-object p1, Lcom/v2ray/ang/dto/RoutingType;->WHITE:Lcom/v2ray/ang/dto/RoutingType;

    .line 25
    .line 26
    :goto_0
    return-object p1
.end method
