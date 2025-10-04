.class public abstract L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;
.super L딜땮듽뒉딝될돛될듬땯둠땩디든돨땐돝듰뎹땡땵딨땍든둬돸듬땣땣됨땫땜됫돸돶딟딄딹땃됫딌땭듬딻됴듸됴들둠뎹돷땄돤딄땲뒤뒈땦뎸땤돰땤땜딝득딀됩딁땩돼든뎽딃뒘딅땋뒾든뒙땤딄땦딤뎻돰둔뒘땪듔땠딐뒼뒹듟듟듽땩땬딝듌듔됫땡돠뒘돨땪땋뒛뒵됫땪땧뒘딝듼땸돴뒹뒼돷뒾딜뒤딁땄뎰뒘땧딽;
.source "SourceFile"


# direct methods
.method public static final acosh(D)D
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    cmpg-double v2, p0, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:D

    .line 11
    .line 12
    cmpl-double v2, p0, v0

    .line 13
    .line 14
    if-lez v2, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:D

    .line 21
    .line 22
    add-double/2addr p0, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    int-to-double v0, v0

    .line 26
    sub-double v2, p0, v0

    .line 27
    .line 28
    sget-wide v4, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:D

    .line 29
    .line 30
    cmpl-double v6, v2, v4

    .line 31
    .line 32
    if-ltz v6, :cond_2

    .line 33
    .line 34
    mul-double v2, p0, p0

    .line 35
    .line 36
    sub-double/2addr v2, v0

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    add-double/2addr v0, p0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:D

    .line 52
    .line 53
    cmpl-double v2, p0, v0

    .line 54
    .line 55
    if-ltz v2, :cond_3

    .line 56
    .line 57
    mul-double v0, p0, p0

    .line 58
    .line 59
    mul-double v0, v0, p0

    .line 60
    .line 61
    const/16 v2, 0xc

    .line 62
    .line 63
    int-to-double v2, v2

    .line 64
    div-double/2addr v0, v2

    .line 65
    sub-double/2addr p0, v0

    .line 66
    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    mul-double p0, p0, v0

    .line 73
    .line 74
    :goto_0
    return-wide p0
.end method

.method public static final asinh(D)D
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:D

    .line 2
    .line 3
    cmpl-double v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨:D

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    cmpl-double v3, p0, v0

    .line 11
    .line 12
    if-lez v3, :cond_1

    .line 13
    .line 14
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨:D

    .line 15
    .line 16
    cmpl-double v3, p0, v0

    .line 17
    .line 18
    if-lez v3, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:D

    .line 25
    .line 26
    add-double/2addr p0, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    int-to-double v0, v0

    .line 30
    mul-double p0, p0, v0

    .line 31
    .line 32
    int-to-double v0, v2

    .line 33
    div-double/2addr v0, p0

    .line 34
    add-double/2addr v0, p0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    mul-double v0, p0, p0

    .line 41
    .line 42
    int-to-double v2, v2

    .line 43
    add-double/2addr v0, v2

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    add-double/2addr v0, p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    neg-double v0, v0

    .line 55
    cmpg-double v2, p0, v0

    .line 56
    .line 57
    if-gtz v2, :cond_3

    .line 58
    .line 59
    neg-double p0, p0

    .line 60
    invoke-static {p0, p1}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->asinh(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    neg-double p0, p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    sget-wide v2, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:D

    .line 71
    .line 72
    cmpl-double v4, v0, v2

    .line 73
    .line 74
    if-ltz v4, :cond_4

    .line 75
    .line 76
    mul-double v0, p0, p0

    .line 77
    .line 78
    mul-double v0, v0, p0

    .line 79
    .line 80
    const/4 v2, 0x6

    .line 81
    int-to-double v2, v2

    .line 82
    div-double/2addr v0, v2

    .line 83
    sub-double/2addr p0, v0

    .line 84
    :cond_4
    :goto_0
    return-wide p0
.end method

.method public static final atanh(D)D
    .locals 5
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉:D

    .line 6
    .line 7
    cmpg-double v4, v0, v2

    .line 8
    .line 9
    if-gez v4, :cond_1

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-wide v2, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫:D

    .line 16
    .line 17
    cmpl-double v4, v0, v2

    .line 18
    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    mul-double v0, p0, p0

    .line 22
    .line 23
    mul-double v0, v0, p0

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    int-to-double v2, v2

    .line 27
    div-double/2addr v0, v2

    .line 28
    add-double/2addr p0, v0

    .line 29
    :cond_0
    return-wide p0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    int-to-double v0, v0

    .line 32
    add-double v2, v0, p0

    .line 33
    .line 34
    sub-double/2addr v0, p0

    .line 35
    div-double/2addr v2, v0

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    const/4 v0, 0x2

    .line 41
    int-to-double v0, v0

    .line 42
    div-double/2addr p0, v0

    .line 43
    return-wide p0
.end method

.method public static synthetic getAbsoluteValue$annotations(D)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getAbsoluteValue$annotations(F)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 2
    return-void
.end method

.method public static synthetic getAbsoluteValue$annotations(I)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 3
    return-void
.end method

.method public static synthetic getAbsoluteValue$annotations(J)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 4
    return-void
.end method

.method public static getSign(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method public static getSign(J)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result p0

    return p0
.end method

.method public static synthetic getSign$annotations(D)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getSign$annotations(F)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 2
    return-void
.end method

.method public static synthetic getSign$annotations(I)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 3
    return-void
.end method

.method public static synthetic getSign$annotations(J)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 4
    return-void
.end method

.method public static synthetic getUlp$annotations(D)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getUlp$annotations(F)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 2
    return-void
.end method

.method public static final log(DD)D
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-lez v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static final log(FF)F
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public static final log2(D)D
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:D

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final log2(F)F
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, L둥되뒐땧됐되될뎡뒛땨뎸딹딁땯뎽돝뒾땅도듟듼돶뒀따도딐뒹돛딃뒻뒬듸돝땫딜딃됨땤됐뎠둡들듼돨딄땅딸듼땀땦둑듐뎨땁됫땭둡둬뒐든땝땀땹둥땃듻땥딎땰땝딸듨돵땫듰뒨듔땸뎡딽돴듻돴둑땮땝듼든돸둥도땧땃돨땟뎻뒐딟듼둡딸딎땜된땯딹딜됩돝돛뒹딽땭된뎻들듨땳듟둔땜딎딝돼땰둬딀뎹돠된;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:D

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public static roundToInt(D)I
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    :goto_0
    return p0

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static roundToInt(F)I
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static roundToLong(D)J
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final roundToLong(F)J
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->roundToLong(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final truncate(D)D
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :cond_2
    :goto_0
    return-wide p0
.end method

.method public static final truncate(F)F
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    float-to-double v0, p0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    goto :goto_1

    :cond_1
    float-to-double v0, p0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method
