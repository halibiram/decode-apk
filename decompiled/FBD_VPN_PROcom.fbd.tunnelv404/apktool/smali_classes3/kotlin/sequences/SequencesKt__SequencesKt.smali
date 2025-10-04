.class public abstract Lkotlin/sequences/SequencesKt__SequencesKt;
.super L땔돝땵돠둥뒐드듐둠듐딃뒙뒐땨딻뎸딟든돰땜뒛되땩뒨땨뒙땤딤땟뒬딞땡딄되둘둘듸땮땳됩돤듨땠딎땰듬딀땯땪뒨딜뒤땝땲딄딹됨뎰든땅딁땔둣뒬둘듟땜둥득둣따땳딤땥땅두딠뒋뒛땁땜땡뒐딨땁땨딠딸딝땤땱돴땻듸드땡딝딞둠듸돠뎡돴딟딨뎰땡든딃돴딤딅뎠되딝둘돝듌딎돴뒼돳뎡따듔둘뒾득땧땨;
.source "SourceFile"


# direct methods
.method public static asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;
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
            "Lkotlin/sequences/Sequence<",
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
    new-instance v0, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/util/Iterator;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
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
    instance-of v0, p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    .line 14
    .line 15
    .line 16
    move-object p0, v0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static emptySequence()Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, L뒙땰땤땀딝딁땁둑뒈땬땱딹땜돳드됩딞뒵딨둡땨딝둬뒾뒉딝땸땐뎰땅둡됫땸땩뎬돰뒹땣땵뎠땸뒤듻딁뒀땋딐땣돠둑땦땯땳도땧듸땵뎠둔뒀뒈디디뒐뎡땦땡땄뒘뒋듨땰디듰됐둬돤뎰돳뒀뒷땭디딌뎰뒈듼땥두됨땥딃땟디땲뒤돵둣될듟듌되딄둥돴땣돵뒨뎹뎬돼뒉딸땭땅된땐뒤돸득듐됩돵딠땸딞땭듰뒝뒼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L뒙땰땤땀딝딁땁둑뒈땬땱딹땜돳드됩딞뒵딨둡땨딝둬뒾뒉딝땸땐뎰땅둡됫땸땩뎬돰뒹땣땵뎠땸뒤듻딁뒀땋딐땣돠둑땦땯땳도땧듸땵뎠둔뒀뒈디디뒐뎡땦땡땄뒘뒋듨땰디듰됐둬돤뎰돳뒀뒷땭디딌뎰뒈듼땥두됨땥딃땟디땲뒤돵둣될듟듌되딄둥돴땣돵뒨뎹뎬돼뒉딸땭땅된땐뒤돸득듐됩돵딠땸딞땭듰뒝뒼;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final flatMapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 2
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "transform"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "iterator"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, L땔됨땬땋땃땐딽두둔뒻됨땁뒉뎬딄둬땭뒈됴드도땦뒀딄돷땳땫디든딻돰딞딁돠땪두땧뒬됩돼딀듻뎠딌두듼땫뒵도됫뒋듻돷딹돤딟딐뒨됫뒋듟됨땲둔땤땟땔딻땬땀들듸딟땔돛둠땳듬땅땧돰뒻딄돰돛뒙땭땤둣딐땵드딨뒐딹뎠뎡돷둬듌됩땳따둬뎠듟땻돼땤땀딹둣딁듻땁돝땍뒉뎠돛돰땩돶돸딅땅딐땡땄뒙;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, p1, p2, v1}, L땔됨땬땋땃땐딽두둔뒻됨땁뒉뎬딄둬땭뒈됴드도땦뒀딄돷땳땫디든딻돰딞딁돠땪두땧뒬됩돼딀듻뎠딌두듼땫뒵도됫뒋듻돷딹돤딟딐뒨됫뒋듟됨땲둔땤땟땔딻땬땀들듸딟땔돛둠땳듬땅땧돰뒻딄돰돛뒙땭땤둣딐땵드딨뒐딹뎠뎡돷둬듌됩땳따둬뎠듟땻돼땤땀딹둣딁듻땁돝땍뒉뎠돛돰땩돶돸딅땅딐땡땄뒙;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 4
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
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
    new-instance v0, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    invoke-direct {v0, v1}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 11
    .line 12
    .line 13
    instance-of v1, p0, Lkotlin/sequences/TransformingSequence;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p0, Lkotlin/sequences/TransformingSequence;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lkotlin/sequences/TransformingSequence;->flatten$kotlin_stdlib(Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lkotlin/sequences/FlatteningSequence;

    .line 25
    .line 26
    new-instance v2, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 27
    .line 28
    const/16 v3, 0x13

    .line 29
    .line 30
    invoke-direct {v2, v3}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2, v0}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    move-object p0, v1

    .line 37
    :goto_0
    return-object p0
.end method

