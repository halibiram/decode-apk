.class public final Lokhttp3/internal/_CacheControlCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a#\u0010\t\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u001a#\u0010\u000c\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\n\u001a#\u0010\u000e\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\n\u001a\u0013\u0010\u0010\u001a\u00020\u0005*\u00020\u000fH\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0013\u0010\u0013\u001a\u00020\u0000*\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0013\u0010\u0015\u001a\u00020\u0000*\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0014\u001a\u0013\u0010\u0016\u001a\u00020\u0000*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a\u0013\u0010\u0018\u001a\u00020\u0004*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0013\u0010\u001a\u001a\u00020\u0004*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0019\u001a\u0013\u0010\u001b\u001a\u00020\u0004*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u0019\u001a\u0013\u0010\u001c\u001a\u00020\u0004*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u0019\u001a\u0013\u0010\u001d\u001a\u00020\u0004*\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u0019\u001a\u001b\u0010 \u001a\u00020\u0000*\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0000\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lokhttp3/CacheControl;",
        "",
        "commonToString",
        "(Lokhttp3/CacheControl;)Ljava/lang/String;",
        "Lokhttp3/CacheControl$Builder;",
        "",
        "maxAge",
        "Lkotlin/time/DurationUnit;",
        "timeUnit",
        "commonMaxAge",
        "(Lokhttp3/CacheControl$Builder;ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;",
        "maxStale",
        "commonMaxStale",
        "minFresh",
        "commonMinFresh",
        "",
        "commonClampToInt",
        "(J)I",
        "Lokhttp3/CacheControl$Companion;",
        "commonForceNetwork",
        "(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;",
        "commonForceCache",
        "commonBuild",
        "(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl;",
        "commonNoCache",
        "(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;",
        "commonNoStore",
        "commonOnlyIfCached",
        "commonNoTransform",
        "commonImmutable",
        "Lokhttp3/Headers;",
        "headers",
        "commonParse",
        "(Lokhttp3/CacheControl$Companion;Lokhttp3/Headers;)Lokhttp3/CacheControl;",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n-CacheControlCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -CacheControlCommon.kt\nokhttp3/internal/_CacheControlCommonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"
    }
.end annotation


