.class public abstract Lkotlin/uuid/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;
.super Lkotlin/uuid/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;
.source "SourceFile"


# direct methods
.method public static final access$truncateForErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final access$truncateForErrorMessage([BI)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2
    const-string v2, "["

    const-string v3, "]"

    const/16 v7, 0x31

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p1

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final checkHyphenAt(Ljava/lang/String;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x2d

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v0, "Expected \'-\' (hyphen) at index "

    .line 16
    .line 17
    const-string v1, ", but was \'"

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p0, 0x27

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public static final formatBytesIntoCommonImpl(J[BIII)V
    .locals 4
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .line 1
    const-string v0, "dst"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    rsub-int/lit8 p4, p4, 0x7

    .line 7
    .line 8
    rsub-int/lit8 p5, p5, 0x8

    .line 9
    .line 10
    if-gt p5, p4, :cond_0

    .line 11
    .line 12
    :goto_0
    shl-int/lit8 v0, p4, 0x3

    .line 13
    .line 14
    shr-long v0, p0, v0

    .line 15
    .line 16
    const-wide/16 v2, 0xff

    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    long-to-int v1, v0

    .line 20
    invoke-static {}, Lkotlin/text/HexExtensionsKt;->getBYTE_TO_LOWER_CASE_HEX_DIGITS()[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    aget v0, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, p3, 0x1

    .line 27
    .line 28
    shr-int/lit8 v2, v0, 0x8

    .line 29
    .line 30
    int-to-byte v2, v2

    .line 31
    aput-byte v2, p2, p3

    .line 32
    .line 33
    add-int/lit8 p3, p3, 0x2

    .line 34
    .line 35
    int-to-byte v0, v0

    .line 36
    aput-byte v0, p2, v1

    .line 37
    .line 38
    if-eq p4, p5, :cond_0

    .line 39
    .line 40
    add-int/lit8 p4, p4, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static final getLongAtCommonImpl([BI)J
    .locals 7
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    aget-byte v0, p0, p1

    .line 7
    .line 8
    int-to-long v0, v0

    .line 9
    const-wide/16 v2, 0xff

    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    const/16 v4, 0x38

    .line 13
    .line 14
    shl-long/2addr v0, v4

    .line 15
    add-int/lit8 v4, p1, 0x1

    .line 16
    .line 17
    aget-byte v4, p0, v4

    .line 18
    .line 19
    int-to-long v4, v4

    .line 20
    and-long/2addr v4, v2

    .line 21
    const/16 v6, 0x30

    .line 22
    .line 23
    shl-long/2addr v4, v6

    .line 24
    or-long/2addr v0, v4

    .line 25
    add-int/lit8 v4, p1, 0x2

    .line 26
    .line 27
    aget-byte v4, p0, v4

    .line 28
    .line 29
    int-to-long v4, v4

    .line 30
    and-long/2addr v4, v2

    .line 31
    const/16 v6, 0x28

    .line 32
    .line 33
    shl-long/2addr v4, v6

    .line 34
    or-long/2addr v0, v4

    .line 35
    add-int/lit8 v4, p1, 0x3

    .line 36
    .line 37
    aget-byte v4, p0, v4

    .line 38
    .line 39
    int-to-long v4, v4

    .line 40
    and-long/2addr v4, v2

    .line 41
    const/16 v6, 0x20

    .line 42
    .line 43
    shl-long/2addr v4, v6

    .line 44
    or-long/2addr v0, v4

    .line 45
    add-int/lit8 v4, p1, 0x4

    .line 46
    .line 47
    aget-byte v4, p0, v4

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    and-long/2addr v4, v2

    .line 51
    const/16 v6, 0x18

    .line 52
    .line 53
    shl-long/2addr v4, v6

    .line 54
    or-long/2addr v0, v4

    .line 55
    add-int/lit8 v4, p1, 0x5

    .line 56
    .line 57
    aget-byte v4, p0, v4

    .line 58
    .line 59
    int-to-long v4, v4

    .line 60
    and-long/2addr v4, v2

    .line 61
    const/16 v6, 0x10

    .line 62
    .line 63
    shl-long/2addr v4, v6

    .line 64
    or-long/2addr v0, v4

    .line 65
    add-int/lit8 v4, p1, 0x6

    .line 66
    .line 67
    aget-byte v4, p0, v4

    .line 68
    .line 69
    int-to-long v4, v4

    .line 70
    and-long/2addr v4, v2

    .line 71
    const/16 v6, 0x8

    .line 72
    .line 73
    shl-long/2addr v4, v6

    .line 74
    or-long/2addr v0, v4

    .line 75
    add-int/lit8 p1, p1, 0x7

    .line 76
    .line 77
    aget-byte p0, p0, p1

    .line 78
    .line 79
    int-to-long p0, p0

    .line 80
    and-long/2addr p0, v2

    .line 81
    or-long/2addr p0, v0

    .line 82
    return-wide p0
.end method

.method public static final setLongAtCommonImpl([BIJ)V
    .locals 5
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    :goto_0
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    shl-int/lit8 v1, v0, 0x3

    .line 11
    .line 12
    add-int/lit8 v2, p1, 0x1

    .line 13
    .line 14
    shr-long v3, p2, v1

    .line 15
    .line 16
    long-to-int v1, v3

    .line 17
    int-to-byte v1, v1

    .line 18
    aput-byte v1, p0, p1

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public static final uuidFromRandomBytes([B)Lkotlin/uuid/Uuid;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "randomBytes"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    aget-byte v1, p0, v0

    .line 8
    .line 9
    and-int/lit8 v1, v1, 0xf

    .line 10
    .line 11
    int-to-byte v1, v1

    .line 12
    aput-byte v1, p0, v0

    .line 13
    .line 14
    or-int/lit8 v1, v1, 0x40

    .line 15
    .line 16
    int-to-byte v1, v1

    .line 17
    aput-byte v1, p0, v0

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    aget-byte v1, p0, v0

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x3f

    .line 24
    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p0, v0

    .line 27
    .line 28
    or-int/lit16 v1, v1, 0x80

    .line 29
    .line 30
    int-to-byte v1, v1

    .line 31
    aput-byte v1, p0, v0

    .line 32
    .line 33
    sget-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lkotlin/uuid/Uuid$Companion;->fromByteArray([B)Lkotlin/uuid/Uuid;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static final uuidParseHexCommonImpl(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "hexString"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    const/16 v4, 0x20

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v2, p0

    .line 23
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sget-object p0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final uuidParseHexDashCommonImpl(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/uuid/ExperimentalUuidApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "hexDashString"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    invoke-static {p0, v2}, Lkotlin/uuid/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->checkHyphenAt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x0

    .line 24
    const/16 v4, 0x9

    .line 25
    .line 26
    const/16 v5, 0xd

    .line 27
    .line 28
    move-object v3, p0

    .line 29
    invoke-static/range {v3 .. v8}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 v4, 0xd

    .line 34
    .line 35
    invoke-static {p0, v4}, Lkotlin/uuid/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->checkHyphenAt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x0

    .line 40
    const/16 v6, 0xe

    .line 41
    .line 42
    const/16 v7, 0x12

    .line 43
    .line 44
    move-object v5, p0

    .line 45
    invoke-static/range {v5 .. v10}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const/16 v6, 0x12

    .line 50
    .line 51
    invoke-static {p0, v6}, Lkotlin/uuid/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->checkHyphenAt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const/4 v11, 0x4

    .line 55
    const/4 v12, 0x0

    .line 56
    const/16 v8, 0x13

    .line 57
    .line 58
    const/16 v9, 0x17

    .line 59
    .line 60
    move-object v7, p0

    .line 61
    invoke-static/range {v7 .. v12}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    const/16 v8, 0x17

    .line 66
    .line 67
    invoke-static {p0, v8}, Lkotlin/uuid/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫;->checkHyphenAt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const/4 v13, 0x4

    .line 71
    const/4 v14, 0x0

    .line 72
    const/16 v10, 0x18

    .line 73
    .line 74
    const/16 v11, 0x24

    .line 75
    .line 76
    move-object v9, p0

    .line 77
    invoke-static/range {v9 .. v14}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v8

    .line 81
    const/16 p0, 0x20

    .line 82
    .line 83
    shl-long/2addr v0, p0

    .line 84
    const/16 p0, 0x10

    .line 85
    .line 86
    shl-long/2addr v2, p0

    .line 87
    or-long/2addr v0, v2

    .line 88
    or-long/2addr v0, v4

    .line 89
    const/16 p0, 0x30

    .line 90
    .line 91
    shl-long v2, v6, p0

    .line 92
    .line 93
    or-long/2addr v2, v8

    .line 94
    sget-object p0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method
