.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u001c\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ)\u0010 \u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00172\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010#\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R \u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00110-8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\u00a8\u00063"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealRoutePlanner;",
        "Lokhttp3/internal/connection/RoutePlanner;",
        "Lokhttp3/OkHttpClient;",
        "client",
        "Lokhttp3/Address;",
        "address",
        "Lokhttp3/internal/connection/RealCall;",
        "call",
        "Lokhttp3/internal/http/RealInterceptorChain;",
        "chain",
        "Lokhttp3/ConnectionListener;",
        "connectionListener",
        "<init>",
        "(Lokhttp3/OkHttpClient;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/ConnectionListener;)V",
        "",
        "isCanceled",
        "()Z",
        "Lokhttp3/internal/connection/RoutePlanner$Plan;",
        "plan",
        "()Lokhttp3/internal/connection/RoutePlanner$Plan;",
        "Lokhttp3/internal/connection/ConnectPlan;",
        "planToReplace",
        "",
        "Lokhttp3/Route;",
        "routes",
        "Lokhttp3/internal/connection/ReusePlan;",
        "planReusePooledConnection$okhttp",
        "(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;",
        "planReusePooledConnection",
        "route",
        "planConnectToRoute$okhttp",
        "(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;",
        "planConnectToRoute",
        "Lokhttp3/internal/connection/RealConnection;",
        "failedConnection",
        "hasNext",
        "(Lokhttp3/internal/connection/RealConnection;)Z",
        "Lokhttp3/HttpUrl;",
        "url",
        "sameHostAndPort",
        "(Lokhttp3/HttpUrl;)Z",
        "\ub3a0\ub50e\ub503\ub4fc\ub489\ub428\ub3b9\ub568\ub4fb\ub540\ub51d\ub566\ub4ac\ub3f0\ub3f7\ub569\ub4dd\ub51e\ub4e0\ub463\ub4fc\ub3f8\ub410\ub543\ub460\ub51c\ub538\ub4b5\ub4e4\ub3f4\ub4f0\ub543\ub4dd\ub54b\ub3a0\ub3f8\ub524\ub540\ub51d\ub3b9\ub528\ub450\ub568\ub4b7\ub50e\ub50e\ub510\ub480\ub3ac\ub4f0\ub51c\ub56d\ub4d4\ub4e8\ub3f4\ub4fc\ub465\ub4dd\ub3b9\ub3f6\ub4e4\ub4dc\ub3bb\ub501\ub458\ub410\ub3e8\ub460\ub488\ub545\ub3e8\ub55c\ub51d\ub4e4\ub500\ub451\ub4b9\ub3b9\ub450\ub56c\ub4d0\ub3f6\ub4ec\ub56c\ub3c4\ub3b8\ub460\ub460\ub4a8\ub410\ub55d\ub50e\ub500\ub578\ub56a\ub4dd\ub4b5\ub56c\ub490\ub570\ub55d\ub4b5\ub572\ub4ec\ub4fd\ub3f5\ub480\ub54b\ub4ac\ub573\ub48b\ub4f0\ub55f\ub3f0\ub418\ub54b\ub454\ub571\ub4d4\ub540\ub563\ub418\ub498\ub3fc\ub4bb\ub501\ub465\ub498\ub41c\ub56b",
        "Lokhttp3/Address;",
        "getAddress",
        "()Lokhttp3/Address;",
        "Lkotlin/collections/ArrayDeque;",
        "\ub3a8\ub3f8\ub498\ub46c\ub56d\ub3f3\ub575\ub3f6\ub434\ub4f0\ub4bc\ub550\ub54b\ub4e8\ub49b\ub3f6\ub458\ub565\ub568\ub4a8\ub454\ub572\ub520\ub418\ub3a8\ub4fb\ub4e4\ub50c\ub463\ub570\ub3c4\ub4be\ub51c\ub451\ub572\ub490\ub3db\ub3b8\ub51d\ub569\ub50e\ub4f8\ub3b9\ub48b\ub4ec\ub51c\ub56d\ub49b\ub4df\ub46c\ub42b\ub554\ub50e\ub490\ub56c\ub499\ub499\ub538\ub3f7\ub539\ub3f8\ub3f5\ub501\ub56c\ub54d\ub4ec\ub4dd\ub545\ub56b\ub4f8\ub54d\ub55d\ub500\ub4e8\ub461\ub4dd\ub480\ub461\ub3f6\ub53d\ub3c4\ub4a4\ub550\ub4f0\ub3b9\ub504\ub499\ub3c4\ub3fc\ub3b0\ub48b\ub3bb\ub578\ub572\ub578\ub3e8\ub568\ub3f0\ub4fb\ub4dc\ub460\ub3f5\ub4bc\ub564\ub520\ub458\ub454\ub429\ub501\ub4bb\ub56a\ub579\ub3e0\ub4b7\ub4b5\ub418\ub3bd\ub48b\ub3e8\ub4fc\ub578\ub420\ub569\ub3e8\ub3f6\ub56a\ub3f3\ub3f7\ub541\ub50e",
        "Lkotlin/collections/ArrayDeque;",
        "getDeferredPlans",
        "()Lkotlin/collections/ArrayDeque;",
        "deferredPlans",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/OkHttpClient;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokhttp3/Address;

