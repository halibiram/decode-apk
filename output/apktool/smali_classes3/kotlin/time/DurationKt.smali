.class public final Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0007\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\t\"\u0014\u0010\n\u001a\u00020\u00008\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\"\u0014\u0010\u000c\u001a\u00020\u00068\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\"\u0014\u0010\u000e\u001a\u00020\u00068\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "Lkotlin/time/DurationUnit;",
        "unit",
        "Lkotlin/time/Duration;",
        "toDuration",
        "(ILkotlin/time/DurationUnit;)J",
        "",
        "(JLkotlin/time/DurationUnit;)J",
        "",
        "(DLkotlin/time/DurationUnit;)J",
        "NANOS_IN_MILLIS",
        "I",
        "MAX_NANOS",
        "J",
        "MAX_MILLIS",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1021#1,6:1070\n1024#1,3:1076\n1021#1,6:1079\n1021#1,6:1085\n1024#1,3:1091\n1#2:1069\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1070,6\n970#1:1076,3\n973#1:1079,6\n976#1:1085,6\n1021#1:1091,3\n*E\n"
    }
.end annotation


# static fields
.field public static final MAX_MILLIS:J = 0x3fffffffffffffffL

.field public static final MAX_NANOS:J = 0x3ffffffffffa14bfL

.field public static final NANOS_IN_MILLIS:I = 0xf4240


