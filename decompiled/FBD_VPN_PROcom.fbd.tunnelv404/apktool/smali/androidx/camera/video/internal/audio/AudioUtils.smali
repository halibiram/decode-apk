.class public final Landroidx/camera/video/internal/audio/AudioUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static channelCountToChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method public static channelCountToChannelMask(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method public static computeInterpolatedTimeNs(IJLandroid/media/AudioTimestamp;)J
    .locals 7
    .param p3    # Landroid/media/AudioTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    int-to-long v0, p0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x1

    .line 4
    const-wide/16 v4, 0x0

    .line 5
    .line 6
    cmp-long v6, v0, v4

    .line 7
    .line 8
    if-lez v6, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "sampleRate must be greater than 0."

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    cmp-long v0, p1, v4

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_1
    const-string v0, "framePosition must be no less than 0."

    .line 24
    .line 25
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p3, Landroid/media/AudioTimestamp;->framePosition:J

    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    invoke-static {p1, p2, p0}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToDurationNs(JI)J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    iget-wide p2, p3, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 36
    .line 37
    add-long/2addr p2, p0

    .line 38
    cmp-long p0, p2, v4

    .line 39
    .line 40
    if-gez p0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-wide v4, p2

    .line 44
    :goto_1
    return-wide v4
.end method

.method public static frameCountToDurationNs(JI)J
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    cmp-long p2, v0, v2

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    const-string v2, "sampleRate must be greater than 0."

    .line 12
    .line 13
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    mul-long v2, v2, p0

    .line 25
    .line 26
    div-long/2addr v2, v0

    .line 27
    return-wide v2
.end method

.method public static frameCountToSize(JI)J
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    cmp-long p2, v0, v2

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    const-string v2, "bytesPerFrame must be greater than 0."

    .line 12
    .line 13
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    mul-long p0, p0, v0

    .line 17
    .line 18
    return-wide p0
.end method

.method public static getBytesPerFrame(II)I
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Invalid channel count: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-eq p0, v0, :cond_5

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    if-eq p0, v0, :cond_4

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq p0, v1, :cond_3

    .line 31
    .line 32
    const/16 v2, 0x15

    .line 33
    .line 34
    if-eq p0, v2, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x16

    .line 37
    .line 38
    if-ne p0, v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Invalid audio encoding: "

    .line 44
    .line 45
    invoke-static {p0, v0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    mul-int/lit8 p1, p1, 0x3

    .line 54
    .line 55
    return p1

    .line 56
    :cond_3
    :goto_1
    mul-int/lit8 p1, p1, 0x4

    .line 57
    .line 58
    :cond_4
    return p1

    .line 59
    :cond_5
    mul-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    return p1
.end method

.method public static sizeToFrameCount(JI)J
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    cmp-long p2, v0, v2

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    const-string v2, "bytesPerFrame must be greater than 0."

    .line 12
    .line 13
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    div-long/2addr p0, v0

    .line 17
    return-wide p0
.end method
