.class public abstract L됴뒀듔둑땩듸뎽뎽뎬돛둬딨땅되땨땸돼돳뒛되둬딅듻둔딟뒨땲둘땭뒷듐땝둔땤땝땅딞듼돸뒻땭뒐딄뒙땀땧땱뎸듌돰뒤뎸듼든뒛땋땄땻땣땝땵뎬되된듸딞뒬듟뒤땍뎰뒙땝땤뒋됨땹뒨듌듼땁됨땤둔땣땅됴땟돴돴뒐딻땍돠뒐둬딎땝땯듽돶돸돶듰땵뒋됩돴듬땃땸땱됨듽딄두땪도땃땁듸둑땳듰땵돷두땔딝땮;
.super Lkotlin/collections/CollectionsKt__IteratorsJVMKt;
.source "SourceFile"


# direct methods
.method public static final forEach(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "operation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static final withIndex(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Ljava/util/Iterator<",
            "Lkotlin/collections/IndexedValue<",
            "TT;>;>;"
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
    new-instance v0, Lkotlin/collections/IndexingIterator;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlin/collections/IndexingIterator;-><init>(Ljava/util/Iterator;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
