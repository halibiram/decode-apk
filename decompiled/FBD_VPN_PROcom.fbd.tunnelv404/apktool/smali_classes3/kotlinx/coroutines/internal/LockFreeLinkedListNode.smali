.class public Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0012\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0004H\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u001b\u001a\u00020\u000e2\n\u0010\u0018\u001a\u00060\u0000j\u0002`\u00042\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0004H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0015R\u0011\u0010\u0011\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0015\u0010#\u001a\u00060\u0000j\u0002`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0017R\u0015\u0010%\u001a\u00060\u0000j\u0002`\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0017R\u0011\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00010&8\u0002X\u0082\u0004R\u0011\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00000&8\u0002X\u0082\u0004R\u0013\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0&8\u0002X\u0082\u0004\u00a8\u0006+"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/internal/Node;",
        "node",
        "",
        "addOneIfEmpty",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "",
        "permissionsBitmask",
        "addLast",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z",
        "forbiddenElementsBit",
        "",
        "close",
        "(I)V",
        "next",
        "addNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "remove",
        "()Z",
        "removeOrNext",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "prev",
        "validateNode$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "validateNode",
        "",
        "toString",
        "()Ljava/lang/String;",
        "isRemoved",
        "getNext",
        "()Ljava/lang/Object;",
        "getNextNode",
        "nextNode",
        "getPrevNode",
        "prevNode",
        "Lkotlinx/atomicfu/AtomicRef;",
        "_next",
        "_prev",
        "L\ub545\ub544\ub567\ub49d\ub550\ub4d0\ub53d\ub4e4\ub554\ub434\ub56f\ub4ac\ub3f6\ub3dd\ub3f3\ub49d\ub56e\ub480\ub42b\ub53d\ub4fd\ub56d\ub3a1\ub3bb\ub561\ub480\ub3a1\ub4dc\ub3f8\ub3e0\ub429\ub460\ub501\ub50c\ub56e\ub56b\ub4e8\ub544\ub49d\ub490\ub575\ub41c\ub55c\ub56c\ub503\ub4fb\ub418\ub451\ub3f5\ub550\ub3b9\ub51c\ub560\ub42b\ub4bb\ub540\ub566\ub561\ub570\ub514\ub4bc\ub4b9\ub488\ub51d\ub3f4\ub420\ub4fc\ub545\ub56c\ub524\ub503\ub42b\ub579\ub4dd\ub560\ub434\ub434\ub465\ub56e\ub51e\ub418\ub3b0\ub56d\ub554\ub3f3\ub4bc\ub538\ub3a0\ub55d\ub504\ub3db\ub3f0\ub503\ub3f3\ub530\ub501\ub500\ub4b5\ub3a1\ub56d\ub56c\ub51c\ub514\ub554\ub3f8\ub3b0\ub540\ub3fc\ub3f0\ub499\ub450\ub554\ub501\ub3e8\ub3f7\ub54b\ub4f0\ub500\ub567\ub571\ub498\ub3db\ub554\ub4df\ub434\ub3a0\ub3ac\ub4e8\ub4b7\ub51d;",
        "_removedRef",
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
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# static fields
.field public static final synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _prev$volatile:Ljava/lang/Object;

.field private volatile synthetic _removedRef$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next$volatile"

    const-class v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$volatile:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$volatile:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z
    .locals 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, L딅뎠든땋땥딐듸듌뒙딸뒐뒵드땸뎨둬듬돼땔될땣돰딐둘땨따땯딨땐둬드딝뒈땧딜땻뎬뒼땁딽됫돰둘뒝딻딎땦듽돷땋든됨돴땭딄뒈땐돷땰돰뒬돴딀뒐뒋듬듽땫땥땜듸딝뎡뒈듔뒵듬땰딞듸뎡땡땄땥땭뒷딟뒛땱뎹듐뒀땝듟땐딽둔딽뒝득땥땤땹득돨듻뒋딞땟돠땱딜될뎰뎸딠뎨뒝땟됨둔둥돳딌땁딻땜딃땫됩;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, L딅뎠든땋땥딐듸듌뒙딸뒐뒵드땸뎨둬듬돼땔될땣돰딐둘땨따땯딨땐둬드딝뒈땧딜땻뎬뒼땁딽됫돰둘뒝딻딎땦듽돷땋든됨돴땭딄뒈땐돷땰돰뒬돴딀뒐뒋듬듽땫땥땜듸딝뎡뒈듔뒵듬땰딞듸뎡땡땄땥땭뒷딟뒛땱뎹듐뒀땝듟땐딽둔딽뒝득땥땤땹득돨듻뒋딞땟돠땱딜될뎰뎸딠뎨뒝땟됨둔둥돳딌땁딻땜딃땫됩;

    .line 12
    .line 13
    iget v1, v1, L딅뎠든땋땥딐듸듌뒙딸뒐뒵드땸뎨둬듬돼땔될땣돰딐둘땨따땯딨땐둬드딝뒈땧딜땻뎬뒼땁딽됫돰둘뒝딻딎땦듽돷땋든됨돴땭딄뒈땐돷땰돰뒬돴딀뒐뒋듬듽땫땥땜듸딝뎡뒈듔뒵듬땰딞듸뎡땡땄땥땭뒷딟뒛땱뎹듐뒀땝듟땐딽둔딽뒝득땥땤땹득돨듻뒋딞땟돠땱딜될뎰뎸딠뎨뒝땟됨둔둥돳딌땁딻땜딃땫됩;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:I

    .line 14
    .line 15
    and-int/2addr v1, p2

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :goto_0
    return v2
.end method

.method public final addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eq v1, p2, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v1, p0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eq v1, p0, :cond_0

    .line 35
    .line 36
    goto :goto_0
.end method

.method public final close(I)V
    .locals 1

    .line 1
    new-instance v0, L딅뎠든땋땥딐듸듌뒙딸뒐뒵드땸뎨둬듬돼땔될땣돰딐둘땨따땯딨땐둬드딝뒈땧딜땻뎬뒼땁딽됫돰둘뒝딻딎땦듽돷땋든됨돴땭딄뒈땐돷땰돰뒬돴딀뒐뒋듬듽땫땥땜듸딝뎡뒈듔뒵듬땰딞듸뎡땡땄땥땭뒷딟뒛땱뎹듐뒀땝듟땐딽둔딽뒝득땥땤땹득돨듻뒋딞땟돠땱딜될뎰뎸딠뎨뒝땟됨둔둥돳딌땁딻땜딃땫됩;

    .line 2
    .line 3
    invoke-direct {v0, p1}, L딅뎠든땋땥딐듸듌뒙딸뒐뒵드땸뎨둬듬돼땔될땣돰딐둘땨따땯딨땐둬드딝뒈땧딜땻뎬뒼땁딽됫돰둘뒝딻딎땦듽돷땋든됨돴땭딄뒈땐돷땰돰뒬돴딀뒐뒋듬듽땫땥땜듸딝뎡뒈듔뒵듬땰딞듸뎡땡땄땥땭뒷딟뒛땱뎹듐뒀땝듟땐딽둔딽뒝득땥땤땹득돨듻뒋딞땟돠땱딜될뎰뎸딠뎨뒝땟됨둔둥돳딌땁딻땜딃땫됩;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getNext()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    :cond_1
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 27
    .line 28
    :cond_2
    return-object v1
.end method

.method public final getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-object v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 6
    .line 7
    return v0
.end method

.method public remove()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 5
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 10
    .line 11
    iget-object v0, v0, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    if-ne v0, p0, :cond_1

    .line 15
    .line 16
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    new-instance v3, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 41
    .line 42
    invoke-direct {v3, v1}, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 49
    .line 50
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return-object v0

    .line 61
    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eq v2, v0, :cond_2

    .line 66
    .line 67
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, L딌뒝뎽됩땅뒛된뒼둣둑뒙돨딟뒷뒝땐듐땠뒨드뒛땐듸딁딞땲듻돳땤딸땭듔뎬되땨땦듐돵뎰뒵땍돶둣땲딁뒨딐딜됩땥땸땯듔되땦듟뒹돵듔땣딅돴딟뎽땣땻디딜뎻들뎰뎨땩돼뒋땍뎸뎠땡뎬뒤듔딤땀둡딎뒝땫둡땹들둥둠돷땫딸땤듐듰딁뒋딸땟듟땳돸됩뒤땻땤뎽돰뒀듼딄뒋둠땄둡듟땻딟뒵뒋딻땄뒾듻땟뒨;

    .line 7
    .line 8
    const-string v5, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    const-class v3, Lkotlinx/coroutines/DebugStringsKt;

    .line 12
    .line 13
    const-string v4, "classSimpleName"

    .line 14
    .line 15
    move-object v1, v7

    .line 16
    move-object v2, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x40

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 9

    .line 1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v3, v1

    .line 11
    :goto_1
    move-object v4, v2

    .line 12
    :goto_2
    sget-object v5, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-ne v6, p0, :cond_2

    .line 19
    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_0
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eq v2, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_3
    instance-of v7, v6, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 45
    .line 46
    if-eqz v7, :cond_7

    .line 47
    .line 48
    if-eqz v4, :cond_6

    .line 49
    .line 50
    check-cast v6, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;

    .line 51
    .line 52
    iget-object v6, v6, L땅땄땧뒝땐듐딽들땔됴땯뒬돶돝돳뒝땮뒀됫딽듽땭뎡뎻땡뒀뎡드돸돠됩둠딁딌땮땫듨땄뒝뒐땵된땜땬딃듻되둑돵땐뎹딜땠됫뒻땀땦땡땰디뒼뒹뒈딝돴될듼땅땬딤딃됫땹득땠됴됴둥땮딞되뎰땭땔돳뒼딸뎠땝딄돛돰딃돳따딁딀뒵뎡땭땬딜디땔돸뎰땀돼돰뒙두땔딁돨돷땋듰딀땧땱뒘돛땔듟됴뎠뎬듨뒷딝;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 53
    .line 54
    :cond_4
    invoke-virtual {v5, v4, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_5

    .line 59
    .line 60
    move-object v3, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eq v7, v3, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_7
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode"

    .line 77
    .line 78
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v4, v6

    .line 82
    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 83
    .line 84
    move-object v8, v4

    .line 85
    move-object v4, v3

    .line 86
    move-object v3, v8

    .line 87
    goto :goto_2
.end method

.method public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eq v2, p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eq v2, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0
.end method
