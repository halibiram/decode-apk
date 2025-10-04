.class public abstract Lkotlin/sequences/SequencesKt__SequenceBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static iterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/sequences/SequenceScope<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, L땔돝두돳딎듐딞딝땪딟딝돰딀땦듰돰땤둔딸둥돷딀둔땐땫땝땅땥땠뒹뒾뒼뎹땰뎰듐둔뒹듐됫둥땍돳땮땵땳됴뒈땻딀돝듻디둠땪땟뒋뒼됫땸땜뒵돤땫딽땫딄딀땅땜딻되땱돸뒐딨듟땣딸듸뎻땰듌듸땦딻뒝뒋될땳뎨뒬뎸뒼땅듟땬땋돰돸둣딟땔땍딜뒵뎠듨듟득땵둑땬딝딽뒙딁딸듐됐딟땜듔뒵됩땱딐뒤든뎡;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/sequences/SequenceScope;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iput-object p0, v0, L땔돝두돳딎듐딞딝땪딟딝돰딀땦듰돰땤둔딸둥돷딀둔땐땫땝땅땥땠뒹뒾뒼뎹땰뎰듐둔뒹듐됫둥땍돳땮땵땳됴뒈땻딀돝듻디둠땪땟뒋뒼됫땸땜뒵돤땫딽땫딄딀땅땜딻되땱돸뒐딨듟땣딸듸뎻땰듌듸땦딻뒝뒋될땳뎨뒬뎸뒼땅듟땬땋돰돸둣딟땔땍딜뒵뎠듨듟득땵둑땬딝딽뒙딁딸듐됐딟땜듔뒵됩땱딐뒤든뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:Lkotlin/coroutines/Continuation;

    .line 16
    .line 17
    return-object v0
.end method

.method public static sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lkotlin/BuilderInference;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/sequences/SequenceScope<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
