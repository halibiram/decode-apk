.class public final Lcom/v2ray/ang/handler/SettingsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/handler/SettingsManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0002J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u0012\u001a\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\u0018\u001a\u00020\u000fJ\u0016\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0016\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0011J\u0006\u0010 \u001a\u00020\u000cJ\u0006\u0010!\u001a\u00020\u000cJ\u0016\u0010\"\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$J\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00110&J\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00110&J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00110&J\u0010\u0010)\u001a\u00020\u00112\u0008\u0008\u0002\u0010*\u001a\u00020\u000fJ\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u0005J\u0006\u0010.\u001a\u00020/\u00a8\u00060"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/SettingsManager;",
        "",
        "<init>",
        "()V",
        "initRoutingRulesets",
        "",
        "context",
        "Landroid/content/Context;",
        "getPresetRoutingRulesets",
        "",
        "Lcom/v2ray/ang/dto/RulesetItem;",
        "index",
        "",
        "resetRoutingRulesetsFromPresets",
        "resetRoutingRulesets",
        "",
        "content",
        "",
        "resetRoutingRulesetsCommon",
        "rulesetList",
        "getRoutingRuleset",
        "saveRoutingRuleset",
        "ruleset",
        "removeRoutingRuleset",
        "routingRulesetsBypassLan",
        "swapRoutingRuleset",
        "fromPosition",
        "toPosition",
        "swapSubscriptions",
        "getServerViaRemarks",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "remarks",
        "getSocksPort",
        "getHttpPort",
        "initAssets",
        "assets",
        "Landroid/content/res/AssetManager;",
        "getDomesticDnsServers",
        "",
        "getRemoteDnsServers",
        "getVpnDnsServers",
        "getDelayTestUrl",
        "second",
        "getLocale",
        "Ljava/util/Locale;",
        "setNightMode",
        "getCurrentVpnInterfaceAddressConfig",
        "Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;",
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
        "SMAP\nSettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsManager.kt\ncom/v2ray/ang/handler/SettingsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,374:1\n1869#2,2:375\n774#2:377\n865#2,2:378\n1761#2,3:380\n774#2:383\n865#2,2:384\n1761#2,3:386\n774#2:392\n865#2,2:393\n1869#2,2:395\n774#2:397\n865#2,2:398\n774#2:400\n865#2,2:401\n774#2:403\n865#2,2:404\n3829#3:389\n4344#3,2:390\n*S KotlinDebug\n*F\n+ 1 SettingsManager.kt\ncom/v2ray/ang/handler/SettingsManager\n*L\n99#1:375,2\n175#1:377\n175#1:378,2\n175#1:380,3\n182#1:383\n182#1:384,2\n182#1:386,3\n261#1:392\n261#1:393,2\n262#1:395,2\n283#1:397\n283#1:398,2\n297#1:400\n297#1:401,2\n310#1:403\n310#1:404,2\n260#1:389\n260#1:390,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/handler/SettingsManager;

    invoke-direct {v0}, Lcom/v2ray/ang/handler/SettingsManager;-><init>()V

    sput-object v0, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getDelayTestUrl$default(Lcom/v2ray/ang/handler/SettingsManager;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/handler/SettingsManager;->getDelayTestUrl(Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final getPresetRoutingRulesets(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/RulesetItem;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/dto/RoutingType;->Companion:Lcom/v2ray/ang/dto/RoutingType$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/v2ray/ang/dto/RoutingType$Companion;->fromIndex(I)Lcom/v2ray/ang/dto/RoutingType;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/RoutingType;->getFileName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/v2ray/ang/util/Utils;->readTextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_0
    sget-object p2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 26
    .line 27
    const-class v0, [Lcom/v2ray/ang/dto/RulesetItem;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public static synthetic getPresetRoutingRulesets$default(Lcom/v2ray/ang/handler/SettingsManager;Landroid/content/Context;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/v2ray/ang/handler/SettingsManager;->getPresetRoutingRulesets(Landroid/content/Context;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final resetRoutingRulesetsCommon(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/RulesetItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/v2ray/ang/dto/RulesetItem;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/RulesetItem;->getLocked()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeRoutingRulesets(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final getCurrentVpnInterfaceAddressConfig()Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    sget-object v1, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;->Companion:Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_1
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig$Companion;->getConfigByIndex(I)Lcom/v2ray/ang/dto/VpnInterfaceAddressConfig;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x3febb0c84a854928L    # -5.077360950102694
        0x4f494e02ac8569acL    # 8.941916984599922E73
        -0x3e03ceea796ef470L    # -7.567661161065323E9
        0xac3fa75ec8d6ebcL
        -0x31c24b05cb6e18c9L    # -8.008975943591688E68
        -0x2129af41526f12ecL    # -7.133501163929357E148
    .end array-data

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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        0x5255c69f1dd0edbbL    # 4.331857547442499E88
        -0x1be66f85430e174bL    # -1.5807116491265786E174
    .end array-data
.end method

.method public final getDelayTestUrl(Z)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v0, v0, [J

    .line 43
    .line 44
    fill-array-data v0, :array_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    :goto_0
    return-object p1

    .line 55
    :array_0
    .array-data 8
        -0x263d17979bc1bf51L    # -2.4998284797471586E124
        -0x65f901d7d686d441L
        -0x475ee0e6852c5674L    # -6.440385921402585E-36
        0x1d8a53cefee0ab0aL
        -0x5fb6c0dc8de656c5L
        -0x2aba282cfa169d78L    # -6.115360886310291E102
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x3932c4f18ba39204L    # -1.1857376271125184E33
        -0x5f75299bb7b04be6L
        -0xc15223ccf0937abL    # -2.404438213311363E250
        0x4c3d23730842e7f1L    # 1.8290516573173723E59
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_2
    .array-data 8
        0x581036b457152a6eL    # 1.5971297129598923E116
        -0x481f1ce6ff7f012eL    # -1.550835230106506E-39
        0x718e225c4cccb2e3L    # 9.811299794571151E238
        -0x3f78bf83923bfddcL    # -744.0607562363771
        -0x36e077603e66166cL    # -1.7580618356941782E44
        -0x53f6e0cb3e1b333dL    # -1.470157492854834E-96
    .end array-data
.end method

.method public final getDomesticDnsServers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v0, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    move-object v2, v1

    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    new-array v3, v3, [J

    .line 42
    .line 43
    fill-array-data v3, :array_2

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    filled-new-array {v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v6, 0x6

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Iterable;

    .line 66
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v4, v3

    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_2

    .line 96
    .line 97
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/util/Utils;->isCoreDNSAddress(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v0, v0, [J

    .line 116
    .line 117
    fill-array-data v0, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    return-object v0

    .line 132
    :cond_4
    return-object v2

    .line 133
    :array_0
    .array-data 8
        -0x161781a76add6623L    # -1.499887377781542E202
        0x7e3247bcf8d72cadL    # 7.65133625897458E299
        -0x5ae5536c5d7f6c88L    # -6.012735619131144E-130
        0x13f7f4d484b51bcdL
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        0x57926399084762c9L    # 7.075836067167763E113
        -0x5d372ea8a7c0acf9L    # -4.070373438408265E-141
        0x21e7af8868fb63a4L
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        -0x14a9a240f43584dfL    # -1.1489182867914063E209
        -0x2d75a32cff36107bL    # -4.19543388551929E89
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_3
    .array-data 8
        -0x6e7c31269cec5d45L
        0x6dd668e50f25f0e3L    # 1.2657086631749003E221
        0x470cc8d921b41b3eL    # 1.8682249612713965E34
    .end array-data
.end method

.method public final getHttpPort()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/SettingsManager;->getSocksPort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/v2ray/ang/util/Utils;->isXray()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/v2ray/ang/dto/Language;->AUTO:Lcom/v2ray/ang/dto/Language;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/Language;->getCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    sget-object v2, Lcom/v2ray/ang/dto/Language;->Companion:Lcom/v2ray/ang/dto/Language$Companion;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/Language$Companion;->fromCode(Ljava/lang/String;)Lcom/v2ray/ang/dto/Language;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lcom/v2ray/ang/handler/SettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    aget v1, v2, v1

    .line 42
    .line 43
    packed-switch v1, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 47
    .line 48
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :pswitch_0
    new-instance v1, Ljava/util/Locale;

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v3, v0, [J

    .line 57
    .line 58
    fill-array-data v3, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v0, v0, [J

    .line 71
    .line 72
    fill-array-data v0, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_1
    new-instance v1, Ljava/util/Locale;

    .line 88
    .line 89
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_2
    new-instance v1, Ljava/util/Locale;

    .line 109
    .line 110
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v0, v0, [J

    .line 113
    .line 114
    fill-array-data v0, :array_4

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :pswitch_3
    new-instance v1, Ljava/util/Locale;

    .line 130
    .line 131
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v0, v0, [J

    .line 134
    .line 135
    fill-array-data v0, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_4
    new-instance v1, Ljava/util/Locale;

    .line 150
    .line 151
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v0, v0, [J

    .line 154
    .line 155
    fill-array-data v0, :array_6

    .line 156
    .line 157
    .line 158
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :pswitch_5
    new-instance v1, Ljava/util/Locale;

    .line 170
    .line 171
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v0, v0, [J

    .line 174
    .line 175
    fill-array-data v0, :array_7

    .line 176
    .line 177
    .line 178
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_6
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 190
    .line 191
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    const/4 v2, 0x4

    .line 194
    new-array v2, v2, [J

    .line 195
    .line 196
    fill-array-data v2, :array_8

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_7
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 211
    .line 212
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v0, v0, [J

    .line 215
    .line 216
    fill-array-data v0, :array_9

    .line 217
    .line 218
    .line 219
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :pswitch_8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 231
    .line 232
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v0, v0, [J

    .line 235
    .line 236
    fill-array-data v0, :array_a

    .line 237
    .line 238
    .line 239
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_0

    .line 250
    :pswitch_9
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/v2ray/ang/util/Utils;->getSysLocale()Ljava/util/Locale;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_0
    .array-data 8
        -0x67b8bf2e0d78b4c5L
        -0x611c957b259ef4d3L    # -6.905165313498962E-160
        -0x4f148f1a494cab9fL    # -4.853455786355796E-73
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    :array_1
    .array-data 8
        0x2761a79938f9492dL    # 5.469550221439527E-119
        -0x55437e50f0640d77L    # -7.954750638444049E-103
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_2
    .array-data 8
        0x794d259bac3d4bf9L    # 2.0182664965519089E276
        0x7155a1a8e9e7563cL    # 8.803652667533948E237
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_3
    .array-data 8
        0x10273697b18c2405L    # 7.476000529372064E-231
        0x2e3bc2bc2ca47f17L    # 5.5820202598322914E-86
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_4
    .array-data 8
        -0x17ec8d43fc5c79c0L    # -2.2182793154465893E193
        -0x6e92c54ffcdaa5c1L    # -9.870766836346411E-225
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_5
    .array-data 8
        -0x716a50b18a407ba6L
        -0x35bde68dd0d1054fL    # -5.290460127288627E49
    .end array-data

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_6
    .array-data 8
        -0x630b458f93bb3588L
        -0x77b3fd6ed4cf324eL
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    :array_7
    .array-data 8
        -0x79acd4c2bd879faL    # -8.959053842465442E271
        0x5865fddc2bc63e0aL    # 6.932118134278652E117
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_8
    .array-data 8
        -0x26e288c8d212443fL    # -1.9021940840173434E121
        -0x3f689ffbea3af04eL    # -1496.003989295085
        -0x53a663085bc098a0L    # -4.796499843882183E-95
        -0x68bb13731dd7f75aL
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_9
    .array-data 8
        0x32886bb1b7fe5f44L
        -0x562730a053061cccL    # -4.225608481978381E-107
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_a
    .array-data 8
        -0x44b7661b592e0efeL    # -4.0699180707382395E-23
        0x5e9da22ab6f75383L    # 5.920526344998875E147
    .end array-data
.end method

.method public final getRemoteDnsServers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v0, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    move-object v2, v1

    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v0, [J

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    filled-new-array {v1}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v6, 0x6

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    move-object v4, v3

    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v5, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 89
    .line 90
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_2

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/util/Utils;->isCoreDNSAddress(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v0, v0, [J

    .line 115
    .line 116
    fill-array-data v0, :array_3

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0

    .line 131
    :cond_4
    return-object v2

    .line 132
    nop

    .line 133
    :array_0
    .array-data 8
        0x4eff5c79e572a979L    # 3.463156624329086E72
        -0x5ac756426a9a633dL
        0x44e7e4ea9f89787fL    # 9.026975450998753E23
    .end array-data

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
    .line 148
    .line 149
    :array_1
    .array-data 8
        -0x61e413b1f451c549L
        -0x5c80551466851336L
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        -0x52e734b8ac069823L    # -1.9018178723680993E-91
        -0x6b2e6d143ab054c4L
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_3
    .array-data 8
        -0x5b93ebe7990567e1L
        -0xd67d58886f758d7L    # -1.03128622953282E244
    .end array-data
.end method

.method public final getRoutingRuleset(I)Lcom/v2ray/ang/dto/RulesetItem;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v2, v1

    .line 12
    check-cast v2, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/v2ray/ang/dto/RulesetItem;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getServerViaRemarks(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getSocksPort()I
    .locals 4

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    new-array v3, v3, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/v2ray/ang/util/Utils;->parseInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x66709c32c9edd7cL
        0x317ca4ead892a14L
        -0x202aa7f6be7391daL    # -4.471481158925205E153
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        0x3e05f0e4bf4ce840L    # 6.38566864837769E-10
        0x206575665526e470L
    .end array-data
.end method

.method public final getVpnDnsServers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v2, v2, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v2, v0, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    move-object v2, v1

    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v0, v0, [J

    .line 41
    .line 42
    fill-array-data v0, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v6, 0x6

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Iterable;

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    move-object v3, v2

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    return-object v1

    .line 101
    :array_0
    .array-data 8
        -0x1fdf33cfbb87d093L    # -1.1260957435683258E155
        -0x1a4404e16fca682L    # -4.645794857384137E300
        -0x4ee29c9c53b7e19eL
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        0x11d7bf9a2d66c8f6L
        -0x7373e957b09b8204L
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_2
    .array-data 8
        0x1af0ed38aa3d1aaL
        0x634a0f4b1c411755L    # 1.9669695793821348E170
    .end array-data
.end method

.method public final initAssets(Landroid/content/Context;Landroid/content/res/AssetManager;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v5, v4, [J

    .line 25
    .line 26
    fill-array-data v5, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/util/Utils;->userAssetPath(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v5, v2, [J

    .line 48
    .line 49
    fill-array-data v5, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v6, v2, [J

    .line 62
    .line 63
    fill-array-data v6, :array_3

    .line 64
    .line 65
    .line 66
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v1, [J

    .line 80
    .line 81
    const-wide v7, 0x2c5e81b98e509f2dL    # 5.7129068848406484E-95

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    aput-wide v7, v6, v0

    .line 87
    .line 88
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {p2, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    new-instance v6, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    array-length v7, v5

    .line 107
    const/4 v8, 0x0

    .line 108
    :goto_0
    if-ge v8, v7, :cond_1

    .line 109
    .line 110
    aget-object v9, v5, v8

    .line 111
    .line 112
    invoke-static {v3, v9}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_0

    .line 117
    .line 118
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_0
    add-int/2addr v8, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_3

    .line 137
    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    move-object v6, v5

    .line 143
    check-cast v6, Ljava/lang/String;

    .line 144
    .line 145
    new-instance v7, Ljava/io/File;

    .line 146
    .line 147
    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-nez v6, :cond_2

    .line 155
    .line 156
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_4

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    new-instance v5, Ljava/io/File;

    .line 177
    .line 178
    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 182
    .line 183
    .line 184
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 186
    .line 187
    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .line 189
    .line 190
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    const/4 v7, 0x0

    .line 194
    invoke-static {v3, v6, v0, v4, v7}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    :try_start_3
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    .line 199
    .line 200
    :try_start_4
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v6, v2, [J

    .line 206
    .line 207
    fill-array-data v6, :array_4

    .line 208
    .line 209
    .line 210
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catchall_0
    move-exception p1

    .line 221
    goto :goto_3

    .line 222
    :catchall_1
    move-exception p1

    .line 223
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 224
    :catchall_2
    move-exception p2

    .line 225
    :try_start_6
    invoke-static {v6, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 229
    :goto_3
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 230
    :catchall_3
    move-exception p2

    .line 231
    :try_start_8
    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 235
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 236
    .line 237
    new-array p2, v2, [J

    .line 238
    .line 239
    fill-array-data p2, :array_5

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 249
    .line 250
    const/4 p2, 0x4

    .line 251
    new-array p2, p2, [J

    .line 252
    .line 253
    fill-array-data p2, :array_6

    .line 254
    .line 255
    .line 256
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    :cond_4
    return-void

    .line 263
    :array_0
    .array-data 8
        -0x62ec0d52a6076bfdL    # -1.3214199949368261E-168
        0x392cbb8fb8e9662aL    # 2.7668546850517395E-33
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_1
    .array-data 8
        0x746d8063508ab28dL    # 6.759128524681417E252
        0x7beb6327249d3c16L    # 8.340562331079099E288
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_2
    .array-data 8
        0x2b70b2253a7c7105L    # 1.908318096785044E-99
        0x5c9f891fed368501L    # 1.4669649169295057E138
        -0x21e9ab7afe6739f6L    # -1.7427281870696813E145
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_3
    .array-data 8
        0x33e4e7929241488aL    # 1.0407161782181086E-58
        0x23f86e7b0926b7b8L
        -0x2981af6b6129063L
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_4
    .array-data 8
        -0x75b77670a8b499c1L    # -3.989709583585909E-259
        -0x616f1caaf92fcb39L
        0x7df71f4b635899eeL    # 6.048750866674351E298
    .end array-data

    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :array_5
    .array-data 8
        -0x65e52411be36339cL
        0x3955d68425d70a13L    # 1.682334774807782E-32
        -0x1130487a08cb2ebL
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_6
    .array-data 8
        0x7efc27baa0464e05L    # 4.8269647940261215E303
        0x6ad891a329550aa0L    # 4.9299519105929425E206
        -0x4a5571687bd9fdf8L    # -3.5490305473041824E-50
        0x56bbecccec75568dL    # 6.5583056055623495E109
    .end array-data
.end method

.method public final initRoutingRulesets(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Collection;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, p1, v3, v1, v2}, Lcom/v2ray/ang/handler/SettingsManager;->getPresetRoutingRulesets$default(Lcom/v2ray/ang/handler/SettingsManager;Landroid/content/Context;IILjava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeRoutingRulesets(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    :array_0
    .array-data 8
        0x1f6a766b1a2df9d8L
        0x6c7401f7d3db95e3L    # 2.6942248165481476E214
    .end array-data
.end method

.method public final removeRoutingRuleset(I)V
    .locals 3

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeRoutingRulesets(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method public final resetRoutingRulesets(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 12
    .line 13
    const-class v2, [Lcom/v2ray/ang/dto/RulesetItem;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v1, p1

    .line 26
    check-cast v1, Ljava/util/Collection;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/SettingsManager;->resetRoutingRulesetsCommon(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_2
    :goto_0
    return v0

    .line 43
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v1, 0x5

    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    return v0

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        0x69c56539f7f549caL    # 3.275426415354532E201
        -0x6e55ce2a9b192bb0L
        -0x297fa6e3874402d8L    # -4.799273392274821E108
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 8
        0x6468842d39e81df0L    # 4.85090404446898E175
        0x4df3958f7f1f24abL    # 3.299934682493889E67
        -0x362ba215501701e5L    # -4.650969154158507E47
        -0x467832d06db970a5L    # -1.466881129813303E-31
        -0x1d6ebdfd74308fbcL    # -6.36039868472017E166
    .end array-data
.end method

.method public final resetRoutingRulesetsFromPresets(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1, p2}, Lcom/v2ray/ang/handler/SettingsManager;->getPresetRoutingRulesets(Landroid/content/Context;I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/SettingsManager;->resetRoutingRulesetsCommon(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x76e5bcae6113e979L    # -8.1449339305574E-265
        -0x1d309b1516dc2d26L    # -9.256294283756628E167
    .end array-data
.end method

.method public final routingRulesetsBypassLan()Z
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v1, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v4, v1, [J

    .line 41
    .line 42
    fill-array-data v4, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    return v4

    .line 60
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v5, v1, [J

    .line 63
    .line 64
    fill-array-data v5, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x0

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    return v3

    .line 82
    :cond_2
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-nez v2, :cond_3

    .line 87
    .line 88
    return v3

    .line 89
    :cond_3
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-nez v6, :cond_4

    .line 96
    .line 97
    return v3

    .line 98
    :cond_4
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    sget-object v7, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 103
    .line 104
    if-ne v6, v7, :cond_c

    .line 105
    .line 106
    invoke-virtual {v5, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerRaw(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    return v3

    .line 113
    :cond_5
    sget-object v5, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 114
    .line 115
    const-class v6, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 116
    .line 117
    invoke-virtual {v5, v2, v6}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_7

    .line 145
    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    move-object v7, v6

    .line 151
    check-cast v7, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 152
    .line 153
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->getOutboundTag()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v9, v1, [J

    .line 160
    .line 161
    fill-array-data v9, :array_4

    .line 162
    .line 163
    .line 164
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_6

    .line 176
    .line 177
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_7
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_b

    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 203
    .line 204
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->getDomain()Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    if-eqz v5, :cond_a

    .line 209
    .line 210
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v7, v0, [J

    .line 213
    .line 214
    fill-array-data v7, :array_5

    .line 215
    .line 216
    .line 217
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-ne v5, v4, :cond_a

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->getIp()Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-eqz v2, :cond_9

    .line 236
    .line 237
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v6, v0, [J

    .line 240
    .line 241
    fill-array-data v6, :array_6

    .line 242
    .line 243
    .line 244
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-ne v2, v4, :cond_9

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_b
    :goto_1
    const/4 v4, 0x0

    .line 259
    :goto_2
    return v4

    .line 260
    :cond_c
    invoke-virtual {v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-eqz v2, :cond_13

    .line 265
    .line 266
    check-cast v2, Ljava/lang/Iterable;

    .line 267
    .line 268
    new-instance v5, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_e

    .line 282
    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    move-object v7, v6

    .line 288
    check-cast v7, Lcom/v2ray/ang/dto/RulesetItem;

    .line 289
    .line 290
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/RulesetItem;->getEnabled()Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eqz v8, :cond_d

    .line 295
    .line 296
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/RulesetItem;->getOutboundTag()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 301
    .line 302
    new-array v9, v1, [J

    .line 303
    .line 304
    fill-array-data v9, :array_7

    .line 305
    .line 306
    .line 307
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_d

    .line 319
    .line 320
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_e
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_10

    .line 329
    .line 330
    :cond_f
    const/4 v4, 0x0

    .line 331
    goto :goto_4

    .line 332
    :cond_10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_f

    .line 341
    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    check-cast v2, Lcom/v2ray/ang/dto/RulesetItem;

    .line 347
    .line 348
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/RulesetItem;->getDomain()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    if-eqz v5, :cond_12

    .line 353
    .line 354
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 355
    .line 356
    new-array v7, v0, [J

    .line 357
    .line 358
    fill-array-data v7, :array_8

    .line 359
    .line 360
    .line 361
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-ne v5, v4, :cond_12

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_12
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/RulesetItem;->getIp()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    if-eqz v2, :cond_11

    .line 380
    .line 381
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 382
    .line 383
    new-array v6, v0, [J

    .line 384
    .line 385
    fill-array-data v6, :array_9

    .line 386
    .line 387
    .line 388
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-ne v2, v4, :cond_11

    .line 400
    .line 401
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    goto :goto_5

    .line 406
    :cond_13
    const/4 v0, 0x0

    .line 407
    :goto_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 408
    .line 409
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    return v0

    .line 414
    nop

    .line 415
    :array_0
    .array-data 8
        0x23038b8121e2bbccL    # 5.128924990756678E-140
        0x212c19f71c79636aL    # 6.867845664444582E-149
        0x5f4c5d0fc405c57cL    # 1.1605610739792153E151
        -0x3d8a5315991cb1ceL    # -1.4895256981008872E12
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1
    .array-data 8
        -0x7bda0464760b8797L
        0x1e785722086f54c3L    # 6.76284436731967E-162
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_2
    .array-data 8
        -0x10e0a97cf7a132d4L    # -1.855953751108478E227
        0x4254baa46e4b8563L    # 3.5612273694208417E11
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_3
    .array-data 8
        -0x53550105441acedfL    # -1.617748449155464E-93
        -0x1638c152327a6beeL
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_4
    .array-data 8
        0x47a9894fb2849ddaL    # 1.6971830509128318E37
        0x4843b2341f7c5919L    # 1.3404476385581508E40
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    :array_5
    .array-data 8
        0x3794e657f54097b2L    # 5.997942600541289E-41
        -0x2ed669d8e3d42364L    # -9.708235193343441E82
        0x1902267fc140e1beL
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_6
    .array-data 8
        0x71f5304897967af7L    # 8.830371358990932E240
        0x52b461aec346e631L    # 2.594874830606073E90
        0x4566f782f1ba2317L    # 2.2212166438234654E26
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    :array_7
    .array-data 8
        -0xedaf40ae5d79f3fL    # -1.0707073780760454E237
        -0x26622ca62519f011L    # -4.929096044887474E123
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_8
    .array-data 8
        -0x48156d521fc3e154L    # -2.4403414835663492E-39
        -0x53aea5f5c68be764L
        -0x31867a95ddfd29b0L    # -1.1008781791922492E70
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_9
    .array-data 8
        0x3c93cca8450d5f2eL    # 6.869311575257009E-17
        0x4376352196bb8f78L    # 1.00013885867227008E17
        -0x1adfefc19b9d0794L    # -1.3018660992566793E179
    .end array-data
.end method

.method public final saveRoutingRuleset(ILcom/v2ray/ang/dto/RulesetItem;)V
    .locals 3
    .param p2    # Lcom/v2ray/ang/dto/RulesetItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_2
    if-ltz p1, :cond_4

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lt p1, v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 43
    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeRoutingRulesets(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setNightMode()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    packed-switch v1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v2, [J

    .line 48
    .line 49
    fill-array-data v3, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v2, [J

    .line 73
    .line 74
    fill-array-data v2, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v2, v2, [J

    .line 99
    .line 100
    fill-array-data v2, :array_4

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, -0x1

    .line 118
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_0
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_0
    .array-data 8
        0x78c8807bac57bc63L    # 6.627437035147571E273
        0xf6920cb8789e3baL
        -0x9922fe24280059bL
        -0x259b338711417ac9L    # -2.815819404813578E127
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        0xefed34d79cfe41cL
        -0x474e23bb5c7321ceL    # -1.3436688365463634E-35
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 8
        0x5abdf55800f13043L    # 1.29788556086912E129
        -0x5f5648770c097dc6L    # -2.455112352063277E-151
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        -0xbbfe70e7e1e7168L
        0x7b9cbcdcf0a5b696L    # 2.734944936056134E287
    .end array-data

    .line 178
    .line 179
    :array_4
    .array-data 8
        0x40700d550ecfe3a9L    # 256.8332660790134
        -0x5d7aa138cfc8b58cL
    .end array-data
.end method

.method public final swapRoutingRuleset(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/Collection;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeRoutingRulesets(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final swapSubscriptions(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubsList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/Collection;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSubsList(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method
