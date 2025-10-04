.class public final Lcom/v2ray/ang/handler/MmkvManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\'\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u0014\u0010+\u001a\u00020)2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00050-J\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00050-J\u0010\u0010/\u001a\u0004\u0018\u0001002\u0006\u0010*\u001a\u00020\u0005J\u0016\u00101\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u00052\u0006\u00102\u001a\u000200J\u000e\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u000e\u00104\u001a\u00020)2\u0006\u00105\u001a\u00020\u0005J\u0010\u00106\u001a\u0004\u0018\u0001072\u0006\u0010*\u001a\u00020\u0005J\u0016\u00108\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u00109\u001a\u00020:J\u0016\u0010;\u001a\u00020)2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010=J\u0006\u0010>\u001a\u00020?J\u000e\u0010@\u001a\u00020?2\u0006\u0010*\u001a\u00020\u0005J\u0016\u0010A\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u0005J\u0010\u0010B\u001a\u0004\u0018\u00010\u00052\u0006\u0010*\u001a\u00020\u0005J\u0008\u0010C\u001a\u00020)H\u0002J\u0018\u0010D\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020F0E0=J\u000e\u0010G\u001a\u00020)2\u0006\u00105\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00052\u0006\u0010I\u001a\u00020FJ\u0010\u0010J\u001a\u0004\u0018\u00010F2\u0006\u0010K\u001a\u00020\u0005J\u0014\u0010L\u001a\u00020)2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00050-J\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u00050-J\u0018\u0010O\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020P0E0=J\u000e\u0010Q\u001a\u00020)2\u0006\u0010R\u001a\u00020\u0005J\u0016\u0010S\u001a\u00020)2\u0006\u0010R\u001a\u00020\u00052\u0006\u0010T\u001a\u00020PJ\u0010\u0010U\u001a\u0004\u0018\u00010P2\u0006\u0010R\u001a\u00020\u0005J\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010-J\u0016\u0010X\u001a\u00020)2\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020W\u0018\u00010-J\u0018\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0008\u0010]\u001a\u0004\u0018\u00010\u0005J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010]\u001a\u00020?J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010]\u001a\u00020[J\u001c\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00050^J\u0012\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\\\u001a\u00020\u0005H\u0007J\u001c\u0010_\u001a\u0004\u0018\u00010\u00052\u0006\u0010\\\u001a\u00020\u00052\u0008\u0010`\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010a\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u0005J\u0016\u0010a\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u00052\u0006\u0010`\u001a\u00020[J\u0018\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010^2\u0006\u0010\\\u001a\u00020\u0005H\u0007J\u000e\u0010c\u001a\u00020)2\u0006\u0010d\u001a\u00020[J\u0006\u0010e\u001a\u00020[R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u0012R\u001b\u0010\u001b\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u0012R\u001b\u0010\u001e\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0012R\u001b\u0010!\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0014\u001a\u0004\u0008\"\u0010\u0012R\u001b\u0010$\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008%\u0010\u0012\u00a8\u0006f"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/MmkvManager;",
        "",
        "<init>",
        "()V",
        "ID_MAIN",
        "",
        "ID_PROFILE_FULL_CONFIG",
        "ID_SERVER_RAW",
        "ID_SERVER_AFF",
        "ID_SUB",
        "ID_ASSET",
        "ID_SETTING",
        "KEY_SELECTED_SERVER",
        "KEY_ANG_CONFIGS",
        "KEY_SUB_IDS",
        "mainStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getMainStorage",
        "()Lcom/tencent/mmkv/MMKV;",
        "mainStorage$delegate",
        "Lkotlin/Lazy;",
        "profileFullStorage",
        "getProfileFullStorage",
        "profileFullStorage$delegate",
        "serverRawStorage",
        "getServerRawStorage",
        "serverRawStorage$delegate",
        "serverAffStorage",
        "getServerAffStorage",
        "serverAffStorage$delegate",
        "subStorage",
        "getSubStorage",
        "subStorage$delegate",
        "assetStorage",
        "getAssetStorage",
        "assetStorage$delegate",
        "settingsStorage",
        "getSettingsStorage",
        "settingsStorage$delegate",
        "getSelectServer",
        "setSelectServer",
        "",
        "guid",
        "encodeServerList",
        "serverList",
        "",
        "decodeServerList",
        "decodeServerConfig",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "encodeServerConfig",
        "config",
        "removeServer",
        "removeServerViaSubid",
        "subid",
        "decodeServerAffiliationInfo",
        "Lcom/v2ray/ang/dto/ServerAffiliationInfo;",
        "encodeServerTestDelayMillis",
        "testResult",
        "",
        "clearAllTestDelayResults",
        "keys",
        "",
        "removeAllServer",
        "",
        "removeInvalidServer",
        "encodeServerRaw",
        "decodeServerRaw",
        "initSubsList",
        "decodeSubscriptions",
        "Lkotlin/Pair;",
        "Lcom/v2ray/ang/dto/SubscriptionItem;",
        "removeSubscription",
        "encodeSubscription",
        "subItem",
        "decodeSubscription",
        "subscriptionId",
        "encodeSubsList",
        "subsList",
        "decodeSubsList",
        "decodeAssetUrls",
        "Lcom/v2ray/ang/dto/AssetUrlItem;",
        "removeAssetUrl",
        "assetid",
        "encodeAsset",
        "assetItem",
        "decodeAsset",
        "decodeRoutingRulesets",
        "Lcom/v2ray/ang/dto/RulesetItem;",
        "encodeRoutingRulesets",
        "rulesetList",
        "encodeSettings",
        "",
        "key",
        "value",
        "",
        "decodeSettingsString",
        "defaultValue",
        "decodeSettingsBool",
        "decodeSettingsStringSet",
        "encodeStartOnBoot",
        "startOnBoot",
        "decodeStartOnBoot",
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
        "SMAP\nMmkvManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/handler/MmkvManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,593:1\n1#2:594\n13472#3,2:595\n13472#3,2:599\n13472#3,2:601\n13472#3,2:605\n1869#4,2:597\n1869#4,2:603\n1056#4:607\n*S KotlinDebug\n*F\n+ 1 MmkvManager.kt\ncom/v2ray/ang/handler/MmkvManager\n*L\n171#1:595,2\n256#1:599,2\n300#1:601,2\n400#1:605,2\n218#1:597,2\n315#1:603,2\n406#1:607\n*E\n"
    }
