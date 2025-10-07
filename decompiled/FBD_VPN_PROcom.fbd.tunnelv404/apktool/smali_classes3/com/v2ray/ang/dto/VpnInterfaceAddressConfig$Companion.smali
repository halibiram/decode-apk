.class public final Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
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
        "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;",
        "",
        "<init>",
        "()V",
        "getConfigByIndex",
        "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;",
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
    invoke-direct {p0}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfigByIndex(I)Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->values()[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->values()[Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->OPTION_1:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 18
    .line 19
    :goto_0
    return-object p1
.end method
