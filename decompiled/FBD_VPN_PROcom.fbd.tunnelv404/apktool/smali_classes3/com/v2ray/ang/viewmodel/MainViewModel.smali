.class public final Lcom/v2ray/ang/viewmodel/MainViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000o\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004*\u0001O\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010,\u001a\u00020-J\u0008\u0010.\u001a\u00020-H\u0014J\u0006\u0010/\u001a\u00020-J\u000e\u00100\u001a\u00020-2\u0006\u00101\u001a\u00020\u000eJ\u0016\u00102\u001a\u00020-2\u0006\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020!J\u0006\u00105\u001a\u00020-J\u0006\u00106\u001a\u00020!J\u0006\u00107\u001a\u00020!J\u0006\u00108\u001a\u00020-J\u0006\u00109\u001a\u00020-J\u0006\u0010:\u001a\u00020-J\u0010\u0010;\u001a\u00020-2\u0008\u0010<\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020\u000eH\u0002J*\u0010?\u001a\u001e\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r0@2\u0006\u0010A\u001a\u00020BJ\u000e\u0010C\u001a\u00020!2\u0006\u00101\u001a\u00020\u000eJ\u0006\u0010D\u001a\u00020!J\u0006\u0010E\u001a\u00020!J\u0006\u0010F\u001a\u00020!J\u0006\u0010G\u001a\u00020-J\u0006\u0010H\u001a\u00020-J\u000e\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u00020KJ\u000e\u0010L\u001a\u00020-2\u0006\u0010M\u001a\u00020\u000eJ\u0006\u0010Q\u001a\u00020-R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR!\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u000b\u001a\u0004\u0008\u001b\u0010\u001eR!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u000b\u001a\u0004\u0008\"\u0010\u001eR!\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u000b\u001a\u0004\u0008%\u0010\u001eR\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u000b\u001a\u0004\u0008)\u0010*R\u0010\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lcom/v2ray/ang/viewmodel/MainViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "serverRawStorage",
        "Lcom/tencent/mmkv/MMKV;",
        "getServerRawStorage",
        "()Lcom/tencent/mmkv/MMKV;",
        "serverRawStorage$delegate",
        "Lkotlin/Lazy;",
        "serverList",
        "",
        "",
        "subscriptionId",
        "getSubscriptionId",
        "()Ljava/lang/String;",
        "setSubscriptionId",
        "(Ljava/lang/String;)V",
        "keywordFilter",
        "getKeywordFilter",
        "setKeywordFilter",
        "serversCache",
        "Lcom/v2ray/ang/dto/ServersCache;",
        "getServersCache",
        "()Ljava/util/List;",
        "isRunning",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isRunning$delegate",
        "updateListAction",
        "",
        "getUpdateListAction",
        "updateListAction$delegate",
        "updateTestResultAction",
        "getUpdateTestResultAction",
        "updateTestResultAction$delegate",
        "tcpingTestScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getTcpingTestScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "tcpingTestScope$delegate",
        "startListenBroadcast",
        "",
        "onCleared",
        "reloadServerList",
        "removeServer",
        "guid",
        "swapServer",
        "fromPosition",
        "toPosition",
        "updateCache",
        "updateConfigViaSubAll",
        "exportAllServer",
        "testAllTcping",
        "testAllRealPing",
        "testCurrentServerRealPing",
        "logs",
        "msg",
        "subscriptionIdChanged",
        "id",
        "getSubscriptions",
        "Lkotlin/Pair;",
        "context",
        "Landroid/content/Context;",
        "getPosition",
        "removeDuplicateServer",
        "removeAllServer",
        "removeInvalidServer",
        "sortByTestResults",
        "createIntelligentSelectionAll",
        "initAssets",
        "assets",
        "Landroid/content/res/AssetManager;",
        "filterConfig",
        "keyword",
        "mMsgReceiver",
        "com/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1",
        "Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;",
        "clearAllTestDelay",
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
        "SMAP\nMainViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,505:1\n1563#2:506\n1634#2,3:507\n1563#2:510\n1634#2,3:511\n1563#2:514\n1634#2,3:515\n1563#2:518\n1634#2,3:519\n1563#2:522\n1634#2,3:523\n1563#2:526\n1634#2,3:527\n1878#2,3:530\n1878#2,2:533\n1878#2,3:535\n1880#2:538\n1869#2,2:539\n1011#2,2:541\n1869#2,2:543\n*S KotlinDebug\n*F\n+ 1 MainViewModel.kt\ncom/v2ray/ang/viewmodel/MainViewModel\n*L\n203#1:506\n203#1:507,3\n219#1:510\n219#1:511,3\n244#1:514\n244#1:515,3\n286#1:518\n286#1:519,3\n293#1:522\n293#1:523,3\n295#1:526\n295#1:527,3\n307#1:530,3\n326#1:533,2\n328#1:535,3\n326#1:538\n387#1:539,2\n391#1:541,2\n393#1:543,2\n*E\n"
    }
