.class public final Lkotlinx/coroutines/future/FutureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aZ\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\'\u0010\n\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0006\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a#\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u000b*\u00020\u0011\u00a2\u0006\u0004\u0008\u000f\u0010\u0013\u001a#\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a \u0010\u0017\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlinx/coroutines/CoroutineStart;",
        "start",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "Ljava/util/concurrent/CompletableFuture;",
        "future",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;",
        "Lkotlinx/coroutines/Deferred;",
        "asCompletableFuture",
        "(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;",
        "Lkotlinx/coroutines/Job;",
        "",
        "(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;",
        "Ljava/util/concurrent/CompletionStage;",
        "asDeferred",
        "(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;",
        "await",
        "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
        "SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1#2:209\n426#3,11:210\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:210,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final asCompletableFuture(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p0    # Lkotlinx/coroutines/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 2
    new-instance v1, L들땥뎠딜땳돨땋딄땯듐둣듼땫딠뎠딅듸뎽땳돶돛될돴땰땋땠둥듰둣땋딟뒷돴뒨들됐돷딹돰득뎨뒈듽딀드땭뎽땋뒨둔둘뒤뒵드뒐듼되돵땭뒷땅딅뒝딽듸듽듻뎡뎰될땹뒉땮뒛돸딜뒾딜둔땍딅돴뒝땯땮듟들땳되딽땣땵땫땃뒝돨딎득됩땪듟땝뒙뎡듻됴돛뒬둬딄땻둬둑땨뎡둘땬뎠딄땣땋딃땯땡돛땫딞땠딄땣;

    invoke-direct {v1, p0}, L들땥뎠딜땳돨땋딄땯듐둣듼땫딠뎠딅듸뎽땳돶돛될돴땰땋땠둥듰둣땋딟뒷돴뒨들됐돷딹돰득뎨뒈듽딀드땭뎽땋뒨둔둘뒤뒵드뒐듼되돵땭뒷땅딅뒝딽듸듽듻뎡뎰될땹뒉땮뒛돸딜뒾딜둔땍딅돴뒝땯땮듟들땳되딽땣땵땫땃뒝돨딎득됩땪듟땝뒙뎡듻됴돛뒬둬딄땻둬둑땨뎡둘땬뎠딄땣땋딃땯땡돛땫딞땠딄땣;-><init>(Lkotlinx/coroutines/Job;)V

    new-instance v2, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-static {v0, v2}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Ljava/util/concurrent/CompletableFuture;L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;)V

    .line 3
    new-instance v1, L들딤땰딀딠둣뒉돴뒬듟딝둣돵듻듐땹돼뒹돛듰땤돰뎠둡딽듬뎡뒻땪뒛됫땜듽됩뎰둑듬돴돝돶둑돳딸딟땁딀땧돴뒐땧둥돼되땩땐듸돤딃뒼들든됫듌뎹돛따도땜땭뒋딝뎠뎠듸딜드뎽된땭땪둘땭뒙됩듰돳될땜땡됐듽땬땪딸땵땬딨됩땸땤딄뎹딞딽땹땁땀도뎹땰둠땃뒐됫딄땠뎡땋뒀딜돴딀뒨땤뒉땐뎹뒾딐딨;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, L들딤땰딀딠둣뒉돴뒬듟딝둣돵듻듐땹돼뒹돛듰땤돰뎠둡딽듬뎡뒻땪뒛됫땜듽됩뎰둑듬돴돝돶둑돳딸딟땁딀땧돴뒐땧둥돼되땩땐듸돤딃뒼들든됫듌뎹돛따도땜땭뒋딝뎠뎠듸딜드뎽된땭땪둘땭뒙됩듰돳될땜땡됐듽땬땪딸땵땬딨됩땸땤딄뎹딞딽땹땁땀도뎹땰둠땃뒐됫딄땠뎡땋뒀딜돴딀뒨땤뒉땐뎹뒾딐딨;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asCompletableFuture(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;
    .locals 4
    .param p0    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 5
    new-instance v1, L들땥뎠딜땳돨땋딄땯듐둣듼땫딠뎠딅듸뎽땳돶돛될돴땰땋땠둥듰둣땋딟뒷돴뒨들됐돷딹돰득뎨뒈듽딀드땭뎽땋뒨둔둘뒤뒵드뒐듼되돵땭뒷땅딅뒝딽듸듽듻뎡뎰될땹뒉땮뒛돸딜뒾딜둔땍딅돴뒝땯땮듟들땳되딽땣땵땫땃뒝돨딎득됩땪듟땝뒙뎡듻됴돛뒬둬딄땻둬둑땨뎡둘땬뎠딄땣땋딃땯땡돛땫딞땠딄땣;

    invoke-direct {v1, p0}, L들땥뎠딜땳돨땋딄땯듐둣듼땫딠뎠딅듸뎽땳돶돛될돴땰땋땠둥듰둣땋딟뒷돴뒨들됐돷딹돰득뎨뒈듽딀드땭뎽땋뒨둔둘뒤뒵드뒐듼되돵땭뒷땅딅뒝딽듸듽듻뎡뎰될땹뒉땮뒛돸딜뒾딜둔땍딅돴뒝땯땮듟들땳되딽땣땵땫땃뒝돨딎득됩땪듟땝뒙뎡듻됴돛뒬둬딄땻둬둑땨뎡둘땬뎠딄땣땋딃땯땡돛땫딞땠딄땣;-><init>(Lkotlinx/coroutines/Job;)V

    new-instance v2, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-static {v0, v2}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌(Ljava/util/concurrent/CompletableFuture;L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;)V

    .line 6
    new-instance v1, L뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, L뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asDeferred(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;
    .locals 7
    .param p0    # Ljava/util/concurrent/CompletionStage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Ljava/util/concurrent/CompletableFuture;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_2

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    check-cast v0, Ljava/util/concurrent/ExecutionException;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v3

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object p0, v0

    .line 42
    :cond_2
    :goto_1
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0, p0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 47
    .line 48
    .line 49
    move-object p0, v0

    .line 50
    :goto_2
    return-object p0

    .line 51
    :cond_3
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v4, L들되뎽도뒐디뒵듽됐뒬둘딤됨딽뒾땥땯땳딝되된뎸땭딁돳돶돷든뒾뒉돸땤된뒉돠뎨땧듟뒵돳뎠뒬땰뒹땄땫딁돸뒬돛뎻딅땠도듬땥돶될딐둥듌뒬딸뒀돠되돸뒘뒐딐땣뒵듸뒙땫뎸딞뒤듨뎻돛딅땤땦듌돳뒐됩땃듻땠둔딤들됴뒵돨둡땯뒻땳듐듨돤땋득딝땀땭땲둡듻딌딅돤딽되든딄둠딸딃뒵듰둔뒻디돰딠땅;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v4, v1, v5}, L들되뎽도뒐디뒵듽됐뒬둘딤됨딽뒾땥땯땳딝되된뎸땭딁돳돶돷든뒾뒉돸땤된뒉돠뎨땧듟뒵돳뎠뒬땰뒹땄땫딁돸뒬돛뎻딅땠도듬땥돶될딐둥듌뒬딸뒀돠되돸뒘뒐딐땣뒵듸뒙땫뎸딞뒤듨뎻돛딅땤땦듌돳뒐됩땃듻땠둔딤들됴뒵돨둡땯뒻땳듐듨돤땋득딝땀땭땲둡듻딌딅돤딽되든딄둠딸딃뒵듰둔뒻디돰딠땅;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    new-instance v5, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-direct {v5, v4, v6}, L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v5}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽(Ljava/util/concurrent/CompletionStage;L들듌땣뒤둡듨뎨딝돵돶돛땄땣돨뎰듌땮땧딟땤뎸뎡땸들도땡땰뒬드뒝뒼땐둣딜뒛땋도땝드딜뒘딹딞딞뎽도땤뒬될뒵듬돤드땃딞딟따뒬뒈돷딄듽돴디딽뎡딝땮땳땐둣땅딻딜딟됨뒘돵둣돼딸딀딸되땁둠땤땁딤딜돝돨딽둠땟뒤땮땩둘땭딽뎻땔될뒻된딸뎨돨뎸뎡뒝됫딽딠땅듨뎠뎰돼듟돸땡딻듟듨듸뒤뎸둘;)V

    .line 68
    .line 69
    .line 70
    new-instance p0, L돶땩돨딁듬뎹돰둥되땵둑돷뒙듽뒘뒻뎬딌땀땣돳딄땅뎹땀땝딟뒨듰뎬땝딸되들듻듼드땹돳뎽딎뎡딐뒵뎸딞땻도딁됫두땳땱뒤둬든땍둔뒙딽뎡뎸둬딎둔뒾땧땐뎸땤딽둑돝뒼들뒐딜땫딽땮듻뒙딃땀뒙뒀땀뎬뒼돤땝땃딃돷땃돤듨딸됫됨뎨땡뒋돨땣돷땝듔딽땸둔딨땄둡딌땝뒋뒬돴딁뎨땸돨딠둣뒋땲뎽땟되;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, v0, v4}, L돶땩돨딁듬뎹돰둥되땵둑돷뒙듽뒘뒻뎬딌땀땣돳딄땅뎹땀땝딟뒨듰뎬땝딸되들듻듼드땹돳뎽딎뎡딐뒵뎸딞땻도딁됫두땳땱뒤둬든땍둔뒙딽뎡뎸둬딎둔뒾땧땐뎸땤딽둑돝뒼들뒐딜땫딽땮듻뒙딃땀뒙뒀땀뎬뒼돤땝땃딃돷땃돤듨딸됫됨뎨땡뒋돨땣돷땝듔딽땸둔딨땄둡딌땝뒋뒬돴딁뎨땸돨딠둣뒋땲뎽땟되;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-static {v1, v0, p0, v2, v3}, Lkotlinx/coroutines/JobKt;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public static final await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/util/concurrent/CompletionStage;
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
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/util/concurrent/CompletionStage;)Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥(Ljava/util/concurrent/CompletableFuture;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p0, p1

    .line 25
    :goto_0
    throw p0

    .line 26
    :cond_1
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 37
    .line 38
    .line 39
    new-instance v2, L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, v2, L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;->cont:Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    invoke-static {p0, v2}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Ljava/util/concurrent/CompletionStage;L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, L들땟땜뒐땁둔딐땟듬뒀둡둡듬딁뒋돳땳땍땄딅뎡뒋뒵돛둔뒝땵뒝뒐뎸디뒛뎡땀땥딀둣땮땻뒋땸땰딀되듬디뒷딎듽됨뎽딅땐뎡땬뒤됫딟돠뒋뒨땀뎠땍땀뒙딠딹땔땨땸됐돝된땔땹뎹땲돶듰땱둔듐땀딽뒋되돴딟됩땣뒋땵땣돝딝땅든든땰뒼땳돼듻됐듌뒝득뒵딸뎠딨땻딞딠드땁땅땲뎻돸땧땥땠둬된딐된땩된;

    .line 50
    .line 51
    invoke-direct {p0, v0, v2}, L들땟땜뒐땁둔딐땟듬뒀둡둡듬딁뒋돳땳땍땄딅뎡뒋뒵돛둔뒝땵뒝뒐뎸디뒛뎡땀땥딀둣땮땻뒋땸땰딀되듬디뒷딎듽됨뎽딅땐뎡땬뒤됫딟돠뒋뒨땀뎠땍땀뒙딠딹땔땨땸됐돝된땔땹뎹땲돶듰땱둔듐땀딽뒋되돴딟됩땣뒋땵땣돝딝땅든든땰뒼땳돼듻됐듌뒝득뒵딸뎠딨땻딞딠드땁땅땲뎻돸땧땥땠둬된딐된땩된;-><init>(Ljava/util/concurrent/CompletableFuture;L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, p0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {}, L딀땭딠도듻두뎰땻땩둣땰돨딸딽득땰뒉땡돨돸땭딐딅딄뒷돤뒵뎬뒤듬딞둔둔땠땅딐딽도돼돷될딌땔땩뒝땸듨뎻득듟땃뎻둬땹돰땧됴될돵뎬따딠듌둑됴둣땥둠땭땠됴돤듬돷딅땩딨둠딝듰듻딞땍땸뎻둡듻듟땲땰딹땤딜땋돠땸돷듸땫딠땻뒛딎뒈됩땲뒉딹딹딁땰땹땭땃뒹되딹땔듐땣돼땍돸돼딀땍땪둔땡뒻;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-ne p0, v0, :cond_2

    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-object p0
.end method

.method public static final future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/CoroutineStart;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠()Ljava/util/concurrent/CompletableFuture;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, L둠돠딻되딸뒝땲둬뎨둘땤드땪땭땋둠땳따딞땵땲땁땝딄될딐땁뎨땵딄땻땀듟땡뒵뒵돝돝둣뒾뒷돸뒙뒛될뒀뒙들딽돛땦땝땣뎠뒛딟뎻땁돼돤뒋뒙두땪뒵됴듼땜땁땩뒘득땄뒙딁돤됩딨땳뎸딐땭되땸둔딃두땐돛땁득드듽땡뒤둘딝뎽둬땜돝뎽됫뒘두딜뎬뒼들뒻둣딎디뒬디땀땳되됐뎠돶딞뎡돼땰돴뒬땩뒼듟;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, L둠돠딻되딸뒝땲둬뎨둘땤드땪땭땋둠땳따딞땵땲땁땝딄될딐땁뎨땵딄땻땀듟땡뒵뒵돝돝둣뒾뒷돸뒙뒛될뒀뒙들딽돛땦땝땣뎠뒛딟뎻땁돼돤뒋뒙두땪뒵됴듼땜땁땩뒘득땄뒙딁돤됩딨땳뎸딐땭되땸둔딃두땐돛땁득드듽땡뒤둘딝뎽둬땜돝뎽됫뒘두딜뎬뒼들뒻둣딎디뒬디땀땳되됐뎠돶딞뎡돼땰돴뒬땩뒼듟;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CompletableFuture;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐(Ljava/util/concurrent/CompletableFuture;L둠돠딻되딸뒝땲둬뎨둘땤드땪땭땋둠땳따딞땵땲땁땝딄될딐땁뎨땵딄땻땀듟땡뒵뒵돝돝둣뒾뒷돸뒙뒛될뒀뒙들딽돛땦땝땣뎠뒛딟뎻땁돼돤뒋뒙두땪뒵됴듼땜땁땩뒘득땄뒙딁돤됩딨땳뎸딐땭되땸둔딃두땐돛땁득드듽땡뒤둘딝뎽둬땜돝뎽됫뒘두딜뎬뒼들뒻둣딎디뒬디땀땳되됐뎠돶딞뎡돼땰돴뒬땩뒼듟;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, v0, p3}, Lkotlinx/coroutines/AbstractCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " start is not supported"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public static synthetic future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 12
    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/future/FutureKt;->future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
