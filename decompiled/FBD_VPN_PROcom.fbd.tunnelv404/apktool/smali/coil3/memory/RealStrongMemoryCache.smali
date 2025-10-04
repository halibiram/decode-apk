.class public final Lcoil3/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/memory/StrongMemoryCache;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\"\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001%B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ;\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0013\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001fR\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00080!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcoil3/memory/RealStrongMemoryCache;",
        "Lcoil3/memory/StrongMemoryCache;",
        "",
        "maxSize",
        "Lcoil3/memory/WeakMemoryCache;",
        "weakMemoryCache",
        "<init>",
        "(JLcoil3/memory/WeakMemoryCache;)V",
        "Lcoil3/memory/MemoryCache$Key;",
        "key",
        "Lcoil3/memory/MemoryCache$Value;",
        "get",
        "(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;",
        "Lcoil3/Image;",
        "image",
        "",
        "",
        "",
        "extras",
        "size",
        "",
        "set",
        "(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V",
        "",
        "remove",
        "(Lcoil3/memory/MemoryCache$Key;)Z",
        "clear",
        "()V",
        "trimToSize",
        "(J)V",
        "getSize",
        "()J",
        "getMaxSize",
        "",
        "getKeys",
        "()Ljava/util/Set;",
        "keys",
        "\ub543\ub461\ub3b0\ub4b5\ub566\ub504\ub510\ub565\ub54d\ub544\ub56a\ub420\ub563\ub571\ub578\ub579\ub46c\ub4fc\ub480\ub434\ub544\ub3dd\ub505\ub499\ub50c\ub3e4\ub4a8\ub569\ub54b\ub571\ub572\ub480\ub490\ub3f8\ub575\ub568\ub51c\ub461\ub4b7\ub3fc\ub3a0\ub4be\ub564\ub460\ub3dd\ub540\ub4b9\ub566\ub458\ub579\ub4df\ub56d\ub561\ub3f5\ub4d0\ub3b9\ub4ac\ub545\ub560\ub4f0\ub3b0\ub55d\ub571\ub4df\ub3e8\ub560\ub505\ub4bb\ub570\ub4fd\ub573\ub42b\ub4e4\ub4dc\ub3f6\ub451\ub49d\ub50e\ub570\ub3e4\ub3f5\ub461\ub3c4\ub55c\ub3a8\ub541\ub51e\ub530\ub567\ub49d\ub3db\ub501\ub544\ub543\ub540\ub569\ub53b\ub48b\ub53b\ub49b\ub3db\ub510\ub554\ub543\ub51c\ub451\ub428\ub567\ub56b\ub53b\ub563\ub3a1\ub450\ub3f3\ub4bb\ub3a1\ub4fd\ub4ac\ub429\ub461\ub49b\ub451\ub48b\ub4a4\ub543\ub4b7\ub418\ub488\ub56b\ub503",
        "coil-core_release"
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
        "SMAP\nStrongMemoryCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrongMemoryCache.kt\ncoil3/memory/RealStrongMemoryCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,121:1\n1#2:122\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/memory/WeakMemoryCache;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;


# direct methods
.method public constructor <init>(JLcoil3/memory/WeakMemoryCache;)V
    .locals 0
    .param p3    # Lcoil3/memory/WeakMemoryCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/memory/WeakMemoryCache;

    .line 5
    .line 6
    new-instance p3, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 7
    .line 8
    invoke-direct {p3, p1, p2, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;-><init>(JLcoil3/memory/RealStrongMemoryCache;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$getWeakMemoryCache$p(Lcoil3/memory/RealStrongMemoryCache;)Lcoil3/memory/WeakMemoryCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/memory/WeakMemoryCache;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil3/util/LruCache;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public get(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;
    .locals 2
    .param p1    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcoil3/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, L땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcoil3/memory/MemoryCache$Value;

    .line 12
    .line 13
    iget-object v1, p1, L땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/Image;

    .line 14
    .line 15
    iget-object p1, p1, L땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/Map;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcoil3/memory/MemoryCache$Key;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil3/util/LruCache;->getKeys()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil3/util/LruCache;->getMaxSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcoil3/util/LruCache;->getSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public remove(Lcoil3/memory/MemoryCache$Key;)Z
    .locals 1
    .param p1    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcoil3/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    .locals 9
    .param p1    # Lcoil3/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil3/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/memory/MemoryCache$Key;",
            "Lcoil3/Image;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/memory/RealStrongMemoryCache;->getMaxSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 6
    .line 7
    cmp-long v3, p4, v0

    .line 8
    .line 9
    if-gtz v3, :cond_0

    .line 10
    .line 11
    new-instance v0, L땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃;

    .line 12
    .line 13
    invoke-direct {v0, p2, p3, p4, p5}, L땃둡뎰뒵땦딄딐땥땍땄땪될땣땱땸땹둬듼뒀됴땄돝딅뒙딌돤뒨땩땋땱땲뒀뒐돸땵땨딜둡뒷돼뎠뒾땤둠돝땀뒹땦둘땹듟땭땡돵듐뎹뒬땅땠듰뎰땝땱듟돨땠딅뒻땰듽땳됫들드돶둑뒝딎땰돤돵둡도땜뎨땁딞따땧뒝돛딁땄땃땀땩딻뒋딻뒛돛딐땔땃딜둑됨땧땫딻땣뎡두돳뒻뎡듽뒬됩둡뒛둑뒋뒤땃뒷되뒈땫딃;-><init>(Lcoil3/Image;Ljava/util/Map;J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1, v0}, Lcoil3/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v2, p1}, Lcoil3/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lcoil3/memory/WeakMemoryCache;

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    move-object v5, p2

    .line 27
    move-object v6, p3

    .line 28
    move-wide v7, p4

    .line 29
    invoke-interface/range {v3 .. v8}, Lcoil3/memory/WeakMemoryCache;->set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public trimToSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcoil3/util/LruCache;->trimToSize(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
