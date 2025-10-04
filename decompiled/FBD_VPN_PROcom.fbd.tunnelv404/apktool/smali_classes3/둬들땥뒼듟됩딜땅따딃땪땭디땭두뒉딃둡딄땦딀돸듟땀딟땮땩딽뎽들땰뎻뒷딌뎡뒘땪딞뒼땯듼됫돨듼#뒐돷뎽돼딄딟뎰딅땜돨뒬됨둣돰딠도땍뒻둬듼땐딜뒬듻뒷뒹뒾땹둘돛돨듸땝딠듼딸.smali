.class public final L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public volatile cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v0, p0, L둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸;->cont:Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    invoke-static {p2}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {p2}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁(Ljava/lang/Object;)Ljava/util/concurrent/CompletionException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p1, :cond_4

    .line 31
    .line 32
    invoke-static {p1}, L둠뎹돨땋듔딹딤드따땬땰돠땳돶딤땧땬뎨돰돝딞땲딠딀뎸든둔땰딌뒹딃드딅딠뒹두듰뒾땭됩둣딄뒐득뒾딸딐듨둠뒨땋뒙딟뎸땹딸딅뎻땹돰땲뒈땹뒝딀뒬둣돼될둑드든듬뒛뒛뒷뒀딐땱뒛돛땜듨득드땲딅땟드땦뒛땯땔됨땐뒵딹뒙돤뒤됴됩딅돸듼듐딜뒉듻돰둥돰땳땃돠땹딅땐됫듟땳딨돼뒛뒨뒼돷딀들땍;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Ljava/util/concurrent/CompletionException;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move-object p2, p1

    .line 40
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p1
.end method