.end annotation


# instance fields
.field private final isRunning$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private keywordFilter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mMsgReceiver:Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private serverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serverRawStorage$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serversCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/ServersCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subscriptionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tcpingTestScope$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateListAction$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateTestResultAction$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x3

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
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    invoke-direct {p1, v2}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverRawStorage$delegate:Lkotlin/Lazy;

    .line 35
    .line 36
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v3, v1, [J

    .line 62
    .line 63
    const-wide v4, 0x59a4c8101c6f61adL    # 6.868865931219548E123

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    aput-wide v4, v3, v0

    .line 69
    .line 70
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {p1, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSettingsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v2, v1, [J

    .line 86
    .line 87
    const-wide v3, 0x1a56c1485d5b3ca6L    # 8.5683987043033E-182

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    aput-wide v3, v2, v0

    .line 93
    .line 94
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 102
    .line 103
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v1, v1, [J

    .line 106
    .line 107
    const-wide v2, -0x3cdcd2c9219c7364L    # -2.69886912002619E15

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    aput-wide v2, v1, v0

    .line 113
    .line 114
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 122
    .line 123
    new-instance p1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 129
    .line 130
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 131
    .line 132
    const/4 v0, 0x6

    .line 133
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning$delegate:Lkotlin/Lazy;

    .line 141
    .line 142
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 143
    .line 144
    const/4 v0, 0x7

    .line 145
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateListAction$delegate:Lkotlin/Lazy;

    .line 153
    .line 154
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 155
    .line 156
    const/16 v0, 0x8

    .line 157
    .line 158
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateTestResultAction$delegate:Lkotlin/Lazy;

    .line 166
    .line 167
    new-instance p1, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;

    .line 168
    .line 169
    const/16 v0, 0x9

    .line 170
    .line 171
    invoke-direct {p1, v0}, L뎻땰땡땻땸뒝땯딝딜땤든둣뒻돠돛듟땫딌땭돷듌땅됐땨뒼딟땭딟땃땤돼둔돴뒾딨돝딹땹땔땄돨땨뒻땡뒉두됩뒀돛딄땸둔딸듰땸뒤뒬돰돶됴듬땪딜땟따듽땃땫땮뒹듬들딞딀뒾땸됐딎따듬됩딄듻두땻땵뒷뒨땤되땻땫딞돰땭땁땟뎰듽돸둣뒐둘땅땩돳돛됨뎡듬땳딟땵둔뒤둑땪둔땮됐둣뒙뎡땬됐뒙들듰듰딨;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->tcpingTestScope$delegate:Lkotlin/Lazy;

    .line 179
    .line 180
    new-instance p1, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;

    .line 181
    .line 182
    invoke-direct {p1, p0}, Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;-><init>(Lcom/v2ray/ang/viewmodel/MainViewModel;)V

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->mMsgReceiver:Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;

    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :array_0
    .array-data 8
        -0x617dec11ee3dc107L
        0x450e2e9e5e19da3bL    # 4.560990601613148E24
        -0x7f6497f9e3c80d27L    # -9.756982062205856E-306
    .end array-data

    .line 190
    .line 191
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
    :array_1
    .array-data 8
        0x58e54043460d0aa6L    # 1.714858144549656E120
        0x338c377158a6c554L    # 2.1949020824114682E-60
        0x6bb8f42a8687f2eaL    # 8.20376511915136E210
        -0xc566816f7303813L    # -1.431575998672245E249
    .end array-data
.end method

.method private final getServerRawStorage()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverRawStorage$delegate:Lkotlin/Lazy;

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

.method private final getTcpingTestScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->tcpingTestScope$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final isRunning_delegate$lambda$1()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
        0x6d75fed2a1d726ccL    # 1.9411037762877654E219
        -0x50f7a057f338333bL    # -4.014873861150917E-82
        -0x6c93ae03a5ad5bL
    .end array-data
.end method

.method private final subscriptionIdChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->reloadServerList()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :array_0
    .array-data 8
        0x2839f79415a43cbeL
        0x35b1e84745ef59d8L    # 4.78620998352287E-50
        0x717b59feee26dd71L    # 4.452649039851683E238
        -0x3130cdf9d26bfcc0L    # -4.3060556941477704E71
    .end array-data
.end method

.method private static final tcpingTestScope_delegate$lambda$4()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static final updateListAction_delegate$lambda$2()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final updateTestResultAction_delegate$lambda$3()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lcom/tencent/mmkv/MMKV;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverRawStorage_delegate$lambda$0()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateTestResultAction_delegate$lambda$3()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateListAction_delegate$lambda$2()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning_delegate$lambda$1()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1
    invoke-static {}, Lcom/v2ray/ang/viewmodel/MainViewModel;->tcpingTestScope_delegate$lambda$4()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearAllTestDelay()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getServerRawStorage()Lcom/tencent/mmkv/MMKV;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final createIntelligentSelectionAll()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/v2ray/ang/viewmodel/MainViewModel$createIntelligentSelectionAll$1;-><init>(Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final exportAllServer()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {v0, v2}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/v2ray/ang/dto/ServersCache;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    sget-object v1, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2, v0}, Lcom/v2ray/ang/handler/AngConfigManager;->shareNonCustomConfigsToClipboard(Landroid/content/Context;Ljava/util/List;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    return v0
.end method

.method public final filterConfig(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 29
    .line 30
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 31
    .line 32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeSettings(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->reloadServerList()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x7bf107176d67a3daL    # 1.0371268457015036E289
        0x77d5fbcc30771ccdL    # 1.8146574109436455E269
    .end array-data

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
    :array_1
    .array-data 8
        -0x47398ed15e8628bdL    # -3.3767145817239257E-35
        0x5d51c879f439e4e9L    # 3.3883301135289875E141
        -0x5e1304a6b3bf9754L
        -0x5316042620324f25L    # -2.4913451100052054E-92
    .end array-data
.end method

.method public final getKeywordFilter()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPosition(Ljava/lang/String;)I
    .locals 4
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
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    add-int/lit8 v3, v1, 0x1

    .line 39
    .line 40
    if-gez v1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v2, Lcom/v2ray/ang/dto/ServersCache;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    return v1

    .line 58
    :cond_1
    move v1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, -0x1

    .line 61
    return p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x65f4fa8f5cd79386L    # -3.179640969576834E-183
        -0xa98a00ca4904158L
    .end array-data
.end method

.method public final getServersCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/v2ray/ang/dto/ServersCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptionId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptions(Landroid/content/Context;)Lkotlin/Pair;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x2

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
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscriptions()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/16 v4, 0xa

    .line 34
    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Ljava/lang/Iterable;

    .line 39
    .line 40
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v3, v4}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lkotlin/Pair;

    .line 64
    .line 65
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v5, v0, [J

    .line 86
    .line 87
    const-wide v6, 0x4153693473effa82L    # 5088465.811522128

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    aput-wide v6, v5, v1

    .line 93
    .line 94
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {p0, v3}, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionIdChanged(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    invoke-static {p1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    .line 117
    .line 118
    new-instance v3, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-static {v2, v4}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lkotlin/Pair;

    .line 142
    .line 143
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v0, v0, [J

    .line 160
    .line 161
    const-wide v6, 0x695ee6a09633840fL    # 3.695796968180202E199

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    aput-wide v6, v0, v1

    .line 167
    .line 168
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-static {v2, v4}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_4

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Lkotlin/Pair;

    .line 202
    .line 203
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/SubscriptionItem;->getRemarks()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const v2, 0x7f1300c5

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    const/4 v4, 0x3

    .line 231
    new-array v4, v4, [J

    .line 232
    .line 233
    fill-array-data v4, :array_1

    .line 234
    .line 235
    .line 236
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    return-object p1

    .line 254
    nop

    .line 255
    :array_0
    .array-data 8
        0x490cc88290c04949L    # 8.02359689825185E43
        0x2eeb63f5015a0fbaL    # 1.127951648106645E-82
    .end array-data

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
    .line 266
    .line 267
    :array_1
    .array-data 8
        0x123400aaeabb4c64L    # 5.533626149501792E-221
        0x2278e8176bc2f541L
        -0x28176b00057409a5L    # -3.026816671328815E115
    .end array-data
.end method

.method public final getUpdateListAction()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateListAction$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getUpdateTestResultAction()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateTestResultAction$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final initAssets(Landroid/content/res/AssetManager;)V
    .locals 7
    .param p1    # Landroid/content/res/AssetManager;
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
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v4, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v4, p0, p1, v0}, Lcom/v2ray/ang/viewmodel/MainViewModel$initAssets$1;-><init>(Lcom/v2ray/ang/viewmodel/MainViewModel;Landroid/content/res/AssetManager;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x2b38158c4d0384b3L    # -2.6154955985914403E100
        0x52b5fac966b38a40L    # 2.7983317838429987E90
    .end array-data
.end method

.method public final isRunning()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final logs(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lde/blinkt/openvpn/core/TkLogStatus;->logInfo(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCleared()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getTcpingTestScope()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/SpeedtestManager;->closeAllTcpSockets()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v1, v1, [J

    .line 33
    .line 34
    fill-array-data v1, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        -0xfec978b22095b47L    # -7.53283068898818E231
        -0x20aec031c9829094L
        0x292cad35e57e1acbL
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
    :array_1
    .array-data 8
        -0x1054bb77e19f49cdL    # -8.26828138666634E229
        0x2953f0ba54a32553L    # 1.32664344460104E-109
        -0x2032fd2c5349639aL    # -3.0388631588541188E153
        -0x5590fd4ab38a8092L
        0x53761bf0e8393c55L    # 1.152950352944097E94
    .end array-data
.end method

.method public final reloadServerList()V
    .locals 2

    .line 1
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->updateCache()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getUpdateListAction()Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final removeAllServer()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/MmkvManager;->removeAllServer()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/v2ray/ang/dto/ServersCache;

    .line 47
    .line 48
    sget-object v2, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v1}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 59
    .line 60
    check-cast v0, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Collection;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_1
    return v0
.end method

.method public final removeDuplicateServer()I
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/v2ray/ang/dto/ServersCache;

    .line 23
    .line 24
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v4, Lkotlin/Pair;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_6

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    add-int/lit8 v6, v4, 0x1

    .line 72
    .line 73
    if-gez v4, :cond_2

    .line 74
    .line 75
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 76
    .line 77
    .line 78
    :cond_2
    check-cast v5, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/v2ray/ang/dto/ProfileItem;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const/4 v8, 0x0

    .line 91
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_5

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    add-int/lit8 v10, v8, 0x1

    .line 102
    .line 103
    if-gez v8, :cond_3

    .line 104
    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 106
    .line 107
    .line 108
    :cond_3
    check-cast v9, Lkotlin/Pair;

    .line 109
    .line 110
    if-le v8, v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Lcom/v2ray/ang/dto/ProfileItem;

    .line 117
    .line 118
    invoke-virtual {v5, v8}, Lcom/v2ray/ang/dto/ProfileItem;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_4

    .line 123
    .line 124
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-nez v8, :cond_4

    .line 133
    .line 134
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_4
    move v8, v10

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move v4, v6

    .line 144
    goto :goto_1

    .line 145
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ljava/lang/String;

    .line 160
    .line 161
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 162
    .line 163
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    return v0
.end method

.method public final removeInvalidServer()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 19
    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    new-array v3, v3, [J

    .line 24
    .line 25
    const-wide v4, 0x61e431e8bfb08b43L    # 3.6342149537070275E163

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    aput-wide v4, v3, v0

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/v2ray/ang/handler/MmkvManager;->removeInvalidServer(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/v2ray/ang/dto/ServersCache;

    .line 67
    .line 68
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->removeInvalidServer(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/2addr v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    return v0
.end method

.method public final removeServer(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/handler/MmkvManager;->removeServer(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getPosition(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-ltz p1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :array_0
    .array-data 8
        0x3f1adf19af9f8ab8L    # 1.0250658297609571E-4
        0x5bfc0c47e0a147c2L    # 1.274147000956808E135
    .end array-data
.end method

.method public final setKeywordFilter(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x43e3aef734d36abbL    # -3.8376068314940005E-19
        0x75123c68a3fe20a0L    # 8.556679021448993E255
    .end array-data
.end method

.method public final setSubscriptionId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x5b949034a27cbf16L    # 1.4595903342827965E133
        -0x62cc21ecdb4cd5c3L    # -5.264355435498002E-168
    .end array-data
.end method

.method public final sortByTestResults()V
    .locals 10

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
    invoke-virtual {v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v4, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerAffiliationInfo(Ljava/lang/String;)Lcom/v2ray/ang/dto/ServerAffiliationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-wide/16 v5, 0x0

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/v2ray/ang/dto/ServerAffiliationInfo;->getTestDelayMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move-wide v7, v5

    .line 47
    :goto_1
    new-instance v4, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    .line 48
    .line 49
    cmp-long v9, v7, v5

    .line 50
    .line 51
    if-gtz v9, :cond_1

    .line 52
    .line 53
    const-wide/32 v7, 0xf423f

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-direct {v4, v3, v7, v8}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;-><init>(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x1

    .line 68
    if-le v2, v3, :cond_3

    .line 69
    .line 70
    new-instance v2, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$$inlined$sortBy$1;

    .line 71
    .line 72
    invoke-direct {v2}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$$inlined$sortBy$1;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v2}, L됴뒉듌땁땡딐둑딌뒷땲딐돶돠뒻땭땍돸땟둡딽뒬딀들땲둡땻들땩딹듐땤둘딤뒛돳든듻땩뒵땅뎠뒋뎹딻뎰딜땐뎹드딠딁디땯됫뎽됩땥듰딤땧돝뎠딅들둣뎻돛돴돛듼땍될듨될딅땟땻땣딃디딄뒻따뎹땧듸뎽딟딌뒝뒙땩듼된땵땦디듰됩돶돼땐땝땻도땱딁드듽돼돴도돼돠돷둠딎둣딌둥뒨돴돷둔둡땩땩뒤드뎽;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->getGuid()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;->getGuid()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerList(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final startListenBroadcast()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->isRunning()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->mMsgReceiver:Lcom/v2ray/ang/viewmodel/MainViewModel$mMsgReceiver$1;

    .line 35
    .line 36
    sget-object v3, Lcom/v2ray/ang/util/Utils;->INSTANCE:Lcom/v2ray/ang/util/Utils;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/v2ray/ang/util/Utils;->receiverFlags()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    new-array v4, v3, [J

    .line 55
    .line 56
    const-wide v5, -0x75798372db76628eL    # -5.850003710195589E-258

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    aput-wide v5, v4, v7

    .line 63
    .line 64
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v3, v2}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2Service(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 8
        -0xddfde7ca994bce9L    # -5.378057135574851E241
        -0x406d956cb3a9269cL    # -0.017984677824381193
        -0x1ea8ee320592d3a2L    # -8.10843072322365E160
        -0x74027c15f56eb6a0L
        0x3f088917d1e6b8e9L    # 4.679778998038944E-5
    .end array-data
.end method

.method public final swapServer(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/v2ray/ang/dto/ServersCache;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/v2ray/ang/dto/ServersCache;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/v2ray/ang/handler/MmkvManager;->encodeServerList(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final testAllRealPing()V
    .locals 7

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    const-wide v4, -0x48c19359070209a5L    # -1.364278302326468E-42

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    aput-wide v4, v3, v6

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v3, 0x48

    .line 28
    .line 29
    invoke-virtual {v0, v1, v3, v2}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2TestService(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v3, 0xa

    .line 41
    .line 42
    invoke-static {v1, v3}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/v2ray/ang/dto/ServersCache;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->clearAllTestDelayResults(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getUpdateListAction()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/4 v1, -0x1

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 93
    .line 94
    check-cast v0, Ljava/lang/Iterable;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v4, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllRealPing$2;

    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-direct {v4, v0, p0, v3}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllRealPing$2;-><init>(Ljava/util/List;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 112
    .line 113
    .line 114
    const/4 v5, 0x2

    .line 115
    const/4 v6, 0x0

    .line 116
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final testAllTcping()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getTcpingTestScope()Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/SpeedtestManager;->INSTANCE:Lcom/v2ray/ang/handler/SpeedtestManager;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/SpeedtestManager;->closeAllTcpSockets()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    invoke-static {v1, v3}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/v2ray/ang/dto/ServersCache;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ServersCache;->getGuid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->clearAllTestDelayResults(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 78
    .line 79
    check-cast v0, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v5, v1

    .line 100
    check-cast v5, Lcom/v2ray/ang/dto/ServersCache;

    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/v2ray/ang/dto/ServersCache;->getProfile()Lcom/v2ray/ang/dto/ProfileItem;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ProfileItem;->getServer()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1}, Lcom/v2ray/ang/dto/ProfileItem;->getServerPort()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/v2ray/ang/viewmodel/MainViewModel;->getTcpingTestScope()Lkotlinx/coroutines/CoroutineScope;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v9, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;

    .line 123
    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v2, v9

    .line 126
    move-object v6, p0

    .line 127
    invoke-direct/range {v2 .. v7}, Lcom/v2ray/ang/viewmodel/MainViewModel$testAllTcping$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/v2ray/ang/dto/ServersCache;Lcom/v2ray/ang/viewmodel/MainViewModel;Lkotlin/coroutines/Continuation;)V

    .line 128
    .line 129
    .line 130
    const/4 v10, 0x3

    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v8, 0x0

    .line 133
    move-object v6, v1

    .line 134
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    return-void
.end method

.method public final testCurrentServerRealPing()V
    .locals 7

    .line 1
    sget-object v0, Lcom/v2ray/ang/util/MessageUtil;->INSTANCE:Lcom/v2ray/ang/util/MessageUtil;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v3, v3, [J

    .line 11
    .line 12
    const-wide v4, 0x31339a76e2d15004L    # 1.1095117934812499E-71

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    aput-wide v4, v3, v6

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x6

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Lcom/v2ray/ang/util/MessageUtil;->sendMsg2Service(Landroid/content/Context;ILjava/io/Serializable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final declared-synchronized updateCache()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serverList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lcom/v2ray/ang/handler/MmkvManager;->decodeServerConfig(Ljava/lang/String;)Lcom/v2ray/ang/dto/ProfileItem;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ProfileItem;->getSubscriptionId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v3}, Lcom/v2ray/ang/dto/ProfileItem;->getRemarks()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v7, v0, [J

    .line 80
    .line 81
    fill-array-data v7, :array_0

    .line 82
    .line 83
    .line 84
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v6, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->keywordFilter:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v7, v0, [J

    .line 103
    .line 104
    fill-array-data v7, :array_1

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v6, 0x2

    .line 118
    const/4 v7, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    invoke-static {v4, v5, v8, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_0

    .line 125
    .line 126
    :goto_1
    iget-object v4, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->serversCache:Ljava/util/List;

    .line 127
    .line 128
    new-instance v5, Lcom/v2ray/ang/dto/ServersCache;

    .line 129
    .line 130
    invoke-direct {v5, v2, v3}, Lcom/v2ray/ang/dto/ServersCache;-><init>(Ljava/lang/String;Lcom/v2ray/ang/dto/ProfileItem;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    monitor-exit p0

    .line 138
    return-void

    .line 139
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw v0

    .line 141
    :array_0
    .array-data 8
        0x6d4f5f636ee0057bL    # 3.460808254891313E218
        -0x75ad6f413dcc7a1fL    # -6.037377052994433E-259
        -0x589519f348cda234L    # -8.33339383709024E-119
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 8
        0x7f9d0a6987043485L    # 5.098263474741224E306
        -0xc7489f5527d5363L    # -3.840116292519755E248
        0x3789825a84a8993fL    # 3.660389781021587E-41
    .end array-data
.end method

.method public final updateConfigViaSubAll()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSubAll()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    sget-object v0, Lcom/v2ray/ang/handler/MmkvManager;->INSTANCE:Lcom/v2ray/ang/handler/MmkvManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/handler/MmkvManager;->decodeSubscription(Ljava/lang/String;)Lcom/v2ray/ang/dto/SubscriptionItem;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    sget-object v1, Lcom/v2ray/ang/handler/AngConfigManager;->INSTANCE:Lcom/v2ray/ang/handler/AngConfigManager;

    .line 29
    .line 30
    new-instance v2, Lkotlin/Pair;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/v2ray/ang/viewmodel/MainViewModel;->subscriptionId:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/v2ray/ang/handler/AngConfigManager;->updateConfigViaSub(Lkotlin/Pair;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method
