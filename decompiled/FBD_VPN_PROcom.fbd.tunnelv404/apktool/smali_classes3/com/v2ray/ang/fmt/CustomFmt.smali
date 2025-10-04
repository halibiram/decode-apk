.class public final Lcom/v2ray/ang/fmt/CustomFmt;
.super Lcom/v2ray/ang/fmt/FmtBase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/v2ray/ang/fmt/CustomFmt;",
        "Lcom/v2ray/ang/fmt/FmtBase;",
        "<init>",
        "()V",
        "parse",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "str",
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


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/fmt/CustomFmt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/fmt/CustomFmt;

    invoke-direct {v0}, Lcom/v2ray/ang/fmt/CustomFmt;-><init>()V

    sput-object v0, Lcom/v2ray/ang/fmt/CustomFmt;->INSTANCE:Lcom/v2ray/ang/fmt/CustomFmt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/fmt/FmtBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    sget-object v0, Lcom/v2ray/ang/dto/ProfileItem;->Companion:Lcom/v2ray/ang/dto/ProfileItem$Companion;

    .line 20
    .line 21
    sget-object v1, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/ProfileItem$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 28
    .line 29
    const-class v2, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getProxyOutbound()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRemarks()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setRemarks(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-object v2, p1

    .line 67
    :goto_0
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/ProfileItem;->setServer(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerPort()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/ProfileItem;->setServerPort(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        -0x437c263a1f8d8f22L    # -3.443543299385379E-17
        -0x5e81b41198d75fb1L
    .end array-data
.end method
