.class public abstract L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final lazy(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;

    invoke-direct {v0, p0, p1}, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .param p0    # Lkotlin/LazyThreadSafetyMode;
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
            "Lkotlin/LazyThreadSafetyMode;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyKt__LazyJVMKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 4
    new-instance p0, Lkotlin/UnsafeLazyImpl;

    invoke-direct {p0, p1}, Lkotlin/UnsafeLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, L땍뒘딸딤듻돳뒾땲돝땬뎬뒙땜땁딐듸둘돨땃됩돛딀딨뒉돨돰땫땨딎땱뒹듟땧딅땁두뎬딹땩뎡돶땋딤딄땅둔둡돼디뒝돷뒘뎨땤됩땝돶딝뒘돨듔됫든땫땐된둠땭둥둑딽딟듽돷뒉땦땥둔듬뒀돸돰딅된땠돼돴땐딻땝땠뒤딸들딎뒻뒐딞뒉됩딞둬들땡든됴듨드딸뒝땍됴돷땻돸둘땨땥됐땠뎬딅뎠땟뒨딁땱뎠뎠돠;

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, L땍뒘딸딤듻돳뒾땲돝땬뎬뒙땜땁딐듸둘돨땃됩돛딀딨뒉돨돰땫땨딎땱뒹듟땧딅땁두뎬딹땩뎡돶땋딤딄땅둔둡돼디뒝돷뒘뎨땤됩땝돶딝뒘돨듔됫든땫땐된둠땭둥둑딽딟듽돷뒉땦땥둔듬뒀돸돰딅된땠돼돴땐딻땝땠뒤딸들딎뒻뒐딞뒉됩딞둬들땡든됴듨드딸뒝땍됴돷땻돸둘땨땥됐땠뎬딅뎠땟뒨딁땱뎠뎠돠;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/jvm/functions/Function0;

    .line 10
    sget-object p1, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE:Lkotlin/UNINITIALIZED_VALUE;

    iput-object p1, p0, L땍뒘딸딤듻돳뒾땲돝땬뎬뒙땜땁딐듸둘돨땃됩돛딀딨뒉돨돰땫땨딎땱뒹듟땧딅땁두뎬딹땩뎡돶땋딤딄땅둔둡돼디뒝돷뒘뎨땤됩땝돶딝뒘돨듔됫든땫땐된둠땭둥둑딽딟듽돷뒉땦땥둔듬뒀돸돰딅된땠돼돴땐딻땝땠뒤딸들딎뒻뒐딞뒉됩딞둬들땡든됴듨드딸뒝땍됴돷땻돸둘땨땥됐땠뎬딅뎠땟뒨딁땱뎠뎠돠;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, p1}, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-object p0
.end method

.method public static lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
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
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, p0}, L땨땅땔땲듰두뒨땐땃뒀딁둣둔돳땬둘듰딁땪딌딨딠땲됩듼딤뒨듼돳땮땮딠됫들뎬돨뎻득땋땫땸땜딄뒘뒹뒙둥뒬듻뒼듻둑듔듔뒤돝땄딜뒛둘둡딤두딀뒋됨듸땟듼뎻뒻땯뒝딞됩땮땯듔따딤땋땧뒨뎽땹땜둑땤땟땥땣듨뎸뒋둘땃뒀듐따됨된뒉돼돴든따딄딞돴땁딝뎬두듸땹딞딐될땱땲듐뒹뒀땫땻듽땯땳될듐;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
