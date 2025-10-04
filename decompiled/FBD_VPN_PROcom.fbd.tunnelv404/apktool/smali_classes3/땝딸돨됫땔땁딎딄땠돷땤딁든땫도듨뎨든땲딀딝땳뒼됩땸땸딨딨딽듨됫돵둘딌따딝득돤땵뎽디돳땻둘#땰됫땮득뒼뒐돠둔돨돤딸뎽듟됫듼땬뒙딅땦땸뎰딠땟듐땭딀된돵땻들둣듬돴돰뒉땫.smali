.class public abstract L땝딸돨됫땔땁딎딄땠돷땤딁든땫도듨뎨든땲딀딝땳뒼됩땸땸딨딨딽듨됫돵둘딌따딝득돤땵뎽디돳땻둘땻뎽딃땻둡딁땜땋두됫뎨뒛들돸땹둘딽땭듨뎹딄땪딎땠땨딟디딸딅딤뒼땍뎰뎻뎻땨뒉뒾딎되땲뒉딹땮땠딎뒻땲됫됫땰됫땮득뒼뒐돠둔돨돤딸뎽듟됫듼땬뒙딅땦땸뎰딠땟듐땭딀된돵땻들둣듬돴돰뒉땫;
.super L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;
.source "SourceFile"


# direct methods
.method public static final minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 3
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->convertToListIfNotCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 12
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 16
    :cond_3
    new-instance v0, Ljava/util/LinkedHashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 2
    check-cast p0, Ljava/lang/Iterable;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_1
    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final minus(Ljava/util/Set;Lkotlin/sequences/Sequence;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v0, p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->removeAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    return-object v0
.end method

.method public static final minus(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;[TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-static {v0, p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->removeAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, L됴됐듔땬뒤땟땧딃듸듬딎둥딁땋뒐뒵딠뒉득됫땁된둔뎻두돛땔땪땳뒷듰딄뒤딝땧돝딽땔뎸듔뒀돛땳뒘돝돝땣뎻땃듼뎡뒹돤땸뎹딄득땡돷듟돶둑딎두돷듨땨둔됨뒹둘딄됩땫땵딀뒝딐뒝땋뎻땄뎻뎸딞듬돤뒼따딜두딎뒙돷뒘돨듨딽땣뒾땬듰땬듸딤뎨뎰땧둔듽돶뎰땋땍돳돶딤땅돴듸땝돰뎽땪땩둣땅뒹뒬땅;->collectionSizeOrNull(Ljava/lang/Iterable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    :goto_0
    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 8
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {v1, p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v1
.end method

.method public static final plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 2
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final plus(Ljava/util/Set;Lkotlin/sequences/Sequence;)Ljava/util/Set;
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 11
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {v0, p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    return-object v0
.end method

.method public static final plus(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;[TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v1}, L디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 5
    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {v0, p1}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method
