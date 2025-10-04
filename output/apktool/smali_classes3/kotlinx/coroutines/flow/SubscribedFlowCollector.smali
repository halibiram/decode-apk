.class public final Lkotlinx/coroutines/flow/SubscribedFlowCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002BD\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012-\u0010\t\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00028\u0000H\u0096A\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SubscribedFlowCollector;",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "collector",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "action",
        "<init>",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V",
        "onSubscription",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
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
        "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,429:1\n375#2:430\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n420#1:430\n*E\n"
    }
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/FlowCollector;

.field public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/FlowCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/FlowCollector;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;

    .line 7
    .line 8
    iget v1, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;-><init>(Lkotlinx/coroutines/flow/SubscribedFlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object v2, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 54
    .line 55
    iget-object v4, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 56
    .line 57
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 67
    .line 68
    iget-object p1, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/FlowCollector;

    .line 69
    .line 70
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-direct {v2, p1, v5}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 75
    .line 76
    .line 77
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    iput-object p0, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 80
    .line 81
    iput-object v2, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 82
    .line 83
    iput v4, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 84
    .line 85
    invoke-interface {p1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-ne p1, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    move-object v4, p0

    .line 93
    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 94
    .line 95
    .line 96
    iget-object p1, v4, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/FlowCollector;

    .line 97
    .line 98
    instance-of v2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 99
    .line 100
    if-eqz v2, :cond_6

    .line 101
    .line 102
    check-cast p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    iput-object v2, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    .line 106
    .line 107
    iput-object v2, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 108
    .line 109
    iput v3, v0, L땦땝뒈땍땅됩딟둘돨딽뒘둠뒬딠두뒬된뒹뒋듸둡딌뎽따뎽뎡듌둣딄땯돛돸듸딟딃뒬된딃들땃뒤땄돴득뎠땮땵땪땦됐돤딃둣듽딌땄딀듨땟둑둠돳듸땩듸뒾뎹듔딽듽땃듔땭땐땃돝땋땵둑딝땫땟뒬뎨딅땻딁뒼딽돼딠뒤뎹됨듐둡뎨뎽뎨딌뒬뎸뒘뎡땧딤둔듟들땐뎬딄딅됐뎠도돤뒤듨딎듰돠땋뎽땵뒵듽딎땫듬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:I

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, v1, :cond_5

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p1

    .line 124
    :goto_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 125
    .line 126
    .line 127
    throw p1
.end method
