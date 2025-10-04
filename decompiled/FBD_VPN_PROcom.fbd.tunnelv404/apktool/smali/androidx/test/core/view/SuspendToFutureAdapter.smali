.class public final Landroidx/test/core/view/SuspendToFutureAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JW\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\'\u0010\u000f\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010\u00a2\u0006\u0002\u0008\u0013\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/test/core/view/SuspendToFutureAdapter;",
        "",
        "()V",
        "GlobalListenableFutureAwaitContext",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "GlobalListenableFutureScope",
        "androidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1",
        "Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;",
        "launchFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "T",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "launchUndispatched",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;",
        "DeferredFuture",
        "core_java_androidx_test_core-core_internal_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/test/core/view/SuspendToFutureAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/test/core/view/SuspendToFutureAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/test/core/view/SuspendToFutureAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->INSTANCE:Landroidx/test/core/view/SuspendToFutureAdapter;

    .line 7
    .line 8
    new-instance v0, Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getGlobalListenableFutureAwaitContext$p()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 1
    sget-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic launchFuture$default(Landroidx/test/core/view/SuspendToFutureAdapter;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
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
    const/4 p2, 0x1

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/core/view/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
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
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 19
    .line 20
    :goto_0
    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;-><init>(Lkotlinx/coroutines/Deferred;)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Landroidx/test/core/view/SuspendToFutureAdapter$launchFuture$1$1;

    .line 30
    .line 31
    invoke-direct {p3, p1}, Landroidx/test/core/view/SuspendToFutureAdapter$launchFuture$1$1;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p2}, Lkotlin/coroutines/ContinuationKt;->createCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p1, p3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object p2
.end method