.field public final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

.field public final 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/http/RealInterceptorChain;

.field public final 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/ConnectionListener;

.field public final 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Z

.field public 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lokhttp3/internal/connection/RouteSelector$Selection;

.field public 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Lokhttp3/internal/connection/RouteSelector;

.field public 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

.field public final 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Address;Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/ConnectionListener;)V
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Address;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/internal/connection/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/internal/http/RealInterceptorChain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lokhttp3/ConnectionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "address"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "call"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "chain"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "connectionListener"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/OkHttpClient;

    .line 30
    .line 31
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokhttp3/Address;

    .line 32
    .line 33
    iput-object p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    iput-object p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/http/RealInterceptorChain;

    .line 36
    .line 37
    iput-object p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/ConnectionListener;

    .line 38
    .line 39
    invoke-virtual {p4}, Lokhttp3/internal/http/RealInterceptorChain;->getRequest$okhttp()Lokhttp3/Request;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "GET"

    .line 48
    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    xor-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Z

    .line 56
    .line 57
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 58
    .line 59
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Lkotlin/collections/ArrayDeque;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;
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
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic planReusePooledConnection$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ReusePlan;
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public getAddress()Lokhttp3/Address;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lokhttp3/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeferredPlans()Lkotlin/collections/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Lokhttp3/internal/connection/RoutePlanner$Plan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNext(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 4
    .param p1    # Lokhttp3/internal/connection/RealConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    if-eqz p1, :cond_5

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getRouteFailureCount$okhttp()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v0, v3}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    .line 64
    .line 65
    .line 66
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p1

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    iput-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

    .line 71
    .line 72
    return v1

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p1

    .line 75
    throw v0

    .line 76
    :cond_5
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-ne p1, v1, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Lokhttp3/internal/connection/RouteSelector;

    .line 88
    .line 89
    if-nez p1, :cond_7

    .line 90
    .line 91
    return v1

    .line 92
    :cond_7
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    return p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public plan()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v2, v1

    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Z

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    monitor-enter v0

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    xor-int/2addr v2, v3

    .line 28
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 32
    .line 33
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_3

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, 0x0

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->sameHostAndPort(Lokhttp3/HttpUrl;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v3, v1

    .line 68
    :goto_1
    const/4 v2, 0x0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 71
    .line 72
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    .line 73
    .line 74
    .line 75
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    move-object v3, v2

    .line 77
    goto :goto_1

    .line 78
    :goto_3
    monitor-exit v0

    .line 79
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 80
    .line 81
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->getConnection()Lokhttp3/internal/connection/RealConnection;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_6

    .line 86
    .line 87
    if-nez v3, :cond_5

    .line 88
    .line 89
    new-instance v2, Lokhttp3/internal/connection/ReusePlan;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const-string v0, "Check failed."

    .line 96
    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v1

    .line 103
    :cond_6
    if-eqz v3, :cond_7

    .line 104
    .line 105
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 109
    .line 110
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget-object v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 115
    .line 116
    invoke-virtual {v4, v5, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/ConnectionListener;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 124
    .line 125
    invoke-virtual {v4, v0, v5}, Lokhttp3/ConnectionListener;->connectionReleased(Lokhttp3/Connection;Lokhttp3/Call;)V

    .line 126
    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/ConnectionListener;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2, v0}, Lokhttp3/ConnectionListener;->connectionClosed(Lokhttp3/Connection;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    if-eqz v2, :cond_0

    .line 139
    .line 140
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/ConnectionListener;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v0}, Lokhttp3/ConnectionListener;->noNewExchanges(Lokhttp3/Connection;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :goto_4
    if-eqz v2, :cond_9

    .line 150
    .line 151
    return-object v2

    .line 152
    :cond_9
    const/4 v0, 0x3

    .line 153
    invoke-static {p0, v1, v1, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ReusePlan;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_a
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_b

    .line 169
    .line 170
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

    .line 182
    .line 183
    const/4 v2, 0x2

    .line 184
    if-eqz v0, :cond_c

    .line 185
    .line 186
    iput-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

    .line 187
    .line 188
    invoke-static {p0, v0, v1, v2, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    goto :goto_5

    .line 193
    :cond_c
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 194
    .line 195
    if-eqz v0, :cond_d

    .line 196
    .line 197
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_d

    .line 202
    .line 203
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {p0, v0, v1, v2, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    goto :goto_5

    .line 212
    :cond_d
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Lokhttp3/internal/connection/RouteSelector;

    .line 213
    .line 214
    iget-object v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 215
    .line 216
    if-nez v0, :cond_e

    .line 217
    .line 218
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    .line 219
    .line 220
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->getClient()Lokhttp3/OkHttpClient;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->getRouteDatabase$okhttp()Lokhttp3/internal/connection/RouteDatabase;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/OkHttpClient;

    .line 233
    .line 234
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->fastFallback()Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    iget-object v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 243
    .line 244
    move-object v2, v0

    .line 245
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;ZLokhttp3/EventListener;)V

    .line 246
    .line 247
    .line 248
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:Lokhttp3/internal/connection/RouteSelector;

    .line 249
    .line 250
    :cond_e
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_11

    .line 255
    .line 256
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 261
    .line 262
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_10

    .line 267
    .line 268
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getRoutes()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_5
    invoke-virtual {v0}, Lokhttp3/internal/connection/ConnectPlan;->getRoutes$okhttp()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    if-eqz v1, :cond_f

    .line 289
    .line 290
    return-object v1

    .line 291
    :cond_f
    return-object v0

    .line 292
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 293
    .line 294
    const-string v1, "Canceled"

    .line 295
    .line 296
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_11
    new-instance v0, Ljava/io/IOException;

    .line 301
    .line 302
    const-string v1, "exhausted all routes"

    .line 303
    .line 304
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0

    .line 308
    :goto_6
    monitor-exit v0

    .line 309
    throw v1
.end method

.method public final planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 14
    .param p1    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Route;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)",
            "Lokhttp3/internal/connection/ConnectPlan;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v12, p0

    .line 2
    move-object v5, p1

    .line 3
    const-string v0, "route"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 47
    .line 48
    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 60
    .line 61
    const-string v2, "CLEARTEXT communication to "

    .line 62
    .line 63
    const-string v3, " not permitted by network security policy"

    .line 64
    .line 65
    invoke-static {v2, v0, v3}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 74
    .line 75
    const-string v1, "CLEARTEXT communication not enabled for client"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lokhttp3/Address;->protocols()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Route;->requiresTunnel()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    new-instance v0, Lokhttp3/Request$Builder;

    .line 105
    .line 106
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v2, "CONNECT"

    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const/4 v2, 0x1

    .line 136
    invoke-static {v1, v2}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "Host"

    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "Proxy-Connection"

    .line 147
    .line 148
    const-string v2, "Keep-Alive"

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "User-Agent"

    .line 155
    .line 156
    const-string v2, "okhttp/5.0.0-alpha.12"

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Lokhttp3/Response$Builder;

    .line 167
    .line 168
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/16 v2, 0x197

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const-string v2, "Preemptive Authenticate"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-wide/16 v2, -0x1

    .line 194
    .line 195
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const-string v2, "Proxy-Authenticate"

    .line 204
    .line 205
    const-string v3, "OkHttp-Preemptive"

    .line 206
    .line 207
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v2, p1, v1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-nez v1, :cond_3

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_3
    move-object v0, v1

    .line 231
    :goto_1
    move-object v8, v0

    .line 232
    goto :goto_2

    .line 233
    :cond_4
    move-object v8, v1

    .line 234
    :goto_2
    new-instance v13, Lokhttp3/internal/connection/ConnectPlan;

    .line 235
    .line 236
    const/4 v10, 0x0

    .line 237
    iget-object v11, v12, Lokhttp3/internal/connection/RealRoutePlanner;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:Lokhttp3/ConnectionListener;

    .line 238
    .line 239
    iget-object v1, v12, Lokhttp3/internal/connection/RealRoutePlanner;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/OkHttpClient;

    .line 240
    .line 241
    iget-object v2, v12, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 242
    .line 243
    iget-object v3, v12, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lokhttp3/internal/http/RealInterceptorChain;

    .line 244
    .line 245
    const/4 v7, 0x0

    .line 246
    const/4 v9, -0x1

    .line 247
    move-object v0, v13

    .line 248
    move-object v4, p0

    .line 249
    move-object v5, p1

    .line 250
    move-object/from16 v6, p2

    .line 251
    .line 252
    invoke-direct/range {v0 .. v11}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealCall;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZLokhttp3/ConnectionListener;)V

    .line 253
    .line 254
    .line 255
    return-object v13

    .line 256
    :cond_5
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 257
    .line 258
    const-string v1, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 259
    .line 260
    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v0
.end method

.method public final planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;
    .locals 7
    .param p1    # Lokhttp3/internal/connection/ConnectPlan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/connection/ConnectPlan;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)",
            "Lokhttp3/internal/connection/ReusePlan;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->getDelegate$okhttp()Lokhttp3/internal/connection/RealConnectionPool;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v6, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤:Z

    .line 29
    .line 30
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 31
    .line 32
    move-object v5, p2

    .line 33
    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/RealConnectionPool;->callAcquirePooledConnection(ZLokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Lokhttp3/internal/connection/RealConnection;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    :cond_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->getRoute()Lokhttp3/Route;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷:Lokhttp3/Route;

    .line 48
    .line 49
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->closeQuietly()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Lokhttp3/internal/connection/RealCall;

    .line 53
    .line 54
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/ConnectionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p2, p1}, Lokhttp3/ConnectionListener;->connectionAcquired(Lokhttp3/Connection;Lokhttp3/Call;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lokhttp3/internal/connection/ReusePlan;

    .line 69
    .line 70
    invoke-direct {p1, p2}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 71
    .line 72
    .line 73
    return-object p1
.end method

.method public sameHostAndPort(Lokhttp3/HttpUrl;)Z
    .locals 3
    .param p1    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    return p1
.end method
