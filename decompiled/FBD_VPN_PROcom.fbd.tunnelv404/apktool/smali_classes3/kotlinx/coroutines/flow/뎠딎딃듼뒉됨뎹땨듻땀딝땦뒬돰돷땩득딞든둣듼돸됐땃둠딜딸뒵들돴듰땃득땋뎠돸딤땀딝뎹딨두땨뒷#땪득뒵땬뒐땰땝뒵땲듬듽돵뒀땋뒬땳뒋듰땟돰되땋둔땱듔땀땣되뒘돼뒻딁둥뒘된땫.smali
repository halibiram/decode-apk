.class public abstract synthetic Lkotlinx/coroutines/flow/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlinx/coroutines/flow/Flow;I)L땟됨뒷땟딝땁딝땨득땤돵듐돠둑딄됫둘돠땮뒬땡돤딄듻둑듼땮뒵땮듟땃딜뎰딻돠딻듰돛디뒼둡득땦돛땰딃뒨땫땄든딀돸딹땄땋든뒘듨딁딹될땸딀딐딻뒬뎹딁딜땭뎻뎡뒐뎡돶둔돴뎬딨되뒉뒨듬땱디땪뎰땦땅땩땥듔땠땠따든딌딹될뒛딁뎬돝둥딽디땰땧뎨땜돳뒙됫땄둠뎠든뒤돷되땫따땵둘딤둣디돵둑듽;
    .locals 7

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/Channel$Factory;->getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceAtLeast(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v0, p1

    .line 12
    instance-of v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->dropChannelOperators()Lkotlinx/coroutines/flow/Flow;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    new-instance p0, L땟됨뒷땟딝땁딝땨득땤돵듐돠둑딄됫둘돠땮뒬땡돤딄듻둑듼땮뒵땮듟땃딜뎰딻돠딻듰돛디뒼둡득땦돛땰딃뒨땫땄든딀돸딹땄땋든뒘듨딁딹될땸딀딐딻뒬뎹딁딜땭뎻뎡뒐뎡돶둔돴뎬딨되뒉뒨듬땱디땪뎰땦땅땩땥듔땠땠따든딌딹될뒛딁뎬돝둥딽디땰땧뎨땜돳뒙됫땄둠뎠든뒤돷되땫따땵둘딤둣디돵둑듽;

    .line 26
    .line 27
    iget v3, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->capacity:I

    .line 28
    .line 29
    const/4 v4, -0x3

    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    const/4 v4, -0x2

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 40
    .line 41
    sget-object v5, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-ne v4, v5, :cond_2

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-nez p1, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_3
    :goto_0
    iget-object p1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 54
    .line 55
    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->context:Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    invoke-direct {p0, v2, v1, v0, p1}, L땟됨뒷땟딝땁딝땨득땤돵듐돠둑딄됫둘돠땮뒬땡돤딄듻둑듼땮뒵땮듟땃딜뎰딻돠딻듰돛디뒼둡득땦돛땰딃뒨땫땄든딀돸딹땄땋든뒘듨딁딹될땸딀딐딻뒬뎹딁딜땭뎻뎡뒐뎡돶둔돴뎬딨되뒉뒨듬땱디땪뎰땦땅땩땥듔땠땠따든딌딹될뒛딁뎬돝둥딽디땰땧뎨땜돳뒙됫땄둠뎠든뒤돷되땫따땵둘딤둣디돵둑듽;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    new-instance p1, L땟됨뒷땟딝땁딝땨득땤돵듐돠둑딄됫둘돠땮뒬땡돤딄듻둑듼땮뒵땮듟땃딜뎰딻돠딻듰돛디뒼둡득땦돛땰딃뒨땫땄든딀돸딹땄땋든뒘듨딁딹될땸딀딐딻뒬뎹딁딜땭뎻뎡뒐뎡돶둔돴뎬딨되뒉뒨듬땱디땪뎰땦땅땩땥듔땠땠따든딌딹될뒛딁뎬돝둥딽디땰땧뎨땜돳뒙됫땄둠뎠든뒤돷되땫따땵둘딤둣디돵둑듽;

    .line 62
    .line 63
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 64
    .line 65
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 66
    .line 67
    invoke-direct {p1, p0, v2, v0, v1}, L땟됨뒷땟딝땁딝땨득땤돵듐돠둑딄됫둘돠땮뒬땡돤딄듻둑듼땮뒵땮듟땃딜뎰딻돠딻듰돛디뒼둡득땦돛땰딃뒨땫땄든딀돸딹땄땋든뒘듨딁딹될땸딀딐딻뒬뎹딁딜땭뎻뎡뒐뎡돶둔돴뎬딨되뒉뒨듬땱디땪뎰땦땅땩땥듔땠땠따든딌딹될뒛딁뎬돝둥딽디땰땧뎨땜돳뒙됫땄둠뎠든뒤돷되땫따땵둘딤둣디돵둑듽;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method