.end annotation


# static fields
.field private static final ID_ASSET:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_MAIN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ID_PROFILE_FULL_CONFIG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ID_SERVER_AFF:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_SERVER_RAW:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ID_SETTING:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ID_SUB:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_ANG_CONFIGS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SELECTED_SERVER:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_SUB_IDS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final assetStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mainStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final profileFullStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverAffStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverRawStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final settingsStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final subStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

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
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_MAIN:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_PROFILE_FULL_CONFIG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    new-array v3, v2, [J

    .line 39
    .line 40
    fill-array-data v3, :array_2

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_SERVER_RAW:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v3, v2, [J

    .line 55
    .line 56
    fill-array-data v3, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_SERVER_AFF:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v1, [J

    .line 71
    .line 72
    fill-array-data v3, :array_4

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_SUB:Ljava/lang/String;

    .line 83
    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v3, v1, [J

    .line 87
    .line 88
    fill-array-data v3, :array_5

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_ASSET:Ljava/lang/String;

    .line 99
    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v3, v1, [J

    .line 103
    .line 104
    fill-array-data v3, :array_6

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->ID_SETTING:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v3, v2, [J

    .line 119
    .line 120
    fill-array-data v3, :array_7

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->KEY_SELECTED_SERVER:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v2, v2, [J

    .line 135
    .line 136
    fill-array-data v2, :array_8

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->KEY_ANG_CONFIGS:Ljava/lang/String;

    .line 147
    .line 148
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v1, v1, [J

    .line 151
    .line 152
    fill-array-data v1, :array_9

    .line 153
    .line 154
    .line 155
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->KEY_SUB_IDS:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v0, Lcom/v2ray/ang/handler/MmkvManager;

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/v2ray/ang/handler/MmkvManager;-><init>()V

    .line 167
    .line 168
    .line 169
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 170
    .line 171
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 172
    .line 173
    const/16 v1, 0xc

    .line 174
    .line 175
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->mainStorage$delegate:Lkotlin/Lazy;

    .line 183
    .line 184
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 185
    .line 186
    const/16 v1, 0xe

    .line 187
    .line 188
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->profileFullStorage$delegate:Lkotlin/Lazy;

    .line 196
    .line 197
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 198
    .line 199
    const/16 v1, 0x10

    .line 200
    .line 201
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->serverRawStorage$delegate:Lkotlin/Lazy;

    .line 209
    .line 210
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 211
    .line 212
    const/16 v1, 0x12

    .line 213
    .line 214
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->serverAffStorage$delegate:Lkotlin/Lazy;

    .line 222
    .line 223
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 224
    .line 225
    const/16 v1, 0x13

    .line 226
    .line 227
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->subStorage$delegate:Lkotlin/Lazy;

    .line 235
    .line 236
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 237
    .line 238
    const/16 v1, 0x14

    .line 239
    .line 240
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->assetStorage$delegate:Lkotlin/Lazy;

    .line 248
    .line 249
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 250
    .line 251
    const/16 v1, 0x15

    .line 252
    .line 253
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    sput-object v0, Lcom/v2ray/ang/handler/MmkvManager;->settingsStorage$delegate:Lkotlin/Lazy;

    .line 261
    .line 262
    return-void

    .line 263
    :array_0
    .array-data 8
        -0x35d8d08472c8c430L    # -1.694280775906313E49
        0x5cc8e11751adba8L
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
        -0x159b32af7ac21cdfL    # -3.2610118112802955E204
        0x40dfe098673b81ceL    # 32642.38130080868
        -0x3f3124bd90aef015L    # -15798.519022114537
        0x70f2e5f8399b990L
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
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_2
    .array-data 8
        0x711c8081ea24d588L    # 7.249894317925269E236
        -0x651f69439a173c9fL    # -3.198216649868999E-179
        0x72a505884555c9efL    # 1.7942067550276118E244
    .end array-data

    .line 296
    .line 297
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
    .line 310
    .line 311
    :array_3
    .array-data 8
        -0x6e608de84e292492L
        0x1c30d51aaa1733c0L    # 6.805648645072781E-173
        -0x240cd7b0a027ed74L    # -8.702740392599156E134
    .end array-data

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
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_4
    .array-data 8
        -0x161b851636b11a21L    # -1.2541220757677414E202
        -0x31349c9b18208e2bL    # -3.780536253990198E71
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :array_5
    .array-data 8
        0xf669130af96a845L    # 1.774394102808021E-234
        0xb03f07f6a3f0624L
    .end array-data

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
        0x6ca1f070643a1118L    # 1.932548273112245E215
        -0x59b2f4037dba1150L
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :array_7
    .array-data 8
        0x7e07eae656d43a31L    # 1.2513618080818832E299
        -0x1b29a8bcb01b4438L    # -5.658190394172903E177
        -0x5af60e79e3309182L
    .end array-data

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
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
    :array_8
    .array-data 8
        -0x4c4cf0fa68bfc8b9L    # -1.1860245096124204E-59
        -0x3a64518481e73246L    # -2.1417578837359244E27
        0x4e60e9467c43b45cL    # 3.647407253185943E69
    .end array-data

    .line 380
    .line 381
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
    :array_9
    .array-data 8
        -0x561fe6fba00a2388L    # -5.483476645615244E-107
        0x5fa27014f945af8L
    .end array-data
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

.method private static final assetStorage_delegate$lambda$5()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x20e577b030ccd8a8L    # 3.279097238473162E-150
        0x22690feea855dcfaL
    .end array-data
.end method

.method public static final decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    invoke-direct {v0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x65113cb11130e506L    # 6.98491393256255E178
        -0x3962e39cce566b3aL    # -1.4760974152761491E32
    .end array-data
.end method

.method public static final decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    invoke-direct {v0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        -0x31db90a27fc66b67L    # -2.754635308743442E68
        -0x6cf248e6a114e124L
    .end array-data
.end method

.method public static final decodeSettingsStringSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

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
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/tencent/mmkv/MMKV;->decodeStringSet(Ljava/lang/String;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x3b7caedc21d95d6dL    # -1.1402716748776198E22
        0x2d25ee437282207dL    # 3.3643730582812784E-91
    .end array-data
.end method

.method private final getAssetStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->assetStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMainStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->mainStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getProfileFullStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->profileFullStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final getSelectServer()Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :array_0
    .array-data 8
        -0x27212c86a9dbf8f8L    # -1.2437596251614626E120
        -0x1933bc98a3afabedL    # -1.5371991304960986E187
        0x8f5708ea6069643L
    .end array-data
.end method

.method private final getServerAffStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->serverAffStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getServerRawStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->serverRawStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSettingsStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->settingsStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSubStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->subStorage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 8
    .line 9
    return-object v0
.end method

.method private final initSubsList()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubsList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_1

    .line 28
    .line 29
    aget-object v4, v1, v3

    .line 30
    .line 31
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSubsList(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final mainStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x105755e29b3d5349L    # 6.012294247661909E-230
        0x1e4f5837991ee489L
    .end array-data
.end method

.method private static final profileFullStorage_delegate$lambda$1()Lcom/tencent/mmkv/MMKV;
    .locals 2

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
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x306fc30736778a5fL    # -1.8361833669082777E75
        0x59e336e2a454a4e4L    # 1.0161432814287081E125
        -0x7a1efd2bdc4525e3L
        0x218125e8e7d58e97L
    .end array-data
.end method

.method private static final serverAffStorage_delegate$lambda$3()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x6e27788f86f57f40L
        -0x4663876ffae42c3dL    # -3.509315230104773E-31
        -0x3715d36d2a85935fL    # -1.824069627279971E43
    .end array-data
.end method

.method private static final serverRawStorage_delegate$lambda$2()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x2ed078a616216078L    # 3.391475375752055E-83
        0x2814a5169c6d46c5L    # 1.309887380113655E-115
        0x50af6618338a8b89L    # 4.6537387993165837E80
    .end array-data
.end method

.method private static final settingsStorage_delegate$lambda$6()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        -0x765f1a096a6b53fcL    # -2.683222226163323E-262
        -0x2a656a6b18214c61L    # -2.381682148013688E104
    .end array-data
.end method

.method private static final subStorage_delegate$lambda$4()Lcom/tencent/mmkv/MMKV;
    .locals 3

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
    invoke-static {v0, v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x6a2b0e8fed8b3178L    # 2.650970316550733E203
        -0x15154311f008ea8L
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->settingsStorage_delegate$lambda$6()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->subStorage_delegate$lambda$4()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->mainStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->serverRawStorage_delegate$lambda$2()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->serverAffStorage_delegate$lambda$3()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->profileFullStorage_delegate$lambda$1()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->assetStorage_delegate$lambda$5()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearAllTestDelayResults(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->setTestDelayMillis(J)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v3, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final decodeAsset(Ljava/lang/String;)Lcom/v2ray/ang/dto/AssetUrlItem;
    .locals 2
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getAssetStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_0
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 32
    .line 33
    const-class v1, Lcom/v2ray/ang/dto/AssetUrlItem;

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/v2ray/ang/dto/AssetUrlItem;

    .line 40
    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x13108ff206c0d5daL    # 7.506948403127027E-217
        -0x677189779ea6846bL    # -2.136612119759622E-190
    .end array-data
.end method

.method public final decodeAssetUrls()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/dto/AssetUrlItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getAssetStorage()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/v2ray/ang/handler/MmkvManager;->getAssetStorage()Lcom/tencent/mmkv/MMKV;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5, v4}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v6, Lkotlin/Pair;

    .line 42
    .line 43
    sget-object v7, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 44
    .line 45
    const-class v8, Lcom/v2ray/ang/dto/AssetUrlItem;

    .line 46
    .line 47
    invoke-virtual {v7, v5, v8}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v1, Lcom/v2ray/ang/handler/MmkvManager$decodeAssetUrls$$inlined$sortedBy$1;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/v2ray/ang/handler/MmkvManager$decodeAssetUrls$$inlined$sortedBy$1;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final decodeRoutingRulesets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/RulesetItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 34
    .line 35
    const-class v2, [Lcom/v2ray/ang/dto/RulesetItem;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x6d5b872080e56294L
        -0x22c996b1c2ebfb29L    # -1.0675445497232356E141
        0x630353cd2af0bdffL    # 9.117586282573309E168
        0x6bec90dce51cfb0cL    # 7.513018072420901E211
    .end array-data
.end method

.method public final decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;
    .locals 2
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
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 45
    .line 46
    const-class v1, Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    return-object v1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x7c87513daf458b71L
        -0x218d38d4b631deb5L    # -9.379233220759402E146
    .end array-data
.end method

.method public final decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;
    .locals 2
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
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 45
    .line 46
    const-class v1, Lcom/v2ray/ang/dto/ProfileItem;

    .line 47
    .line 48
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/v2ray/ang/dto/ProfileItem;

    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_2
    :goto_0
    return-object v1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0xc56ac6ae669c96L
        -0x497da0ff24ba5bacL    # -4.0224068397339784E-46
    .end array-data
.end method

.method public final decodeServerList()Ljava/util/List;
    .locals 3
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 34
    .line 35
    const-class v2, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x56a26dc07e9353e8L    # 2.1640315050449585E109
        -0x35a470ac31014a39L    # -1.6111519552727165E50
        0x6f3cddc55c01c131L    # 6.838293716191509E227
    .end array-data
.end method

.method public final decodeServerRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerRawStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x2c574d664cdc0341L    # -1.0303491566274017E95
        -0xe74572170efe175L    # -9.005611259387014E238
    .end array-data
.end method

.method public final decodeSettingsBool(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :array_0
    .array-data 8
        0x2ac58b290586ec3fL    # 1.202346537759988E-102
        -0x276aefc22f8a748L    # -5.174028466431837E296
    .end array-data
.end method

.method public final decodeSettingsBool(Ljava/lang/String;Z)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        -0x5ba5960b5b42ee0L    # -9.825197421881538E280
        -0xe03b823262a6f59L    # -1.1786012931700434E241
    .end array-data
.end method

.method public final decodeStartOnBoot()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x444975b46c7fc681L    # 9.393002502740625E20
        -0x3d68af69bb7457c1L    # -6.408721474282062E12
        -0x1cce5b5bde15d5cdL    # -6.658450764917203E169
    .end array-data
.end method

.method public final decodeSubsList()Ljava/util/List;
    .locals 3
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 34
    .line 35
    const-class v2, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0, v2}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x7835a7cc6d06455fL    # -3.895870255312487E-271
        -0x2e0cb131d8fd71bdL    # -6.001396289448697E86
    .end array-data
.end method

.method public final decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;
    .locals 2
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
    const/4 v1, 0x3

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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_0
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 32
    .line 33
    const-class v1, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 40
    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x4ddada0a796b8f33L    # -3.922166081410014E-67
        0x59d2ec49ed08faf6L    # 5.00366563752098E124
        0x4c3d536bc4ce3e58L    # 1.840814266021446E59
    .end array-data
.end method

.method public final decodeSubscriptions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/dto/SubscriptionItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->initSubsList()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubsList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/v2ray/ang/handler/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v2}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v4, Lkotlin/Pair;

    .line 51
    .line 52
    sget-object v5, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 53
    .line 54
    const-class v6, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 55
    .line 56
    invoke-virtual {v5, v3, v6}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object v0
.end method

.method public final encodeAsset(Ljava/lang/String;Lcom/v2ray/ang/dto/AssetUrlItem;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/AssetUrlItem;
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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    sget-object p1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/v2ray/ang/util/Utils;->getUuid()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getAssetStorage()Lcom/tencent/mmkv/MMKV;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 54
    .line 55
    invoke-virtual {v1, p2}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 8
        -0x7d5ac68d3cb7c097L    # -6.490674706168563E-296
        0x1f328ad295f2da4L
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
    :array_1
    .array-data 8
        -0x22f16a10e81df7b7L    # -1.8211517470331426E140
        -0x221e70f5047eb285L    # -1.7129386788564857E144
        -0x1ea234679b43fdc4L    # -1.0472379655841012E161
    .end array-data
.end method

.method public final encodeRoutingRulesets(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/RulesetItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v0, v0, [J

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v0, v0, [J

    .line 41
    .line 42
    fill-array-data v0, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [J

    .line 56
    .line 57
    const-wide v2, 0x5b0789d49c8289daL    # 3.263210477680558E130

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    aput-wide v2, v1, v4

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        0x58b0c6576f79b697L    # 1.6920567215489596E119
        -0x913b86b7cd3e8dbL    # -7.123929613388904E264
        -0x4fa97d04b8f95e39L    # -7.776575010540109E-76
        -0x39d344d98002ec5bL    # -1.1381543954130617E30
    .end array-data

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
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        0x64b61af2cf80675bL    # 1.399629999158123E177
        0x5794ab4e44ea108bL    # 7.953188381844565E113
        0x1215d150590e4640L
        0xd01eff5ac79edc7L
    .end array-data
.end method

.method public final encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object p1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/v2ray/ang/util/Utils;->getUuid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerList(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-eqz p2, :cond_1

    .line 83
    .line 84
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v1, 0x3

    .line 97
    new-array v1, v1, [J

    .line 98
    .line 99
    fill-array-data v1, :array_2

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    return-object p1

    .line 113
    :array_0
    .array-data 8
        -0x3c9508e27bd0b266L    # -6.0720444306255056E16
        -0x31bfd47c4d651160L    # -8.718835049958142E68
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 8
        -0x12ef2f9d4df2bc77L    # -2.318505252563531E217
        -0xccf25d8d33e022aL    # -7.364309669807278E246
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_2
    .array-data 8
        -0x4e065fef0500faa3L    # -5.9405855419370125E-68
        0x5cf61e9730c45c66L    # 6.585264190560046E139
        0x25692578545cc5faL    # 1.8138739992288764E-128
    .end array-data
.end method

.method public final encodeServerList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        0x4a083009013015e6L    # 4.4187839578903686E48
        -0x55866f9cf74d8dfeL
        0x741ee86a0aeebcc6L    # 2.2129186609043467E251
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
        0x123a365e54190c24L    # 7.251529101745336E-221
        0x15512b3edf0a13d0L    # 5.347689167671077E-206
        0x1ab0e766475e64dfL    # 4.073705501230468E-180
    .end array-data
.end method

.method public final encodeServerRaw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerRawStorage()Lcom/tencent/mmkv/MMKV;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0xd0af36a07f7be91L    # -5.748986878940473E245
        0x42f9af3e1e380a5bL    # 4.518472342242937E14
    .end array-data

    .line 46
    .line 47
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
    :array_1
    .array-data 8
        -0x618c9ce333fc4117L    # -5.386621927449576E-162
        0x76ac4c77e6aadc2dL    # 4.455462351207276E263
    .end array-data
.end method

.method public final encodeServerTestDelayMillis(Ljava/lang/String;J)V
    .locals 5
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
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->setTestDelayMillis(J)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object p3, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p2, p1, p3}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x4c6c1c7117121acL
        -0x5a13546f4f94088bL    # -5.294222537610625E-126
    .end array-data
.end method

.method public final encodeSettings(Ljava/lang/String;I)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        0x5dea65d15e2cc199L    # 2.5752207098933153E144
        0x62b5e2a5b06e1566L    # 3.2263458405281407E167
    .end array-data
.end method

.method public final encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        -0x3f589a75903b340aL    # -2994.7703839777923
        0x63f5fbf7e0e480fbL    # 3.398358527874515E173
    .end array-data
.end method

.method public final encodeSettings(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    return p1

    :array_0
    .array-data 8
        -0x748356a1d724b67L
        -0x7beac9189a914a43L    # -5.442222872783444E-289
    .end array-data

    :array_1
    .array-data 8
        0x44491a5b5b989306L    # 9.261356284429308E20
        0x766b7cdd33bb40deL    # 2.7048640221240996E262
    .end array-data
.end method

.method public final encodeSettings(Ljava/lang/String;Z)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 3
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSettingsStorage()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 8
        -0x40da67b673ae8572L    # -1.6475580028703748E-4
        0x301e10f339ed385fL    # 6.491421723296289E-77
    .end array-data
.end method

.method public final encodeStartOnBoot(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {p0, v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x46487b26f0f791dL
        -0xd2c711caaa74b59L
        0x5e4987b38f71aa81L    # 1.5939700308016228E146
    .end array-data
.end method

.method public final encodeSubsList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v1, v1, [J

    .line 26
    .line 27
    fill-array-data v1, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :array_0
    .array-data 8
        0x2e4b1a60eeec7949L    # 1.0899567766176648E-85
        0x780e85221b203d55L    # 2.0154470481182592E270
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
    :array_1
    .array-data 8
        -0x684932c1a095f46eL
        -0x16da52ef57352fdeL    # -3.24061182599517E198
    .end array-data
.end method

.method public final encodeSubscription(Ljava/lang/String;Lcom/v2ray/ang/dto/SubscriptionItem;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/SubscriptionItem;
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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object p1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/v2ray/ang/util/Utils;->getUuid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubsList()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSubsList(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x20d1a2291aff0e80L
        -0x27cd5fc493b54ecaL    # -7.338980921228424E116
    .end array-data

    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        -0x79799e12d15a9de8L
        -0x2d6e74a1a21c7beeL    # -5.584154945179018E89
    .end array-data
.end method

.method public final removeAllServer()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 33
    .line 34
    .line 35
    return v0
.end method

.method public final removeAssetUrl(Ljava/lang/String;)V
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getAssetStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0xcd4ce0663a40de9L
        0x68d4d827a7ec42a8L    # 9.738355954114568E196
    .end array-data
.end method

.method public final removeInvalidServer(Ljava/lang/String;)I
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

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
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->getTestDelayMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    cmp-long v1, v5, v2

    .line 40
    .line 41
    if-gez v1, :cond_0

    .line 42
    .line 43
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    move v4, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    array-length v1, p1

    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_1
    if-ge v4, v1, :cond_3

    .line 65
    .line 66
    aget-object v6, p1, v4

    .line 67
    .line 68
    sget-object v7, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 69
    .line 70
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-eqz v8, :cond_2

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->getTestDelayMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    cmp-long v10, v8, v2

    .line 84
    .line 85
    if-gez v10, :cond_2

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    add-int/2addr v5, v0

    .line 91
    :cond_2
    add-int/2addr v4, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v4, v5

    .line 94
    :cond_4
    :goto_2
    return v4

    .line 95
    :array_0
    .array-data 8
        -0x4dbb9105c1c6f32bL    # -1.5158417157355755E-66
        -0x7cb5226a65ab068fL    # -8.41298646243311E-293
    .end array-data
.end method

.method public final removeServer(Ljava/lang/String;)V
    .locals 3
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
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    new-array v2, v2, [J

    .line 44
    .line 45
    fill-array-data v2, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerList(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getServerAffStorage()Lcom/tencent/mmkv/MMKV;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 8
        0x4b9a8bbdf1a2517eL    # 1.627256916138178E56
        0x6a9f1c833e2a64daL    # 3.901721818346175E205
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
    :array_1
    .array-data 8
        0x17c579c995041aabL
        0x1a4f0b963690978eL    # 5.845046153831758E-182
        -0x662dd5e58ef8dcb4L
    .end array-data
.end method

.method public final removeServerViaSubid(Ljava/lang/String;)V
    .locals 6
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
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getProfileFullStorage()Lcom/tencent/mmkv/MMKV;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    array-length v1, v0

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_2

    .line 39
    .line 40
    aget-object v3, v0, v2

    .line 41
    .line 42
    sget-object v4, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x56ed0ff3569fc22eL    # -7.874603233644146E-111
        0x5c95aa1ec660a45aL    # 1.0077837353744137E138
    .end array-data
.end method

.method public final removeSubscription(Ljava/lang/String;)V
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getSubStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubsList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSubsList(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->removeServerViaSubid(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x25cbf7ae2fef16beL    # -3.3901062689408796E126
        -0x3d4b67d251fec54cL    # -2.2643833962810703E13
    .end array-data
.end method

.method public final setSelectServer(Ljava/lang/String;)V
    .locals 3
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
    invoke-direct {p0}, Lcom/v2ray/ang/handler/MmkvManager;->getMainStorage()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        -0x24c8f96b4ce81aa4L    # -2.55370714122208E131
        -0x6b243815d624ae3bL    # -3.380100264657299E-208
    .end array-data

    .line 44
    :array_1
    .array-data 8
        -0x5c585f59062f812cL
        -0x1518f532745cd9f4L    # -9.247215084220691E206
        -0x50a9b9e50d6266e4L    # -1.1740766092131305E-80
    .end array-data
.end method
