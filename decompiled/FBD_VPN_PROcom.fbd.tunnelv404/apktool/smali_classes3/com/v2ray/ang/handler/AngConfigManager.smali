.class public final Lcom/v2ray/ang/handler/AngConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/v2ray/ang/handler/AngConfigManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001c\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0008\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\tH\u0007J.\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0007J\u0012\u0010\u001f\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\tH\u0002J\"\u0010!\u001a\u00020\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002J\u0018\u0010\"\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\tJ.\u0010#\u001a\u00020\u00052\u0008\u0010$\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002J\u0006\u0010)\u001a\u00020\u0005J\u001a\u0010*\u001a\u00020\u00052\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020&0\u001cJ\"\u0010,\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0018H\u0002J\u0010\u0010-\u001a\u00020\u00052\u0006\u0010.\u001a\u00020\tH\u0002J&\u0010/\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000c2\u0006\u0010\u001d\u001a\u00020\tR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u00061"
    }
    d2 = {
        "Lcom/v2ray/ang/handler/AngConfigManager;",
        "",
        "<init>",
        "()V",
        "share2Clipboard",
        "",
        "context",
        "Landroid/content/Context;",
        "guid",
        "",
        "shareNonCustomConfigsToClipboard",
        "serverList",
        "",
        "share2QRCode",
        "Landroid/graphics/Bitmap;",
        "shareFullContent2Clipboard",
        "shareConfig",
        "serverRawStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getServerRawStorage",
        "()Lcom/tencent/mmkv/MMKV;",
        "serverRawStorage$delegate",
        "Lkotlin/Lazy;",
        "importCustomizeConfig",
        "",
        "server",
        "importBatchConfig",
        "importBatchConfig1",
        "Lkotlin/Pair;",
        "subid",
        "append",
        "parseBatchSubscription",
        "servers",
        "parseBatchConfig",
        "parseCustomConfigServer",
        "parseConfig",
        "str",
        "subItem",
        "Lcom/v2ray/ang/dto/SubscriptionItem;",
        "removedSelectedServer",
        "Lcom/v2ray/ang/dto/ProfileItem;",
        "updateConfigViaSubAll",
        "updateConfigViaSub",
        "it",
        "parseConfigViaSub",
        "importUrlAsSubscription",
        "url",
        "createIntelligentSelection",
        "guidList",
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
        "SMAP\nAngConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AngConfigManager.kt\ncom/v2ray/ang/handler/AngConfigManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n1869#2,2:563\n1869#2,2:565\n1869#2,2:567\n1869#2,2:569\n*S KotlinDebug\n*F\n+ 1 AngConfigManager.kt\ncom/v2ray/ang/handler/AngConfigManager\n*L\n242#1:563,2\n289#1:565,2\n432#1:567,2\n522#1:569,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serverRawStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/v2ray/ang/handler/AngConfigManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/v2ray/ang/handler/AngConfigManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 7
    .line 8
    new-instance v0, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->serverRawStorage$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
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

.method private final getServerRawStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->serverRawStorage$delegate:Lkotlin/Lazy;

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

.method public static final importBatchConfig(Ljava/lang/String;)Z
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
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
    sget-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 20
    .line 21
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    new-array v4, v3, [J

    .line 31
    .line 32
    const-wide v5, -0x3e284c9da1e5ae85L    # -1.5905283764112232E9

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    aput-wide v5, v4, v7

    .line 39
    .line 40
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-gtz v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v2, v3, [J

    .line 56
    .line 57
    const-wide v4, 0x5c9ed142db6d507dL    # 1.4335551294177816E138

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    aput-wide v4, v2, v7

    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v0, p0, v1, v3}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_0
    if-lez v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSubAll()I

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_1
    return v7

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x472ff7503e161452L    # 8.298865762722285E34
        0x385746f59ce0a942L    # 2.736219976906549E-37
    .end array-data
.end method

.method public static final importBatchConfig1(Ljava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 20
    .line 21
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v2, p1, p2}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-gtz v2, :cond_0

    .line 32
    .line 33
    invoke-direct {v0, p0, p1, p2}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :cond_0
    if-gtz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Lcom/v2ray/ang/handler/AngConfigManager;->parseCustomConfigServer(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :cond_1
    invoke-direct {v0, p0}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchSubscription(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-gtz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v0, p0}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchSubscription(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    :cond_2
    if-lez p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSubAll()I

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :array_0
    .array-data 8
        -0x458ec241701cff53L    # -3.4818303894169194E-27
        -0x65e6f98ed9e9703cL    # -5.889515613606937E-183
    .end array-data
.end method

.method public static final importCustomizeConfig(Ljava/lang/String;)Z
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lcom/v2ray/ang/dto/ServerConfig;->Companion:Lcom/v2ray/ang/dto/ServerConfig$Companion;

    .line 4
    .line 5
    sget-object v3, Lcom/v2ray/ang/dto/EConfigType;->CUSTOM:Lcom/v2ray/ang/dto/EConfigType;

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ServerConfig$Companion;->create(Lcom/v2ray/ang/dto/EConfigType;)Lcom/v2ray/ang/dto/ServerConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ServerConfig;->setRemarks(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v4, v0, [J

    .line 25
    .line 26
    const-wide v5, -0x1310dd76668b656cL    # -5.3665421371888975E216

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    aput-wide v5, v4, v1

    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ServerConfig;->setSubscriptionId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/google/gson/Gson;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v4, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 49
    .line 50
    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/v2ray/ang/dto/V2rayConfig;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/v2ray/ang/dto/ServerConfig;->setFullConfig(Lcom/v2ray/ang/dto/V2rayConfig;)V

    .line 57
    .line 58
    .line 59
    sget-object v3, Lcom/v2ray/ang/util/MmkvManager;->INSTANCE:Lcom/v2ray/ang/util/MmkvManager;

    .line 60
    .line 61
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v0, v0, [J

    .line 64
    .line 65
    const-wide v5, 0x1b0559d44876a9e0L    # 1.646526305292214E-178

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    aput-wide v5, v0, v1

    .line 71
    .line 72
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v3, v0, v2}, Lcom/v2ray/ang/util/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ServerConfig;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v2, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/v2ray/ang/handler/AngConfigManager;->getServerRawStorage()Lcom/tencent/mmkv/MMKV;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v0, p0}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    return v1
.end method

.method private final importUrlAsSubscription(Ljava/lang/String;)I
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 6
    .line 7
    invoke-virtual {v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscriptions()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lkotlin/Pair;

    .line 28
    .line 29
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    new-instance v3, Ljava/net/URI;

    .line 47
    .line 48
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Lcom/v2ray/ang/util/Utils;->fixIllegalUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 58
    .line 59
    move-object v5, v4

    .line 60
    const/16 v20, 0xfff

    .line 61
    .line 62
    const/16 v21, 0x0

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const-wide/16 v9, 0x0

    .line 68
    .line 69
    const-wide/16 v11, 0x0

    .line 70
    .line 71
    const/4 v13, 0x0

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const/16 v19, 0x0

    .line 81
    .line 82
    invoke-direct/range {v5 .. v21}, Lcom/v2ray/ang/dto/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZJJZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v5, 0x3

    .line 94
    new-array v5, v5, [J

    .line 95
    .line 96
    fill-array-data v5, :array_0

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :cond_2
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->setRemarks(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v0}, Lcom/v2ray/ang/dto/SubscriptionItem;->setUrl(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 113
    .line 114
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v5, v1, [J

    .line 117
    .line 118
    const-wide v6, -0x33caa3ff9bee772aL    # -1.3407500731934352E59

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    aput-wide v6, v5, v2

    .line 124
    .line 125
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v0, v2, v4}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSubscription(Ljava/lang/String;Lcom/v2ray/ang/dto/SubscriptionItem;)V

    .line 133
    .line 134
    .line 135
    return v1

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x73c00ff56bf0466aL
        0x79aa241d33e3ca39L    # 1.158482253091778E278
        0x1e946b5b7d219bd5L    # 2.269366083761973E-161
    .end array-data
.end method

.method private final parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    if-nez p3, :cond_2

    .line 14
    .line 15
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 16
    .line 17
    invoke-static {}, Lcom/v2ray/ang/handler/MmkvManager;->getSelectServer()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v5, v0, [J

    .line 26
    .line 27
    const-wide v6, -0xd8b4fed4a5ac332L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    aput-wide v6, v5, v1

    .line 33
    .line 34
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :cond_1
    invoke-virtual {v2, v4}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    move-object v3, v2

    .line 58
    :cond_2
    if-nez p3, :cond_3

    .line 59
    .line 60
    sget-object p3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Lcom/v2ray/ang/handler/MmkvManager;->removeServerViaSubid(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    sget-object p3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Iterable;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Iterable;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v2, 0x0

    .line 94
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/String;

    .line 105
    .line 106
    sget-object v5, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 107
    .line 108
    invoke-direct {v5, v4, p2, p3, v3}, Lcom/v2ray/ang/handler/AngConfigManager;->parseConfig(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/SubscriptionItem;Lcom/v2ray/ang/dto/ProfileItem;)I

    .line 109
    .line 110
    .line 111
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    if-nez v4, :cond_4

    .line 113
    .line 114
    add-int/2addr v2, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    return v2

    .line 117
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    const/4 p2, 0x3

    .line 120
    new-array p2, p2, [J

    .line 121
    .line 122
    fill-array-data p2, :array_0

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    const/4 p2, 0x5

    .line 134
    new-array p2, p2, [J

    .line 135
    .line 136
    fill-array-data p2, :array_1

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    return v1

    .line 146
    nop

    .line 147
    :array_0
    .array-data 8
        -0x233f9491cd9a7d12L    # -6.110432061320994E138
        -0xc43f40907c1530aL
        0x756a0ae6d5af25c1L    # 3.9103028667331754E257
    .end array-data

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
    .line 160
    .line 161
    .line 162
    .line 163
    :array_1
    .array-data 8
        -0x58fb42cebcf4c96fL    # -1.003922640425817E-120
        -0x8ff2a5c81c96a56L    # -1.696317290603272E265
        0xfdcd87c58d12668L
        -0x691cbb562bbe6390L
        0x2821cafb29aa34dbL
    .end array-data
.end method

.method private final parseBatchSubscription(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v3, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/util/Utils;->isValidSubUrl(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    sget-object v3, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 43
    .line 44
    invoke-direct {v3, v2}, Lcom/v2ray/ang/handler/AngConfigManager;->importUrlAsSubscription(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/2addr v1, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v1

    .line 51
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    fill-array-data v1, :array_0

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    new-array v1, v1, [J

    .line 69
    .line 70
    fill-array-data v1, :array_1

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    return v0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        -0x34d1045c0fe02726L    # -1.4837894919833798E54
        -0x37bf97040dfd179aL    # -1.1168131514763286E40
        0x668f3c166ccedbd1L    # 1.0617564792678398E186
    .end array-data

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
        0x37b845519a1ab10dL    # 2.7861484907257043E-40
        0x56b41f87b43ba1e7L    # 4.726010856223866E109
        -0x5ab07792c1f2c89eL    # -5.686381788179735E-129
        -0x6d4de0d0cb725d00L
        0x10cbad2c5c281ae2L
        0x58c737e1fa63ce8eL    # 4.684018080716138E119
    .end array-data
.end method

.method private final parseConfig(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/SubscriptionItem;Lcom/v2ray/ang/dto/ProfileItem;)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_e

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->VMESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    sget-object v1, Lcom/v2ray/ang/fmt/VmessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/VmessFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->SHADOWSOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    sget-object v1, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_2
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->SOCKS:Lcom/v2ray/ang/dto/EConfigType;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    sget-object v1, Lcom/v2ray/ang/fmt/SocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/SocksFmt;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/SocksFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->TROJAN:Lcom/v2ray/ang/dto/EConfigType;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    sget-object v1, Lcom/v2ray/ang/fmt/TrojanFmt;->INSTANCE:Lcom/v2ray/ang/fmt/TrojanFmt;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/TrojanFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->VLESS:Lcom/v2ray/ang/dto/EConfigType;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_5

    .line 105
    .line 106
    sget-object v1, Lcom/v2ray/ang/fmt/VlessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VlessFmt;

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/VlessFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->WIREGUARD:Lcom/v2ray/ang/dto/EConfigType;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    sget-object v1, Lcom/v2ray/ang/fmt/WireguardFmt;->INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;

    .line 126
    .line 127
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/WireguardFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    sget-object v4, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_8

    .line 143
    .line 144
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v6, v1, [J

    .line 147
    .line 148
    fill-array-data v6, :array_0

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {p1, v4, v2, v1, v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_7
    move-object p1, v5

    .line 166
    goto :goto_1

    .line 167
    :cond_8
    :goto_0
    sget-object v1, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->INSTANCE:Lcom/v2ray/ang/fmt/Hysteria2Fmt;

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    :goto_1
    if-nez p1, :cond_9

    .line 174
    .line 175
    const p1, 0x7f1302fd

    .line 176
    .line 177
    .line 178
    return p1

    .line 179
    :cond_9
    if-eqz p3, :cond_a

    .line 180
    .line 181
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getFilter()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    :cond_a
    if-eqz v5, :cond_c

    .line 186
    .line 187
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getFilter()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-lez v1, :cond_c

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-lez v1, :cond_c

    .line 208
    .line 209
    new-instance v1, Lkotlin/text/Regex;

    .line 210
    .line 211
    invoke-virtual {p3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getFilter()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    if-nez p3, :cond_b

    .line 216
    .line 217
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v4, v0, [J

    .line 220
    .line 221
    const-wide v5, 0x6e2d00dbc4661afaL    # 5.2419759870425986E222

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    aput-wide v5, v4, v2

    .line 227
    .line 228
    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    :cond_b
    invoke-direct {v1, p3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result p3

    .line 246
    if-nez p3, :cond_c

    .line 247
    .line 248
    return v3

    .line 249
    :cond_c
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/dto/ProfileItem;->setSubscriptionId(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object p2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 253
    .line 254
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v0, v0, [J

    .line 257
    .line 258
    const-wide v4, 0x792220f8b7cd3bf3L    # 3.138303861051872E275

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    aput-wide v4, v0, v2

    .line 264
    .line 265
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    invoke-virtual {p2, p3, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    if-eqz p4, :cond_d

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p4}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p4}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p4

    .line 300
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_d

    .line 305
    .line 306
    invoke-virtual {p2, p3}, Lcom/v2ray/ang/handler/MmkvManager;->setSelectServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .line 308
    .line 309
    :cond_d
    return v2

    .line 310
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 311
    .line 312
    const/4 p2, 0x3

    .line 313
    new-array p2, p2, [J

    .line 314
    .line 315
    fill-array-data p2, :array_1

    .line 316
    .line 317
    .line 318
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    const/4 p2, 0x4

    .line 327
    new-array p2, p2, [J

    .line 328
    .line 329
    fill-array-data p2, :array_2

    .line 330
    .line 331
    .line 332
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    return v3

    .line 339
    :cond_e
    :goto_2
    const p1, 0x7f130302

    .line 340
    .line 341
    .line 342
    return p1

    .line 343
    :array_0
    .array-data 8
        -0x78fd5747252a6b97L    # -6.736649883122115E-275
        -0x65d12c447bea9927L
    .end array-data

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
    :array_1
    .array-data 8
        -0x1875db7896176bc0L    # -5.8239490434148506E190
        -0x1b88af6d2a04d6cbL    # -9.226310619798123E175
        0x6c62bcfa5498b95fL    # 1.2616377712646635E214
    .end array-data

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
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_2
    .array-data 8
        -0x416778ae1f9f801cL    # -3.655045194301389E-7
        -0x6e5fd780f29b3f82L    # -8.73063646529971E-224
        0x352924ef5a22facfL    # 1.312592516070426E-52
        -0x18c887020ed2a7ffL    # -1.6341012117442825E189
    .end array-data
.end method

.method private final parseConfigViaSub(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/util/Utils;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p2, p3}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/v2ray/ang/handler/AngConfigManager;->parseBatchConfig(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_0
    if-gtz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/v2ray/ang/handler/AngConfigManager;->parseCustomConfigServer(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :cond_1
    return v0
.end method

.method private static final serverRawStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;
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
        -0x11bdd08e2efb9396L
        0x2cb5503d83c89bc1L    # 2.55443511610835E-93
        -0x7ef5d354b39d6f1dL
    .end array-data
.end method

.method private final shareConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v2, v1, [J

    .line 14
    .line 15
    const-wide v3, -0x1b83d71988677c90L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    aput-wide v3, v2, v0

    .line 21
    .line 22
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/EConfigType;->getProtocolScheme()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sget-object v4, Lcom/v2ray/ang/handler/AngConfigManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    aget v3, v4, v3

    .line 49
    .line 50
    packed-switch v3, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 54
    .line 55
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :pswitch_0
    sget-object v3, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->INSTANCE:Lcom/v2ray/ang/fmt/Hysteria2Fmt;

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v3, Lcom/v2ray/ang/fmt/WireguardFmt;->INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/WireguardFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :pswitch_2
    sget-object v3, Lcom/v2ray/ang/fmt/TrojanFmt;->INSTANCE:Lcom/v2ray/ang/fmt/TrojanFmt;

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/TrojanFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto :goto_0

    .line 80
    :pswitch_3
    sget-object v3, Lcom/v2ray/ang/fmt/VlessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VlessFmt;

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/VlessFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_0

    .line 87
    :pswitch_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v3, v1, [J

    .line 90
    .line 91
    const-wide v4, -0x34a21dadf3d0db50L    # -1.1449298876969286E55

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    aput-wide v4, v3, v0

    .line 97
    .line 98
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_0

    .line 106
    :pswitch_5
    sget-object v3, Lcom/v2ray/ang/fmt/SocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/SocksFmt;

    .line 107
    .line 108
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/SocksFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_0

    .line 113
    :pswitch_6
    sget-object v3, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->INSTANCE:Lcom/v2ray/ang/fmt/ShadowsocksFmt;

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/ShadowsocksFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_0

    .line 120
    :pswitch_7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v3, v1, [J

    .line 123
    .line 124
    const-wide v4, -0x6aa22b503e9290a2L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    aput-wide v4, v3, v0

    .line 130
    .line 131
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_0

    .line 139
    :pswitch_8
    sget-object v3, Lcom/v2ray/ang/fmt/VmessFmt;->INSTANCE:Lcom/v2ray/ang/fmt/VmessFmt;

    .line 140
    .line 141
    invoke-virtual {v3, p1}, Lcom/v2ray/ang/fmt/VmessFmt;->toUri(Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object p1

    .line 161
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    const/4 v2, 0x3

    .line 164
    new-array v2, v2, [J

    .line 165
    .line 166
    fill-array-data v2, :array_0

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v1, v1, [J

    .line 178
    .line 179
    const-wide v2, -0xf93414729fc2586L    # -3.570171582952158E233

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    aput-wide v2, v1, v0

    .line 185
    .line 186
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    return-object p1

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
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
    :array_0
    .array-data 8
        0x1a0879996474dd9aL
        -0x1a112ffd3e61a70bL    # -1.0228569838965087E183
        -0x25cb11e41837ff1fL    # -3.542009939482435E126
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/handler/AngConfigManager;->serverRawStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final createIntelligentSelection(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v4, v3, [J

    .line 24
    .line 25
    fill-array-data v4, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v3, [J

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_0
    sget-object v2, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 64
    .line 65
    invoke-virtual {v2, p1, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->genV2rayConfig(Landroid/content/Context;Ljava/util/List;)Lcom/v2ray/ang/dto/V2rayConfig;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    return-object v3

    .line 72
    :cond_1
    sget-object p2, Lcom/v2ray/ang/fmt/CustomFmt;->INSTANCE:Lcom/v2ray/ang/fmt/CustomFmt;

    .line 73
    .line 74
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {p2, v4}, Lcom/v2ray/ang/fmt/CustomFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_2

    .line 85
    .line 86
    return-object v3

    .line 87
    :cond_2
    invoke-virtual {p2, p3}, Lcom/v2ray/ang/dto/ProfileItem;->setSubscriptionId(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object p3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 91
    .line 92
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v4, v1, [J

    .line 95
    .line 96
    const-wide v5, -0x7fe2b5dc13307816L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    aput-wide v5, v4, v0

    .line 102
    .line 103
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p3, v3, p2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {v2, p1}, Lcom/v2ray/ang/util/JsonUtil;->toJsonPretty(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_3

    .line 119
    .line 120
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v1, v1, [J

    .line 123
    .line 124
    const-wide v2, 0x3ca2e9f6ee924e78L    # 1.3124171285905007E-16

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    aput-wide v2, v1, v0

    .line 130
    .line 131
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :cond_3
    invoke-virtual {p3, p2, p1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerRaw(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object p2

    .line 142
    nop

    .line 143
    :array_0
    .array-data 8
        -0x2c5b32fcb030a71eL    # -8.67779434096432E94
        -0x48bb10daa4701275L    # -1.8774407398823737E-42
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
    :array_1
    .array-data 8
        -0x4875177207270fb8L    # -3.8611683808295544E-41
        0x524ff9621439ef2fL    # 3.180297832073346E88
    .end array-data

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
    :array_2
    .array-data 8
        -0x622ec5a9db39d9e1L    # -4.674489040611529E-165
        -0x42f5cda9fe8da778L    # -1.163363842686104E-14
    .end array-data
.end method

.method public final parseCustomConfigServer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x1

    .line 7
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    new-array v6, v5, [J

    .line 11
    .line 12
    fill-array-data v6, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return v4

    .line 29
    :cond_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v7, v5, [J

    .line 32
    .line 33
    fill-array-data v7, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-static {v0, v6, v4, v5, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_7

    .line 49
    .line 50
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v8, v2, [J

    .line 53
    .line 54
    fill-array-data v8, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-static {v0, v6, v4, v5, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v8, v5, [J

    .line 73
    .line 74
    fill-array-data v8, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-static {v0, v6, v4, v5, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    :try_start_0
    sget-object v5, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 91
    .line 92
    const-class v6, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v5, v0, v6}, Lcom/v2ray/ang/util/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, [Ljava/lang/Object;

    .line 99
    .line 100
    array-length v6, v5

    .line 101
    if-nez v6, :cond_1

    .line 102
    .line 103
    const/4 v6, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const/4 v6, 0x0

    .line 106
    :goto_0
    if-nez v6, :cond_5

    .line 107
    .line 108
    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->reversed([Ljava/lang/Object;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    :goto_1
    if-ge v7, v6, :cond_4

    .line 119
    .line 120
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    sget-object v10, Lcom/v2ray/ang/fmt/CustomFmt;->INSTANCE:Lcom/v2ray/ang/fmt/CustomFmt;

    .line 125
    .line 126
    sget-object v11, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 127
    .line 128
    invoke-virtual {v11, v9}, Lcom/v2ray/ang/util/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v10, v12}, Lcom/v2ray/ang/fmt/CustomFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    if-nez v10, :cond_2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v10, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setSubscriptionId(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v12, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 143
    .line 144
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v14, v3, [J

    .line 147
    .line 148
    const-wide v15, -0x502704bf6d5cc887L    # -3.3710007492367996E-78

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    aput-wide v15, v14, v4

    .line 154
    .line 155
    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v12, v13, v10}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-virtual {v11, v9}, Lcom/v2ray/ang/util/JsonUtil;->toJsonPretty(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    if-nez v9, :cond_3

    .line 171
    .line 172
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v11, v3, [J

    .line 175
    .line 176
    const-wide v13, 0x8c04a23c66a28d6L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    aput-wide v13, v11, v4

    .line 182
    .line 183
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    :cond_3
    invoke-virtual {v12, v10, v9}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .line 192
    .line 193
    add-int/2addr v8, v3

    .line 194
    :goto_2
    add-int/2addr v7, v3

    .line 195
    goto :goto_1

    .line 196
    :cond_4
    return v8

    .line 197
    :catch_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 198
    .line 199
    new-array v6, v2, [J

    .line 200
    .line 201
    fill-array-data v6, :array_4

    .line 202
    .line 203
    .line 204
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    const/4 v6, 0x7

    .line 213
    new-array v6, v6, [J

    .line 214
    .line 215
    fill-array-data v6, :array_5

    .line 216
    .line 217
    .line 218
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    :cond_5
    :try_start_1
    sget-object v5, Lcom/v2ray/ang/fmt/CustomFmt;->INSTANCE:Lcom/v2ray/ang/fmt/CustomFmt;

    .line 225
    .line 226
    invoke-virtual {v5, v0}, Lcom/v2ray/ang/fmt/CustomFmt;->parse(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-nez v5, :cond_6

    .line 231
    .line 232
    return v4

    .line 233
    :cond_6
    invoke-virtual {v5, v1}, Lcom/v2ray/ang/dto/ProfileItem;->setSubscriptionId(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 237
    .line 238
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 239
    .line 240
    new-array v7, v3, [J

    .line 241
    .line 242
    const-wide v8, -0x634d5dcfd53e3e60L

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    aput-wide v8, v7, v4

    .line 248
    .line 249
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v1, v6, v5}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v1, v5, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .line 262
    .line 263
    return v3

    .line 264
    :catch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 265
    .line 266
    new-array v1, v2, [J

    .line 267
    .line 268
    fill-array-data v1, :array_6

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    const/16 v1, 0x8

    .line 280
    .line 281
    new-array v1, v1, [J

    .line 282
    .line 283
    fill-array-data v1, :array_7

    .line 284
    .line 285
    .line 286
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    return v4

    .line 293
    :cond_7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 294
    .line 295
    new-array v6, v2, [J

    .line 296
    .line 297
    fill-array-data v6, :array_8

    .line 298
    .line 299
    .line 300
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v0, v1, v4, v5, v7}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_9

    .line 312
    .line 313
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 314
    .line 315
    new-array v6, v5, [J

    .line 316
    .line 317
    fill-array-data v6, :array_9

    .line 318
    .line 319
    .line 320
    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v0, v1, v4, v5, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_9

    .line 332
    .line 333
    :try_start_2
    sget-object v1, Lcom/v2ray/ang/fmt/WireguardFmt;->INSTANCE:Lcom/v2ray/ang/fmt/WireguardFmt;

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/fmt/WireguardFmt;->parseWireguardConfFile(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-nez v1, :cond_8

    .line 340
    .line 341
    const v0, 0x7f1302fd

    .line 342
    .line 343
    .line 344
    return v0

    .line 345
    :cond_8
    sget-object v5, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 346
    .line 347
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 348
    .line 349
    new-array v7, v3, [J

    .line 350
    .line 351
    const-wide v8, -0x6dc685c250388acdL    # -7.048229968470033E-221

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    aput-wide v8, v7, v4

    .line 357
    .line 358
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v5, v6, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerConfig(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v5, v1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerRaw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 370
    .line 371
    .line 372
    return v3

    .line 373
    :catch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 374
    .line 375
    new-array v1, v2, [J

    .line 376
    .line 377
    fill-array-data v1, :array_a

    .line 378
    .line 379
    .line 380
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 387
    .line 388
    const/4 v1, 0x6

    .line 389
    new-array v1, v1, [J

    .line 390
    .line 391
    fill-array-data v1, :array_b

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    :cond_9
    return v4

    .line 401
    :array_0
    .array-data 8
        -0x3f94db7a896e9f07L    # -217.14129188913628
        -0xe871350c95094e8L    # -4.0575500353582725E238
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
    :array_1
    .array-data 8
        0x289675073d3babeaL
        -0x22dc6d4dacebfeb6L    # -4.661719437010551E140
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
    :array_2
    .array-data 8
        0x3c841ba0f49d3c1aL    # 3.4881689093394644E-17
        0x2e5e811c9ca17d66L    # 2.453482210260774E-85
        0x452e5b64f4c62a9L
    .end array-data

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
    :array_3
    .array-data 8
        -0x16dbf54a7ce7919cL    # -2.996295076224956E198
        0x557487cb71c96d58L    # 4.598296311128048E103
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
    :array_4
    .array-data 8
        -0x14841faf741796edL    # -5.727841921292879E209
        0x7eb4ba6246806884L    # 2.221029691138565E302
        0x3702e32aa3f8708eL    # 1.0586736689961914E-43
    .end array-data

    .line 454
    .line 455
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
    :array_5
    .array-data 8
        -0x55d1397e06291463L
        0x7cedb11847e788ceL    # 5.926004489292037E293
        -0x20b5b2e952dd509cL    # -1.0761732869988997E151
        0x564f290904ec7404L    # 5.717287269647333E107
        -0x63775a52eb35e4ffL
        -0x3d23ab98ec31cebdL    # -1.2459532872723705E14
        -0x3f1880de4671c64L
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    :array_6
    .array-data 8
        0x715ecbe82fe30ab1L    # 1.2533666022959239E238
        0x6b217702f62bfa15L    # 1.1214317545507116E208
        0x6591cee42e2b2dfdL    # 1.8473818895024948E181
    .end array-data

    :array_7
    .array-data 8
        0x7b72cc98d96d9c3bL    # 4.47275825834149E286
        -0x41647ac895d091eaL    # -4.100855709989957E-7
        -0x73448553020fdf1cL    # -2.456335539171363E-247
        -0x5608f7de6fd1b31L    # -4.565531834683019E282
        0x1e725cb1f2e5d1daL    # 5.101812104559784E-162
        -0x1c2e192bf6efea05L    # -6.918168666023469E172
        -0xfe125cde6e5296eL    # -1.1974698939358481E232
        0x57ad61204fa43d27L    # 2.260951703922307E114
    .end array-data

    :array_8
    .array-data 8
        0x4cfa6ee2e0b18cffL    # 6.796229338699081E62
        -0x1179db86042edbcdL    # -2.5612570810974076E224
        0x15eae5a5d70b14feL    # 4.28941213201789E-203
    .end array-data

    :array_9
    .array-data 8
        0x2be9a0b9aac06bfeL    # 3.7494131259027464E-97
        0x405426dc24d33b40L    # 80.60718651416846
    .end array-data

    :array_a
    .array-data 8
        0x3841683fa6d5980dL    # 1.0231045120159046E-37
        0x3f04fae3593469d1L    # 4.0016234516399394E-5
        0x2d9745109f16688fL    # 4.569341954353375E-89
    .end array-data

    :array_b
    .array-data 8
        0x1e75107de1c063a7L    # 5.852640705746955E-162
        -0xa28f3c52998f0d4L
        -0x11e4fd972863cf88L    # -2.440798632130246E222
        -0x6c174a16a2eed40L
        -0x1bd6e26b9652033aL    # -3.1059190191209464E174
        0x3180543a2e4e3590L
    .end array-data
.end method

.method public final share2Clipboard(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p1    # Landroid/content/Context;
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
    const/4 v0, -0x1

    .line 37
    :try_start_0
    invoke-direct {p0, p2}, Lcom/v2ray/ang/handler/AngConfigManager;->shareConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    return v0

    .line 48
    :cond_0
    sget-object v1, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 49
    .line 50
    invoke-virtual {v1, p1, p2}, Lcom/v2ray/ang/util/Utils;->setClipboard(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    return p1

    .line 55
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    new-array p2, p2, [J

    .line 59
    .line 60
    fill-array-data p2, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 p2, 0x6

    .line 72
    new-array p2, p2, [J

    .line 73
    .line 74
    fill-array-data p2, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    return v0

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x1833ad3434a605a7L    # 4.312730727744274E-192
        -0x7ceb35b03f19d18L    # -9.139174431295768E270
    .end array-data

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
        0xfba6cfcf7e1be58L    # 6.648909781833387E-233
        0x64ccbec996da329eL    # 3.6401037127213565E177
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 8
        0x22a5e45f4c83b50eL    # 8.976335170718734E-142
        -0x159b8a0cf14d4ea5L    # -3.2075128885621296E204
        0x3e801ddcae37a26bL    # 1.2007838910635817E-7
    .end array-data

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
    :array_3
    .array-data 8
        -0x321abf822e7ae134L    # -1.7904707043125884E67
        0x3349f38e77ae1bfdL    # 1.2616868189674335E-61
        0x75c79dbef10d7fd1L    # 2.2694269414607433E259
        0x36736e971a7e62f6L    # 2.1273454819287308E-46
        0x6f6dcd6b87af209bL    # 5.648046800853268E228
        -0x4b6797f4e6842ce8L    # -2.4884268333494503E-55
    .end array-data
.end method

.method public final share2QRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
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
    const/4 v0, 0x0

    .line 20
    :try_start_0
    invoke-direct {p0, p1}, Lcom/v2ray/ang/handler/AngConfigManager;->shareConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    sget-object v2, Lcom/v2ray/ang/util/QRCodeDecoder;->INSTANCE:Lcom/v2ray/ang/util/QRCodeDecoder;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v2, p1, v3, v1, v0}, Lcom/v2ray/ang/util/QRCodeDecoder;->createQRCode$default(Lcom/v2ray/ang/util/QRCodeDecoder;Ljava/lang/String;IILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    const/4 v1, 0x6

    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x101995942485c906L    # 4.119805729571865E-231
        -0x2cb05ff89b87e3d5L    # -2.0614877609325101E93
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
    :array_1
    .array-data 8
        0x720471502b33f74dL    # 1.7038968592526696E241
        -0x3d063f44b65c9fccL    # -4.5304906528921925E14
        -0xdf6acfa1449eae5L    # -2.1107857317213728E241
    .end array-data

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
    :array_2
    .array-data 8
        0x5d250c79c38e0eeaL    # 5.013187533065288E140
        0x4e95aa1f5aadfc32L    # 3.738079155012376E70
        -0x330318177eed0c45L    # -7.431996276225577E62
        0x2cb798e6a1b4a8L
        0x1ae303f5a7f8d13aL    # 3.666060165255621E-179
        0x41acfba3a2c1ba24L    # 2.4312673737837327E8
    .end array-data
.end method

.method public final shareFullContent2Clipboard(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    const/4 v1, -0x1

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    :try_start_0
    sget-object v3, Lcom/v2ray/ang/handler/V2rayConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/V2rayConfigManager;

    .line 25
    .line 26
    invoke-virtual {v3, p1, p2}, Lcom/v2ray/ang/handler/V2rayConfigManager;->getV2rayConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/v2ray/ang/dto/ConfigResult;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ConfigResult;->getStatus()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    sget-object v4, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 37
    .line 38
    invoke-virtual {v4, p2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/v2ray/ang/dto/ProfileItem;->getConfigType()Lcom/v2ray/ang/dto/EConfigType;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v4, 0x0

    .line 50
    :goto_0
    sget-object v5, Lcom/v2ray/ang/dto/EConfigType;->HYSTERIA2:Lcom/v2ray/ang/dto/EConfigType;

    .line 51
    .line 52
    if-ne v4, v5, :cond_2

    .line 53
    .line 54
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 55
    .line 56
    sget-object v5, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/v2ray/ang/handler/SettingsManager;->getSocksPort()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    add-int/lit8 v5, v5, 0x64

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-array v2, v2, [Ljava/lang/Integer;

    .line 73
    .line 74
    aput-object v5, v2, v0

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    aput-object v6, v2, v5

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v4, v2}, Lcom/v2ray/ang/util/Utils;->findFreePort(Ljava/util/List;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    sget-object v5, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->INSTANCE:Lcom/v2ray/ang/fmt/Hysteria2Fmt;

    .line 88
    .line 89
    invoke-virtual {v5, p2, v2}, Lcom/v2ray/ang/fmt/Hysteria2Fmt;->toNativeConfig(Lcom/v2ray/ang/dto/ProfileItem;I)Lcom/v2ray/ang/dto/Hysteria2Bean;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    sget-object v2, Lcom/v2ray/ang/util/JsonUtil;->INSTANCE:Lcom/v2ray/ang/util/JsonUtil;

    .line 94
    .line 95
    invoke-virtual {v2, p2}, Lcom/v2ray/ang/util/JsonUtil;->toJsonPretty(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ConfigResult;->getContent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p2, "\n"

    .line 112
    .line 113
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v4, p1, p2}, Lcom/v2ray/ang/util/Utils;->setClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return v0

    .line 127
    :cond_2
    sget-object p2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ConfigResult;->getContent()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p2, p1, v2}, Lcom/v2ray/ang/util/Utils;->setClipboard(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    return v0

    .line 137
    :cond_3
    return v1

    .line 138
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    const/4 p2, 0x3

    .line 141
    new-array p2, p2, [J

    .line 142
    .line 143
    fill-array-data p2, :array_1

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    const/4 p2, 0x7

    .line 155
    new-array p2, p2, [J

    .line 156
    .line 157
    fill-array-data p2, :array_2

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    return v1

    .line 167
    :array_0
    .array-data 8
        0x6ebac3fb2ef90dafL    # 2.476811585619887E225
        0x70c505998d00d642L    # 1.6710062134229326E235
    .end array-data

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
    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x35ed874e3574e777L    # -6.749018310092218E48
        0x63ab31197cd8729L
        -0x3c73a7ef0f9bbf9L    # -2.414060511917612E290
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_2
    .array-data 8
        0x123277dc99bda9a3L    # 5.109142218891385E-221
        0x7ae6c55f6feba7a3L    # 1.058151357627354E284
        -0x32d0b86fc7c509a1L    # -6.433829100897555E63
        -0x5fae689b520754d6L
        -0x3a014556c1d8ebe7L    # -1.5216335557661302E29
        0x82f7247582ce9e0L
        0x1abb64bb721ec63eL    # 6.601610414739728E-180
    .end array-data
.end method

.method public final shareNonCustomConfigsToClipboard(Landroid/content/Context;Ljava/util/List;)I
    .locals 5
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
            ">;)I"
        }
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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v2, v1, [J

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/v2ray/ang/handler/AngConfigManager;->shareConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v2, 0xa

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-lez p2, :cond_2

    .line 83
    .line 84
    sget-object p2, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v4, v1, [J

    .line 93
    .line 94
    fill-array-data v4, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p1, v2}, Lcom/v2ray/ang/util/Utils;->setClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 p1, p1, -0x1

    .line 121
    .line 122
    return p1

    .line 123
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array p2, v1, [J

    .line 126
    .line 127
    fill-array-data p2, :array_3

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    const/4 p2, 0x7

    .line 139
    new-array p2, p2, [J

    .line 140
    .line 141
    fill-array-data p2, :array_4

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    const/4 p1, -0x1

    .line 151
    return p1

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x717197df1f6e000bL    # 2.8640633253855656E238
        -0x65fd5e5835cebe83L    # -2.192399476613917E-183
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
    :array_1
    .array-data 8
        0x57301ffe1a7d521cL    # 9.694766382978173E111
        -0x717d7dc9bf5899d2L    # -8.882351657556843E-239
        0x612a56e2f48969a0L    # 1.1572137942161102E160
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
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 8
        -0x7be800de213b0da1L    # -6.155935698956026E-289
        0x2286643f23d39f5cL    # 2.295286819241522E-142
        -0x29b2bd8a109dd54L
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_3
    .array-data 8
        -0x6cfa149cb741602aL    # -4.96756382120692E-217
        -0xe60e1476d8a0680L    # -2.0264515117444412E239
        -0x14980185c3ad6905L    # -2.4650776926054527E209
    .end array-data

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
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_4
    .array-data 8
        0x261a1f55fdd9c560L    # 3.859001838630061E-125
        -0x6bcca83f927ff8fL
        -0x686b52a6e27b4c1aL
        0x6575c127158b4cc7L    # 5.641915458975107E180
        -0x2b2876caacd8618bL    # -5.147906727086948E100
        0x4f58c323f701a1b0L    # 1.750045588129839E74
        -0x2e7dc697736a79f8L    # -4.425460819713192E84
    .end array-data
.end method

.method public final updateConfigViaSub(Lkotlin/Pair;)I
    .locals 11
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/v2ray/ang/dto/SubscriptionItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v4, v4, [J

    .line 8
    .line 9
    fill-array-data v4, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    :try_start_0
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_6

    .line 33
    .line 34
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getRemarks()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_6

    .line 49
    .line 50
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/SubscriptionItem;->getEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    return v1

    .line 81
    :cond_1
    sget-object v3, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 82
    .line 83
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/SubscriptionItem;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/util/HttpUtil;->toIdnUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    sget-object v4, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 98
    .line 99
    invoke-virtual {v4, v6}, Lcom/v2ray/ang/util/Utils;->isValidUrl(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_2

    .line 104
    .line 105
    return v1

    .line 106
    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/SubscriptionItem;->getAllowInsecureUrl()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_3

    .line 117
    .line 118
    invoke-virtual {v4, v6}, Lcom/v2ray/ang/util/Utils;->isValidSubUrl(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_3

    .line 123
    .line 124
    return v1

    .line 125
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v5, v2, [J

    .line 128
    .line 129
    fill-array-data v5, :array_1

    .line 130
    .line 131
    .line 132
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 136
    .line 137
    .line 138
    :try_start_1
    sget-object v4, Lcom/v2ray/ang/handler/SettingsManager;->INSTANCE:Lcom/v2ray/ang/handler/SettingsManager;

    .line 139
    .line 140
    invoke-virtual {v4}, Lcom/v2ray/ang/handler/SettingsManager;->getHttpPort()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    const/16 v5, 0x3a98

    .line 145
    .line 146
    invoke-virtual {v3, v6, v5, v4}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContentWithUserAgent(Ljava/lang/String;II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    goto :goto_0

    .line 151
    :catch_0
    :try_start_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v4, v2, [J

    .line 154
    .line 155
    fill-array-data v4, :array_2

    .line 156
    .line 157
    .line 158
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    const/16 v4, 0x8

    .line 167
    .line 168
    new-array v4, v4, [J

    .line 169
    .line 170
    fill-array-data v4, :array_3

    .line 171
    .line 172
    .line 173
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v4, v0, [J

    .line 182
    .line 183
    const-wide v7, 0x60b6e8cc35599383L    # 7.863408096282036E157

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    aput-wide v7, v4, v1

    .line 189
    .line 190
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    :goto_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 198
    .line 199
    .line 200
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    if-nez v4, :cond_4

    .line 202
    .line 203
    :try_start_3
    sget-object v5, Lcom/v2ray/ang/util/HttpUtil;->INSTANCE:Lcom/v2ray/ang/util/HttpUtil;

    .line 204
    .line 205
    const/4 v9, 0x6

    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v8, 0x0

    .line 209
    invoke-static/range {v5 .. v10}, Lcom/v2ray/ang/util/HttpUtil;->getUrlContentWithUserAgent$default(Lcom/v2ray/ang/util/HttpUtil;Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 213
    :goto_1
    move-object v3, v0

    .line 214
    goto :goto_2

    .line 215
    :catch_1
    :try_start_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 216
    .line 217
    new-array v4, v2, [J

    .line 218
    .line 219
    fill-array-data v4, :array_4

    .line 220
    .line 221
    .line 222
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    const/16 v4, 0x9

    .line 231
    .line 232
    new-array v4, v4, [J

    .line 233
    .line 234
    fill-array-data v4, :array_5

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 244
    .line 245
    new-array v0, v0, [J

    .line 246
    .line 247
    const-wide v4, -0x24b21e190d99deaeL    # -6.628328692522408E131

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    aput-wide v4, v0, v1

    .line 253
    .line 254
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    goto :goto_1

    .line 262
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_5

    .line 267
    .line 268
    return v1

    .line 269
    :cond_5
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Ljava/lang/String;

    .line 274
    .line 275
    invoke-direct {p0, v3, p1, v1}, Lcom/v2ray/ang/handler/AngConfigManager;->parseConfigViaSub(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 276
    .line 277
    .line 278
    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 279
    return p1

    .line 280
    :cond_6
    :goto_3
    return v1

    .line 281
    :catch_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 282
    .line 283
    new-array v0, v2, [J

    .line 284
    .line 285
    fill-array-data v0, :array_6

    .line 286
    .line 287
    .line 288
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    const/4 v0, 0x6

    .line 297
    new-array v0, v0, [J

    .line 298
    .line 299
    fill-array-data v0, :array_7

    .line 300
    .line 301
    .line 302
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    return v1

    .line 309
    :array_0
    .array-data 8
        -0x555fa7037e7ddf7bL    # -2.280896488209436E-103
        -0x24f04940c15748f5L    # -4.3966023240927683E130
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
    :array_1
    .array-data 8
        0x5f55fbb08cd6b2b5L    # 1.798986957156334E151
        0x31c19049a1302908L    # 5.08961721183218E-69
        0x5bfa849411ebf934L    # 1.204639077861492E135
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
    .line 334
    .line 335
    .line 336
    .line 337
    :array_2
    .array-data 8
        0x20261ff0a82566c1L    # 8.25070212717398E-154
        -0x376bfe6c7789ccc7L    # -4.356955265168154E41
        -0x2fda0998bf61a5feL    # -1.2715426329818563E78
    .end array-data

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
    :array_3
    .array-data 8
        0x11833faa1dc8f030L
        -0x2b7d5cbada434211L    # -1.2739213866986708E99
        0x46081fe0c0358207L    # 2.389177053389764E29
        -0x363de0a03547b50cL    # -2.0692300325030465E47
        0x67d164d72bf8adeeL    # 1.2399792741737503E192
        -0x13b56e0b06e5fba8L
        -0x3aff989c84e1f9dfL    # -2.478881495095999E24
        0x3ef7851c00b0992eL    # 2.243038037987829E-5
    .end array-data

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
    .line 386
    .line 387
    .line 388
    .line 389
    :array_4
    .array-data 8
        -0x6e59bd48370e5fe9L
        -0x5db5e1d9cc63902dL    # -1.673278291911168E-143
        -0x19e2a0233198115fL    # -7.800946655319956E183
    .end array-data

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
    :array_5
    .array-data 8
        -0x1e9586a8792303c2L    # -1.8610032331202115E161
        0x593667d0ab00ac5aL    # 5.785667135430097E121
        0x5b8db9c7cc6f218aL    # 1.0549703834567751E133
        -0x445241440385609fL    # -3.149380300149879E-21
        -0x6318221e55944b6L    # -5.405143414560877E278
        -0x574ef25507773b37L
        0x4ba595808e6104ccL    # 2.6461898251400794E56
        -0x235f4787c589d432L    # -1.5556055470080515E138
        0xa20a66eac4a4528L
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
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
        0x65e35a3c9090b812L    # 6.424275570102884E182
        -0x2265fb746555cc1eL    # -7.931727494939509E142
        -0x20b4ed16d8989d68L
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
        -0x3ed64ddb6b810c3cL    # -842002.2900310685
        -0x11321eefa1624ce9L    # -5.529872217122146E225
        0x6820e2a2891fc5e2L    # 3.851907239263593E193
        -0x6504c382e4365d0fL    # -1.0501961900000864E-178
        -0x48c6e8728f023daL    # -4.655731008445881E286
        0x5f17317581206150L    # 1.1862562579643146E150
    .end array-data
.end method

.method public final updateConfigViaSubAll()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscriptions()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lkotlin/Pair;

    .line 26
    .line 27
    sget-object v4, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSub(Lkotlin/Pair;)I

    .line 30
    .line 31
    .line 32
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/2addr v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v2

    .line 36
    :catch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    new-array v2, v2, [J

    .line 40
    .line 41
    fill-array-data v2, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v2, 0x7

    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    return v0

    .line 65
    :array_0
    .array-data 8
        0x7bb512ac0f79cbdcL    # 8.021968644960893E287
        -0x2daf7d2516da641bL    # -3.2845519814583305E88
        0x48d743c83ecfa979L    # 8.106590666990546E42
    .end array-data

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
        -0x63e91afc742526b4L
        0x7c86b1592b61e703L    # 7.076740445323468E291
        0x64c591238e4c4e17L    # 2.7310909965277857E177
        0x5ce1a6cb7b0aee3L
        0x335e6f5ee9adf9e5L    # 2.9593395527613942E-61
        -0x16854a5b56dca1ebL    # -1.2778021310934408E200
        0x6de3fbf36d659ab3L    # 2.2574244874714855E221
    .end array-data
.end method
