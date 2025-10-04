.class public Lkotlinx/coroutines/internal/ThreadSafeHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u0000*\u0012\u0008\u0000\u0010\u0003*\u00020\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0004j\u0002`\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J2\u0010\u000e\u001a\u0004\u0018\u00018\u00002!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J&\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\u0008H\u0086\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u000fJ\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J.\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00028\u00002\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u000c0\u0008H\u0086\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00018\u0000H\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u0017\u0010 \u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u001eH\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00028\u0000H\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0017R$\u0010\'\u001a\u00020\u001e2\u0006\u0010\u000b\u001a\u00020\u001e8F@BX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0011\u0010(\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u000b\u0010+\u001a\u00020*8\u0002X\u0082\u0004\u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ThreadSafeHeap;",
        "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "",
        "T",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "<init>",
        "()V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "",
        "predicate",
        "find",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "peek",
        "()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "removeFirstOrNull",
        "removeFirstIf",
        "node",
        "",
        "addLast",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V",
        "cond",
        "addLastIf",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z",
        "remove",
        "(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z",
        "firstImpl",
        "",
        "index",
        "removeAtImpl",
        "(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;",
        "addImpl",
        "getSize",
        "()I",
        "setSize",
        "(I)V",
        "size",
        "isEmpty",
        "()Z",
        "Lkotlinx/atomicfu/AtomicInt;",
        "_size",
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
        "SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n29#2:160\n29#2:162\n29#2:164\n29#2:166\n29#2:168\n29#2:170\n29#2:172\n16#3:161\n16#3:163\n16#3:165\n16#3:167\n16#3:169\n16#3:171\n16#3:173\n1#4:174\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160\n41#1:162\n43#1:164\n51#1:166\n60#1:168\n63#1:170\n72#1:172\n33#1:161\n41#1:163\n43#1:165\n51#1:167\n60#1:169\n63#1:171\n72#1:173\n*E\n"
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# static fields
.field public static final synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _size$volatile:I

.field public 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    const-string v1, "_size$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    .locals 4
    .param p1    # Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 10
    .line 11
    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    array-length v2, v0

    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    mul-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "copyOf(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v0, [Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 37
    .line 38
    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    sget-object v3, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 47
    .line 48
    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    aput-object p1, v0, v1

    .line 52
    .line 53
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final addLast(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public final addLastIf(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;Lkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->addImpl(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 32
    .line 33
    .line 34
    return p1

    .line 35
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final find(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x0

    .line 8
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    aget-object v2, v3, v1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :goto_2
    monitor-exit p0

    .line 39
    return-object v2

    .line 40
    :goto_3
    monitor-exit p0

    .line 41
    throw p1
.end method

.method public final firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

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

.method public final peek()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final remove(Lkotlinx/coroutines/internal/ThreadSafeHeapNode;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getHeap()Lkotlinx/coroutines/internal/ThreadSafeHeap;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->getIndex()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    :goto_0
    monitor-exit p0

    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    add-int/2addr v1, v2

    .line 12
    sget-object v3, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 13
    .line 14
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge p1, v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(II)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, p1, -0x1

    .line 31
    .line 32
    div-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    aget-object v3, v0, p1

    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast v3, Ljava/lang/Comparable;

    .line 42
    .line 43
    aget-object v4, v0, v1

    .line 44
    .line 45
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-gez v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 62
    .line 63
    add-int/lit8 v3, v1, 0x1

    .line 64
    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-lt v3, v4, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    iget-object v4, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 73
    .line 74
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x2

    .line 78
    .line 79
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-ge v1, v5, :cond_2

    .line 84
    .line 85
    aget-object v5, v4, v1

    .line 86
    .line 87
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    check-cast v5, Ljava/lang/Comparable;

    .line 91
    .line 92
    aget-object v6, v4, v3

    .line 93
    .line 94
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-gez v5, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move v1, v3

    .line 105
    :goto_1
    aget-object v3, v4, p1

    .line 106
    .line 107
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v3, Ljava/lang/Comparable;

    .line 111
    .line 112
    aget-object v4, v4, v1

    .line 113
    .line 114
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-gtz v3, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(II)V

    .line 125
    .line 126
    .line 127
    move p1, v1

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    aget-object p1, v0, p1

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setHeap(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    aput-object v1, v0, v2

    .line 150
    .line 151
    return-object p1
.end method

.method public final removeFirstIf(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->firstImpl()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    :try_start_1
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final removeFirstOrNull()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->getSize()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->removeAtImpl(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(I)V
    .locals 3

    .line 1
    :goto_0
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 10
    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    aget-object v2, v0, v1

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast v2, Ljava/lang/Comparable;

    .line 19
    .line 20
    aget-object v0, v0, p1

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(II)V

    .line 33
    .line 34
    .line 35
    move p1, v1

    .line 36
    goto :goto_0
.end method

.method public final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:[Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    aget-object v1, v0, p2

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    aget-object v2, v0, p1

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    aput-object v1, v0, p1

    .line 17
    .line 18
    aput-object v2, v0, p2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/ThreadSafeHeapNode;->setIndex(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
