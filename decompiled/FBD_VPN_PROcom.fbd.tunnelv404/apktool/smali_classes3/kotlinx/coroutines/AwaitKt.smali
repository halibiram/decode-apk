.class public final Lkotlinx/coroutines/AwaitKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a:\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u001e\u0010\u0003\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0004\"\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@\u00a2\u0006\u0002\u0010\u0006\u001a*\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008\u001a\"\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0004\"\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\r\u001a\u0018\u0010\t\u001a\u00020\n*\u0008\u0012\u0004\u0012\u00020\u000c0\u0007H\u0086@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "awaitAll",
        "",
        "T",
        "deferreds",
        "",
        "Lkotlinx/coroutines/Deferred;",
        "([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "joinAll",
        "",
        "jobs",
        "Lkotlinx/coroutines/Job;",
        "([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n37#2:122\n36#2,3:123\n13402#3,2:126\n1863#4,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitKt\n*L\n36#1:122\n36#1:123,3\n47#1:126,2\n58#1:128,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Lkotlinx/coroutines/Deferred;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/Deferred;

    .line 4
    invoke-direct {v0, p0}, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;-><init>([Lkotlinx/coroutines/Deferred;)V

    invoke-virtual {v0, p1}, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final awaitAll([Lkotlinx/coroutines/Deferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0    # [Lkotlinx/coroutines/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;

    invoke-direct {v0, p0}, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;-><init>([Lkotlinx/coroutines/Deferred;)V

    invoke-virtual {v0, p1}, L돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;

    iget v1, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    goto :goto_0

    :cond_0
    new-instance v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;

    .line 1
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    :goto_0
    iget-object p1, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/Object;

    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    .line 5
    iput-object p0, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/Iterator;

    iput v3, v0, L돠딤땐딁땤땐뒷돸땅득됩땨드땀딜듔딠되듌딠땻득딻돛뎽땧도듽뒛둥딨땮뒹딸돸땪돝땻듻딻땰도딜땧땅딞도둠딟땐땐딄돨땰듐땃듼땃돷든딜듻땰땲돴딞돝뒤땧땱땣도듼도뒐듔땔땀듸딌돰땻돵듸둥뎠뒛든뒨돠따땡땅딞둥땮듨땁딠들뎠뒀뒷땧뒛딞땝딎드땪땃딃뒾둘딞뒈듌딅딽땥땲돝듼됐뒋뒬땄땔듐딠;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final joinAll([Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0    # [Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/Job;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;

    iget v1, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    goto :goto_0

    :cond_0
    new-instance v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;

    .line 7
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    :goto_0
    iget-object p1, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Ljava/lang/Object;

    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget v2, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    iget v2, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:I

    iget-object v4, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Ljava/lang/Object;

    check-cast v4, [Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 10
    array-length p1, p0

    const/4 v2, 0x0

    move v5, p1

    move-object p1, p0

    move p0, v5

    :goto_1
    if-ge v2, p0, :cond_4

    aget-object v4, p1, v2

    .line 11
    iput-object p1, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Ljava/lang/Object;

    iput v2, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:I

    iput p0, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:I

    iput v3, v0, L돠딎땸둬딁딤듌뒀딠딞땨뒉돼딐돳듬돵뒾돰뒨도딝뒐땦둔딠되땣디둣듸땀둘땻딸두딃듐땟땦돳뎡땻둔득됩땍딃돨듰땧딌뎬돰돤뒈딸디뒐땠듻땮되돨딸뒀되뎡땰두뒼땪땃땭딻된땻돴뒝돵땥뎹땸뒛땲듔딠됫듻딹딽딜듸드땍딁뒉돳듬딽땔땍딝득땐듨땰돷딨뎻돴돨된둬땱딠땻딽듔듼될딞딨둘듨땭뒘땄땱됩;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    add-int/2addr v2, v3

    goto :goto_1

    .line 12
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
