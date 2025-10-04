.class public final Lkotlinx/coroutines/internal/SystemPropsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\ub569\ub4b9\ub3db\ub3b0\ub570\ub3dd\ub565\ub56c\ub410\ub55f\ub3a0\ub539\ub4e4\ub489\ub4f0\ub3e4\ub4a8\ub4fb\ub418\ub504\ub571\ub56b\ub51e\ub51f\ub55d\ub579\ub4bb\ub572\ub4fb\ub578\ub4f8\ub544\ub578\ub463\ub578\ub503\ub528\ub454\ub565\ub49d\ub489\ub4cc\ub540\ub3f8\ub4b9\ub3c4\ub54d\ub568\ub51f\ub3bb\ub575\ub561\ub570\ub3dd\ub573\ub572\ub53d\ub578\ub420\ub56b\ub56a\ub56d\ub503\ub566\ub524\ub4f0\ub4dd\ub56d\ub500\ub465\ub51d\ub568\ub563\ub504\ub575\ub454\ub510\ub51f\ub578\ub3bb\ub571\ub54b\ub4a8\ub4e0\ub568\ub567\ub451\ub4a8\ub3f3\ub504\ub3b9\ub420\ub55f\ub567\ub4bb\ub501\ub3e4\ub539\ub4ac\ub4df\ub49d\ub569\ub541\ub560\ub550\ub3e8\ub569\ub4d4\ub560\ub554\ub480\ub450\ub3b0\ub55d\ub3bd\ub4f0\ub460\ub56f\ub510\ub4df\ub4bb\ub510\ub53b\ub561\ub550\ub520\ub4fd\ub561\ub49d\ub564"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getAVAILABLE_PROCESSORS()I
    .locals 1

    .line 1
    sget v0, L땩뒹돛뎰땰돝땥땬됐땟뎠딹들뒉듰돤뒨듻되딄땱땫딞딟땝땹뒻땲듻땸듸땄땸둣땸딃딨둔땥뒝뒉듌땀돸뒹도땍땨딟뎻땵땡땰돝땳땲딽땸될땫땪땭딃땦딤듰득땭딀둥딝땨땣딄땵둔딐딟땸뎻땱땋뒨든땨땧둑뒨돳딄뎹될땟땧뒻딁돤딹뒬듟뒝땩땁땠땐돨땩듔땠땔뒀두뎰땝뎽듰둠땯딐듟뒻딐딻땡땐딠듽땡뒝땤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 2
    .line 3
    return v0
.end method

.method public static final systemProp(Ljava/lang/String;III)I
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    .line 4
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static final systemProp(Ljava/lang/String;JJJ)J
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, L땦되뒷듸땟땃돷딀땃땪됫딜뒛들둑듟땣뒋둘듬됩뒬드딐땵땫둣뎻뒈땔딸뎸둥뒐둥딤듟땣돼딞땧뎽됨땣돛딞땫뎰듔땮됩돛돛따딽땅둡딽뎡땯땟딄뒐둔땵둔딐딝듰뒘디될됨뒹둣둘땁땅돝듐뒉땀돴득돸딹딽돵땲듽돨땃딁되땡뒹땜득듨땱돝뒋땸듌땥땹뎻뒼딹둡되뎰둘돴뒛뎽뎽듔뒷돤됩됐딸땅땋땃돶땫뎨둠;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_1

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1

    move-wide p1, v2

    :goto_0
    return-wide p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final systemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget v0, L땩뒹돛뎰땰돝땥땬됐땟뎠딹들뒉듰돤뒨듻되딄땱땫딞딟땝땹뒻땲듻땸듸땄땸둣땸딃딨둔땥뒝뒉듌땀돸뒹도땍땨딟뎻땵땡땰돝땳땲딽땸될땫땪땭딃땦딤듰득땭딀둥딝땨땣딄땵둔딐딟땸뎻땱땋뒨든땨땧둑뒨돳딄뎹될땟땧뒻딁돤딹뒬듟뒝땩땁땠땐돨땩듔땠땔뒀두뎰땝뎽듰둠땯딐듟뒻딐딻땡땐딠듽땡뒝땤;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:I

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final systemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public static final systemProp(Ljava/lang/String;Z)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static synthetic systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static synthetic systemProp$default(Ljava/lang/String;JJJILjava/lang/Object;)J
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-wide/16 p3, 0x1

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide p5, 0x7fffffffffffffffL

    :cond_1
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    .line 2
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide p0

    return-wide p0
.end method
