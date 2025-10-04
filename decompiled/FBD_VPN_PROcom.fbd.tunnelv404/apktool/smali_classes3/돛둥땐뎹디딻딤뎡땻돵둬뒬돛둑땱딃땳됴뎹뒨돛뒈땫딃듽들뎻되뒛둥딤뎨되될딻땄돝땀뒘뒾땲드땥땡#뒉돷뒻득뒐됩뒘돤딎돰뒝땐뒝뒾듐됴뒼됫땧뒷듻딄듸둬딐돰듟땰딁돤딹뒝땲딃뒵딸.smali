.class public final L돛둥땐뎹디딻딤뎡땻돵둬뒬돛둑땱딃땳됴뎹뒨돛뒈땫딃듽들뎻되뒛둥딤뎨되될딻땄돝땀뒘뒾땲드땥땡듐돼땩뒙뒼땪딌돨둣뒋땟둥땪땋뎨돼들듨드둔딠듸땔땩땠듰듐돛뎬뎻뒐따딸듽됨뎬듌딨듼된딻뒨둔땄딟뒤딸딻돤땱뒉돷뒻득뒐됩뒘돤딎돰뒝땐뒝뒾듐됴뒼됫땧뒷듻딄듸둬딐돰듟땰딁돤딹뒝땲딃뒵딸;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Lokio/AsyncTimeout;JZ)V
    .locals 5

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:L돛둥땐뎹디딻딤뎡땻돵둬뒬돛둑땱딃땳됴뎹뒨돛뒈땫딃듽들뎻되뒛둥딤뎨되될딻땄돝땀뒘뒾땲드땥땡듐돼땩뒙뒼땪딌돨둣뒋땟둥땪땋뎨돼들듨드둔딠듸땔땩땠듰듐돛뎬뎻뒐따딸듽됨뎬듌딨듼된딻뒨둔땄딟뒤딸딻돤땱뒉돷뒻득뒐됩뒘돤딎돰뒝땐뒝뒾듐됴뒼됫땧뒷듻딄듸둬딐돰듟땰딁돤딹뒝땲딃뒵딸;

    .line 2
    .line 3
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lokio/AsyncTimeout;

    .line 10
    .line 11
    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, L돛듸듼됐됫땳뎹돠돵됐됨돠땍뒵됫땀됨돳둑땔땭딐딽듨땥땰뒀땱둑땟뒙땭뒷땔돤둑땄딀돨땡듻땲듬땪뎠돤됐딹땫돸뒘들땬뒷됐된뒐땦땣뒷땥듐딽돸두땮땄뒤돵듼딟됴뒀따땦딤땤듌땣돼딻땨뎡땣듌딤돛뒐딠둠땬뎡땲됐듐두딸듻뎠딨땄둠듻땮둣드들땟딜듻듬땐듐땣디들뒵땣듽땹땝땁딝땅딸뎸땲돤듽든;

    .line 18
    .line 19
    const-string v1, "Okio Watchdog"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v4, p1, v2

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    sub-long/2addr v2, v0

    .line 48
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    add-long/2addr p1, v0

    .line 53
    invoke-static {p0, p1, p2}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v4, :cond_2

    .line 58
    .line 59
    add-long/2addr p1, v0

    .line 60
    invoke-static {p0, p1, p2}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-eqz p3, :cond_6

    .line 65
    .line 66
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    invoke-static {p0, p1, p2}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {p0, v0, v1}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 74
    .line 75
    .line 76
    move-result-wide p1

    .line 77
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-static {p3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-static {p3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v0, v1}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    cmp-long v4, p1, v2

    .line 102
    .line 103
    if-gez v4, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-static {p3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    :goto_2
    invoke-static {p3}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p0, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 119
    .line 120
    .line 121
    invoke-static {p3, p0}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-ne p3, p0, :cond_5

    .line 129
    .line 130
    invoke-static {}, Lokio/AsyncTimeout;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 135
    .line 136
    .line 137
    :cond_5
    return-void

    .line 138
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 141
    .line 142
    .line 143
    throw p0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Lokio/AsyncTimeout;)V
    .locals 2

    .line 1
    sget-object v0, Lokio/AsyncTimeout;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두:L돛둥땐뎹디딻딤뎡땻돵둬뒬돛둑땱딃땳됴뎹뒨돛뒈땫딃듽들뎻되뒛둥딤뎨되될딻땄돝땀뒘뒾땲드땥땡듐돼땩뒙뒼땪딌돨둣뒋땟둥땪땋뎨돼들듨드둔딠듸땔땩땠듰듐돛뎬뎻뒐따딸듽됨뎬듌딨듼된딻뒨둔땄딟뒤딸딻돤땱뒉돷뒻득뒐됩뒘돤딎돰뒝땐뒝뒾듐됴뒼됫땧뒷듻딄듸둬딐돰듟땰딁돤딹뒝땲딃뒵딸;

    .line 2
    .line 3
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v1, p0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {p0, v0}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "node was not found in the queue"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public static 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉()Lokio/AsyncTimeout;
    .locals 7

    .line 1
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {}, Lokio/AsyncTimeout;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v2

    .line 50
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    cmp-long v0, v4, v2

    .line 55
    .line 56
    if-ltz v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_0
    return-object v1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v0, v2, v3}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    cmp-long v6, v2, v4

    .line 74
    .line 75
    if-lez v6, :cond_2

    .line 76
    .line 77
    invoke-static {}, Lokio/AsyncTimeout;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_2
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x2

    .line 105
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setState$p(Lokio/AsyncTimeout;I)V

    .line 106
    .line 107
    .line 108
    return-object v0
.end method