# direct methods
.method public static final commonBuild(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl;
    .locals 15
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Lokhttp3/CacheControl;

    .line 7
    .line 8
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getNoCache$okhttp()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getNoStore$okhttp()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getMaxAgeSeconds$okhttp()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getMaxStaleSeconds$okhttp()I

    .line 21
    .line 22
    .line 23
    move-result v9

    .line 24
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getMinFreshSeconds$okhttp()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getOnlyIfCached$okhttp()Z

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getNoTransform$okhttp()Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->getImmutable$okhttp()Z

    .line 37
    .line 38
    .line 39
    move-result v13

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v14}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static final commonClampToInt(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static final commonForceCache(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;
    .locals 2
    .param p0    # Lokhttp3/CacheControl$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance p0, Lokhttp3/CacheControl$Builder;

    .line 7
    .line 8
    invoke-direct {p0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7fffffff

    .line 16
    .line 17
    .line 18
    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lokhttp3/CacheControl$Builder;->maxStale(ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final commonForceNetwork(Lokhttp3/CacheControl$Companion;)Lokhttp3/CacheControl;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance p0, Lokhttp3/CacheControl$Builder;

    .line 7
    .line 8
    invoke-direct {p0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final commonImmutable(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl$Builder;->setImmutable$okhttp(Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final commonMaxAge(Lokhttp3/CacheControl$Builder;ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "timeUnit"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lokhttp3/CacheControl$Builder;->setMaxAgeSeconds$okhttp(I)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "maxAge < 0: "

    .line 30
    .line 31
    invoke-static {p1, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public static final commonMaxStale(Lokhttp3/CacheControl$Builder;ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "timeUnit"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lokhttp3/CacheControl$Builder;->setMaxStaleSeconds$okhttp(I)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "maxStale < 0: "

    .line 30
    .line 31
    invoke-static {p1, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public static final commonMinFresh(Lokhttp3/CacheControl$Builder;ILkotlin/time/DurationUnit;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const-string v0, "timeUnit"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lokhttp3/CacheControl$Builder;->setMinFreshSeconds$okhttp(I)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "minFresh < 0: "

    .line 30
    .line 31
    invoke-static {p1, p0}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public static final commonNoCache(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl$Builder;->setNoCache$okhttp(Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final commonNoStore(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl$Builder;->setNoStore$okhttp(Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final commonNoTransform(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl$Builder;->setNoTransform$okhttp(Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final commonOnlyIfCached(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;
    .locals 1
    .param p0    # Lokhttp3/CacheControl$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl$Builder;->setOnlyIfCached$okhttp(Z)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final commonParse(Lokhttp3/CacheControl$Companion;Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 30
    .param p0    # Lokhttp3/CacheControl$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    if-ge v6, v1, :cond_17

    .line 2
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v5, "Cache-Control"

    invoke-static {v3, v5, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v8, :cond_0

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    move-object v8, v2

    goto :goto_2

    .line 5
    :cond_1
    const-string v5, "Pragma"

    invoke-static {v3, v5, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    .line 6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_15

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v3

    :goto_4
    const/4 v0, 0x2

    if-ge v4, v5, :cond_3

    move/from16 v27, v1

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v21, v5

    const-string v5, "=,;"

    move/from16 v28, v7

    move-object/from16 v29, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v1, v7, v0, v8}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v21

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    goto :goto_4

    :cond_3
    move/from16 v27, v1

    move/from16 v28, v7

    move-object/from16 v29, v8

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 10
    :goto_5
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2c

    if-eq v5, v7, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3b

    if-ne v5, v7, :cond_5

    :cond_4
    move/from16 v23, v14

    move/from16 v22, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 12
    invoke-static {v2, v4}, Lokhttp3/internal/_UtilCommonKt;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v4

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-ne v5, v7, :cond_6

    add-int/lit8 v4, v4, 0x1

    const/16 v22, 0x22

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move/from16 v23, v4

    .line 14
    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .line 15
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    add-int/2addr v0, v3

    move v3, v0

    move/from16 v23, v14

    move/from16 v22, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_9

    .line 16
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v7, v4

    :goto_6
    if-ge v7, v5, :cond_8

    .line 17
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v21, v5

    const-string v5, ",;"

    move/from16 v23, v14

    move/from16 v22, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v5, v8, v14, v0, v15}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v21

    move/from16 v15, v22

    move/from16 v14, v23

    goto :goto_6

    :cond_8
    move/from16 v23, v14

    move/from16 v22, v15

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 19
    :goto_7
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move v3, v7

    goto :goto_9

    :goto_8
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    move-object v8, v15

    .line 20
    :goto_9
    const-string v0, "no-cache"

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/4 v9, 0x1

    goto/16 :goto_3

    .line 21
    :cond_9
    const-string v0, "no-store"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 22
    :cond_a
    const-string v0, "max-age"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, -0x1

    .line 23
    invoke-static {v8, v0}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v11

    :goto_a
    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    :cond_b
    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    goto/16 :goto_3

    :cond_c
    const/4 v0, -0x1

    .line 24
    const-string v5, "s-maxage"

    invoke-static {v5, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 25
    invoke-static {v8, v0}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_a

    .line 26
    :cond_d
    const-string v0, "private"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 27
    :cond_e
    const-string v0, "public"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/4 v14, 0x1

    goto/16 :goto_3

    .line 28
    :cond_f
    const-string v0, "must-revalidate"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v0, p1

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/4 v15, 0x1

    goto/16 :goto_3

    .line 29
    :cond_10
    const-string v0, "max-stale"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7fffffff

    .line 30
    invoke-static {v8, v0}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_a

    .line 31
    :cond_11
    const-string v0, "min-fresh"

    invoke-static {v0, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    .line 32
    invoke-static {v8, v0}, Lokhttp3/internal/_UtilCommonKt;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v17

    goto :goto_a

    :cond_12
    const/4 v0, -0x1

    .line 33
    const-string v5, "only-if-cached"

    invoke-static {v5, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/16 v18, 0x1

    goto/16 :goto_3

    .line 34
    :cond_13
    const-string v5, "no-transform"

    invoke-static {v5, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/16 v19, 0x1

    goto/16 :goto_3

    .line 35
    :cond_14
    const-string v5, "immutable"

    invoke-static {v5, v1, v4}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p1

    move/from16 v15, v22

    move/from16 v14, v23

    if-eqz v1, :cond_b

    move/from16 v1, v27

    move/from16 v7, v28

    move-object/from16 v8, v29

    const/16 v20, 0x1

    goto/16 :goto_3

    :cond_15
    move/from16 v27, v1

    move/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v23, v14

    move/from16 v22, v15

    const/4 v0, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v1, v22

    move/from16 v2, v23

    goto :goto_b

    :cond_16
    move/from16 v27, v1

    move v2, v14

    move v1, v15

    const/4 v0, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move v15, v1

    move v14, v2

    move/from16 v1, v27

    goto/16 :goto_0

    :cond_17
    move v2, v14

    move v1, v15

    const/4 v15, 0x0

    if-nez v7, :cond_18

    move-object/from16 v21, v15

    goto :goto_c

    :cond_18
    move-object/from16 v21, v8

    .line 36
    :goto_c
    new-instance v0, Lokhttp3/CacheControl;

    move-object v8, v0

    move v14, v2

    move v15, v1

    invoke-direct/range {v8 .. v21}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method

.method public static final commonToString(Lokhttp3/CacheControl;)Ljava/lang/String;
    .locals 4
    .param p0    # Lokhttp3/CacheControl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-virtual {p0}, Lokhttp3/CacheControl;->getHeaderValue$okhttp()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_d

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noCache()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "no-cache, "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v1, "no-store, "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string v2, ", "

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-eq v1, v3, :cond_2

    .line 47
    .line 48
    const-string v1, "max-age="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lokhttp3/CacheControl;->sMaxAgeSeconds()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eq v1, v3, :cond_3

    .line 68
    .line 69
    const-string v1, "s-maxage="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lokhttp3/CacheControl;->sMaxAgeSeconds()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPrivate()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const-string v1, "private, "

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPublic()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    const-string v1, "public, "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {p0}, Lokhttp3/CacheControl;->mustRevalidate()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    const-string v1, "must-revalidate, "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eq v1, v3, :cond_7

    .line 122
    .line 123
    const-string v1, "max-stale="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_7
    invoke-virtual {p0}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eq v1, v3, :cond_8

    .line 143
    .line 144
    const-string v1, "min-fresh="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lokhttp3/CacheControl;->minFreshSeconds()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Lokhttp3/CacheControl;->onlyIfCached()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    const-string v1, "only-if-cached, "

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {p0}, Lokhttp3/CacheControl;->noTransform()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    const-string v1, "no-transform, "

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_a
    invoke-virtual {p0}, Lokhttp3/CacheControl;->immutable()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_b

    .line 186
    .line 187
    const-string v1, "immutable, "

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_b
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_c

    .line 197
    .line 198
    const-string p0, ""

    .line 199
    .line 200
    return-object p0

    .line 201
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    add-int/lit8 v1, v1, -0x2

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    const-string v2, "delete(...)"

    .line 216
    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "toString(...)"

    .line 225
    .line 226
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lokhttp3/CacheControl;->setHeaderValue$okhttp(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_d
    return-object v0
.end method
