.class public final Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001ai\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\"\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0003\u001a\u00020\u000226\u0010\u0008\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00028\u00000\u0004H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a#\u0010\u000e\u001a\u00028\u0000\"\u000e\u0008\u0000\u0010\r*\u0008\u0012\u0004\u0012\u00028\u00000\u000c*\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a?\u0010\u0017\u001a\u00020\u0015*\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00112!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0082\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/Segment;",
        "S",
        "",
        "id",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "prev",
        "createNewSegment",
        "Lkotlinx/coroutines/internal/SegmentOrClosed;",
        "findSegmentInternal",
        "(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "N",
        "close",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "Lkotlinx/atomicfu/AtomicInt;",
        "",
        "delta",
        "Lkotlin/Function1;",
        "cur",
        "",
        "condition",
        "addConditionally",
        "(Lkotlinx/atomicfu/AtomicInt;ILkotlin/jvm/functions/Function1;)Z",
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
        "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,265:1\n42#1,8:280\n103#2,7:266\n103#2,7:273\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:280,8\n23#1:266,7\n81#1:273,7\n*E\n"
    }
.end annotation


# static fields
.field public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    const-string v1, "CLOSED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 2
    .param p0    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->markAsClosed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    move-object p0, v0

    .line 24
    goto :goto_0
.end method

.method public static final synthetic findSegmentAndMoveForward$atomicfu$ATOMIC_ARRAY$Any(Ljava/util/concurrent/atomic/AtomicReferenceArray;IJLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "IJTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-static {p4, p2, p3, p5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 20
    .line 21
    iget-wide v3, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 22
    .line 23
    iget-wide v5, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 24
    .line 25
    cmp-long v7, v3, v5

    .line 26
    .line 27
    if-ltz v7, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eq v3, v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static final synthetic findSegmentAndMoveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;JLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Ljava/lang/Object;",
            "JTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-static {p4, p2, p3, p5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 20
    .line 21
    iget-wide v3, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 22
    .line 23
    iget-wide v5, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 24
    .line 25
    cmp-long v7, v3, v5

    .line 26
    .line 27
    if-ltz v7, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eq v3, v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static final synthetic findSegmentAndMoveForward$atomicfu$BOXED_ATOMIC$Any(Ljava/util/concurrent/atomic/AtomicReference;JLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReference;",
            "JTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 20
    .line 21
    iget-wide v3, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 22
    .line 23
    iget-wide v5, v1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 24
    .line 25
    cmp-long v7, v3, v5

    .line 26
    .line 27
    if-ltz v7, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eq v3, v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static final findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/internal/Segment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(TS;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-wide v0, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_2
    :goto_1
    invoke-static {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    sget-object p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlinx/coroutines/internal/Symbol;

    .line 30
    .line 31
    invoke-static {p0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_3
    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 37
    .line 38
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    :cond_4
    :goto_2
    move-object p0, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_5
    iget-wide v0, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 45
    .line 46
    const-wide/16 v2, 0x1

    .line 47
    .line 48
    add-long/2addr v0, v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p3, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 72
    .line 73
    .line 74
    goto :goto_2
.end method

.method public static final synthetic moveForward$atomicfu$ATOMIC_ARRAY$Any(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILkotlinx/coroutines/internal/Segment;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "ITS;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 6
    .line 7
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 8
    .line 9
    iget-wide v3, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    cmp-long v6, v1, v3

    .line 13
    .line 14
    if-ltz v6, :cond_1

    .line 15
    .line 16
    return v5

    .line 17
    :cond_1
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return v5

    .line 41
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eq v1, v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method

.method public static final synthetic moveForward$atomicfu$ATOMIC_FIELD_UPDATER$Any(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Lkotlinx/coroutines/internal/Segment;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Ljava/lang/Object;",
            "TS;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 6
    .line 7
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 8
    .line 9
    iget-wide v3, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    cmp-long v6, v1, v3

    .line 13
    .line 14
    if-ltz v6, :cond_1

    .line 15
    .line 16
    return v5

    .line 17
    :cond_1
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return v5

    .line 41
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eq v1, v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method

.method public static final synthetic moveForward$atomicfu$BOXED_ATOMIC$Any(Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/internal/Segment;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Ljava/util/concurrent/atomic/AtomicReference;",
            "TS;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    .line 6
    .line 7
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 8
    .line 9
    iget-wide v3, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    cmp-long v6, v1, v3

    .line 13
    .line 14
    if-ltz v6, :cond_1

    .line 15
    .line 16
    return v5

    .line 17
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return v5

    .line 41
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eq v1, v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    .line 54
    .line 55
    .line 56
    goto :goto_0
.end method
