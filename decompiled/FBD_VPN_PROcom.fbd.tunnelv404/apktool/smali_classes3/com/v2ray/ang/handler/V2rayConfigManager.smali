.class public final Lcom/v2ray/ang/handler/V2rayConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/handler/V2rayConfigManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eJ\u0016\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0014\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000eH\u0002J \u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u001a\u0010\u001e\u001a\u00020\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J \u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00050\"j\u0008\u0012\u0004\u0012\u00020\u0005`#2\u0006\u0010$\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u001f\u0010\'\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010(J\u001f\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010+J\u0018\u0010,\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u0005H\u0002J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0010\u00102\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0010\u00103\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000cH\u0002J\u0012\u00104\u001a\u0004\u0018\u0001002\u0006\u00105\u001a\u00020\u0012H\u0002J\u0010\u00106\u001a\u0004\u0018\u0001002\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u0004\u0018\u00010\u00052\u0006\u0010:\u001a\u00020;2\u0006\u00105\u001a\u00020\u0012J \u0010<\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020;2\u0006\u00105\u001a\u00020\u00122\u0008\u0010=\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>\u00b2\u0006\n\u0010?\u001a\u00020\u0005X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/V2rayConfigManager;",
        "",
        "<init>",
        "()V",
        "initConfigCache",
        "",
        "getV2rayConfig",
        "Lcom/v2ray/ang/dto/ConfigResult;",
        "context",
        "Landroid/content/Context;",
        "guid",
        "genV2rayConfig",
        "Lcom/v2ray/ang/dto/V2rayConfig;",
        "guidList",
        "",
        "getV2rayConfig4Speedtest",
        "getV2rayCustomConfig",
        "config",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "getV2rayNormalConfig",
        "genV2rayMultipleConfig",
        "configList",
        "getV2rayNormalConfig4Speedtest",
        "initV2rayConfig",
        "getInbounds",
        "",
        "v2rayConfig",
        "getFakeDns",
        "",
        "getRouting",
        "getRoutingUserRule",
        "item",
        "Lcom/v2ray/ang/dto/RulesetItem;",
        "getUserRule2Domain",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "tag",
        "getCustomLocalDns",
        "getDns",
        "getOutbounds",
        "(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Boolean;",
        "getPlusOutbounds",
        "",
        "(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Integer;",
        "getMoreOutbounds",
        "subscriptionId",
        "updateOutboundWithGlobalSettings",
        "outbound",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;",
        "getBalance",
        "updateOutboundFragment",
        "resolveOutboundDomainsToHosts",
        "convertProfile2Outbound",
        "profileItem",
        "createInitOutbound",
        "configType",
        "Lcom/v2ray/ang/dto/EConfigType;",
        "populateTransportSettings",
        "streamSettings",
        "Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;",
        "populateTlsSettings",
        "sniExt",
        "com.fbd.tunnel-404_release",
        "requestString"
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
        "SMAP\nV2rayConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 V2rayConfigManager.kt\ncom/v2ray/ang/handler/V2rayConfigManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1243:1\n1617#2,9:1244\n1869#2:1253\n1870#2:1255\n1626#2:1256\n1563#2:1257\n1634#2,3:1258\n1869#2,2:1261\n1869#2,2:1263\n1869#2,2:1265\n1869#2:1267\n1869#2,2:1268\n1870#2:1270\n2746#2,3:1271\n2746#2,3:1274\n1869#2,2:1277\n1563#2:1279\n1634#2,3:1280\n774#2:1283\n865#2,2:1284\n774#2:1286\n865#2,2:1287\n1193#2,2:1289\n1267#2,2:1291\n1270#2:1294\n1869#2,2:1295\n1563#2:1297\n1634#2,3:1298\n774#2:1301\n865#2,2:1302\n1563#2:1304\n1634#2,3:1305\n774#2:1308\n865#2,2:1309\n1563#2:1311\n1634#2,3:1312\n774#2:1315\n865#2,2:1316\n1563#2:1318\n1634#2,3:1319\n774#2:1322\n865#2,2:1323\n1#3:1254\n1#3:1293\n*S KotlinDebug\n*F\n+ 1 V2rayConfigManager.kt\ncom/v2ray/ang/handler/V2rayConfigManager\n*L\n68#1:1244,9\n68#1:1253\n68#1:1255\n68#1:1256\n192#1:1257\n192#1:1258,3\n278#1:1261,2\n326#1:1263,2\n391#1:1265,2\n434#1:1267\n436#1:1268,2\n434#1:1270\n475#1:1271,3\n499#1:1274,3\n542#1:1277,2\n584#1:1279\n584#1:1280,3\n605#1:1283\n605#1:1284,2\n606#1:1286\n606#1:1287,2\n607#1:1289,2\n607#1:1291,2\n607#1:1294\n849#1:1295,2\n1109#1:1297\n1109#1:1298,3\n1109#1:1301\n1109#1:1302,2\n1110#1:1304\n1110#1:1305,3\n1110#1:1308\n1110#1:1309,2\n1166#1:1311\n1166#1:1312,3\n1166#1:1315\n1166#1:1316,2\n1227#1:1318\n1227#1:1319,3\n1227#1:1322\n1227#1:1323,2\n68#1:1254\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static initConfigCache:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/v2ray/ang/handler/V2rayConfigManager;

    invoke-direct {v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;-><init>()V

    sput-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

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

.method private final convertProfile2Outbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/v2ray/ang/handler/V2rayConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :pswitch_0
    sget-object v0, Lcom/v2ray/ang/fmt/HttpFmt;->INSTANCE:Lcom/v2ray/ang/fmt/HttpFmt;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/HttpFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/v2ray/ang/fmt/WireguardFmt;->INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/WireguardFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    sget-object v0, Lcom/v2ray/ang/fmt/TrojanFmt;->INSTANCE:Lcom/v2ray/ang/fmt/TrojanFmt;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/TrojanFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    sget-object v0, Lcom/v2ray/ang/fmt/VlessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VlessFmt;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/VlessFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/v2ray/ang/fmt/SocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/SocksFmt;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/SocksFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :pswitch_6
    sget-object v0, Lcom/v2ray/ang/fmt/VmessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/fmt/VmessFmt;->toOutbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    :pswitch_7
    return-object v1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private final genV2rayMultipleConfig(Landroid/content/Context;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/ProfileItem;",
            ">;)",
            "Lcom/v2ray/ang/dto/V2rayConfig;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x4

    .line 6
    check-cast p2, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    new-instance v6, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 13
    .line 14
    invoke-direct {v6, v2}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    new-instance v6, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 22
    .line 23
    invoke-direct {v6, v1}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v6, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 31
    .line 32
    invoke-direct {v6, v3}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    new-instance v6, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 40
    .line 41
    invoke-direct {v6, v0}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v6, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;

    .line 49
    .line 50
    invoke-direct {v6, v4}, L땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v7, 0x0

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array p2, v0, [J

    .line 71
    .line 72
    fill-array-data p2, :array_0

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array p2, v4, [J

    .line 84
    .line 85
    fill-array-data p2, :array_1

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    return-object v7

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->initV2rayConfig(Landroid/content/Context;)Lcom/v2ray/ang/dto/V2rayConfig;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    return-object v7

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig;->getLog()Lcom/v2ray/ang/dto/V2rayConfig$LogBean;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v9, v4, [J

    .line 109
    .line 110
    fill-array-data v9, :array_2

    .line 111
    .line 112
    .line 113
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-static {v8}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-nez v8, :cond_2

    .line 125
    .line 126
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array v9, v3, [J

    .line 129
    .line 130
    fill-array-data v9, :array_3

    .line 131
    .line 132
    .line 133
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    :cond_2
    invoke-virtual {v6, v8}, Lcom/v2ray/ang/dto/V2rayConfig$LogBean;->setLoglevel(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v6, Ljava/util/ArrayList;

    .line 144
    .line 145
    const/16 v8, 0xa

    .line 146
    .line 147
    invoke-static {p2, v8}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_3

    .line 163
    .line 164
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Lcom/v2ray/ang/dto/ProfileItem;

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    const v8, 0x7f1300d6

    .line 187
    .line 188
    .line 189
    if-ne v6, v1, :cond_6

    .line 190
    .line 191
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Ljava/lang/CharSequence;

    .line 196
    .line 197
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-lez v6, :cond_6

    .line 202
    .line 203
    sget-object v6, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 204
    .line 205
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    check-cast p2, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v6, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    if-eqz p2, :cond_4

    .line 216
    .line 217
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/SubscriptionItem;->getRemarks()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    if-nez p2, :cond_5

    .line 222
    .line 223
    :cond_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v6, v1, [J

    .line 226
    .line 227
    const-wide v9, -0x386c48e236e76e86L    # -6.551531591841989E36

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    aput-wide v9, v6, v2

    .line 233
    .line 234
    invoke-direct {p2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    :cond_5
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {p2, p1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    goto :goto_1

    .line 250
    :cond_6
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :goto_1
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/dto/V2rayConfig;->setRemarks(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getInbounds(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    new-instance p1, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    :cond_7
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_9

    .line 284
    .line 285
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Lcom/v2ray/ang/dto/ProfileItem;

    .line 290
    .line 291
    add-int/2addr v2, v1

    .line 292
    invoke-direct {p0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->convertProfile2Outbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    if-nez v5, :cond_8

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_8
    invoke-direct {p0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_7

    .line 304
    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v8, "proxy-"

    .line 308
    .line 309
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setTag(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_9
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    .line 332
    .line 333
    new-instance p2, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, p2}, Lcom/v2ray/ang/dto/V2rayConfig;->setOutbounds(Ljava/util/ArrayList;)V

    .line 339
    .line 340
    .line 341
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getRouting(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 342
    .line 343
    .line 344
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getFakeDns(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 345
    .line 346
    .line 347
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 348
    .line 349
    .line 350
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getBalance(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 351
    .line 352
    .line 353
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 354
    .line 355
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 356
    .line 357
    new-array v2, v4, [J

    .line 358
    .line 359
    fill-array-data v2, :array_4

    .line 360
    .line 361
    .line 362
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result p2

    .line 373
    if-ne p2, v1, :cond_a

    .line 374
    .line 375
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getCustomLocalDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 376
    .line 377
    .line 378
    :cond_a
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 379
    .line 380
    new-array v2, v4, [J

    .line 381
    .line 382
    fill-array-data v2, :array_5

    .line 383
    .line 384
    .line 385
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eq p1, v1, :cond_b

    .line 397
    .line 398
    invoke-virtual {v0, v7}, Lcom/v2ray/ang/dto/V2rayConfig;->setStats(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v7}, Lcom/v2ray/ang/dto/V2rayConfig;->setPolicy(Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;)V

    .line 402
    .line 403
    .line 404
    :cond_b
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 405
    .line 406
    const/4 p2, 0x6

    .line 407
    new-array p2, p2, [J

    .line 408
    .line 409
    fill-array-data p2, :array_6

    .line 410
    .line 411
    .line 412
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v1, v3, [J

    .line 422
    .line 423
    fill-array-data v1, :array_7

    .line 424
    .line 425
    .line 426
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    invoke-static {p1, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 438
    .line 439
    new-array v1, v3, [J

    .line 440
    .line 441
    fill-array-data v1, :array_8

    .line 442
    .line 443
    .line 444
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    if-eqz p1, :cond_c

    .line 456
    .line 457
    invoke-direct {p0, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->resolveOutboundDomainsToHosts(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 458
    .line 459
    .line 460
    :cond_c
    return-object v0

    .line 461
    :array_0
    .array-data 8
        0x4f80d730aae443fdL    # 9.521516984142957E74
        0x7539cf4afb31b752L    # 4.844176035664318E256
        -0x67a45757cee74804L
    .end array-data

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
    .line 472
    .line 473
    .line 474
    :array_1
    .array-data 8
        0x47298c04d9f872c7L    # 6.632367158956737E34
        -0x49936a9085e10294L    # -1.56462266066398E-46
        0x76281a306fee45ecL    # 1.4823295780936604E261
        -0x4fdb35fe931d3a78L    # -8.976901783973685E-77
    .end array-data

    :array_2
    .array-data 8
        -0x34ead95aa89fa919L    # -5.0646488297880815E53
        -0x62fbfe1be4013409L    # -6.626783957547694E-169
        -0x12a480cccd4ae9ceL    # -6.0665280264010454E218
        -0x739f942bb3cc6c5aL    # -4.587105205419423E-249
    .end array-data

    :array_3
    .array-data 8
        0x1749d26601c0c454L
        -0x319368245262177L    # -4.547936229413654E293
    .end array-data

    :array_4
    .array-data 8
        -0x29e849292a3cfcbeL    # -5.438852070847018E106
        -0x5a2947008ca18aeaL
        -0x34ca03e8f9eca68eL    # -2.1057184402370795E54
        0x6f3433d55b306588L    # 4.7858744615811915E227
    .end array-data

    :array_5
    .array-data 8
        -0x4d9b541f6739676aL    # -6.133957482959659E-66
        0x54aab4cfb9c56cc1L    # 7.301670289042125E99
        0x1789df0e766605bfL
        0x35ecc02c495be843L    # 6.147503324851545E-49
    .end array-data

    :array_6
    .array-data 8
        -0x567d480dfd55289dL    # -9.962847104219469E-109
        -0x637fa67ded8e65aeL    # -2.115342507937001E-171
        0x69b64f6cce517e68L    # 1.707739546268812E201
        0x64f4091fb111bc6L
        0x615800e5a37c674bL    # 8.436694944956488E160
        0x399db63536d658a9L    # 3.66225587405406E-31
    .end array-data

    :array_7
    .array-data 8
        0x2613cbf78d6681ebL
        -0x63c871886aa6b5f4L
    .end array-data

    :array_8
    .array-data 8
        -0x414bc5076d61d174L    # -1.2058231484171875E-6
        -0x5f0e053b11750cb6L    # -5.49264343752405E-150
    .end array-data
.end method

.method private static final genV2rayMultipleConfig$lambda$1(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 2

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
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        0x299b447936401e81L
        -0x41d76525a60986d0L
    .end array-data
.end method

.method private static final genV2rayMultipleConfig$lambda$2(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 2

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
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 51
    :goto_1
    return p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0xaf6dba5411a9f5cL    # -5.898564396946003E255
        -0x6583fd8df868bd2dL
    .end array-data
.end method

.method private static final genV2rayMultipleConfig$lambda$3(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 2

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
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 24
    .line 25
    if-eq p0, v0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0

    .line 31
    :array_0
    .array-data 8
        0x2c6b21d996569f16L    # 1.0161944211011976E-94
        0x74ca27edea29cfe1L    # 3.8352815484532065E254
    .end array-data
.end method

.method private static final genV2rayMultipleConfig$lambda$4(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 2

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
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object v0, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 24
    .line 25
    if-eq p0, v0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0

    .line 31
    :array_0
    .array-data 8
        -0x1eb327c77b0637d2L    # -5.069118152589874E160
        -0x7dfddda78338445bL    # -5.415665379237416E-299
    .end array-data
.end method

.method private static final genV2rayMultipleConfig$lambda$5(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 4

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
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/SubscriptionItem;->getIntelligentSelectionFilter()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v3, v2

    .line 50
    :goto_0
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    new-instance v1, Lkotlin/text/Regex;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/SubscriptionItem;->getIntelligentSelectionFilter()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    return p0

    .line 93
    :cond_5
    :goto_1
    return v1

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0x4fa8eb7b481a63f3L    # 5.635784142458683E75
        -0x70406c3f00a6c35fL    # -7.945047220297866E-233
    .end array-data
.end method

.method private final getBalance(Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->getOutboundTag()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v10, v4, [J

    .line 39
    .line 40
    fill-array-data v10, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->setOutboundTag(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v8, v3, [J

    .line 62
    .line 63
    fill-array-data v8, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;->setBalancerTag(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v6, v2, [J

    .line 80
    .line 81
    fill-array-data v6, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v8, v4, [J

    .line 94
    .line 95
    fill-array-data v8, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v5, v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v8, v4, [J

    .line 112
    .line 113
    fill-array-data v8, :array_4

    .line 114
    .line 115
    .line 116
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;

    .line 130
    .line 131
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v8, v3, [J

    .line 134
    .line 135
    fill-array-data v8, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v8, v4, [J

    .line 148
    .line 149
    fill-array-data v8, :array_6

    .line 150
    .line 151
    .line 152
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v6}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    new-instance v12, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;

    .line 164
    .line 165
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v8, v3, [J

    .line 168
    .line 169
    fill-array-data v8, :array_7

    .line 170
    .line 171
    .line 172
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-direct {v12, v6, v7, v4, v7}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .line 181
    .line 182
    const/4 v13, 0x4

    .line 183
    const/4 v14, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    move-object v8, v5

    .line 186
    invoke-direct/range {v8 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v5}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v6, v5}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->setBalancers(Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$ObservatoryObject;

    .line 201
    .line 202
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v7, v4, [J

    .line 205
    .line 206
    fill-array-data v7, :array_8

    .line 207
    .line 208
    .line 209
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-static {v6}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v1, v1, [J

    .line 223
    .line 224
    fill-array-data v1, :array_9

    .line 225
    .line 226
    .line 227
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-nez v1, :cond_2

    .line 239
    .line 240
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 241
    .line 242
    new-array v2, v2, [J

    .line 243
    .line 244
    fill-array-data v2, :array_a

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v4, v4, [J

    .line 257
    .line 258
    fill-array-data v4, :array_b

    .line 259
    .line 260
    .line 261
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    const/4 v4, 0x1

    .line 269
    invoke-direct {v5, v6, v1, v2, v4}, Lcom/v2ray/ang/dto/V2rayConfig$ObservatoryObject;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v5}, Lcom/v2ray/ang/dto/V2rayConfig;->setObservatory(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_3
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;

    .line 278
    .line 279
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 280
    .line 281
    new-array v8, v3, [J

    .line 282
    .line 283
    fill-array-data v8, :array_c

    .line 284
    .line 285
    .line 286
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 294
    .line 295
    new-array v9, v4, [J

    .line 296
    .line 297
    fill-array-data v9, :array_d

    .line 298
    .line 299
    .line 300
    invoke-direct {v6, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v6}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    new-instance v11, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;

    .line 312
    .line 313
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v10, v3, [J

    .line 316
    .line 317
    fill-array-data v10, :array_e

    .line 318
    .line 319
    .line 320
    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-direct {v11, v6, v7, v4, v7}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategySettingsObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 328
    .line 329
    .line 330
    const/4 v12, 0x4

    .line 331
    const/4 v13, 0x0

    .line 332
    const/4 v10, 0x0

    .line 333
    move-object v7, v5

    .line 334
    invoke-direct/range {v7 .. v13}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$BalancerBean;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$StrategyObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-static {v5}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v6, v5}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->setBalancers(Ljava/util/List;)V

    .line 346
    .line 347
    .line 348
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;

    .line 349
    .line 350
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 351
    .line 352
    new-array v7, v4, [J

    .line 353
    .line 354
    fill-array-data v7, :array_f

    .line 355
    .line 356
    .line 357
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-static {v6}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;

    .line 369
    .line 370
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 371
    .line 372
    new-array v1, v1, [J

    .line 373
    .line 374
    fill-array-data v1, :array_10

    .line 375
    .line 376
    .line 377
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    if-nez v1, :cond_4

    .line 389
    .line 390
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 391
    .line 392
    new-array v2, v2, [J

    .line 393
    .line 394
    fill-array-data v2, :array_11

    .line 395
    .line 396
    .line 397
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :cond_4
    move-object v8, v1

    .line 405
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array v2, v4, [J

    .line 408
    .line 409
    fill-array-data v2, :array_12

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v10

    .line 419
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 420
    .line 421
    new-array v2, v4, [J

    .line 422
    .line 423
    fill-array-data v2, :array_13

    .line 424
    .line 425
    .line 426
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v12

    .line 433
    const/4 v13, 0x2

    .line 434
    const/4 v14, 0x0

    .line 435
    const/4 v9, 0x0

    .line 436
    const/4 v11, 0x2

    .line 437
    move-object v7, v15

    .line 438
    invoke-direct/range {v7 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 439
    .line 440
    .line 441
    invoke-direct {v5, v6, v15}, Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$BurstObservatoryObject$PingConfigObject;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v5}, Lcom/v2ray/ang/dto/V2rayConfig;->setBurstObservatory(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .line 446
    .line 447
    goto :goto_1

    .line 448
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 449
    .line 450
    new-array v1, v3, [J

    .line 451
    .line 452
    fill-array-data v1, :array_14

    .line 453
    .line 454
    .line 455
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 462
    .line 463
    const/4 v1, 0x5

    .line 464
    new-array v1, v1, [J

    .line 465
    .line 466
    fill-array-data v1, :array_15

    .line 467
    .line 468
    .line 469
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    :goto_1
    return-void

    .line 476
    nop

    .line 477
    :array_0
    .array-data 8
        -0x12650904c4c59089L    # -9.518611207347296E219
        -0x38cc74fbea7061c9L    # -1.0147321883252811E35
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_1
    .array-data 8
        -0x352224c68617aa8L    # -3.725488113473455E292
        0x6b6c58c85d46d1a8L    # 2.912266774711543E209
        0x79f3d734c366193fL    # 2.813661605895532E279
    .end array-data

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
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_2
    .array-data 8
        -0x4791e32134fc8127L    # -7.079479274628428E-37
        0x6da0117bcecab09aL    # 1.134427263036535E220
        -0x23c2b83e49dd2ed3L    # -2.1282055573689372E136
        0x7f2f553bfe73383aL    # 4.297410823864866E304
        -0x714dd883eb1057caL    # -6.969817988911056E-238
        -0x192bd80d30eed4bfL    # -2.1925157396042026E187
    .end array-data

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
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_3
    .array-data 8
        0x6c698eb25948f1e6L
        0x75696c286d4a2fb6L    # 3.8171957102441194E257
    .end array-data

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
    .line 544
    .line 545
    :array_4
    .array-data 8
        -0x51e3e2ff2aee3d80L    # -1.4132304652038939E-86
        0x2ff01a71534edf63L    # 8.69192134301906E-78
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_5
    .array-data 8
        -0x55405bc95a6e68e5L    # -8.82953820791963E-103
        0x6d47185847add720L    # 2.547690485749239E218
        0x13553b78ec72e009L    # 1.53978625811259E-215
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_6
    .array-data 8
        -0x133adbf2c6c61afaL    # -9.10980070675712E215
        -0x257ed5eeea0e0d42L    # -9.295116948706272E127
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_7
    .array-data 8
        -0xa66e8e42a924954L
        0x474ab4f38b0d30d3L    # 2.773396950568335E35
        0x15f91d19c66acc19L    # 8.01001248452824E-203
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_8
    .array-data 8
        0x34059fc4803dfa9bL    # 4.3061457795436885E-58
        0x113768ac83a30524L    # 9.881524227088316E-226
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :array_9
    .array-data 8
        -0x16c4d2917e6db440L    # -8.126174418155198E198
        0x7a2dfe2baf2104bbL    # 3.4027008918982235E280
        0x5fe724fdfa456b3cL    # 9.697406746138462E153
        -0x5d47709cc04425b6L
    .end array-data

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :array_a
    .array-data 8
        -0x6f36b4e380a232a2L    # -8.341431060377089E-228
        -0x5b28d7ce25cf6b40L    # -3.262453987330847E-131
        -0x5d202e3aa1ce99ddL    # -1.043744662611733E-140
        0x3efd5d86200ff900L    # 2.8004958952714855E-5
        -0x66fac65c6eac8b3eL
        0xe55c650d4052025L
    .end array-data

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    :array_b
    .array-data 8
        0x803184f6b0eda62L
        -0x7fd7ece3600e873eL    # -6.695985833894322E-308
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :array_c
    .array-data 8
        -0x791d9bc9d6a118fcL    # -1.6600072352187248E-275
        0x787b93a3757309eeL    # 2.330980260684603E272
        -0x709eaea8c3a193a3L
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_d
    .array-data 8
        0x29d0c4b1585d9f95L    # 2.855955211655789E-107
        0x671a60bc16b1acccL    # 4.5908914763349375E188
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_e
    .array-data 8
        -0x7cc149fb87010c67L    # -4.808595782995293E-293
        0x4e0e862fc3435498L    # 1.0286623694402663E68
        -0x133d68925dbe9c97L    # -8.011276622676614E215
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_f
    .array-data 8
        -0x108a0a1b3dd859e5L    # -8.323756702126673E228
        0x4bb242e36f0a3fL
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_10
    .array-data 8
        -0xd16e2e0ca0b9926L
        0x7d131398436f9491L    # 3.045898536043966E294
        0x26270237bf1721fcL    # 6.79803182851206E-125
        -0x1763b1f54fd190eaL    # -8.26490880022564E195
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    :array_11
    .array-data 8
        -0x30e49980c67d3365L    # -1.2103069711556014E73
        -0x1730b6c5aa7369ddL    # -7.308325308038433E196
        0x53a7ead4218a0739L    # 9.977937768020597E94
        0x19c92609d047eac8L
        -0x790192e6f18b1c94L
        -0x20ad1cf721d59bedL    # -1.5456012675152397E151
    .end array-data

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_12
    .array-data 8
        0x3402a0470f4bfcdbL    # 3.709133026469496E-58
        -0x66c261341f487c9L    # -4.398699423658777E277
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_13
    .array-data 8
        -0x4f35ffceabdb1372L    # -1.1496800401532165E-73
        -0x14a74bc7fcc9ce0cL    # -1.2690067426262668E209
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :array_14
    .array-data 8
        0x488939bf9c4d7791L    # 2.746822421656529E41
        0x61c6c624f09149c5L    # 1.024582679547402E163
        -0x48ec77bc7bd79a78L    # -2.1896443417250504E-43
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_15
    .array-data 8
        0x10b79bead38aef0dL    # 3.892977041851399E-228
        0x5bc4213b30c77223L    # 1.1430566408998623E134
        0x5bbe4c0e3a7551e9L    # 8.601992100481383E133
        -0x164177f8edc5dbafL    # -2.3370243696553958E201
        -0xbcc76871df5c5e6L    # -5.59518288128247E251
    .end array-data
.end method

.method private final getCustomLocalDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 8
    .line 9
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v7, v1, [J

    .line 12
    .line 13
    fill-array-data v7, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    if-ne v5, v6, :cond_0

    .line 29
    .line 30
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v7, v2, [J

    .line 33
    .line 34
    fill-array-data v7, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    filled-new-array {v5}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v8, v3, [J

    .line 55
    .line 56
    fill-array-data v8, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-direct {v0, v7}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v9, v3, [J

    .line 73
    .line 74
    fill-array-data v9, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-direct {v0, v8}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getDns()Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    if-eqz v9, :cond_0

    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;->getServers()Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    if-eqz v9, :cond_0

    .line 99
    .line 100
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;

    .line 101
    .line 102
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v11, v3, [J

    .line 105
    .line 106
    fill-array-data v11, :array_4

    .line 107
    .line 108
    .line 109
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    const/16 v17, 0x3a

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    const/4 v12, 0x0

    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    move-object v10, v15

    .line 136
    move-object v7, v15

    .line 137
    move-object v15, v5

    .line 138
    invoke-direct/range {v10 .. v18}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_0
    sget-object v5, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->getRemoteDnsServers()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    instance-of v8, v7, Ljava/util/Collection;

    .line 155
    .line 156
    if-eqz v8, :cond_1

    .line 157
    .line 158
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-eqz v8, :cond_1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_3

    .line 174
    .line 175
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    check-cast v8, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 180
    .line 181
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getProtocol()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    new-array v11, v2, [J

    .line 188
    .line 189
    fill-array-data v11, :array_5

    .line 190
    .line 191
    .line 192
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-eqz v9, :cond_2

    .line 204
    .line 205
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getTag()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 210
    .line 211
    new-array v10, v3, [J

    .line 212
    .line 213
    fill-array-data v10, :array_6

    .line 214
    .line 215
    .line 216
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_2

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_3
    :goto_0
    new-instance v7, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$InSettingsBean;

    .line 232
    .line 233
    sget-object v8, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 234
    .line 235
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    check-cast v9, Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v8, v9}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-eqz v9, :cond_4

    .line 246
    .line 247
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    check-cast v5, Ljava/lang/String;

    .line 252
    .line 253
    :goto_1
    move-object v13, v5

    .line 254
    goto :goto_2

    .line 255
    :cond_4
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v9, v3, [J

    .line 258
    .line 259
    fill-array-data v9, :array_7

    .line 260
    .line 261
    .line 262
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    goto :goto_1

    .line 270
    :goto_2
    const/16 v5, 0x35

    .line 271
    .line 272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v14

    .line 276
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v9, v3, [J

    .line 279
    .line 280
    fill-array-data v9, :array_8

    .line 281
    .line 282
    .line 283
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v15

    .line 290
    const/16 v16, 0x7

    .line 291
    .line 292
    const/16 v17, 0x0

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    const/4 v11, 0x0

    .line 296
    const/4 v12, 0x0

    .line 297
    move-object v9, v7

    .line 298
    invoke-direct/range {v9 .. v17}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$InSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 299
    .line 300
    .line 301
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 302
    .line 303
    new-array v1, v1, [J

    .line 304
    .line 305
    fill-array-data v1, :array_9

    .line 306
    .line 307
    .line 308
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 320
    .line 321
    new-array v9, v3, [J

    .line 322
    .line 323
    fill-array-data v9, :array_a

    .line 324
    .line 325
    .line 326
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    invoke-virtual {v8, v1, v5}, Lcom/v2ray/ang/util/Utils;->parseInt(Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 346
    .line 347
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    new-array v9, v3, [J

    .line 350
    .line 351
    fill-array-data v9, :array_b

    .line 352
    .line 353
    .line 354
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 362
    .line 363
    new-array v9, v2, [J

    .line 364
    .line 365
    fill-array-data v9, :array_c

    .line 366
    .line 367
    .line 368
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 376
    .line 377
    new-array v9, v2, [J

    .line 378
    .line 379
    fill-array-data v9, :array_d

    .line 380
    .line 381
    .line 382
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v13

    .line 389
    const/16 v18, 0xc0

    .line 390
    .line 391
    const/16 v19, 0x0

    .line 392
    .line 393
    const/4 v15, 0x0

    .line 394
    const/16 v16, 0x0

    .line 395
    .line 396
    const/16 v17, 0x0

    .line 397
    .line 398
    move-object v9, v5

    .line 399
    move-object v14, v7

    .line 400
    invoke-direct/range {v9 .. v19}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;Ljava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    instance-of v5, v1, Ljava/util/Collection;

    .line 411
    .line 412
    if-eqz v5, :cond_5

    .line 413
    .line 414
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_5

    .line 419
    .line 420
    goto :goto_4

    .line 421
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-eqz v5, :cond_7

    .line 430
    .line 431
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    check-cast v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 436
    .line 437
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getProtocol()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 442
    .line 443
    new-array v9, v3, [J

    .line 444
    .line 445
    fill-array-data v9, :array_e

    .line 446
    .line 447
    .line 448
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    if-eqz v7, :cond_6

    .line 460
    .line 461
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getTag()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 466
    .line 467
    new-array v8, v3, [J

    .line 468
    .line 469
    fill-array-data v8, :array_f

    .line 470
    .line 471
    .line 472
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-eqz v5, :cond_6

    .line 484
    .line 485
    goto :goto_5

    .line 486
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 491
    .line 492
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 493
    .line 494
    new-array v8, v3, [J

    .line 495
    .line 496
    fill-array-data v8, :array_10

    .line 497
    .line 498
    .line 499
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 507
    .line 508
    new-array v9, v3, [J

    .line 509
    .line 510
    fill-array-data v9, :array_11

    .line 511
    .line 512
    .line 513
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    const/16 v15, 0x30

    .line 521
    .line 522
    const/16 v16, 0x0

    .line 523
    .line 524
    const/4 v10, 0x0

    .line 525
    const/4 v11, 0x0

    .line 526
    const/4 v12, 0x0

    .line 527
    const/4 v13, 0x0

    .line 528
    const/4 v14, 0x0

    .line 529
    move-object v7, v5

    .line 530
    invoke-direct/range {v7 .. v16}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 545
    .line 546
    new-array v7, v3, [J

    .line 547
    .line 548
    fill-array-data v7, :array_12

    .line 549
    .line 550
    .line 551
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    filled-new-array {v5}, [Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 563
    .line 564
    .line 565
    move-result-object v18

    .line 566
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 567
    .line 568
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 569
    .line 570
    new-array v3, v3, [J

    .line 571
    .line 572
    fill-array-data v3, :array_13

    .line 573
    .line 574
    .line 575
    invoke-direct {v7, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v11

    .line 582
    const/16 v22, 0x3bf3

    .line 583
    .line 584
    const/16 v23, 0x0

    .line 585
    .line 586
    const/4 v8, 0x0

    .line 587
    const/4 v9, 0x0

    .line 588
    const/4 v10, 0x0

    .line 589
    const/4 v12, 0x0

    .line 590
    const/4 v13, 0x0

    .line 591
    const/4 v14, 0x0

    .line 592
    const/4 v15, 0x0

    .line 593
    const/16 v16, 0x0

    .line 594
    .line 595
    const/16 v17, 0x0

    .line 596
    .line 597
    const/16 v19, 0x0

    .line 598
    .line 599
    const/16 v20, 0x0

    .line 600
    .line 601
    const/16 v21, 0x0

    .line 602
    .line 603
    move-object v7, v5

    .line 604
    invoke-direct/range {v7 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .line 609
    .line 610
    return v6

    .line 611
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 612
    .line 613
    new-array v2, v2, [J

    .line 614
    .line 615
    fill-array-data v2, :array_14

    .line 616
    .line 617
    .line 618
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 625
    .line 626
    const/4 v2, 0x6

    .line 627
    new-array v2, v2, [J

    .line 628
    .line 629
    fill-array-data v2, :array_15

    .line 630
    .line 631
    .line 632
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    return v4

    .line 639
    :array_0
    .array-data 8
        0x397211476a93cd30L    # 5.567477043406744E-32
        -0x59a62377bdedb768L
        0x6a53f57e41600f2fL    # 1.5644256806339713E204
        0x35fbae97cedd2c86L    # 1.1837997303648317E-48
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_1
    .array-data 8
        -0x345080e6de026a6dL    # -3.8614568745642355E56
        -0x72bff15ab6656287L    # -7.34892152654372E-245
        0x2d93165f6ae1b1c3L    # 3.748071939298466E-89
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_2
    .array-data 8
        -0x13685d1e296ee18dL    # -1.273138503701336E215
        0x24998a4c1fe06cb9L
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :array_3
    .array-data 8
        -0x67b7455ba5dc283L    # -2.276271981491485E277
        0x1547b8418d83ab70L
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_4
    .array-data 8
        -0x2c54bf1fda83f736L    # -1.1369717234006803E95
        -0x7c48b68930fbc80cL    # -9.334201344668433E-291
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    :array_5
    .array-data 8
        -0x4e04c529f9aac173L    # -6.312565403623585E-68
        -0x222f4e1855e1e7cL
        -0x3a414d0dbc88adc6L    # -9.500883147750462E27
    .end array-data

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :array_6
    .array-data 8
        0xce1d5b088545ac6L
        -0x409e8c5a77dfc8ebL    # -0.002130339912588828
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_7
    .array-data 8
        0x2301020d3947e5c9L    # 4.463192685876692E-140
        -0x313f0d8a5fea2539L    # -2.3392927207105195E71
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    :array_8
    .array-data 8
        0x4a8022fdde9ede78L    # 7.546813876808156E50
        0x4225dc2af7916663L    # 4.6944058312699974E10
    .end array-data

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_9
    .array-data 8
        -0xeacd5e7af7785edL    # -7.799604446403908E237
        0x6c00e1c84d1642bfL    # 1.7760283514857344E212
        -0x37aa0bce91925b4L    # -6.664895861662813E291
        0x3f153491f2523727L    # 8.089199816848897E-5
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    :array_a
    .array-data 8
        -0x14ee50a8417a8660L    # -5.677804504035907E207
        0x41a609b4705e60afL    # 1.848673841843314E8
    .end array-data

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_b
    .array-data 8
        0x6946a9d7a55ff8c8L    # 1.3552927371786379E199
        0x60ad808ebdb2bfd3L    # 5.063162072008243E157
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    :array_c
    .array-data 8
        -0x364419f528c1357L    # -1.730372509861154E292
        -0x7e499989528380d0L
        -0x78e082affb087d2L
    .end array-data

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :array_d
    .array-data 8
        0xc12c2700356573bL
        0x5bc71d27ea83fadcL    # 1.3125055120637834E134
        -0x38f78b90b1341610L    # -1.5872087853905748E34
    .end array-data

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :array_e
    .array-data 8
        -0x717ff54fc9fd9323L    # -7.698484244179876E-239
        0x4c56f86b789d5f0bL    # 5.767498967036841E59
    .end array-data

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    :array_f
    .array-data 8
        -0xebaa02092b480c9L    # -4.349532907996646E237
        0x41b20875d696f7cdL    # 3.0254434258971864E8
    .end array-data

    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    :array_10
    .array-data 8
        0x799edca765712236L    # 6.8384722834954E277
        -0x3ed304eaf561de36L    # -949642.5207377013
    .end array-data

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :array_11
    .array-data 8
        -0x5c5c5f90c7e1931fL    # -5.273988772822815E-137
        0x497b5ecdb28e45f6L    # 9.766058727431031E45
    .end array-data

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :array_12
    .array-data 8
        -0x3ebfe2b814f5434aL    # -2112143.836265172
        0x2b0afaf03454d331L
    .end array-data

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_13
    .array-data 8
        0x7e89373f0cfd17c5L    # 3.3773691227158175E301
        0x4d5e72cf6849419eL    # 5.0103108136411746E64
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_14
    .array-data 8
        -0x629179da06212e7eL    # -6.470444277425299E-167
        -0x14c43d6c0b93330bL    # -3.564983921377494E208
        0x3a90739d70831384L    # 1.3289513679207387E-26
    .end array-data

    .line 912
    :array_15
    .array-data 8
        -0x51797dff46296226L    # -1.4482539759413941E-84
        -0x90ea65a10ddda27L    # -8.74138788429836E264
        0x36a361eb620c776cL    # 1.6975415347177425E-45
        0x75c5f4076e89ea58L    # 2.1096231262189104E259
        -0x115942c7d493e2ffL    # -1.0521091121796182E225
        0xc69434f6beec613L
    .end array-data
.end method

.method private final getDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z
    .locals 34

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v5, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->getRemoteDnsServers()Ljava/util/List;

    move-result-object v14

    .line 4
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_0

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 5
    move-object v5, v14

    check-cast v5, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;

    .line 10
    invoke-static {v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/String;

    const/16 v22, 0x3a

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v5

    .line 11
    invoke-direct/range {v15 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    sget-object v5, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->getDomesticDnsServers()Ljava/util/List;

    move-result-object v5

    .line 14
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v3, [J

    fill-array-data v9, :array_1

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 15
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_2

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 16
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v3, [J

    fill-array-data v11, :array_3

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    .line 17
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_3

    .line 18
    new-instance v11, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;

    .line 19
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object/from16 v19, v10

    goto :goto_1

    :cond_2
    move-object/from16 v19, v12

    .line 20
    :goto_1
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v22, 0x12

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v15, v11

    move-object/from16 v18, v8

    .line 21
    invoke-direct/range {v15 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_3
    sget-object v8, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_4

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    move-result-object v8

    .line 25
    new-array v9, v15, [Ljava/lang/String;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    .line 26
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 27
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_4

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v20

    .line 28
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_5

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v31, 0x3fd1

    const/16 v32, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v16, v5

    .line 29
    invoke-direct/range {v16 .. v32}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    invoke-virtual {v8, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    :cond_4
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_6

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 32
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    const/16 v9, 0xa

    if-nez v8, :cond_6

    .line 33
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v9}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 35
    check-cast v10, Ljava/lang/String;

    .line 36
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v2, [J

    fill-array-data v13, :array_7

    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 37
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 38
    :cond_5
    invoke-static {v7, v8}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 39
    :cond_6
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    fill-array-data v8, :array_8

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_9

    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_a

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/v2ray/ang/AppConfig;->INSTANCE:Lcom/v2ray/ang/AppConfig;

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_ALIDNS_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_b

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_CLOUDFLARE_ONE_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v1, [J

    fill-array-data v10, :array_c

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_CLOUDFLARE_DNS_COM_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v1, [J

    fill-array-data v10, :array_d

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_CLOUDFLARE_DNS_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_e

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_DNSPOD_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_f

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_GOOGLE_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v2, [J

    fill-array-data v10, :array_10

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_QUAD9_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x5

    new-array v10, v10, [J

    fill-array-data v10, :array_11

    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/v2ray/ang/AppConfig;->getDNS_YANDEX_ADDRESSES()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :try_start_1
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_12

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 49
    invoke-static/range {v16 .. v16}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v16, :cond_b

    .line 50
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_13

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    check-cast v5, Ljava/lang/Iterable;

    .line 51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 53
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 54
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 57
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_14

    invoke-direct {v13, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v4, v3, v12}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 58
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v1, 0x4

    goto :goto_4

    .line 59
    :cond_a
    invoke-static {v5, v9}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v1

    const/16 v8, 0x10

    invoke-static {v1, v8}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceAtLeast(II)I

    move-result v1

    .line 60
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 61
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 62
    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    .line 63
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_15

    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 64
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    invoke-static {v8, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v12, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    if-eqz v12, :cond_c

    .line 67
    invoke-interface {v7, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 68
    :catch_0
    :try_start_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_16

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x6

    new-array v5, v5, [J

    fill-array-data v5, :array_17

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    :cond_c
    :goto_6
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;

    const/16 v12, 0x3c

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;-><init>(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, p1

    invoke-virtual {v5, v1}, Lcom/v2ray/ang/dto/V2rayConfig;->setDns(Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;)V

    .line 70
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    new-array v5, v15, [Ljava/lang/String;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v19

    .line 73
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 74
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_18

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v21

    .line 75
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_19

    invoke-direct {v6, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v32, 0x3fd1

    const/16 v33, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v17, v5

    .line 76
    invoke-direct/range {v17 .. v33}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_d
    return v15

    .line 78
    :catch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1a

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_1b

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    return v4

    :array_0
    .array-data 8
        -0xe94b1f1a7c2327fL    # -2.222528196385637E238
        0x1e8f7a6d817e0640L
    .end array-data

    :array_1
    .array-data 8
        -0x6cf5c28ce461e732L    # -5.946721349806431E-217
        -0x6705f1633fb5b1f2L    # -2.339313667637103E-188
    .end array-data

    :array_2
    .array-data 8
        -0xd7f9bf68fa5999bL    # -3.497404301775967E243
        -0x1451d98dbb2d9b91L    # -4.9560640644882425E210
        -0x4e35825384e0115bL    # -7.67658264139006E-69
    .end array-data

    :array_3
    .array-data 8
        -0x321e5caf079a824eL    # -1.4859947066637075E67
        -0x62dfdbbb715298ceL
    .end array-data

    :array_4
    .array-data 8
        0x42c7042400851b0aL    # 5.061310264376608E13
        0x16b6adddb9d20d48L    # 2.962851811562644E-199
    .end array-data

    :array_5
    .array-data 8
        0x5545749577ef0b54L    # 6.006829015773438E102
        0x72e49c58e495245bL    # 2.814620762812749E245
    .end array-data

    :array_6
    .array-data 8
        -0x1113295b2e953321L    # -2.1349057741956513E226
        -0x6b4a21074b10c93eL
    .end array-data

    :array_7
    .array-data 8
        0x533b00ed3b9277cfL    # 8.801175231124716E92
        -0x1db3fadcc112e64aL    # -3.2271328053883186E165
        0x7adc89f4502ff3eL
    .end array-data

    :array_8
    .array-data 8
        -0x65e63913c6aefae2L
        -0xf933fa00d52a38aL    # -3.5709734493770496E233
        0x23653854e5c9b4e3L
        -0x11875ba29d3598caL    # -1.4251928175874415E224
    .end array-data

    :array_9
    .array-data 8
        0x3aa5f79cf6848c19L    # 3.5489988396172E-26
        -0x68c4259abeb72633L    # -9.315292584367208E-197
        0x4c6dc9453363694dL    # 1.495768672794509E60
    .end array-data

    :array_a
    .array-data 8
        -0x7322e7abde824a0L    # -8.065494308925572E273
        -0x130d8e53486a41e8L    # -6.358182522918899E216
        0x4462c55f49acd639L    # 2.770108483853668E21
    .end array-data

    :array_b
    .array-data 8
        -0x6513c2cf72cd8205L    # -5.444302424054052E-179
        0x714559b6006312a0L
        0x5e578fc2254f777eL    # 2.9421301537933236E146
    .end array-data

    :array_c
    .array-data 8
        0x68f24be2839e9e7fL    # 3.4191914167898526E197
        -0x7be77da80aea9e0bL    # -6.287420444865683E-289
        0x57b961ad742a4261L    # 3.9065785405966663E114
        0x48163281c7ef705bL    # 1.8883368333786143E39
    .end array-data

    :array_d
    .array-data 8
        0x683c2d7141896dbfL    # 1.2855821338754385E194
        -0x434782e8b5649097L    # -3.398481031186316E-16
        -0xbd9cacbeb84c4f4L    # -3.1800389649247E251
        -0x1aeb920251d724d6L    # -8.278628854866936E178
    .end array-data

    :array_e
    .array-data 8
        -0x5da9f6c449db49c8L
        -0x1e2ed35e51a0d5c2L    # -1.5453176879751955E163
    .end array-data

    :array_f
    .array-data 8
        -0x5d5196479422fdc4L
        0x5d4ddd6eaaf1048bL    # 2.845182083384963E141
        -0x65e1a473a8e17e29L    # -7.144473419275966E-183
    .end array-data

    :array_10
    .array-data 8
        0x6526b5509fcd2e80L    # 1.8403961825260015E179
        0x75b5a3123126f7a6L    # 1.0396167304422165E259
        -0x6cd1eec3e640d58aL
    .end array-data

    :array_11
    .array-data 8
        0x2e8bf436f0f79a62L    # 1.7986829516626128E-84
        -0x23bc236dafe63171L    # -2.8872370999227715E136
        0x7798972381ca765aL    # 1.268649043094112E268
        0x2d99b4a32c37bf39L    # 5.047650629019669E-89
        0x55e034013c34872aL    # 4.645235998558214E105
    .end array-data

    :array_12
    .array-data 8
        0x46db27c2629d2903L    # 2.2031004677818206E33
        -0x57dd819a8f4affbaL    # -2.346801234355728E-115
        -0x44f18f69adcf6b96L    # -3.147400901627946E-24
    .end array-data

    :array_13
    .array-data 8
        0x59761f6639910359L    # 9.14019512064117E122
        0x2e5b1076be23f568L    # 2.176798499562854E-85
    .end array-data

    :array_14
    .array-data 8
        0x5ea8069144f5b68eL    # 9.600262523586086E147
        -0x185d3948fb09491eL    # -1.673153029328458E191
    .end array-data

    :array_15
    .array-data 8
        0x16621eb2213b7ab9L    # 7.397565688423658E-201
        0x491c1123cb56cf07L    # 1.5647848864663982E44
    .end array-data

    :array_16
    .array-data 8
        -0x107dc6f558bd4b03L    # -1.3814089790626274E229
        0x662084399abee84L
        -0xaf9cef9007fd331L    # -5.20634867320597E255
    .end array-data

    :array_17
    .array-data 8
        0x6e1507cc9304bb99L    # 1.9004904826285278E222
        0x2209412dcee606e1L
        0x7b9a4760db7b4d6fL    # 2.5009313386815864E287
        -0x3a1775f14c589c4L
        0x26e066cb59ee860dL
        0x425a38f1a8b7c584L    # 4.504980446390862E11
    .end array-data

    :array_18
    .array-data 8
        -0x723d4961c9e8cc02L    # -2.192527639915037E-242
        0x2af1d2e6f9271e80L    # 7.957976878569717E-102
    .end array-data

    :array_19
    .array-data 8
        -0x7b853c903cd144f1L    # -4.394058367426945E-287
        0x59fe5dff60bc7e79L    # 3.2119046843101637E125
    .end array-data

    :array_1a
    .array-data 8
        0x111f41b1ce708db0L
        -0x3e2ca7cd73c7f1L
        -0x7359a6878aad55a2L    # -9.988983091833075E-248
    .end array-data

    :array_1b
    .array-data 8
        -0x524b9651af0e83bbL    # -1.6033347543031774E-88
        -0x5aa57c63303e6befL    # -9.562665023009007E-129
        0x4e1360bc32b3d6bfL    # 1.3060659671650168E68
        -0x3bfb4584348104a2L    # -4.7796554891703075E19
    .end array-data
.end method

.method private final getFakeDns(Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v2, v2, [J

    .line 28
    .line 29
    fill-array-data v2, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v3, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x3

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v0, v3, v1, v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$FakednsBean;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/v2ray/ang/dto/V2rayConfig;->setFakedns(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 8
        -0x4e70dd78d9f88947L    # -5.6389486694400193E-70
        -0x6edc687bafc7b27cL    # -4.135128343194916E-226
        -0x727656942e154507L
        -0x1712863be5e08ce8L    # -2.7541687517728086E197
    .end array-data

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
    :array_1
    .array-data 8
        -0x59461a68b786329fL    # -3.917495774893935E-122
        0x1da95f1f0493cdfbL    # 8.605174657908963E-166
        0x7637d442881b97d3L    # 2.931059441875344E261
        0x77ab03490662739eL    # 2.787252335172617E268
    .end array-data
.end method

.method private final getInbounds(Lcom/v2ray/ang/dto/V2rayConfig;)Z
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    sget-object v4, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 6
    .line 7
    invoke-virtual {v4}, Lcom/v2ray/ang/handler/SettingsManager;->getSocksPort()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x1

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 31
    .line 32
    sget-object v8, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 33
    .line 34
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v10, v1, [J

    .line 37
    .line 38
    fill-array-data v10, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {v8, v9}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eq v8, v7, :cond_0

    .line 53
    .line 54
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v8, v0, [J

    .line 57
    .line 58
    fill-array-data v8, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->setListen(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 81
    .line 82
    invoke-virtual {v5, v4}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->setPort(I)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 86
    .line 87
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v6, v2, [J

    .line 90
    .line 91
    fill-array-data v6, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-ne v5, v7, :cond_2

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    const/4 v5, 0x0

    .line 110
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v8, v2, [J

    .line 113
    .line 114
    fill-array-data v8, :array_3

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v4, v6, v7}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    check-cast v8, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getSniffing()Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    if-eqz v8, :cond_5

    .line 143
    .line 144
    if-nez v5, :cond_4

    .line 145
    .line 146
    if-eqz v6, :cond_3

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    const/4 v9, 0x0

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    :goto_2
    const/4 v9, 0x1

    .line 152
    :goto_3
    invoke-virtual {v8, v9}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;->setEnabled(Z)V

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 164
    .line 165
    invoke-virtual {v8}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getSniffing()Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    if-eqz v8, :cond_6

    .line 170
    .line 171
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    new-array v2, v2, [J

    .line 174
    .line 175
    fill-array-data v2, :array_4

    .line 176
    .line 177
    .line 178
    invoke-direct {v9, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v4, v2, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v8, v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;->setRouteOnly(Ljava/lang/Boolean;)V

    .line 194
    .line 195
    .line 196
    :cond_6
    if-nez v6, :cond_7

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getSniffing()Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-eqz v2, :cond_7

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;->getDestOverride()Ljava/util/ArrayList;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-eqz v2, :cond_7

    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 221
    .line 222
    .line 223
    :cond_7
    if-eqz v5, :cond_8

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->getSniffing()Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-eqz v2, :cond_8

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean$SniffingBean;->getDestOverride()Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-eqz v2, :cond_8

    .line 246
    .line 247
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 248
    .line 249
    const/4 v5, 0x2

    .line 250
    new-array v5, v5, [J

    .line 251
    .line 252
    fill-array-data v5, :array_5

    .line 253
    .line 254
    .line 255
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :cond_8
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/v2ray/ang/util/Utils;->isXray()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_9

    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_9
    sget-object v2, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;

    .line 300
    .line 301
    invoke-virtual {p1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$InboundBean;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .line 303
    .line 304
    :goto_4
    return v7

    .line 305
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v0, v0, [J

    .line 308
    .line 309
    fill-array-data v0, :array_6

    .line 310
    .line 311
    .line 312
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 319
    .line 320
    new-array v0, v1, [J

    .line 321
    .line 322
    fill-array-data v0, :array_7

    .line 323
    .line 324
    .line 325
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    return v3

    .line 332
    nop

    .line 333
    :array_0
    .array-data 8
        0x5443a641ed29d31cL    # 8.394191297582682E97
        -0x4a6af487b17d8f09L    # -1.4061952689053647E-50
        -0x2b49f186b5cd4f9aL
        0x47b566c9a3449120L    # 2.8447491890795036E37
        0x1cf3bc6eec2631e9L    # 3.268459201624016E-169
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
    :array_1
    .array-data 8
        0x5be8c09c4309614dL    # 5.622184836384807E134
        0x6d9aed90f2b548a8L    # 9.5056285077012E219
        0x2ee29a4b18a73696L    # 7.660681015923521E-83
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
    .line 370
    .line 371
    .line 372
    .line 373
    :array_2
    .array-data 8
        -0x6fe7a6de1929ecf0L
        0x2afff8bce5c096a3L    # 1.427467681676995E-101
        -0x5d8eb95fcee7fddfL    # -8.854464248617975E-143
        0x3624030f99bf16ebL    # 6.846368243687133E-48
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
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
    :array_3
    .array-data 8
        -0xa12d7a32e700a2bL
        -0x3857c226ccfc0a1aL    # -1.6111303665977307E37
        -0x78f0d3b3564b0d4L
        0x54e0da6e267c507aL    # 7.372453707389783E100
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
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
    :array_4
    .array-data 8
        0x7ea80b089b4ebe97L    # 1.2881194338169545E302
        0x2d8426d7687ed28eL    # 1.978533968194452E-89
        0x2bab8b97a9edb6fdL    # 2.518712888611647E-98
        -0x15a30ad2c588b840L
    .end array-data

    .line 414
    .line 415
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
    :array_5
    .array-data 8
        -0x3dc7c9f10b1cf0b7L    # -1.0398616496305971E11
        0x2b64370865b55029L    # 1.155272898846697E-99
    .end array-data

    .line 434
    .line 435
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
    :array_6
    .array-data 8
        0x6caababee986d640L    # 2.8795018071306793E215
        -0x397f363ec14b9e2L    # -1.874940455215588E291
        -0x2a1d799f62ba36e6L    # -5.310857423300607E105
    .end array-data

    .line 446
    .line 447
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
    .line 460
    .line 461
    :array_7
    .array-data 8
        0x33e226bd3db7364bL    # 9.036477867717011E-59
        -0x6b3fb9ba2116af8fL    # -9.900582918830575E-209
        -0x2ad316810cd6d034L
        0x747e16f7da328d21L    # 1.378778533742169E253
        0x2d4ede8268662743L    # 1.8942459610355468E-90
    .end array-data
.end method

.method private final getMoreOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v2, v4, :cond_0

    .line 26
    .line 27
    return v3

    .line 28
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    return v3

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v5, v0, [J

    .line 53
    .line 54
    fill-array-data v5, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 68
    .line 69
    sget-object v2, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/SubscriptionItem;->getPrevProfile()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v2, v5}, Lcom/v2ray/ang/handler/SettingsManager;->getServerViaRemarks(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    invoke-direct {p0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->convertProfile2Outbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    invoke-direct {p0, v5}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;)Z

    .line 88
    .line 89
    .line 90
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v7, v0, [J

    .line 93
    .line 94
    fill-array-data v7, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setTag(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->ensureSockopt()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getTag()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v6, v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;->setDialerProxy(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/SubscriptionItem;->getNextProfile()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {v2, p2}, Lcom/v2ray/ang/handler/SettingsManager;->getServerViaRemarks(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-direct {p0, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->convertProfile2Outbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    if-eqz p2, :cond_4

    .line 140
    .line 141
    invoke-direct {p0, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;)Z

    .line 142
    .line 143
    .line 144
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v5, v0, [J

    .line 147
    .line 148
    fill-array-data v5, :array_3

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {p2, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setTag(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v0, v0, [J

    .line 171
    .line 172
    fill-array-data v0, :array_4

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setTag(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->ensureSockopt()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getTag()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;->setDialerProxy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    :cond_4
    return v4

    .line 197
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    const/4 p2, 0x3

    .line 200
    new-array p2, p2, [J

    .line 201
    .line 202
    fill-array-data p2, :array_5

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    const/4 p2, 0x6

    .line 214
    new-array p2, p2, [J

    .line 215
    .line 216
    fill-array-data p2, :array_6

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    return v3

    .line 226
    nop

    .line 227
    :array_0
    .array-data 8
        0x7ecde9d969a1a69dL    # 6.410508908796247E302
        0x7c93172361f49316L    # 1.190667412674771E292
        -0x71186d8f123796a8L
        0x16789a5cc7425739L
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_1
    .array-data 8
        -0x6d128998015b04e5L
        0x59302bda3c30c24fL    # 4.17583342351117E121
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_2
    .array-data 8
        0x65aababa8a53a3c6L
        -0x3b4fbc2d72b0a6f6L    # -7.680896744881638E22
    .end array-data

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
    :array_3
    .array-data 8
        -0x267253885a65715eL    # -2.451997117723059E123
        -0x2c3debee96903cfaL    # -3.016813135247938E95
    .end array-data

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
    .line 282
    .line 283
    :array_4
    .array-data 8
        -0x5e823aa6bfac76c5L    # -2.328273509249785E-147
        -0x393b0257f7d3eec5L    # -8.514898411006016E32
    .end array-data

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
    :array_5
    .array-data 8
        0x3a484e761b872d87L    # 6.135820624019182E-28
        -0x31eb524823ed5388L    # -1.3937339881968928E68
        0x4c5b46ad292417a5L    # 6.848589094476641E59
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
    :array_6
    .array-data 8
        0x544c45690a4163ddL    # 1.2077355157533756E98
        0x8e03658af2d19d4L
        -0x66ff2fa9eb7a1db7L    # -3.018971019348271E-188
        -0x4eaa3ceb9f67e21fL    # -4.9267489228840965E-71
        0xd5c2e46e0037851L
        -0x7965f7ad88b831b3L    # -7.342771504319734E-277
    .end array-data
.end method

.method private final getOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->convertProfile2Outbound(Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundFragment(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 43
    .line 44
    .line 45
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    return-object p1
.end method

.method private final getPlusOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Integer;
    .locals 25

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    :try_start_0
    sget-object v3, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 5
    .line 6
    sget-object v4, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 7
    .line 8
    invoke-virtual {v4}, Lcom/v2ray/ang/handler/SettingsManager;->getSocksPort()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    add-int/lit8 v4, v4, 0x64

    .line 13
    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-array v6, v0, [Ljava/lang/Integer;

    .line 23
    .line 24
    aput-object v4, v6, v1

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aput-object v5, v6, v4

    .line 28
    .line 29
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/util/Utils;->findFreePort(Ljava/util/List;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v5, v2, [J

    .line 60
    .line 61
    fill-array-data v5, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 75
    .line 76
    new-instance v18, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 77
    .line 78
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v6, v2, [J

    .line 81
    .line 82
    fill-array-data v6, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/16 v16, 0x3ee

    .line 93
    .line 94
    const/16 v17, 0x0

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    const/4 v14, 0x0

    .line 103
    const/4 v15, 0x0

    .line 104
    move-object/from16 v5, v18

    .line 105
    .line 106
    move v10, v3

    .line 107
    invoke-direct/range {v5 .. v17}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    .line 109
    .line 110
    invoke-static/range {v18 .. v18}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const v23, 0x1fff7

    .line 115
    .line 116
    .line 117
    const/16 v24, 0x0

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v11, 0x0

    .line 124
    const/4 v12, 0x0

    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v15, 0x0

    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const/16 v19, 0x0

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const/16 v21, 0x0

    .line 139
    .line 140
    const/16 v22, 0x0

    .line 141
    .line 142
    move-object v5, v4

    .line 143
    invoke-direct/range {v5 .. v24}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 147
    .line 148
    const/16 v13, 0x39

    .line 149
    .line 150
    const/4 v14, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v9, 0x0

    .line 153
    const/4 v10, 0x0

    .line 154
    const/4 v11, 0x0

    .line 155
    const/4 v12, 0x0

    .line 156
    move-object v5, v15

    .line 157
    move-object v7, v0

    .line 158
    move-object v8, v4

    .line 159
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_0

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object v0

    .line 192
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v1, v2, [J

    .line 195
    .line 196
    fill-array-data v1, :array_3

    .line 197
    .line 198
    .line 199
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    const/4 v1, 0x5

    .line 208
    new-array v1, v1, [J

    .line 209
    .line 210
    fill-array-data v1, :array_4

    .line 211
    .line 212
    .line 213
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x0

    .line 220
    return-object v0

    .line 221
    :array_0
    .array-data 8
        -0x3497759097db2d60L    # -1.8804304499043345E55
        -0x9fcda052d41ff98L    # -2.944135654326137E260
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_1
    .array-data 8
        0x27d4b822ca04145eL    # 8.216301512924358E-117
        -0x35be2b44a8ac60c5L    # -5.212002344923219E49
        0x2953bd403c66ed80L
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_2
    .array-data 8
        0x9fdc9cb36bddae7L
        -0x4c28b3fda6b00854L    # -5.79908128362306E-59
        0x6a9f077a93f49468L    # 3.8914175820446333E205
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_3
    .array-data 8
        -0x57d85a7dc4ab85d1L    # -3.0006744213807145E-115
        0x505f96b2cb3d6ca3L    # 1.4630870380529314E79
        -0x2c9e7f91abe04ad1L    # -4.563399538835712E93
    .end array-data

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
    :array_4
    .array-data 8
        0x26fd8b47d4cab519L    # 7.150756656558715E-121
        -0x52ebd3a00ddf8612L    # -1.5473876053255713E-91
        0x3973d9bdae5fbd57L    # 6.116923156118184E-32
        -0x9978bb6c51e84baL
        0x99b13da54fe086bL
    .end array-data
.end method

.method private final getRouting(Lcom/v2ray/ang/dto/V2rayConfig;)Z
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v3, v0, [J

    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    new-array v3, v3, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_0
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->setDomainStrategy(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/v2ray/ang/dto/RulesetItem;

    .line 69
    .line 70
    sget-object v3, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 71
    .line 72
    invoke-direct {v3, v2, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getRoutingUserRule(Lcom/v2ray/ang/dto/RulesetItem;Lcom/v2ray/ang/dto/V2rayConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    new-array v1, v1, [J

    .line 82
    .line 83
    fill-array-data v1, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v0, v0, [J

    .line 95
    .line 96
    fill-array-data v0, :array_3

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    return p1

    .line 107
    :array_0
    .array-data 8
        -0x69ed1dcc89bd1eadL
        -0x712e106122c65299L    # -2.754415491657622E-237
        -0x19f778f0b832da21L    # -3.2568819923622896E183
        0x2637289251bb0575L
        -0x3a935280e9383df5L    # -2.7735389382989895E26
    .end array-data

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
    .line 130
    .line 131
    :array_1
    .array-data 8
        -0x41ce910792d0e361L    # -4.059047947535955E-9
        -0x3b752f014533b6a4L    # -1.582960081622364E22
    .end array-data

    .line 132
    .line 133
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
    :array_2
    .array-data 8
        0x5869b71028278410L    # 8.105809173691653E117
        0x510962370e66fd31L    # 2.4078140752557305E82
        0x1803c7012ad12c3aL
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x8ecfa239e24492L
        0x51c688a53c74366aL    # 8.755131307180026E85
        0x56ffe1065719e761L    # 1.1979071364584275E111
        0x926461d60a08cc5L
        0x12a7eb9a68947afcL
    .end array-data
.end method

.method private final getRoutingUserRule(Lcom/v2ray/ang/dto/RulesetItem;Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/RulesetItem;->getEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-class v1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean$RulesBean;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 p2, 0x3

    .line 42
    new-array p2, p2, [J

    .line 43
    .line 44
    fill-array-data p2, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    const/4 p2, 0x6

    .line 56
    new-array p2, p2, [J

    .line 57
    .line 58
    fill-array-data p2, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x3fc850e4efad03e4L    # 0.18996869757577806
        -0x1a07080b5b565211L    # -1.657719964601967E183
        -0xc0824613cacc556L
    .end array-data

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
    :array_1
    .array-data 8
        -0x7c4b523299ac9ec5L    # -8.288805593135144E-291
        0x152e700fa2ee6f03L
        -0x17fdcd3d8b7cd7eeL    # -1.0378571280610734E193
        -0x5fa519e33787b60dL    # -8.024839507122862E-153
        0x274982be72370b2L
        -0x74038aa348f166fL    # -4.297853061048021E273
    .end array-data
.end method

.method private final getUserRule2Domain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeRoutingRulesets()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast v2, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/v2ray/ang/dto/RulesetItem;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/RulesetItem;->getEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/RulesetItem;->getOutboundTag()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/RulesetItem;->getDomain()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/util/Collection;

    .line 54
    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/RulesetItem;->getDomain()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    check-cast v3, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ljava/lang/String;

    .line 87
    .line 88
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    new-array v6, v6, [J

    .line 92
    .line 93
    fill-array-data v6, :array_0

    .line 94
    .line 95
    .line 96
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_2

    .line 108
    .line 109
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v6, v0, [J

    .line 112
    .line 113
    fill-array-data v6, :array_1

    .line 114
    .line 115
    .line 116
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    invoke-static {v4, v5, v6, v0, v7}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_3

    .line 130
    .line 131
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v8, v0, [J

    .line 134
    .line 135
    fill-array-data v8, :array_2

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v4, v5, v6, v0, v7}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_2

    .line 150
    .line 151
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    return-object v1

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        0x26e23ae54d98ad0cL
        0x2df4abc030b37755L    # 2.5977698993029334E-87
        0x507a5a6781850052L    # 4.882376569122196E79
    .end array-data

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
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 8
        0x61b7c7d77ffc046dL    # 5.34935067146281E162
        -0x1f6a9cad39bc9677L    # -1.8353020916748934E157
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_2
    .array-data 8
        0x301f353fa8989c0aL    # 6.737939268645233E-77
        -0x361faf1567e899c8L    # -7.451867838239574E47
    .end array-data
.end method

.method private final getV2rayCustomConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;
    .locals 11

    .line 1
    sget-object p2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerRaw(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/v2ray/ang/dto/ConfigResult;

    .line 10
    .line 11
    const/16 v9, 0xe

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v4, p1

    .line 19
    invoke-direct/range {v4 .. v10}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p2, Lcom/v2ray/ang/dto/ConfigResult;

    .line 24
    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v1, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v0, p2

    .line 31
    move-object v2, p1

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    return-object p2
.end method

.method private final getV2rayNormalConfig(Landroid/content/Context;Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    new-instance v10, Lcom/v2ray/ang/dto/ConfigResult;

    .line 5
    .line 6
    const/16 v8, 0xe

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v3, v10

    .line 14
    invoke-direct/range {v3 .. v9}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    return-object v10

    .line 24
    :cond_0
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 p2, 0x3

    .line 41
    new-array p2, p2, [J

    .line 42
    .line 43
    fill-array-data p2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    return-object v10

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->initV2rayConfig(Landroid/content/Context;)Lcom/v2ray/ang/dto/V2rayConfig;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    return-object v10

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getLog()Lcom/v2ray/ang/dto/V2rayConfig$LogBean;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v5, v2, [J

    .line 67
    .line 68
    fill-array-data v5, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v5, v1, [J

    .line 87
    .line 88
    fill-array-data v5, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :cond_3
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/dto/V2rayConfig$LogBean;->setLoglevel(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p1, v3}, Lcom/v2ray/ang/dto/V2rayConfig;->setRemarks(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getInbounds(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 116
    .line 117
    if-ne v3, v4, :cond_5

    .line 118
    .line 119
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getPlusOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    if-nez p3, :cond_4

    .line 124
    .line 125
    return-object v10

    .line 126
    :cond_4
    invoke-virtual {v10, p3}, Lcom/v2ray/ang/dto/ConfigResult;->setSocksPort(Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_a

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getMoreOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    :goto_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getRouting(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getFakeDns(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 150
    .line 151
    .line 152
    sget-object p3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 153
    .line 154
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v4, v2, [J

    .line 157
    .line 158
    fill-array-data v4, :array_3

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {p3, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-ne v3, v0, :cond_6

    .line 173
    .line 174
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getCustomLocalDns(Lcom/v2ray/ang/dto/V2rayConfig;)Z

    .line 175
    .line 176
    .line 177
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v2, v2, [J

    .line 180
    .line 181
    fill-array-data v2, :array_4

    .line 182
    .line 183
    .line 184
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    if-eq p3, v0, :cond_7

    .line 196
    .line 197
    const/4 p3, 0x0

    .line 198
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setStats(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setPolicy(Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    const/4 v2, 0x6

    .line 207
    new-array v2, v2, [J

    .line 208
    .line 209
    fill-array-data v2, :array_5

    .line 210
    .line 211
    .line 212
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 220
    .line 221
    new-array v3, v1, [J

    .line 222
    .line 223
    fill-array-data v3, :array_6

    .line 224
    .line 225
    .line 226
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {p3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v1, v1, [J

    .line 240
    .line 241
    fill-array-data v1, :array_7

    .line 242
    .line 243
    .line 244
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p3

    .line 255
    if-eqz p3, :cond_8

    .line 256
    .line 257
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->resolveOutboundDomainsToHosts(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 258
    .line 259
    .line 260
    :cond_8
    invoke-virtual {v10, v0}, Lcom/v2ray/ang/dto/ConfigResult;->setStatus(Z)V

    .line 261
    .line 262
    .line 263
    sget-object p3, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 264
    .line 265
    invoke-virtual {p3, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJsonPretty(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-nez p1, :cond_9

    .line 270
    .line 271
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 272
    .line 273
    new-array p3, v0, [J

    .line 274
    .line 275
    const-wide v0, 0x659dd6e44708e709L    # 3.0954785229585733E181

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    const/4 v2, 0x0

    .line 281
    aput-wide v0, p3, v2

    .line 282
    .line 283
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    :cond_9
    invoke-virtual {v10, p1}, Lcom/v2ray/ang/dto/ConfigResult;->setContent(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10, p2}, Lcom/v2ray/ang/dto/ConfigResult;->setGuid(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_a
    return-object v10

    .line 297
    :array_0
    .array-data 8
        -0x71967d2f2a892a53L    # -3.060701119756242E-239
        -0x5b712dbfabde54efL
        -0x5199cee80bea1dbeL    # -3.5697944718579464E-85
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
    .line 310
    .line 311
    .line 312
    .line 313
    :array_1
    .array-data 8
        -0x58f291983a1621a9L
        -0x2150cf95d7d336ccL    # -1.2462667469214728E148
        -0xc46e1d67d9a6e6aL
        -0x69984a7fdd4a0c2aL    # -9.679343205560336E-201
    .end array-data

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
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_2
    .array-data 8
        -0x2eb91a26540dc8beL    # -3.47523016043834E83
        -0x484ab6f4644ed116L    # -2.44343643941651E-40
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
    :array_3
    .array-data 8
        0x79843ffebc2d1995L    # 2.243523575004981E277
        0x3c030d6ec19774cfL    # 1.291045670419334E-19
        0x4a90b44c22d32b22L    # 1.5624539152865575E51
        -0x4307288d6b74cd5eL    # -5.5159415048522534E-15
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
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_4
    .array-data 8
        -0x7b6f48f722a8ee1aL
        -0x7300b932383d899fL
        0x33b4d49f52ef965L
        0x21be0a526fff413fL    # 3.758951102450996E-146
    .end array-data

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
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_5
    .array-data 8
        -0x5b4f8d866f06a33bL    # -5.792859856853708E-132
        -0x6dc81773f5371eeeL
        0x5cdf2046f85e8f38L    # 2.316660981894401E139
        0x15001560edf4825bL
        -0x6e85b572181bb50fL
        0x4e22a4ac1bbafb4fL    # 2.5131052854967495E68
    .end array-data

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
    :array_6
    .array-data 8
        -0x29cfe8235f028c91L    # -1.476390220100878E107
        -0x10aa6ccbff00be39L    # -2.0444089895808934E228
    .end array-data

    .line 414
    .line 415
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
    :array_7
    .array-data 8
        0x42e311a3aa3fd123L    # 1.677318497235291E14
        0x2082185f3ee5409L
    .end array-data
.end method

.method private final getV2rayNormalConfig4Speedtest(Landroid/content/Context;Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v8, Lcom/v2ray/ang/dto/ConfigResult;

    .line 3
    .line 4
    const/16 v6, 0xe

    .line 5
    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, v8

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v8

    .line 22
    :cond_0
    sget-object v2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/util/Utils;->isPureIpAddress(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 p2, 0x3

    .line 39
    new-array p2, p2, [J

    .line 40
    .line 41
    fill-array-data p2, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    return-object v8

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/V2rayConfigManager;->initV2rayConfig(Landroid/content/Context;)Lcom/v2ray/ang/dto/V2rayConfig;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    return-object v8

    .line 58
    :cond_2
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 63
    .line 64
    if-ne v1, v2, :cond_4

    .line 65
    .line 66
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getPlusOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    if-nez p3, :cond_3

    .line 71
    .line 72
    return-object v8

    .line 73
    :cond_3
    invoke-virtual {v8, p3}, Lcom/v2ray/ang/dto/ConfigResult;->setSocksPort(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-direct {p0, p1, p3}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getMoreOutbounds(Lcom/v2ray/ang/dto/V2rayConfig;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getLog()Lcom/v2ray/ang/dto/V2rayConfig$LogBean;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    new-array v2, v2, [J

    .line 98
    .line 99
    fill-array-data v2, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    new-array v2, v2, [J

    .line 119
    .line 120
    fill-array-data v2, :array_2

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_5
    invoke-virtual {p3, v1}, Lcom/v2ray/ang/dto/V2rayConfig$LogBean;->setLoglevel(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getInbounds()Ljava/util/ArrayList;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getRouting()Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/V2rayConfig$RoutingBean;->getRules()Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 149
    .line 150
    .line 151
    const/4 p3, 0x0

    .line 152
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setDns(Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setFakedns(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setStats(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p3}, Lcom/v2ray/ang/dto/V2rayConfig;->setPolicy(Lcom/v2ray/ang/dto/V2rayConfig$PolicyBean;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_6

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 183
    .line 184
    invoke-virtual {v2, p3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setMux(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {v8, v0}, Lcom/v2ray/ang/dto/ConfigResult;->setStatus(Z)V

    .line 189
    .line 190
    .line 191
    sget-object p3, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJsonPretty(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-nez p1, :cond_7

    .line 198
    .line 199
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 200
    .line 201
    new-array p3, v0, [J

    .line 202
    .line 203
    const-wide v0, 0x534951b3a063eabbL    # 1.6504324352171049E93

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    aput-wide v0, p3, v2

    .line 210
    .line 211
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :cond_7
    invoke-virtual {v8, p1}, Lcom/v2ray/ang/dto/ConfigResult;->setContent(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, p2}, Lcom/v2ray/ang/dto/ConfigResult;->setGuid(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_8
    return-object v8

    .line 225
    :array_0
    .array-data 8
        -0x2683dcc748a1bdfaL
        -0x6eec40f21e185c64L
        0x39e62cc9398eb67dL    # 8.746473769389544E-30
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 8
        -0x768bc754b561ada0L    # -4.013601393539263E-263
        -0x5c461836fa7e16aeL
        -0x67452f5bf1ad7df6L
        -0x4eec1a5032aa58b9L    # -2.8153559769866906E-72
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :array_2
    .array-data 8
        -0x41d405ad16326f9bL    # -3.257047810643791E-9
        0x186126c08cc503f4L
    .end array-data
.end method

.method private final initV2rayConfig(Landroid/content/Context;)Lcom/v2ray/ang/dto/V2rayConfig;
    .locals 3

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager;->initConfigCache:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

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
    invoke-virtual {v0, p1, v1}, Lcom/v2ray/ang/util/Utils;->readTextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return-object p1

    .line 34
    :cond_1
    sput-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager;->initConfigCache:Ljava/lang/String;

    .line 35
    .line 36
    sget-object p1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 37
    .line 38
    const-class v1, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 45
    .line 46
    return-object p1

    .line 47
    :array_0
    .array-data 8
        -0x548834736df24febL    # -2.719751491715067E-99
        -0x6d0b56c60a537b73L
        0x490f44aa0d9bb41cL    # 8.716307533607607E43
        -0xfde010124e57a5L
    .end array-data
.end method

.method private final resolveOutboundDomainsToHosts(Lcom/v2ray/ang/dto/V2rayConfig;)V
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getAllProxyOutbound()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getDns()Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;->getHosts()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, L디듰듟드딄되뒝딌땄딻땰딜둡딟돼뎻뒻됫땁딐뒹둘땔땤돷땐땲땤뒛뒼뒙뎰도땝둠땳들뒷땟딤땨뒤돳딟둔둘땡됨땵돳땤땠땳땋땮뎬뒷됩뎬돤땐됩땬뒉땟뎬딌된둡땃땰뒹딠땹뒉됩딃뎸둡땪뒹둠땭딻뒷뒹듻뎸돛땳땯땫땜땻돵뒻뎠될듸딠땸딄듌됩뎸따둑땲뎬땄돼땥듽돼땲뎠딎든듰돵뒐들둘둣딹돷땄땪딀든;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_2
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v5, v0, [J

    .line 35
    .line 36
    fill-array-data v5, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    if-ne v3, v5, :cond_3

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v3, 0x0

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_b

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getServerAddress()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-eqz v7, :cond_4

    .line 78
    .line 79
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-nez v8, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_7

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->ensureSockopt()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v8, v0, [J

    .line 99
    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    fill-array-data v8, :array_1

    .line 103
    .line 104
    .line 105
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    fill-array-data v8, :array_2

    .line 114
    .line 115
    .line 116
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_3
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;->setDomainStrategy(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    sget-object v8, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 125
    .line 126
    invoke-virtual {v8, v7, v3}, Lcom/v2ray/ang/util/HttpUtil;->resolveHostToIP(Ljava/lang/String;Z)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    move-object v9, v8

    .line 131
    check-cast v9, Ljava/util/Collection;

    .line 132
    .line 133
    if-eqz v9, :cond_4

    .line 134
    .line 135
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_8

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_8
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->ensureSockopt()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 147
    .line 148
    new-array v10, v0, [J

    .line 149
    .line 150
    if-eqz v3, :cond_9

    .line 151
    .line 152
    fill-array-data v10, :array_3

    .line 153
    .line 154
    .line 155
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    :goto_4
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    goto :goto_5

    .line 163
    :cond_9
    fill-array-data v10, :array_4

    .line 164
    .line 165
    .line 166
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :goto_5
    invoke-virtual {v6, v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;->setDomainStrategy(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-ne v6, v5, :cond_a

    .line 178
    .line 179
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    :cond_a
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_b
    invoke-virtual {p1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$DnsBean;->setHosts(Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :array_0
    .array-data 8
        -0x4c43b26738c75afdL    # -1.761307012524049E-59
        0x1143103c9106a6fL
        0x3d9283274078cdadL    # 4.2092137131470375E-12
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_1
    .array-data 8
        0x21142e8a5f988819L
        0x4efd52eeee9b47eaL    # 3.2381843546575646E72
        0x7e33f4b8f1a12959L    # 8.352722264012745E299
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_2
    .array-data 8
        -0x5fbfab2ee0082d1fL    # -2.436090385198251E-153
        -0x6ebd0b74cd2e704aL    # -1.600304955762847E-225
        -0x5316e5c2d25f84ebL    # -2.4068456856304084E-92
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_3
    .array-data 8
        0xc27f3218fc9d089L
        0x3b8c38096f3b4543L    # 7.469479036988392E-22
        -0x322f5574090bee08L    # -7.020622099691315E66
    .end array-data

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_4
    .array-data 8
        -0x7ca332dfcea3a56dL
        0x2c7c2063b8733118L    # 2.1068683388944277E-94
        -0x76c2fb1dabeb7d83L
    .end array-data
.end method

.method private final updateOutboundFragment(Lcom/v2ray/ang/dto/V2rayConfig;)Z
    .locals 45

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 5
    .line 6
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    new-array v5, v0, [J

    .line 9
    .line 10
    fill-array-data v5, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return v4

    .line 28
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v5, 0x0

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v5

    .line 51
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v7, v1, [J

    .line 54
    .line 55
    fill-array-data v7, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v3, v5

    .line 93
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v7, v1, [J

    .line 96
    .line 97
    fill-array-data v7, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_3

    .line 112
    .line 113
    return v4

    .line 114
    :cond_3
    new-instance v3, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 115
    .line 116
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v7, v1, [J

    .line 119
    .line 120
    fill-array-data v7, :array_3

    .line 121
    .line 122
    .line 123
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v8, v1, [J

    .line 133
    .line 134
    fill-array-data v8, :array_4

    .line 135
    .line 136
    .line 137
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    const/16 v14, 0x3c

    .line 145
    .line 146
    const/4 v15, 0x0

    .line 147
    const/4 v9, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    const/4 v13, 0x0

    .line 152
    move-object v6, v3

    .line 153
    invoke-direct/range {v6 .. v15}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v7, v0, [J

    .line 159
    .line 160
    fill-array-data v7, :array_5

    .line 161
    .line 162
    .line 163
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v6}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    if-nez v6, :cond_4

    .line 175
    .line 176
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 177
    .line 178
    new-array v7, v1, [J

    .line 179
    .line 180
    fill-array-data v7, :array_6

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    check-cast v7, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 199
    .line 200
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    if-eqz v7, :cond_5

    .line 205
    .line 206
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    goto :goto_2

    .line 211
    :cond_5
    move-object v7, v5

    .line 212
    :goto_2
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v9, v1, [J

    .line 215
    .line 216
    fill-array-data v9, :array_7

    .line 217
    .line 218
    .line 219
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_6

    .line 231
    .line 232
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v8, v1, [J

    .line 235
    .line 236
    fill-array-data v8, :array_8

    .line 237
    .line 238
    .line 239
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    if-eqz v7, :cond_6

    .line 251
    .line 252
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    new-array v6, v1, [J

    .line 255
    .line 256
    fill-array-data v6, :array_9

    .line 257
    .line 258
    .line 259
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    goto :goto_3

    .line 267
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 276
    .line 277
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    if-eqz v7, :cond_7

    .line 282
    .line 283
    invoke-virtual {v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    :cond_7
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 288
    .line 289
    new-array v8, v1, [J

    .line 290
    .line 291
    fill-array-data v8, :array_a

    .line 292
    .line 293
    .line 294
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_8

    .line 306
    .line 307
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 308
    .line 309
    new-array v7, v1, [J

    .line 310
    .line 311
    fill-array-data v7, :array_b

    .line 312
    .line 313
    .line 314
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-nez v5, :cond_8

    .line 326
    .line 327
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 328
    .line 329
    new-array v6, v1, [J

    .line 330
    .line 331
    fill-array-data v6, :array_c

    .line 332
    .line 333
    .line 334
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    :cond_8
    :goto_3
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 342
    .line 343
    new-instance v9, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;

    .line 344
    .line 345
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 346
    .line 347
    new-array v8, v0, [J

    .line 348
    .line 349
    fill-array-data v8, :array_d

    .line 350
    .line 351
    .line 352
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-static {v7}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v7

    .line 363
    if-nez v7, :cond_9

    .line 364
    .line 365
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 366
    .line 367
    new-array v8, v1, [J

    .line 368
    .line 369
    fill-array-data v8, :array_e

    .line 370
    .line 371
    .line 372
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    :cond_9
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 380
    .line 381
    new-array v0, v0, [J

    .line 382
    .line 383
    fill-array-data v0, :array_f

    .line 384
    .line 385
    .line 386
    invoke-direct {v8, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    if-nez v0, :cond_a

    .line 398
    .line 399
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 400
    .line 401
    new-array v8, v1, [J

    .line 402
    .line 403
    fill-array-data v8, :array_10

    .line 404
    .line 405
    .line 406
    invoke-direct {v0, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    :cond_a
    invoke-direct {v9, v6, v7, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$NoiseBean;

    .line 417
    .line 418
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 419
    .line 420
    new-array v7, v1, [J

    .line 421
    .line 422
    fill-array-data v7, :array_11

    .line 423
    .line 424
    .line 425
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 433
    .line 434
    new-array v8, v1, [J

    .line 435
    .line 436
    fill-array-data v8, :array_12

    .line 437
    .line 438
    .line 439
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 447
    .line 448
    new-array v10, v1, [J

    .line 449
    .line 450
    fill-array-data v10, :array_13

    .line 451
    .line 452
    .line 453
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    invoke-direct {v0, v6, v7, v8}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$NoiseBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-static {v0}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    const v25, 0x1fff9

    .line 468
    .line 469
    .line 470
    const/16 v26, 0x0

    .line 471
    .line 472
    const/4 v8, 0x0

    .line 473
    const/4 v11, 0x0

    .line 474
    const/4 v12, 0x0

    .line 475
    const/4 v13, 0x0

    .line 476
    const/4 v14, 0x0

    .line 477
    const/4 v15, 0x0

    .line 478
    const/16 v16, 0x0

    .line 479
    .line 480
    const/16 v17, 0x0

    .line 481
    .line 482
    const/16 v18, 0x0

    .line 483
    .line 484
    const/16 v19, 0x0

    .line 485
    .line 486
    const/16 v20, 0x0

    .line 487
    .line 488
    const/16 v21, 0x0

    .line 489
    .line 490
    const/16 v22, 0x0

    .line 491
    .line 492
    const/16 v23, 0x0

    .line 493
    .line 494
    const/16 v24, 0x0

    .line 495
    .line 496
    move-object v7, v5

    .line 497
    invoke-direct/range {v7 .. v26}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;)V

    .line 501
    .line 502
    .line 503
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 504
    .line 505
    new-instance v42, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 506
    .line 507
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 508
    .line 509
    const/16 v5, 0xff

    .line 510
    .line 511
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v10

    .line 515
    const/16 v13, 0x6e

    .line 516
    .line 517
    const/4 v14, 0x0

    .line 518
    const/4 v7, 0x0

    .line 519
    const/4 v8, 0x0

    .line 520
    const/4 v9, 0x0

    .line 521
    const/4 v11, 0x0

    .line 522
    const/4 v12, 0x0

    .line 523
    move-object/from16 v5, v42

    .line 524
    .line 525
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 526
    .line 527
    .line 528
    const/16 v43, 0x3fff

    .line 529
    .line 530
    const/16 v44, 0x0

    .line 531
    .line 532
    const/16 v28, 0x0

    .line 533
    .line 534
    const/16 v29, 0x0

    .line 535
    .line 536
    const/16 v30, 0x0

    .line 537
    .line 538
    const/16 v31, 0x0

    .line 539
    .line 540
    const/16 v32, 0x0

    .line 541
    .line 542
    const/16 v33, 0x0

    .line 543
    .line 544
    const/16 v34, 0x0

    .line 545
    .line 546
    const/16 v35, 0x0

    .line 547
    .line 548
    const/16 v36, 0x0

    .line 549
    .line 550
    const/16 v37, 0x0

    .line 551
    .line 552
    const/16 v38, 0x0

    .line 553
    .line 554
    const/16 v39, 0x0

    .line 555
    .line 556
    const/16 v40, 0x0

    .line 557
    .line 558
    const/16 v41, 0x0

    .line 559
    .line 560
    move-object/from16 v27, v0

    .line 561
    .line 562
    invoke-direct/range {v27 .. v44}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->setStreamSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig;->getOutbounds()Ljava/util/ArrayList;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 584
    .line 585
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    if-eqz v0, :cond_b

    .line 590
    .line 591
    new-instance v3, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;

    .line 592
    .line 593
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 594
    .line 595
    new-array v1, v1, [J

    .line 596
    .line 597
    fill-array-data v1, :array_14

    .line 598
    .line 599
    .line 600
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    const/16 v13, 0x5f

    .line 608
    .line 609
    const/4 v14, 0x0

    .line 610
    const/4 v6, 0x0

    .line 611
    const/4 v7, 0x0

    .line 612
    const/4 v8, 0x0

    .line 613
    const/4 v9, 0x0

    .line 614
    const/4 v10, 0x0

    .line 615
    const/4 v12, 0x0

    .line 616
    move-object v5, v3

    .line 617
    invoke-direct/range {v5 .. v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setSockopt(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .line 622
    .line 623
    :cond_b
    return v4

    .line 624
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 625
    .line 626
    const/4 v1, 0x3

    .line 627
    new-array v1, v1, [J

    .line 628
    .line 629
    fill-array-data v1, :array_15

    .line 630
    .line 631
    .line 632
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 639
    .line 640
    const/4 v1, 0x6

    .line 641
    new-array v1, v1, [J

    .line 642
    .line 643
    fill-array-data v1, :array_16

    .line 644
    .line 645
    .line 646
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    return v2

    .line 653
    :array_0
    .array-data 8
        0x5d87f6b10aa06f0L
        -0x4c3c2115127e1f6aL    # -2.4731223813104616E-59
        -0x2c25bf0e934d9b58L    # -8.762113803493836E95
        -0x4c821920ce98853bL    # -1.1629976674237006E-60
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :array_1
    .array-data 8
        -0x5ecfcba1912a0fc2L    # -7.920626835504559E-149
        0x10f8e0e0b34bbde3L
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_2
    .array-data 8
        -0x67b20f629769bf32L
        0x7bc0a85a5aec356cL
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    :array_3
    .array-data 8
        0x442dd51f384247efL    # 2.7515631662462976E20
        0x5c24d82181f68ebbL    # 7.575208141161773E135
    .end array-data

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :array_4
    .array-data 8
        -0x4ffcccb4e8fe3a57L    # -2.07271980505809E-77
        0x200697ae5f629131L    # 2.106282453360024E-154
    .end array-data

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    :array_5
    .array-data 8
        -0x1b9d5e7d3b737fbfL    # -3.6863906995707506E175
        0x71ff49387b4a1845L    # 1.3038476261053976E241
        -0x623de2ec55f46f3eL
        -0x5d59269eb7f906c3L    # -9.368755860728084E-142
    .end array-data

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    :array_6
    .array-data 8
        0x6accbc262e5e68e4L    # 2.882953302184109E206
        -0x7ae28ffbd23f9dd1L
    .end array-data

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_7
    .array-data 8
        -0x16e7531dc8b628d7L    # -1.8445060204507166E198
        -0x6a79c3de0008bcd7L
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    :array_8
    .array-data 8
        0x4496c6e51e5921fcL    # 2.6890256920253292E22
        -0x5bdd85c4dc1f1164L
    .end array-data

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_9
    .array-data 8
        0xf3235cda6c613ecL
        -0x29a90c37ebca9d0eL    # -8.422560544971093E107
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :array_a
    .array-data 8
        0x7b1e3cac9aba9bdfL    # 1.1240735812417051E285
        0x5cae09d8ab1a2b24L    # 2.7946390594611572E138
    .end array-data

    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :array_b
    .array-data 8
        0xf088940cb581a9L
        -0x32dd10600ec881edL    # -3.894916337158591E63
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :array_c
    .array-data 8
        0x61b0c00140143b8fL    # 3.7678445944881345E162
        -0xc985c3dcc7d0e21L    # -8.264338161484562E247
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    :array_d
    .array-data 8
        -0x19ee369a9f9370c4L    # -4.723596900980365E183
        -0x2f2f5657f62ea0daL    # -1.9757170660094773E81
        0x3daa60900fddef2bL    # 1.1994961010426671E-11
        0x68d6720b2c719775L    # 1.0486393170111947E197
    .end array-data

    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    :array_e
    .array-data 8
        -0x48821ab75ea44e3bL    # -2.1449069425701075E-41
        -0x4bf1577f41b8d108L    # -6.105169184534413E-58
    .end array-data

    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_f
    .array-data 8
        0xc0d63a877ead30fL
        -0x2b37245134a89f01L    # -2.7185487881341402E100
        -0x1227a6eec3cb274eL    # -1.375177275872079E221
        -0x3ed761d9594b6beL    # -4.516614657599297E289
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    :array_10
    .array-data 8
        0x19c4e82e65c07391L
        0x49df8d3c7f00b5e2L    # 7.2051355568997095E47
    .end array-data

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    :array_11
    .array-data 8
        0x64add3d5589c12d1L    # 9.442868681398945E176
        0x349b5f48a39679e3L    # 2.7908117637510425E-55
    .end array-data

    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :array_12
    .array-data 8
        0x6dad9d1dd4dca9eaL    # 2.0907401270742574E220
        0x5387204885465388L    # 2.4119660077613397E94
    .end array-data

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    :array_13
    .array-data 8
        0x4e76ec46ba09216cL    # 9.888025964618181E69
        0x4ec3b9bdba2074a3L    # 2.7228150262737E71
    .end array-data

    :array_14
    .array-data 8
        0xe8c5a3cf41ccf94L    # 1.360644569107326E-238
        0x6fac8ee307211d4L
    .end array-data

    :array_15
    .array-data 8
        0x10716d3e0a8245cL
        0x298cae8fae6f7b34L
        0x4af4aee7dff134a5L    # 1.2381621502361623E53
    .end array-data

    :array_16
    .array-data 8
        -0x7a41f76bc006df7dL
        -0x704db5fc353c2f99L    # -4.601677543645884E-233
        -0x44a33ed646aa9262L    # -9.514080166231298E-23
        0x1c9f20eedf9a1f19L    # 8.054946997956176E-171
        0x1085e8728b9e4139L
        0x1fb85d0cb40d8934L    # 7.098089788998341E-156
    .end array-data
.end method

.method private final updateOutboundWithGlobalSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;)Z
    .locals 15

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x2

    .line 7
    :try_start_0
    sget-object v6, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 8
    .line 9
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v8, v4, [J

    .line 12
    .line 13
    fill-array-data v8, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-virtual {v6, v7, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getProtocol()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v10, v4, [J

    .line 34
    .line 35
    fill-array-data v10, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    const/4 v10, 0x0

    .line 50
    if-nez v9, :cond_2

    .line 51
    .line 52
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v11, v5, [J

    .line 55
    .line 56
    fill-array-data v11, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_2

    .line 71
    .line 72
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v11, v5, [J

    .line 75
    .line 76
    fill-array-data v11, :array_3

    .line 77
    .line 78
    .line 79
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_2

    .line 91
    .line 92
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v5, [J

    .line 95
    .line 96
    fill-array-data v11, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-nez v9, :cond_2

    .line 111
    .line 112
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v11, v4, [J

    .line 115
    .line 116
    fill-array-data v11, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_2

    .line 131
    .line 132
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v11, v4, [J

    .line 135
    .line 136
    fill-array-data v11, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-static {v8, v9, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_0

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    if-eqz v9, :cond_1

    .line 158
    .line 159
    invoke-virtual {v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getNetwork()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    goto :goto_0

    .line 164
    :cond_1
    move-object v9, v10

    .line 165
    :goto_0
    sget-object v11, Lcom/v2ray/ang/dto/NetworkType;->XHTTP:Lcom/v2ray/ang/dto/NetworkType;

    .line 166
    .line 167
    invoke-virtual {v11}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-eqz v9, :cond_3

    .line 176
    .line 177
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 178
    :cond_3
    const/4 v9, -0x1

    .line 179
    if-ne v7, v2, :cond_c

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    if-eqz v7, :cond_4

    .line 186
    .line 187
    invoke-virtual {v7, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setEnabled(Z)V

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    if-eqz v7, :cond_6

    .line 195
    .line 196
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v12, v1, [J

    .line 199
    .line 200
    fill-array-data v12, :array_7

    .line 201
    .line 202
    .line 203
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    new-array v13, v5, [J

    .line 213
    .line 214
    fill-array-data v13, :array_8

    .line 215
    .line 216
    .line 217
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-static {v11, v12}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    if-nez v11, :cond_5

    .line 229
    .line 230
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v12, v2, [J

    .line 233
    .line 234
    const-wide v13, -0x5664e38544a2abcaL    # -2.88596510224261E-108

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    aput-wide v13, v12, v3

    .line 240
    .line 241
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-virtual {v7, v11}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setConcurrency(Ljava/lang/Integer;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    if-eqz v7, :cond_8

    .line 264
    .line 265
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 266
    .line 267
    new-array v12, v0, [J

    .line 268
    .line 269
    fill-array-data v12, :array_9

    .line 270
    .line 271
    .line 272
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 280
    .line 281
    new-array v13, v5, [J

    .line 282
    .line 283
    fill-array-data v13, :array_a

    .line 284
    .line 285
    .line 286
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    invoke-static {v11, v12}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    if-nez v11, :cond_7

    .line 298
    .line 299
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 300
    .line 301
    new-array v12, v2, [J

    .line 302
    .line 303
    const-wide v13, 0x772598d5937bf666L    # 8.70482002069746E265

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    aput-wide v13, v12, v3

    .line 309
    .line 310
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    invoke-virtual {v7, v11}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setXudpConcurrency(Ljava/lang/Integer;)V

    .line 326
    .line 327
    .line 328
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    if-eqz v7, :cond_9

    .line 333
    .line 334
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 335
    .line 336
    new-array v1, v1, [J

    .line 337
    .line 338
    fill-array-data v1, :array_b

    .line 339
    .line 340
    .line 341
    invoke-direct {v11, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 349
    .line 350
    new-array v12, v5, [J

    .line 351
    .line 352
    fill-array-data v12, :array_c

    .line 353
    .line 354
    .line 355
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    invoke-static {v1, v11}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v7, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setXudpProxyUDP443(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v7, v5, [J

    .line 372
    .line 373
    fill-array-data v7, :array_d

    .line 374
    .line 375
    .line 376
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {v8, v1, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_e

    .line 388
    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_b

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getVnext()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_b

    .line 400
    .line 401
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    check-cast v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;

    .line 406
    .line 407
    if-eqz v1, :cond_b

    .line 408
    .line 409
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;->getUsers()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    if-eqz v1, :cond_b

    .line 414
    .line 415
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 420
    .line 421
    if-eqz v1, :cond_b

    .line 422
    .line 423
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;->getFlow()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-eqz v1, :cond_b

    .line 428
    .line 429
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-lez v1, :cond_a

    .line 434
    .line 435
    const/4 v1, 0x1

    .line 436
    goto :goto_2

    .line 437
    :cond_a
    const/4 v1, 0x0

    .line 438
    :goto_2
    if-ne v1, v2, :cond_b

    .line 439
    .line 440
    const/4 v1, 0x1

    .line 441
    goto :goto_3

    .line 442
    :cond_b
    const/4 v1, 0x0

    .line 443
    :goto_3
    if-eqz v1, :cond_e

    .line 444
    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    if-eqz v1, :cond_e

    .line 450
    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-virtual {v1, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setConcurrency(Ljava/lang/Integer;)V

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    if-eqz v1, :cond_d

    .line 464
    .line 465
    invoke-virtual {v1, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setEnabled(Z)V

    .line 466
    .line 467
    .line 468
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getMux()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    if-eqz v1, :cond_e

    .line 473
    .line 474
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v7

    .line 478
    invoke-virtual {v1, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;->setConcurrency(Ljava/lang/Integer;)V

    .line 479
    .line 480
    .line 481
    :cond_e
    :goto_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 482
    .line 483
    new-array v7, v4, [J

    .line 484
    .line 485
    fill-array-data v7, :array_e

    .line 486
    .line 487
    .line 488
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v8, v1, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_13

    .line 500
    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    if-eqz v1, :cond_f

    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getAddress()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    goto :goto_5

    .line 512
    :cond_f
    move-object v1, v10

    .line 513
    :goto_5
    if-nez v1, :cond_10

    .line 514
    .line 515
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 516
    .line 517
    new-array v7, v4, [J

    .line 518
    .line 519
    fill-array-data v7, :array_f

    .line 520
    .line 521
    .line 522
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    goto :goto_7

    .line 534
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    if-eqz v1, :cond_11

    .line 539
    .line 540
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->getAddress()Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    goto :goto_6

    .line 545
    :cond_11
    move-object v1, v10

    .line 546
    :goto_6
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 547
    .line 548
    const/16 v8, 0x9

    .line 549
    .line 550
    new-array v8, v8, [J

    .line 551
    .line 552
    fill-array-data v8, :array_10

    .line 553
    .line 554
    .line 555
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v7

    .line 562
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    check-cast v1, Ljava/util/List;

    .line 566
    .line 567
    :goto_7
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 568
    .line 569
    new-array v8, v4, [J

    .line 570
    .line 571
    fill-array-data v8, :array_11

    .line 572
    .line 573
    .line 574
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsBool(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-eq v6, v2, :cond_12

    .line 586
    .line 587
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 596
    .line 597
    .line 598
    move-result-object v6

    .line 599
    if-eqz v6, :cond_13

    .line 600
    .line 601
    invoke-virtual {v6, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;->setAddress(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    if-eqz v1, :cond_14

    .line 609
    .line 610
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getNetwork()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    goto :goto_8

    .line 615
    :cond_14
    move-object v1, v10

    .line 616
    :goto_8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 617
    .line 618
    new-array v7, v5, [J

    .line 619
    .line 620
    fill-array-data v7, :array_12

    .line 621
    .line 622
    .line 623
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-eqz v1, :cond_1d

    .line 635
    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    if-eqz v1, :cond_15

    .line 641
    .line 642
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-eqz v1, :cond_15

    .line 647
    .line 648
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    if-eqz v1, :cond_15

    .line 653
    .line 654
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->getType()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    goto :goto_9

    .line 659
    :cond_15
    move-object v1, v10

    .line 660
    :goto_9
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 661
    .line 662
    new-array v7, v5, [J

    .line 663
    .line 664
    fill-array-data v7, :array_13

    .line 665
    .line 666
    .line 667
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-eqz v1, :cond_1d

    .line 679
    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    if-eqz v1, :cond_16

    .line 685
    .line 686
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    if-eqz v1, :cond_16

    .line 691
    .line 692
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    if-eqz v1, :cond_16

    .line 697
    .line 698
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->getRequest()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    if-eqz v1, :cond_16

    .line 703
    .line 704
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->getPath()Ljava/util/List;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    goto :goto_a

    .line 709
    :cond_16
    move-object v1, v10

    .line 710
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    if-eqz v6, :cond_17

    .line 715
    .line 716
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    if-eqz v6, :cond_17

    .line 721
    .line 722
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    if-eqz v6, :cond_17

    .line 727
    .line 728
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->getRequest()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 729
    .line 730
    .line 731
    move-result-object v6

    .line 732
    if-eqz v6, :cond_17

    .line 733
    .line 734
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->getHeaders()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;

    .line 735
    .line 736
    .line 737
    move-result-object v6

    .line 738
    if-eqz v6, :cond_17

    .line 739
    .line 740
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;->getHost()Ljava/util/List;

    .line 741
    .line 742
    .line 743
    move-result-object v10

    .line 744
    :cond_17
    new-instance v6, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;

    .line 745
    .line 746
    invoke-direct {v6, v0}, L땜땥딐듐뎽땪땪득딨땵뒋듟딜뒬땡땥뒼된딃땨돝됐둑듌듼돛땍딽됨듟뎡뒨딁뒙듽땮디뒵딃딝땧드돨뎨땠듌땦뒹땟뒀돶딐듔됐뒵뒙될땹딃딻뒋뒐딟딽땔될뒨도둘딀드땔딟디된땍뎰둣듼둡뎽땯딐둡딟땪뎽뒙됨뒹뒘딞뒨돶땪땪듽딃딹돸듸돴둘땳땍뎠땧뒵딽돼딎땭딠둑됩듟드둬딤땝딜딹돷돤딎뒙땄듔뒼땤;-><init>(I)V

    .line 747
    .line 748
    .line 749
    invoke-static {v6}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    if-eqz v6, :cond_18

    .line 758
    .line 759
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    if-eqz v6, :cond_18

    .line 764
    .line 765
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    if-eqz v6, :cond_18

    .line 770
    .line 771
    sget-object v7, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 772
    .line 773
    invoke-static {v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings$lambda$21(Lkotlin/Lazy;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    const-class v8, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 778
    .line 779
    invoke-virtual {v7, v0, v8}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    check-cast v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 784
    .line 785
    invoke-virtual {v6, v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->setRequest(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;)V

    .line 786
    .line 787
    .line 788
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    if-eqz v0, :cond_1c

    .line 793
    .line 794
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    if-eqz v0, :cond_1c

    .line 799
    .line 800
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    if-eqz v0, :cond_1c

    .line 805
    .line 806
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->getRequest()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    if-eqz v0, :cond_1c

    .line 811
    .line 812
    move-object v6, v1

    .line 813
    check-cast v6, Ljava/util/Collection;

    .line 814
    .line 815
    if-eqz v6, :cond_1a

    .line 816
    .line 817
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 818
    .line 819
    .line 820
    move-result v6

    .line 821
    if-eqz v6, :cond_19

    .line 822
    .line 823
    goto :goto_b

    .line 824
    :cond_19
    const/4 v6, 0x0

    .line 825
    goto :goto_c

    .line 826
    :cond_1a
    :goto_b
    const/4 v6, 0x1

    .line 827
    :goto_c
    if-eqz v6, :cond_1b

    .line 828
    .line 829
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 830
    .line 831
    new-array v5, v5, [J

    .line 832
    .line 833
    fill-array-data v5, :array_14

    .line 834
    .line 835
    .line 836
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    :cond_1b
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->setPath(Ljava/util/List;)V

    .line 848
    .line 849
    .line 850
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;->getStreamSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    if-eqz v0, :cond_1d

    .line 855
    .line 856
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getTcpSettings()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    if-eqz v0, :cond_1d

    .line 861
    .line 862
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    if-eqz v0, :cond_1d

    .line 867
    .line 868
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->getRequest()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-eqz v0, :cond_1d

    .line 873
    .line 874
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->getHeaders()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    if-eqz v0, :cond_1d

    .line 879
    .line 880
    invoke-virtual {v0, v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;->setHost(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    .line 882
    .line 883
    :cond_1d
    return v2

    .line 884
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 885
    .line 886
    new-array v1, v4, [J

    .line 887
    .line 888
    fill-array-data v1, :array_15

    .line 889
    .line 890
    .line 891
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 898
    .line 899
    const/4 v1, 0x7

    .line 900
    new-array v1, v1, [J

    .line 901
    .line 902
    fill-array-data v1, :array_16

    .line 903
    .line 904
    .line 905
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    return v3

    .line 912
    nop

    :array_0
    .array-data 8
        0x5a44ddd0e4154f48L    # 7.062478675878604E126
        0x4b20033f4355857fL    # 7.668552165680425E53
        -0x4eb18b592655d3daL    # -3.447459776223893E-71
    .end array-data

    :array_1
    .array-data 8
        0x5b66511868db7fbcL    # 1.9800657920699803E132
        0x2045c3c684ee570dL
        -0x48fff5743a1572cbL    # -8.991400918220463E-44
    .end array-data

    :array_2
    .array-data 8
        0x24dbc8a412bb1edaL
        0x50d605cf97158bc9L    # 2.6112556109320807E81
    .end array-data

    :array_3
    .array-data 8
        0x24c99d296237b11fL    # 1.804296176235104E-131
        0x22fcf30c26a3da07L    # 3.798408408697818E-140
    .end array-data

    :array_4
    .array-data 8
        0xbf2c9f22a31d68dL
        0x453d04d7d19b289bL    # 3.5081719388441994E25
    .end array-data

    :array_5
    .array-data 8
        -0x910e8695476a295L
        -0x33e955670415b8deL    # -3.5569819752486777E58
        0x5068f4a7c881eeb1L    # 2.3117367392495706E79
    .end array-data

    :array_6
    .array-data 8
        0x1183cdde70b43af1L
        0x5c3aeb9f3c49a0f6L    # 1.956678809664253E136
        0x5f6e6c209f88706bL    # 4.9792154680605456E151
    .end array-data

    :array_7
    .array-data 8
        -0x6d3ddfba2e4bae80L    # -2.56741866305662E-218
        -0x7270c02063cd7e30L
        0x7de367876164ffaL
        0x3074f64771edf226L    # 2.8965056667092566E-75
    .end array-data

    :array_8
    .array-data 8
        0x79b75e0d6ada7e35L    # 2.0711247538228972E278
        0x4fc6893d3373a1bdL    # 2.0386726220736765E76
    .end array-data

    :array_9
    .array-data 8
        -0x34d0137ad37823dbL    # -1.5288514136458902E54
        0x5f0ad53b5ea9df1fL    # 6.862084725382569E149
        -0x48f9e10355d15445L    # -1.239927335475167E-43
        -0x291acb7b4e08d9d2L    # -3.9840957762873925E110
        0x55898328fedc4271L    # 1.142822779791796E104
    .end array-data

    :array_a
    .array-data 8
        -0x589c3c7c8f4ba5d0L    # -6.122947135920445E-119
        -0x640cbf414a5a5d01L    # -4.865179806611213E-174
    .end array-data

    :array_b
    .array-data 8
        0x170126f1c1e26686L    # 7.170522890616267E-198
        -0x24137104bb97fbc7L    # -6.486699799717783E134
        -0x1ac14cff3693cd57L    # -4.976052186466902E179
        0x32cf9263d0483ff6L    # 5.9958500635556104E-64
    .end array-data

    :array_c
    .array-data 8
        -0x2d284238c83f39aL    # -9.41520344268983E294
        -0x739cee8008027770L    # -5.326561086798452E-249
    .end array-data

    :array_d
    .array-data 8
        -0x7cf623ff151cf067L    # -5.06118840270242E-294
        -0x47b1444a0fd86af2L    # -1.8063377884221436E-37
    .end array-data

    :array_e
    .array-data 8
        0x2db7acfd1dde0317L    # 1.859622512624381E-88
        -0x1b2685f7c935c06dL    # -6.452387257032632E177
        0x47d557bfaa967402L    # 1.1347762077504274E38
    .end array-data

    :array_f
    .array-data 8
        0x58f03331796ed446L    # 2.614523751927017E120
        0x5a66e31437ef5d9bL    # 3.09854330428109E127
        -0x6135d9bc2ddc4dbeL
    .end array-data

    :array_10
    .array-data 8
        -0x7b2f6e104eb516beL
        -0x6ad2e0744e041311L
        -0x4a129b0837d6214L    # -1.834214560124108E286
        0x5946ae23c227b85aL
        -0x55b648577c23beadL    # -5.606590496011978E-105
        -0x5072750491989e62L    # -1.2457883578443621E-79
        0x171906f9fac10625L
        0x4cbaefb362eba7ceL    # 4.3285015007424577E61
        0x614cafc83b8411d9L    # 5.0413578575711983E160
    .end array-data

    :array_11
    .array-data 8
        -0x14b4c17eaca1a1ecL    # -6.99746038135455E208
        -0x765b6bc1889b62a0L    # -3.267681369432577E-262
        -0x38686d364cabb87bL    # -7.833602554163444E36
    .end array-data

    :array_12
    .array-data 8
        -0x3aa59a18c5b1ab24L    # -1.276531828960801E26
        -0x6a9341029489b0d0L
    .end array-data

    :array_13
    .array-data 8
        -0x6fd671b20d1f7affL    # -8.230460253601648E-231
        -0x48f2cdd7362bd234L    # -1.6364887485588118E-43
    .end array-data

    :array_14
    .array-data 8
        -0x5bdd6e0ba680b502L
        -0x71b10790144af84eL    # -9.289259369959386E-240
    .end array-data

    :array_15
    .array-data 8
        -0x2ada682a93bbf595L    # -1.511344778772365E102
        -0x217f0218c273be73L    # -1.697413033424438E147
        -0x99633365533d112L
    .end array-data

    :array_16
    .array-data 8
        -0x108fd134df5cffd0L    # -6.13380604723898E228
        0x55fc70d2e3cca995L    # 1.6307186798890415E106
        0x305496a8e4f3f0e4L    # 7.112235303405651E-76
        -0x2a55246d55740736L    # -4.812352589208294E104
        -0x565f660954ac64f8L    # -3.534409008748279E-108
        0x541900d23870027cL    # 1.3351631881058545E97
        0x14b53c1be4f0aac5L    # 6.459088063317205E-209
    .end array-data
.end method

.method private static final updateOutboundWithGlobalSettings$lambda$20()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :array_0
    .array-data 8
        0x752d5cf683f30700L    # 2.7555530202775895E256
        0x7023d2e7a1bc1394L    # 1.538844050146905E232
        0x7d58f5809779c328L    # 6.376213135413576E295
        -0x4e85acd7c675595fL    # -2.3838923520739564E-70
        0x26dcd9ca5e146058L
        -0x2ea9074a5b95c92eL    # -6.972821952890824E83
        -0x657f06936b47ae21L    # -5.113341781062099E-181
        0x5205f2bce4abf8efL    # 1.3644184078071977E87
        -0x6fd50f962afe1e5L    # -8.085908455826988E274
        -0x1d9107ab6139a00L    # -4.799945773040103E299
        -0x198cf231d5a77f2dL    # -3.238484667828472E185
        0x1efae4e32550cfb6L
        0x157a54d789e846c1L
        0x626f60fbb31ae899L    # 1.4455879574943584E166
        0x28b1499c0cb89dd0L    # 1.12319396810674E-112
        0x2b808d0f17b18ad2L    # 3.783519501570174E-99
        -0x2010d24eb872fc55L    # -1.3063598629081828E154
        0x5359439e71e01e78L    # 3.2936931079134845E93
        0x74575d084eace48L
        0x3c0d822b85a5d045L    # 1.999572151868906E-19
        -0x35543e264152be1bL    # -5.192606118233885E51
        0x266a7f3eb362f275L
        0x7ff27b28c520afe2L
        0x250dffaca8a986e4L
        0x674a673e74f1dbdcL    # 3.6762534668417253E189
        0x388e7b2a3689e86cL    # 2.866430078827577E-36
        -0x7f9d3300b55c001bL    # -8.366620565229546E-307
        -0x741ac35fdd7b9028L
        -0x43447286a6cf3a80L    # -3.8236959265033126E-16
        0x192a6a56a9f2cf94L
        0x5375d4cc2f2fd81fL    # 1.138458176549685E94
        -0x698170ba58fb19f2L
        -0x1943b69fb00a5de7L    # -7.692340061534258E186
        -0x2588f4eda8e55712L    # -6.239386430405467E127
    .end array-data
.end method

.method private static final updateOutboundWithGlobalSettings$lambda$21(Lkotlin/Lazy;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/V2rayConfigManager;->updateOutboundWithGlobalSettings$lambda$20()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig$lambda$4(Lcom/v2ray/ang/dto/ProfileItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig$lambda$3(Lcom/v2ray/ang/dto/ProfileItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig$lambda$2(Lcom/v2ray/ang/dto/ProfileItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig$lambda$5(Lcom/v2ray/ang/dto/ProfileItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Lcom/v2ray/ang/dto/ProfileItem;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig$lambda$1(Lcom/v2ray/ang/dto/ProfileItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final createInitOutbound(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;
    .locals 52
    .param p1    # Lcom/v2ray/ang/dto/EConfigType;
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
    move-object/from16 v2, p1

    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/v2ray/ang/handler/V2rayConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    aget v0, v0, v3

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 33
    .line 34
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v24, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 68
    .line 69
    move-object/from16 v4, v24

    .line 70
    .line 71
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    new-array v2, v2, [J

    .line 75
    .line 76
    const-wide v5, -0x5220e4728096e60fL    # -9.773456161180121E-88

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    aput-wide v5, v2, v7

    .line 83
    .line 84
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v17

    .line 91
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;

    .line 92
    .line 93
    const/4 v9, 0x7

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    move-object v5, v1

    .line 99
    invoke-direct/range {v5 .. v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$WireGuardBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v18

    .line 106
    const v22, 0x1cfff

    .line 107
    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    const/16 v21, 0x0

    .line 125
    .line 126
    invoke-direct/range {v4 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    .line 128
    .line 129
    const/16 v9, 0x79

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    move-object v1, v0

    .line 133
    invoke-direct/range {v1 .. v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_1
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    fill-array-data v1, :array_2

    .line 154
    .line 155
    .line 156
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 167
    .line 168
    move-object v14, v1

    .line 169
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;

    .line 170
    .line 171
    const/16 v26, 0x3ff

    .line 172
    .line 173
    const/16 v27, 0x0

    .line 174
    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    const/16 v17, 0x0

    .line 178
    .line 179
    const/16 v18, 0x0

    .line 180
    .line 181
    const/16 v19, 0x0

    .line 182
    .line 183
    const/16 v20, 0x0

    .line 184
    .line 185
    const/16 v21, 0x0

    .line 186
    .line 187
    const/16 v22, 0x0

    .line 188
    .line 189
    const/16 v23, 0x0

    .line 190
    .line 191
    const/16 v24, 0x0

    .line 192
    .line 193
    const/16 v25, 0x0

    .line 194
    .line 195
    move-object v15, v2

    .line 196
    invoke-direct/range {v15 .. v27}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$ServersBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v18

    .line 203
    const v32, 0x1fff7

    .line 204
    .line 205
    .line 206
    const/16 v33, 0x0

    .line 207
    .line 208
    const/4 v15, 0x0

    .line 209
    const/16 v20, 0x0

    .line 210
    .line 211
    const/16 v21, 0x0

    .line 212
    .line 213
    const/16 v26, 0x0

    .line 214
    .line 215
    const/16 v28, 0x0

    .line 216
    .line 217
    const/16 v29, 0x0

    .line 218
    .line 219
    const/16 v30, 0x0

    .line 220
    .line 221
    const/16 v31, 0x0

    .line 222
    .line 223
    invoke-direct/range {v14 .. v33}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    .line 225
    .line 226
    new-instance v15, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 227
    .line 228
    move-object/from16 v34, v15

    .line 229
    .line 230
    const/16 v50, 0x7fff

    .line 231
    .line 232
    const/16 v51, 0x0

    .line 233
    .line 234
    const/16 v35, 0x0

    .line 235
    .line 236
    const/16 v36, 0x0

    .line 237
    .line 238
    const/16 v37, 0x0

    .line 239
    .line 240
    const/16 v38, 0x0

    .line 241
    .line 242
    const/16 v39, 0x0

    .line 243
    .line 244
    const/16 v40, 0x0

    .line 245
    .line 246
    const/16 v41, 0x0

    .line 247
    .line 248
    const/16 v42, 0x0

    .line 249
    .line 250
    const/16 v43, 0x0

    .line 251
    .line 252
    const/16 v44, 0x0

    .line 253
    .line 254
    const/16 v45, 0x0

    .line 255
    .line 256
    const/16 v46, 0x0

    .line 257
    .line 258
    const/16 v47, 0x0

    .line 259
    .line 260
    const/16 v48, 0x0

    .line 261
    .line 262
    const/16 v49, 0x0

    .line 263
    .line 264
    invoke-direct/range {v34 .. v51}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 265
    .line 266
    .line 267
    const/16 v19, 0x71

    .line 268
    .line 269
    const/4 v12, 0x0

    .line 270
    const/16 v18, 0x0

    .line 271
    .line 272
    move-object v11, v0

    .line 273
    invoke-direct/range {v11 .. v20}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 274
    .line 275
    .line 276
    return-object v0

    .line 277
    :pswitch_2
    const/4 v0, 0x0

    .line 278
    return-object v0

    .line 279
    :pswitch_3
    new-instance v0, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;

    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 286
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 292
    .line 293
    new-array v1, v1, [J

    .line 294
    .line 295
    fill-array-data v1, :array_3

    .line 296
    .line 297
    .line 298
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    new-instance v24, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;

    .line 309
    .line 310
    move-object/from16 v4, v24

    .line 311
    .line 312
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;

    .line 313
    .line 314
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;

    .line 315
    .line 316
    const/16 v12, 0x3f

    .line 317
    .line 318
    const/4 v13, 0x0

    .line 319
    const/4 v6, 0x0

    .line 320
    const/4 v7, 0x0

    .line 321
    const/4 v8, 0x0

    .line 322
    const/4 v9, 0x0

    .line 323
    const/4 v10, 0x0

    .line 324
    const/4 v11, 0x0

    .line 325
    move-object v5, v2

    .line 326
    invoke-direct/range {v5 .. v13}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean$UsersBean;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v2}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    const/4 v9, 0x3

    .line 334
    const/4 v7, 0x0

    .line 335
    move-object v5, v1

    .line 336
    invoke-direct/range {v5 .. v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$VnextBean;-><init>(Ljava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v1}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    const v22, 0x1fffe

    .line 344
    .line 345
    .line 346
    const/16 v23, 0x0

    .line 347
    .line 348
    const/4 v7, 0x0

    .line 349
    const/4 v8, 0x0

    .line 350
    const/4 v9, 0x0

    .line 351
    const/4 v12, 0x0

    .line 352
    const/4 v14, 0x0

    .line 353
    const/4 v15, 0x0

    .line 354
    const/16 v16, 0x0

    .line 355
    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    const/16 v18, 0x0

    .line 359
    .line 360
    const/16 v19, 0x0

    .line 361
    .line 362
    const/16 v20, 0x0

    .line 363
    .line 364
    const/16 v21, 0x0

    .line 365
    .line 366
    invoke-direct/range {v4 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$FragmentBean;Ljava/util/List;Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean$Response;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 367
    .line 368
    .line 369
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;

    .line 370
    .line 371
    move-object/from16 v25, v5

    .line 372
    .line 373
    const/16 v41, 0x7fff

    .line 374
    .line 375
    const/16 v42, 0x0

    .line 376
    .line 377
    const/16 v26, 0x0

    .line 378
    .line 379
    const/16 v27, 0x0

    .line 380
    .line 381
    const/16 v28, 0x0

    .line 382
    .line 383
    const/16 v29, 0x0

    .line 384
    .line 385
    const/16 v30, 0x0

    .line 386
    .line 387
    const/16 v31, 0x0

    .line 388
    .line 389
    const/16 v32, 0x0

    .line 390
    .line 391
    const/16 v33, 0x0

    .line 392
    .line 393
    const/16 v34, 0x0

    .line 394
    .line 395
    const/16 v35, 0x0

    .line 396
    .line 397
    const/16 v36, 0x0

    .line 398
    .line 399
    const/16 v37, 0x0

    .line 400
    .line 401
    const/16 v38, 0x0

    .line 402
    .line 403
    const/16 v39, 0x0

    .line 404
    .line 405
    const/16 v40, 0x0

    .line 406
    .line 407
    invoke-direct/range {v25 .. v42}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$QuicSettingBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$Hy2steriaSettingsBean;Ljava/lang/Object;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$SockoptBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 408
    .line 409
    .line 410
    const/16 v9, 0x71

    .line 411
    .line 412
    const/4 v2, 0x0

    .line 413
    move-object v1, v0

    .line 414
    invoke-direct/range {v1 .. v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$OutSettingsBean;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Ljava/lang/Object;Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$MuxBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 415
    .line 416
    .line 417
    return-object v0

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

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
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_0
    .array-data 8
        0x7920de3da81b73d2L    # 2.9200678697729823E275
        -0x236a5e9ed080efb0L    # -1.0061954867317081E138
        -0x17b42388cf635a15L    # -2.5423008352435906E194
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
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
    :array_1
    .array-data 8
        -0x6619f7867c3e285aL    # -6.48169133563166E-184
        0x2b0b5d6afe7798bdL
        -0x392a719e92cbd9beL    # -1.7488446112753856E33
    .end array-data

    .line 458
    .line 459
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
    .line 472
    .line 473
    :array_2
    .array-data 8
        -0x747de0d160638b3fL    # -3.089691457749014E-253
        -0x4e07c5ccb4d75120L    # -5.616513609331116E-68
        0x4a0851c733aecf5dL    # 4.442863737360532E48
    .end array-data

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
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_3
    .array-data 8
        0x15cdd32d84bff886L    # 1.189082901362383E-203
        0x5e2e08b869d1dceeL    # 4.6879397758261766E145
        0x3edca6c2b5a9aa46L    # 6.831028111701505E-6
    .end array-data
.end method

.method public final genV2rayConfig(Landroid/content/Context;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/v2ray/ang/dto/V2rayConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 58
    .line 59
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayMultipleConfig(Landroid/content/Context;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p1

    .line 76
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 p2, 0x3

    .line 79
    new-array p2, p2, [J

    .line 80
    .line 81
    fill-array-data p2, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 p2, 0x5

    .line 93
    new-array p2, p2, [J

    .line 94
    .line 95
    fill-array-data p2, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x0

    .line 105
    return-object p1

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x382ffe9829fa4a9fL    # 4.7011706230192497E-38
        0x28afa745ed62be9fL
    .end array-data

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
    .line 118
    .line 119
    :array_1
    .array-data 8
        0x14926a6b90c441adL
        0x74919a4977d7540fL    # 3.226377999726649E253
    .end array-data

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
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0x5aed131c2cd16cb4L
        0x6a84b14e7e19e80L
        -0x5a7d73589152755bL    # -5.352077776598484E-128
    .end array-data

    .line 132
    .line 133
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
    :array_3
    .array-data 8
        -0x4063d0fe8696eedcL    # -0.027523062739662
        -0x28046e1a24660b91L    # -6.7894369161150395E115
        -0xdd47fa5c336666bL    # -9.168978909408708E241
        0x44b12b3d92f39ca3L    # 8.107787708039047E22
        -0x46122996554bbaddL    # -1.1768838291182752E-29
    .end array-data
.end method

.method public final getV2rayConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/v2ray/ang/dto/ConfigResult;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    new-instance p1, Lcom/v2ray/ang/dto/ConfigResult;

    .line 45
    .line 46
    const/16 v6, 0xe

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v1, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 63
    .line 64
    if-ne v1, v2, :cond_1

    .line 65
    .line 66
    invoke-direct {p0, p2, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayCustomConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayNormalConfig(Landroid/content/Context;Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object p1

    .line 76
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 p2, 0x3

    .line 79
    new-array p2, p2, [J

    .line 80
    .line 81
    fill-array-data p2, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 p2, 0x5

    .line 93
    new-array p2, p2, [J

    .line 94
    .line 95
    fill-array-data p2, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/v2ray/ang/dto/ConfigResult;

    .line 105
    .line 106
    const/16 v5, 0xe

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    move-object v0, p1

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x128d5a1a9dbd4024L    # 2.598426305578053E-219
        -0x6d3b19ee78cf8016L    # -2.960141877895386E-218
    .end array-data

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
    .line 130
    .line 131
    :array_1
    .array-data 8
        0x43bdfb4fd51bed92L    # 2.16040822296946739E18
        0x5683e0a88639bfeL
    .end array-data

    .line 132
    .line 133
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
    :array_2
    .array-data 8
        -0x3c31214dd8f07722L    # -4.4488222936034007E18
        -0x319b9fd46e6ac376L    # -4.394614691679796E69
        -0xd0f40ec99273dL
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x608ac31975aebad2L    # 1.1482278195073386E157
        0x6648c8cc48c51ce3L    # 5.265567604349186E184
        -0x102d0439e51ff2fcL    # -4.605033461219735E230
        0x321b0fb02947ab99L    # 2.509396818496428E-67
        -0x31fd7414354b00c9L    # -6.250180596012559E67
    .end array-data
.end method

.method public final getV2rayConfig4Speedtest(Landroid/content/Context;Ljava/lang/String;)Lcom/v2ray/ang/dto/ConfigResult;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    :try_start_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    new-instance p1, Lcom/v2ray/ang/dto/ConfigResult;

    .line 45
    .line 46
    const/16 v6, 0xe

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v1, p1

    .line 54
    invoke-direct/range {v1 .. v7}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 63
    .line 64
    if-ne v1, v2, :cond_1

    .line 65
    .line 66
    invoke-direct {p0, p2, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayCustomConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayNormalConfig4Speedtest(Landroid/content/Context;Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object p1

    .line 76
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 p2, 0x3

    .line 79
    new-array p2, p2, [J

    .line 80
    .line 81
    fill-array-data p2, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 p2, 0x6

    .line 93
    new-array p2, p2, [J

    .line 94
    .line 95
    fill-array-data p2, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/v2ray/ang/dto/ConfigResult;

    .line 105
    .line 106
    const/16 v5, 0xe

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x0

    .line 113
    move-object v0, p1

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/v2ray/ang/dto/ConfigResult;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        -0x672404bb254e74fL
        0x58e867158de76049L    # 1.9691812017686947E120
    .end array-data

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
    .line 130
    .line 131
    :array_1
    .array-data 8
        0x5e111af2d70cc201L    # 1.3349586352456845E145
        -0x619e2f47ee897192L    # -2.474945824656399E-162
    .end array-data

    .line 132
    .line 133
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
    :array_2
    .array-data 8
        0x23521d6f722b6fcdL
        0x7176147d49343606L    # 3.594482506681014E238
        -0x353c509a51008a1dL    # -1.473017452232337E52
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        -0x521a28c9106d646L
        -0x309805a2cc965d68L    # -3.389234541281854E74
        0x5f01404bf84cc723L    # 4.411701760163069E149
        -0x5fec3f420ca7f80fL
        0x35bbeb2d913a71fdL    # 7.462002003054164E-50
        0x5723073ef077c9adL    # 5.720164162868149E111
    .end array-data
.end method

.method public final populateTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;Ljava/lang/String;)V
    .locals 24
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    new-array v4, v3, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object/from16 v3, p2

    .line 37
    .line 38
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getSecurity()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    new-array v4, v4, [J

    .line 51
    .line 52
    const-wide v5, 0x37aff57be952ae8L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    aput-wide v5, v4, v7

    .line 59
    .line 60
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getInsecure()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getSni()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getSni()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 102
    .line 103
    move-object/from16 v5, p3

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Lcom/v2ray/ang/util/Utils;->isDomainName(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move-object/from16 v5, p3

    .line 113
    .line 114
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v4}, Lcom/v2ray/ang/extension/_ExtKt;->isNotNullEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 125
    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v4, v6}, Lcom/v2ray/ang/util/Utils;->isDomainName(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    :goto_1
    move-object v4, v5

    .line 142
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getFingerPrint()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getAlpn()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getPublicKey()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getShortId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getSpiderX()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    const/4 v15, 0x0

    .line 167
    if-nez v9, :cond_6

    .line 168
    .line 169
    move-object v2, v15

    .line 170
    :cond_6
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setSecurity(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-nez v2, :cond_7

    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    if-eqz v4, :cond_8

    .line 181
    .line 182
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_9

    .line 187
    .line 188
    :cond_8
    move-object v4, v15

    .line 189
    :cond_9
    if-eqz v5, :cond_a

    .line 190
    .line 191
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_b

    .line 196
    .line 197
    :cond_a
    move-object v5, v15

    .line 198
    :cond_b
    if-eqz v8, :cond_10

    .line 199
    .line 200
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_c

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_c
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v9, v1, [J

    .line 210
    .line 211
    fill-array-data v9, :array_2

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    filled-new-array {v2}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    const/4 v12, 0x6

    .line 226
    const/4 v13, 0x0

    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v11, 0x0

    .line 229
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Ljava/lang/Iterable;

    .line 234
    .line 235
    new-instance v8, Ljava/util/ArrayList;

    .line 236
    .line 237
    const/16 v9, 0xa

    .line 238
    .line 239
    invoke-static {v2, v9}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-eqz v9, :cond_d

    .line 255
    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    check-cast v9, Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    :cond_e
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    if-eqz v9, :cond_f

    .line 288
    .line 289
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    move-object v10, v9

    .line 294
    check-cast v10, Ljava/lang/String;

    .line 295
    .line 296
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    if-lez v10, :cond_e

    .line 301
    .line 302
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_f
    move-object v9, v2

    .line 307
    goto :goto_6

    .line 308
    :cond_10
    :goto_5
    move-object v9, v15

    .line 309
    :goto_6
    if-eqz v6, :cond_12

    .line 310
    .line 311
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_11

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_11
    move-object/from16 v19, v6

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_12
    :goto_7
    move-object/from16 v19, v15

    .line 322
    .line 323
    :goto_8
    if-eqz v14, :cond_14

    .line 324
    .line 325
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_13

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_13
    move-object/from16 v20, v14

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_14
    :goto_9
    move-object/from16 v20, v15

    .line 336
    .line 337
    :goto_a
    if-eqz v3, :cond_16

    .line 338
    .line 339
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    if-nez v2, :cond_15

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_15
    move-object/from16 v21, v3

    .line 347
    .line 348
    goto :goto_c

    .line 349
    :cond_16
    :goto_b
    move-object/from16 v21, v15

    .line 350
    .line 351
    :goto_c
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;

    .line 352
    .line 353
    move-object v6, v2

    .line 354
    const/16 v22, 0xf78

    .line 355
    .line 356
    const/16 v23, 0x0

    .line 357
    .line 358
    const/4 v10, 0x0

    .line 359
    const/4 v11, 0x0

    .line 360
    const/4 v12, 0x0

    .line 361
    const/4 v13, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    move-object v14, v15

    .line 364
    move-object v15, v3

    .line 365
    const/16 v16, 0x0

    .line 366
    .line 367
    const/16 v17, 0x0

    .line 368
    .line 369
    const/16 v18, 0x0

    .line 370
    .line 371
    move-object v8, v4

    .line 372
    move-object v3, v14

    .line 373
    move-object v14, v5

    .line 374
    invoke-direct/range {v6 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 382
    .line 383
    new-array v6, v1, [J

    .line 384
    .line 385
    fill-array-data v6, :array_3

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
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_17

    .line 400
    .line 401
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setRealitySettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V

    .line 405
    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getSecurity()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 413
    .line 414
    new-array v1, v1, [J

    .line 415
    .line 416
    fill-array-data v1, :array_4

    .line 417
    .line 418
    .line 419
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-eqz v1, :cond_18

    .line 431
    .line 432
    invoke-virtual {v0, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setTlsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setRealitySettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TlsSettingsBean;)V

    .line 436
    .line 437
    .line 438
    :cond_18
    :goto_d
    return-void

    .line 439
    :array_0
    .array-data 8
        -0x2228768d459078b7L    # -1.1480672637939719E144
        0x2c61f704eb45d92fL    # 6.728474847981543E-95
        0xe40299e47523bceL
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_1
    .array-data 8
        -0x5bd49254697f8dafL
        0x53727ed1ce6d3f71L    # 9.644997777171201E93
        -0x485d3f1726c276c8L    # -1.0764011520882689E-40
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
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
    :array_2
    .array-data 8
        0x3b5ed244a9a50be3L    # 1.0197932647048286E-22
        0xefa58ceee44522bL    # 1.618426808413736E-236
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
    :array_3
    .array-data 8
        -0x402bc0cec18cee40L    # -0.3163569555147454
        0xdf4b61d080a1623L
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
    :array_4
    .array-data 8
        0x6622d3b1c813d362L    # 9.99969859782818E183
        0x7c937441e98709ffL    # 1.2133543224710315E292
    .end array-data
.end method

.method public final populateTransportSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;
    .locals 28
    .param p1    # Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/v2ray/ang/dto/ProfileItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x3

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v5, [J

    fill-array-data v6, :array_1

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getNetwork()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    const-wide v8, -0x32e3c495c9621349L    # -2.9035019894614998E63

    aput-wide v8, v7, v2

    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getHeaderType()Ljava/lang/String;

    move-result-object v7

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getSeed()Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getMode()Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getServiceName()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getAuthority()Ljava/lang/String;

    move-result-object v13

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getXhttpMode()Ljava/lang/String;

    move-result-object v14

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/v2ray/ang/dto/ProfileItem;->getXhttpExtra()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_1

    sget-object v4, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v4}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v0, v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setNetwork(Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->getNetwork()Ljava/lang/String;

    move-result-object v4

    .line 13
    sget-object v15, Lcom/v2ray/ang/dto/NetworkType;->TCP:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v15}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    const/4 v2, 0x0

    if-eqz v15, :cond_d

    .line 14
    new-instance v4, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;

    invoke-direct {v4, v2, v2, v5, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;-><init>(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_2

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 16
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    move-result-object v5

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_3

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->setType(Ljava/lang/String;)V

    .line 17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, v2

    goto/16 :goto_5

    .line 18
    :cond_3
    :goto_0
    new-instance v5, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;

    const/16 v21, 0xf

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v22}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;-><init>(Ljava/util/List;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->getHeaders()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;

    move-result-object v6

    if-nez v8, :cond_4

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v1, [J

    const-wide v10, -0x42ee3e6f77505c89L    # -1.57705951966409E-14

    const/4 v12, 0x0

    aput-wide v10, v8, v12

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_4
    move-object v10, v8

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v3, [J

    fill-array-data v8, :array_4

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 22
    check-cast v10, Ljava/lang/String;

    .line 23
    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 27
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 28
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_7
    invoke-virtual {v6, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;->setHost(Ljava/util/List;)V

    if-nez v9, :cond_8

    .line 30
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v7, -0x6c09fef5fa8511b7L

    const/4 v9, 0x0

    aput-wide v7, v1, v9

    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_8
    move-object v10, v9

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_5

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 33
    check-cast v6, Ljava/lang/String;

    .line 34
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 38
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 39
    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 40
    :cond_b
    invoke-virtual {v5, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->setPath(Ljava/util/List;)V

    .line 41
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->setRequest(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;)V

    .line 42
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean;->getHeaders()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean$RequestBean$HeadersBean;->getHost()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_5

    .line 43
    :cond_c
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_6

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean$HeaderBean;->setType(Ljava/lang/String;)V

    .line 44
    :goto_5
    invoke-virtual {v0, v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setTcpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$TcpSettingsBean;)V

    goto/16 :goto_13

    .line 45
    :cond_d
    sget-object v15, Lcom/v2ray/ang/dto/NetworkType;->KCP:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v15}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 46
    new-instance v1, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;

    const/16 v26, 0x1ff

    const/16 v27, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v27}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;-><init>(IIIIZIILcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;

    move-result-object v4

    if-nez v7, :cond_e

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_7

    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_e
    invoke-virtual {v4, v7}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;->setType(Ljava/lang/String;)V

    if-eqz v10, :cond_10

    .line 48
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_6

    .line 49
    :cond_f
    invoke-virtual {v1, v10}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->setSeed(Ljava/lang/String;)V

    goto :goto_7

    .line 50
    :cond_10
    :goto_6
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->setSeed(Ljava/lang/String;)V

    :goto_7
    if-eqz v8, :cond_12

    .line 51
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    .line 52
    :cond_11
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;->setDomain(Ljava/lang/String;)V

    goto :goto_9

    .line 53
    :cond_12
    :goto_8
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;->getHeader()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean$HeaderBean;->setDomain(Ljava/lang/String;)V

    .line 54
    :goto_9
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setKcpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$KcpSettingsBean;)V

    goto/16 :goto_f

    .line 55
    :cond_13
    sget-object v7, Lcom/v2ray/ang/dto/NetworkType;->WS:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v7}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 56
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;

    const/16 v22, 0x1f

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;->getHeaders()Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;

    move-result-object v4

    if-nez v8, :cond_14

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v6, -0x4fa9fdab69cc8d4aL    # -7.602972996142748E-76

    const/4 v10, 0x0

    aput-wide v6, v1, v10

    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_14
    move-object v1, v8

    :goto_a
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean$HeadersBean;->setHost(Ljava/lang/String;)V

    if-nez v9, :cond_15

    .line 58
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_8

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_15
    invoke-virtual {v2, v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;->setPath(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setWsSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$WsSettingsBean;)V

    goto/16 :goto_13

    .line 60
    :cond_16
    sget-object v7, Lcom/v2ray/ang/dto/NetworkType;->HTTP_UPGRADE:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v7}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 61
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v8, :cond_17

    .line 62
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v5, 0x219c1f5a6428dc38L    # 8.797426220320831E-147

    const/4 v7, 0x0

    aput-wide v5, v1, v7

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_17
    move-object v1, v8

    :goto_b
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;->setHost(Ljava/lang/String;)V

    if-nez v9, :cond_18

    .line 63
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_9

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_18
    invoke-virtual {v2, v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;->setPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setHttpupgradeSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpupgradeSettingsBean;)V

    goto/16 :goto_13

    .line 65
    :cond_19
    sget-object v7, Lcom/v2ray/ang/dto/NetworkType;->XHTTP:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v7}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 66
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;

    const/16 v21, 0xf

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v8, :cond_1a

    .line 67
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v10, 0xb5a9c75c4a7943aL

    const/4 v5, 0x0

    aput-wide v10, v1, v5

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_1a
    move-object v1, v8

    :goto_c
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;->setHost(Ljava/lang/String;)V

    if-nez v9, :cond_1b

    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_a

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1b
    invoke-virtual {v2, v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;->setPath(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v14}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;->setMode(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    invoke-virtual {v1, v6}, Lcom/v2ray/ang/util/JsonUtil;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;->setExtra(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setXhttpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$XhttpSettingsBean;)V

    goto/16 :goto_13

    .line 72
    :cond_1c
    sget-object v6, Lcom/v2ray/ang/dto/NetworkType;->H2:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v6}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    sget-object v7, Lcom/v2ray/ang/dto/NetworkType;->HTTP:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v7}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto/16 :goto_10

    .line 73
    :cond_1d
    sget-object v5, Lcom/v2ray/ang/dto/NetworkType;->GRPC:Lcom/v2ray/ang/dto/NetworkType;

    invoke-virtual {v5}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 74
    new-instance v2, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;

    const/16 v22, 0x1f

    const/16 v23, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v3, [J

    fill-array-data v3, :array_b

    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->setMultiMode(Ljava/lang/Boolean;)V

    if-nez v12, :cond_1e

    .line 76
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    const-wide v5, 0x3fd961d9a535b473L    # 0.39659730085151707

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :cond_1e
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v2, v12}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->setServiceName(Ljava/lang/String;)V

    if-nez v13, :cond_1f

    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v4, -0x3eeb083a20689776L    # -343537.46835101454

    aput-wide v4, v1, v7

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1f
    move-object v1, v13

    :goto_e
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->setAuthority(Ljava/lang/String;)V

    const/16 v1, 0x3c

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->setIdle_timeout(Ljava/lang/Integer;)V

    const/16 v1, 0x14

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;->setHealth_check_timeout(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {v0, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setGrpcSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$GrpcSettingsBean;)V

    move-object v8, v13

    goto/16 :goto_13

    :cond_20
    :goto_f
    move-object v8, v2

    goto/16 :goto_13

    .line 81
    :cond_21
    :goto_10
    invoke-virtual {v6}, Lcom/v2ray/ang/dto/NetworkType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setNetwork(Ljava/lang/String;)V

    .line 82
    new-instance v4, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;

    invoke-direct {v4, v2, v2, v5, v2}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez v8, :cond_22

    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v5, 0x740c6120ad8f30a7L    # 1.0159438118909738E251

    const/4 v7, 0x0

    aput-wide v5, v1, v7

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_22
    move-object v10, v8

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_c

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 89
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 91
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_24

    .line 92
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 93
    :cond_25
    invoke-virtual {v4, v1}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;->setHost(Ljava/util/List;)V

    .line 94
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;->getHost()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    if-nez v9, :cond_26

    .line 95
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_d

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_26
    invoke-virtual {v4, v9}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;->setPath(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v4}, Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean;->setHttpSettings(Lcom/v2ray/ang/dto/V2rayConfig$OutboundBean$StreamSettingsBean$HttpSettingsBean;)V

    :goto_13
    return-object v8

    :array_0
    .array-data 8
        -0x501591cee5b24e70L    # -7.133053335768319E-78
        0x594f5d9a25e01ed9L    # 1.619878058454813E122
        -0x150196399f049716L
    .end array-data

    :array_1
    .array-data 8
        0x14c60152dedad6b5L
        -0x565e8d829d0b74e0L    # -3.714479327476898E-108
        0x7dc25873cd0d05eaL    # 5.998956100547282E297
    .end array-data

    :array_2
    .array-data 8
        0x1667b7d7376e0429L    # 9.683075178345698E-201
        -0xd336d4ca005aaa5L    # -9.754905945629422E244
    .end array-data

    :array_3
    .array-data 8
        0x5b21681571d3688cL    # 9.652537826764185E130
        -0x3c8e72277ad732a4L    # -7.9056571049235904E16
    .end array-data

    :array_4
    .array-data 8
        0x26f693f19c581be1L    # 5.464688378098167E-121
        -0x269bd8148a4f7903L    # -4.1638131821712185E122
    .end array-data

    :array_5
    .array-data 8
        -0x3dfc9f54749ea078L    # -1.0403279212171646E10
        0x326cb776b693ee5eL    # 8.521279518579299E-66
    .end array-data

    :array_6
    .array-data 8
        0x3d045c33a2f9fe7dL    # 9.041728660186677E-15
        0x5d4dd7596728feabL    # 2.842918322706081E141
    .end array-data

    :array_7
    .array-data 8
        0x2e4e1755d5814506L    # 1.2101245737153908E-85
        -0x5ac630dc3c7d803aL
    .end array-data

    :array_8
    .array-data 8
        -0x5a8c57f88095ad60L    # -2.835731129134926E-128
        0x27373fc6a5e80871L    # 9.003437303383493E-120
    .end array-data

    :array_9
    .array-data 8
        0x4bdefb15b95b4724L    # 3.0385880453786805E57
        -0x5b41de9ce393e5fcL    # -1.061224023240457E-131
    .end array-data

    :array_a
    .array-data 8
        -0x1c8dbe80dd4bdf0aL    # -1.1023500405505764E171
        -0x20d24ae13d22fdaaL    # -3.0388829231616765E150
    .end array-data

    :array_b
    .array-data 8
        -0x347ae5687bbfdf48L    # -6.468318700955745E55
        0x1ba4d8e6f866adc2L    # 1.646272857201487E-175
    .end array-data

    :array_c
    .array-data 8
        -0x29846dc0b6559dbdL    # -4.0470200563334526E108
        0x1763822eb3534aafL    # 5.219600547366897E-196
    .end array-data

    :array_d
    .array-data 8
        0x247da4e97d7e8440L
        0x7aadb1044c3fd7c2L    # 8.623382939211493E282
    .end array-data
.end method
