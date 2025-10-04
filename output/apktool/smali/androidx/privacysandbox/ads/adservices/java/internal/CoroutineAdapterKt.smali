.class public final Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u001a*\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "asListenableFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "T",
        "Lkotlinx/coroutines/Deferred;",
        "tag",
        "",
        "ads-adservices-java_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asListenableFuture(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0    # Lkotlinx/coroutines/Deferred;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-direct {v0, p0, p1, v1}, L뎸땝딀둡뒷땅땯뎡듻땲땭돨듔뒈땩땤든둘득딝뒝땬듼땵뎻둡땲땨딝돨땍뎻딃땠땸땹듌듬뎽둣땪뒻딎뒤땃땵땃땫땬딻땄땲따듔딹뒛딠땩땨땃돛땤딹듟땻땫뒨듽딌딜딄땔땲땋둑됐딝땫땔돨땸땹든두땩딌됐득따땐돸듐됩듰뒻뒷돵뒤뎡땹됩둔땥땧들딨둣둣돴딨돰뒹됐돤됐뒬뒋땋딽딄딝될딁돶땬될딀땬딄땬;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "getFuture { completer ->\u2026        }\n    }\n    tag\n}"

    .line 17
    .line 18
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic asListenableFuture$default(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "Deferred.asListenableFuture"

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->asListenableFuture(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final asListenableFuture$lambda$0(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "$this_asListenableFuture"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;

    .line 12
    .line 13
    invoke-direct {v0, p2, p0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlinx/coroutines/Deferred;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->asListenableFuture$lambda$0(Lkotlinx/coroutines/Deferred;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
