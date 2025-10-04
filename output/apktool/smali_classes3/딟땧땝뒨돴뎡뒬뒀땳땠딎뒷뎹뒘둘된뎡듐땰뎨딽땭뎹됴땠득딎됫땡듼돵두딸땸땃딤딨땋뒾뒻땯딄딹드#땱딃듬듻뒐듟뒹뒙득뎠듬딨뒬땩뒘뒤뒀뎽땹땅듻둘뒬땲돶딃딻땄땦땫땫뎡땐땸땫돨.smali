.class public final L딟땧땝뒨돴뎡뒬뒀땳땠딎뒷뎹뒘둘된뎡듐땰뎨딽땭뎹됴땠득딎됫땡듼돵두딸땸땃딤딨땋뒾뒻땯딄딹드딟듌돳딅디돴뒉둡둔돤뒼땳둘들딤돠땬딐든둡돝뎸땣땣땸뒵딜딠뒝땔땧딠둑땥땁드땲땭뒉드땲땠땁땪땀땯될뎠뒝디땱딃듬듻뒐듟뒹뒙득뎠듬딨뒬땩뒘뒤뒀뎽땹땅듻둘뒬땲돶딃딻땄땦땫땫뎡땐땸땫돨;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/ref/SoftReference;


# virtual methods
.method public final declared-synchronized 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "factory"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, L딟땧땝뒨돴뎡뒬뒀땳땠딎뒷뎹뒘둘된뎡듐땰뎨딽땭뎹됴땠득딎됫땡듼돵두딸땸땃딤딨땋뒾뒻땯딄딹드딟듌돳딅디돴뒉둡둔돤뒼땳둘들딤돠땬딐든둡돝뎸땣땣땸뒵딜딠뒝땔땧딠둑땥땁드땲땭뒉드땲땠땁땪땀땯될뎠뒝디땱딃듬듻뒐듟뒹뒙득뎠듬딨뒬땩뒘뒤뒀뎽땹땅듻둘뒬땲돶딃딻땄땦땫땫뎡땐땸땫돨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, L딟땧땝뒨돴뎡뒬뒀땳땠딎뒷뎹뒘둘된뎡듐땰뎨딽땭뎹됴땠득딎됫땡듼돵두딸땸땃딤딨땋뒾뒻땯딄딹드딟듌돳딅디돴뒉둡둔돤뒼땳둘들딤돠땬딐든둡돝뎸땣땣땸뒵딜딠뒝땔땧딠둑땥땁드땲땭뒉드땲땠땁땪땀땯될뎠뒝디땱딃듬듻뒐듟뒹뒙득뎠듬딨뒬땩뒘뒤뒀뎽땹땅듻둘뒬땲돶딃딻땄땦땫땫뎡땐땸땫돨;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p1
.end method
