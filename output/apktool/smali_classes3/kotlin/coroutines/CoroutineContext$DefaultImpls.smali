.class public final Lkotlin/coroutines/CoroutineContext$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 2
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, L돼딟딃듌듨뎨둔딸딨뒼딅돴뒹돶땥딹돤땬듽땅돤뒝땲뒋됫돸됫딃듟뎨뎸듻땟둑듐딨뒝듟듻든뒉뎽돨둔돵되뎽딌둘듟땥딻땦딨땵뒝땋땜둬땹땵딹딟뒷듨땡뒐뒝돶둣땰돴들땔딽뒛땤땵돷땲땐뎰땍땩듐듟될딄뒹땠딠둥딞두됫뒛됐돶땣뒹땭땐뎬뒼땩땭땸땋뒉땫뒙듨뒾딜뒤땦딎땍둑도된돨딝된둥둬뒙땨땪딃;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p0, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 22
    .line 23
    :goto_0
    return-object p0
.end method