# direct methods
.method public static final access$durationOf(JI)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    int-to-long v0, p2

    .line 4
    add-long/2addr p0, v0

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static final access$durationOfMillis(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    add-long/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final access$durationOfNanosNormalized(J)J
    .locals 3

    .line 1
    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, p0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x3ffffffffffa14c0L    # 1.999999999913868

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v0, 0xf4240

    .line 25
    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    div-long/2addr p0, v0

    .line 29
    const/4 v0, 0x1

    .line 30
    shl-long/2addr p0, v0

    .line 31
    const-wide/16 v0, 0x1

    .line 32
    .line 33
    add-long/2addr p0, v0

    .line 34
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    :goto_0
    return-wide p0
.end method

.method public static final access$millisToNanos(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static final access$nanosToMillis(J)J
    .locals 2

    .line 1
    const v0, 0xf4240

    .line 2
    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    div-long/2addr p0, v0

    .line 6
    return-wide p0
.end method

.method public static final access$parseDuration(Ljava/lang/String;Z)J
    .locals 27

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_21

    .line 2
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 3
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x1

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    :goto_0
    if-lez v13, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    const/4 v0, 0x2

    const/4 v15, 0x0

    if-eqz v14, :cond_2

    .line 4
    invoke-static {v6, v2, v11, v0, v15}, Lkotlin/text/StringsKt__StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v16, 0x1

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 5
    :goto_2
    const-string v5, "No components"

    if-le v7, v13, :cond_20

    .line 6
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    const-string v4, "Unexpected order of duration components"

    const/16 v3, 0x3a

    move-object/from16 v17, v5

    const/16 v5, 0x30

    const-string v0, "substring(...)"

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    if-ne v1, v2, :cond_e

    add-int/2addr v13, v12

    if-eq v13, v7, :cond_d

    move-object v2, v15

    const/4 v1, 0x0

    :goto_3
    if-ge v13, v7, :cond_1d

    .line 7
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v14, 0x54

    if-ne v8, v14, :cond_4

    if-nez v1, :cond_3

    add-int/lit8 v13, v13, 0x1

    if-eq v13, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    move v8, v13

    .line 9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v5, v14, :cond_5

    if-ge v14, v3, :cond_5

    const/4 v12, 0x2

    goto :goto_5

    .line 10
    :cond_5
    const-string v3, "+-."

    const/4 v5, 0x0

    const/4 v12, 0x2

    invoke-static {v3, v14, v5, v12, v15}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x3a

    const/16 v5, 0x30

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x2

    .line 11
    :cond_7
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v13

    if-ltz v5, :cond_b

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_b

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v13, v5, 0x1

    .line 15
    invoke-static {v8, v1}, L뒘땄듟뎸됫듔돴된딸되둬딎둥듸딎땤땫듨둔뎸땧딌뎰땳딠뒾둠돠될듰땱땰딟따딞돰딹돵돛뒐둘뒘든땔도땬땍딁땅돛뒀됨둘될듟뒷뒐땋될둣돵돤돸돼땄들듻딞땟돳디둘딀뒉돰돠땀뎸득돛딽땦땍됫듼땯땠뒙듌뎨딎됐둣뒬딤뎽뒼땐둡돸땭돴뒵듼득땧땐됨딻둔뒤뒻둑땲땟듐됨뎸뒻듟땥딟됫땬땦땪둣딐든듽;->durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;

    move-result-object v5

    if-eqz v2, :cond_9

    .line 16
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x2e

    const/16 v24, 0x6

    const/16 v25, 0x0

    move-object/from16 v20, v3

    .line 17
    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 18
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    if-ne v5, v8, :cond_a

    if-lez v2, :cond_a

    .line 19
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v13

    .line 20
    invoke-static {v14}, Lkotlin/time/DurationKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    .line 21
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    :goto_7
    move/from16 v13, p1

    move-object v2, v5

    const/16 v3, 0x3a

    const/16 v5, 0x30

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_a
    move/from16 p1, v13

    .line 22
    invoke-static {v3}, Lkotlin/time/DurationKt;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v9, v10, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v9

    goto :goto_7

    .line 23
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing unit for value "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    if-nez p1, :cond_1f

    sub-int v1, v7, v13

    const/16 v2, 0x8

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v2, "Infinity"

    const/4 v3, 0x0

    const/4 v12, 0x1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object v15, v1

    move v1, v13

    move-object/from16 v26, v4

    move v4, v5

    move-wide/from16 v21, v9

    move-object/from16 v9, v17

    const/16 v10, 0x30

    move v5, v12

    invoke-static/range {v0 .. v5}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide v9

    goto/16 :goto_10

    :cond_f
    xor-int/lit8 v0, v14, 0x1

    if-eqz v14, :cond_11

    .line 28
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_11

    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt___StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_11

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v7, v7, -0x1

    if-eq v13, v7, :cond_10

    move-wide/from16 v1, v21

    const/4 v0, 0x1

    :goto_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_9

    .line 29
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-wide/from16 v1, v21

    goto :goto_8

    :goto_9
    if-ge v13, v7, :cond_1c

    if-eqz v5, :cond_12

    if-eqz v0, :cond_12

    .line 30
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v13, v4, :cond_12

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_12

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_12
    move v4, v13

    .line 31
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_14

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x3a

    if-gt v10, v5, :cond_13

    if-ge v5, v8, :cond_13

    goto :goto_c

    :cond_13
    const/16 v9, 0x2e

    if-ne v5, v9, :cond_15

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    const/16 v8, 0x3a

    .line 32
    :cond_15
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v13

    move v9, v5

    .line 35
    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_16

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x61

    if-gt v13, v12, :cond_16

    const/16 v13, 0x7b

    if-ge v12, v13, :cond_16

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 36
    :cond_16
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int v13, v12, v5

    .line 38
    invoke-static {v9}, L뒘땄듟뎸됫듔돴된딸되둬딎둥듸딎땤땫듨둔뎸땧딌뎰땳딠뒾둠돠될듰땱땰딟따딞돰딹돵돛뒐둘뒘든땔도땬땍딁땅돛뒀됨둘될듟뒷뒐땋될둣돵돤돸돼땄들듻딞땟돳디둘딀뒉돰돠땀뎸득돛딽땦땍됫듼땯땠뒙듌뎨딎됐둣뒬딤뎽뒼땐둡돸땭돴뒵듼득땧땐됨딻둔뒤뒻둑땲땟듐됨뎸뒻듟땥딟됫땬땦땪둣딐든듽;->durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;

    move-result-object v5

    if-eqz v3, :cond_17

    .line 39
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_18

    :cond_17
    move-object/from16 v3, v26

    goto :goto_e

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v3, v26

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x2e

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v4

    .line 40
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_1a

    .line 41
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 p1, v13

    .line 42
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v1, v2, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v1

    .line 43
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-static {v1, v2, v12, v13}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v1

    move/from16 v12, p1

    if-lt v12, v7, :cond_19

    :goto_f
    move-object/from16 v26, v3

    move-object v3, v5

    move v13, v12

    const/4 v5, 0x1

    goto/16 :goto_9

    .line 44
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fractional component must be last"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move v12, v13

    .line 45
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v13

    invoke-static {v1, v2, v13, v14}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v1

    goto :goto_f

    .line 46
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    move-wide v9, v1

    :cond_1d
    :goto_10
    if-eqz v16, :cond_1e

    .line 47
    invoke-static {v9, v10}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v9

    :cond_1e
    return-wide v9

    .line 48
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_20
    move-object v9, v5

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .locals 5
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {v0, v1}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->roundToLong(D)J

    move-result-wide v0

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 12
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    move-result-wide p0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, L딝뎻따될뎠둣땝땩돵둘뎬뎨따땀들딅듻뒀돛든땦땱딸됩됩뒋땐땩뎡딤땁뒉딐든땜뒷듸딝둘뒵땔땁뎸됨뎽딹뎹딸듬득땍딀땹땡듟따땮뒀돝됨땻듻둘딀듸딃뎬땀뒝돶둡땡땅듰뒐듨딠딄뒀뒬딸돳땠듰땬뒛돝땧땲땫뒀땬뒛땄돨딄땤땦뎽딀뒝돳땦둡땨돨둬땡땪땯땵땪둥돰딻딜뒼딌둡듌뒤뒉뒐뎬뒈딐땧뎠땋땩;->roundToLong(D)J

    move-result-wide p0

    .line 14
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .locals 2
    .param p1    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    .line 2
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1, p0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    .line 3
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 7
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v5, v3, p0

    if-gtz v5, :cond_0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    .line 5
    invoke-static {p0, p1, p2, v0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_0
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, L뒘따땮뒷딸뎰돝딄땩뒨땻땹땫돠둠땹뒷듟땋둔땸된뒵딞될돷듼땩득딤땡딽듻돛땐땥듸되돤둣딹딝돵드득땪땀둘되득두딨들땥땱들땡됴뒘돼땭뒹디돸돼듌땮뎹딨둠둬딹땳뎠득딟둡땜땐땍돨득땋됨두뒋듔된땐땍뎰뒈되땯땱둥땋땄듽돵둠됩됩땳땋듰듔뒼돳뎡딐땪듬듔딻땠뒵듌돝뒐돴땥뎰땟뎠듸땁듰딃됩;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 7
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JJJ)J

    move-result-wide p0

    const/4 p2, 0x1

    shl-long/2addr p0, p2

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 8
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(J)J
    .locals 6

    .line 1
    const-wide v0, -0x431bde82d7aL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, p0

    .line 7
    .line 8
    if-gtz v2, :cond_0

    .line 9
    .line 10
    const-wide v0, 0x431bde82d7bL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    const v0, 0xf4240

    .line 20
    .line 21
    .line 22
    int-to-long v0, v0

    .line 23
    mul-long p0, p0, v0

    .line 24
    .line 25
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    move-wide v0, p0

    .line 41
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    const/4 v0, 0x1

    .line 46
    shl-long/2addr p0, v0

    .line 47
    const-wide/16 v0, 0x1

    .line 48
    .line 49
    add-long/2addr p0, v0

    .line 50
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    :goto_0
    return-wide p0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static final 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Ljava/lang/String;)J
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const-string v5, "+-"

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-static {v5, v6, v4, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    :goto_0
    sub-int v6, v0, v5

    .line 27
    .line 28
    const/16 v7, 0x3a

    .line 29
    .line 30
    const/16 v8, 0x30

    .line 31
    .line 32
    const/16 v9, 0x10

    .line 33
    .line 34
    if-le v6, v9, :cond_5

    .line 35
    .line 36
    move v6, v5

    .line 37
    :goto_1
    if-ge v5, v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-ne v10, v8, :cond_1

    .line 44
    .line 45
    if-ne v6, v5, :cond_2

    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const/16 v11, 0x31

    .line 51
    .line 52
    if-gt v11, v10, :cond_5

    .line 53
    .line 54
    if-ge v10, v7, :cond_5

    .line 55
    .line 56
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    sub-int v5, v0, v6

    .line 60
    .line 61
    if-le v5, v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/16 v0, 0x2d

    .line 68
    .line 69
    if-ne p0, v0, :cond_4

    .line 70
    .line 71
    const-wide/high16 v0, -0x8000000000000000L

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :goto_3
    return-wide v0

    .line 80
    :cond_5
    const-string v5, "+"

    .line 81
    .line 82
    invoke-static {p0, v5, v4, v2, v1}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    if-le v0, v3, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-gt v8, v0, :cond_6

    .line 95
    .line 96
    if-ge v0, v7, :cond_6

    .line 97
    .line 98
    invoke-static {p0, v3}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    :cond_6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    return-wide v0
.end method