.method public static final flattenSequenceOfIterable(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 4
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "flattenSequenceOfIterable"
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
    new-instance v0, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    invoke-direct {v0, v1}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 11
    .line 12
    .line 13
    instance-of v1, p0, Lkotlin/sequences/TransformingSequence;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p0, Lkotlin/sequences/TransformingSequence;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lkotlin/sequences/TransformingSequence;->flatten$kotlin_stdlib(Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lkotlin/sequences/FlatteningSequence;

    .line 25
    .line 26
    new-instance v2, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;

    .line 27
    .line 28
    const/16 v3, 0x13

    .line 29
    .line 30
    invoke-direct {v2, v3}, L둬땹돸따땃뎰뎡들땟됐땵됫땍땟땡딠돵뒘듽땨땹땬돸땨딸땀뎰딐딄됴땟듨딅땫땸딄땁딃뒼듌뒉돸듼돝뒵땨땫둬딹땧듬드땦뒋듐듼딜땳딠뒋돸땄딽듸돠돴딄돸땬뎽땵뒋뎸듌땍뎸땃뒈땪딝땹땠땰딞땁돠땦뎸돝땹딄땡땝땣듰뒬듟뒀돛뒙딜딅땜땲땻땰뎹돴땔뒈땪듰뎠땤따땟됨땧딨땦딄뒙땪뎹뎨듼뒙둔땩딤;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0, v2, v0}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    move-object p0, v1

    .line 37
    :goto_0
    return-object p0
.end method

.method public static generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/internal/LowPriorityInOverloadResolution;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 2
    sget-object p0, L뒙땰땤땀딝딁땁둑뒈땬땱딹땜돳드됩딞뒵딨둡땨딝둬뒾뒉딝땸땐뎰땅둡됫땸땩뎬돰뒹땣땵뎠땸뒤듻딁뒀땋딐땣돠둑땦땯땳도땧듸땵뎠둔뒀뒈디디뒐뎡땦땡땄뒘뒋듨땰디듰됐둬돤뎰돳뒀뒷땭디딌뎰뒈듼땥두됨땥딃땟디땲뒤돵둣될듟듌되딄둥돴땣돵뒨뎹뎬돼뒉딸땭땅된땐뒤돸득듐됩돵딠땸딞땭듰뒝뒼;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:L뒙땰땤땀딝딁땁둑뒈땬땱딹땜돳드됩딞뒵딨둡땨딝둬뒾뒉딝땸땐뎰땅둡됫땸땩뎬돰뒹땣땵뎠땸뒤듻딁뒀땋딐땣돠둑땦땯땳도땧듸땵뎠둔뒀뒈디디뒐뎡땦땡땄뒘뒋듨땰디듰됐둬돤뎰돳뒀뒷땭디딌뎰뒈듼땥두됨땥딃땟디땲뒤돵둣될듟듌되딄둥돴땣돵뒨뎹뎬돼뒉딸땭땅된땐뒤돸득듐됩돵딠땸딞땭듰뒝뒼;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;

    new-instance v1, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, L뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, p1}, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .locals 3
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;

    new-instance v1, L뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, L뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p0, v1}, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static generateSequence(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function0;
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
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;

    invoke-direct {v0, p0, p1}, L듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final ifEmpty(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .locals 2
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;>;)",
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
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultValue"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, L땔뒵뒻땵될땻땦뒛땬드뒬땅돴딎땔딃돝드딀둥뒬뒹딻땲돝둔뎠돸됩딝된딻뎻뒙뎽됴득돶듔둣뒈땋뒀뒋돨듻뎨뒾돶뒼둥뒼땀됨땤딽땟돝된도돸도도듰드뒋뎬돷뒤딎디됫땬뎬땨돼뒾됩딄들딽듟둘뒤딜딃땭듰돠뒉듟뎽땜딄땍듟돶딠뒵딅땪둥됫땐뒐땩뎻뒀듐돼둥돠디땬뒘땭뒀따도땳득뒉돵뎨돝둘뒉돰듸뒹;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, v1}, L땔뒵뒻땵될땻땦뒛땬드뒬땅돴딎땔딃돝드딀둥뒬뒹딻땲돝둔뎠돸됩딝된딻뎻뒙뎽됴득돶듔둣뒈땋뒀뒋돨듻뎨뒾돶뒼둥뒼땀됨땤딽땟돝된도돸도도듰드뒋뎬돷뒤딎디됫땬뎬땨돼뒾됩딄들딽듟둘뒤딜딃땭듰돠뒉듟뎽땜딄땍듟돶딠뒵딅땪둥됫땐뒐땩뎻뒀듐돼둥돠디땬뒘땭뒀따도땳득뒉돵뎨돝둘뒉돰듸뒹;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static varargs sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final shuffled(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->shuffled(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final shuffled(Lkotlin/sequences/Sequence;Lkotlin/random/Random;)Lkotlin/sequences/Sequence;
    .locals 2
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/random/Random;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, L땔든땻딻땀딅땝뒵땐딎땥듻딝둔둘될뒀돨땯딨된땟뒘땄도뒙딤뒘뎨땲돰딠땬디듻땧땳땫땸득듼뎽딤드땣뎻듌뎠땵딤둘뒝둡돼뒾땐땤땲된뎬돠돶든땜딎될뎹둣돼듌득딄땭뒀됐땁땵됨땬딸둑되땧돤뒀도따딄딹둬딠딁뒙땧듼뒼딁뒹뒝듻뒼딁땰딄뒈땟디땥땣딎뒼딸둔딎땦딀돳뒬땯딄딻딞딃딜돛딅돠땳뒹딨;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, L땔든땻딻땀딅땝뒵땐딎땥듻딝둔둘될뒀돨땯딨된땟뒘땄도뒙딤뒘뎨땲돰딠땬디듻땧땳땫땸득듼뎽딤드땣뎻듌뎠땵딤둘뒝둡돼뒾땐땤땲된뎬돠돶든땜딎될뎹둣돼듌득딄땭뒀됐땁땵됨땬딸둑되땧돤뒀도따딄딹둬딠딁뒙땧듼뒼딁뒹뒝듻뒼딁땰딄뒈땟디땥땣딎뒼딸둔딎땦딀돳뒬땯딄딻딞딃딜돛딅돠땳뒹딨;-><init>(Lkotlin/sequences/Sequence;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final unzip(Lkotlin/sequences/Sequence;)Lkotlin/Pair;
    .locals 4
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TT;+TR;>;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
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
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lkotlin/Pair;

    .line 31
    .line 32
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
