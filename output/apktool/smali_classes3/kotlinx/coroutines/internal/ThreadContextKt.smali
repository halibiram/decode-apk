.class public final Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a#\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a!\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\"\u0014\u0010\r\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "",
        "threadContextElements",
        "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;",
        "countOrElement",
        "updateThreadContext",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;",
        "oldState",
        "",
        "restoreThreadContext",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/internal/Symbol;",
        "NO_THREAD_ELEMENTS",
        "Lkotlinx/coroutines/internal/Symbol;",
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


# static fields
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

.field public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

.field public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    .line 10
    new-instance v0, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 11
    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    invoke-direct {v0, v1}, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 18
    .line 19
    new-instance v0, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-direct {v0, v1}, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 27
    .line 28
    new-instance v0, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 29
    .line 30
    const/16 v1, 0xf

    .line 31
    .line 32
    invoke-direct {v0, v1}, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 36
    .line 37
    return-void
.end method

.method public static final restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 5
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p1, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;

    .line 11
    .line 12
    iget-object v0, p1, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:[Lkotlinx/coroutines/ThreadContextElement;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    if-ltz v1, :cond_3

    .line 18
    .line 19
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 20
    .line 21
    aget-object v3, v0, v1

    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p1, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v1, v4, v1

    .line 29
    .line 30
    invoke-interface {v3, p0, v1}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {p0, v1, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Lkotlinx/coroutines/ThreadContextElement;

    .line 51
    .line 52
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    return-void
.end method

.method public static final threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 7
    .line 8
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static final updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v0, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-direct {v0, p0, p1}, L땪땹돛뒀딜된돛돰땪땯뎰돷뒈듽될뒬뒙듐든딜딄둔듨딄뒾됩딽뎠뒼듨뒋돤딻땟돛될딄뎽딅드뒼뒘듰뒼됐뎬뎽듟딟뎽뒛땄듸돴뒈두딸되돵돛딜딀돷땐돴딄들뒾땫디딽뒘땔돸둥땸뒙딄땤뎰땯드듌듽땟딐땋뒉듌듸된땤둬듽뒬땰땪땃돤뎻듬둡돤땻돤듰둡뒼돵땃돵뒝디돴딨둔땰땭땟뒘득드뒝땜듌둘땔땹딹땥;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 33
    .line 34
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 45
    .line 46
    invoke-interface {p1, p0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    return-object p0
.end method
