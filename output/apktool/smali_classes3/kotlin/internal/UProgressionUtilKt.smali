.class public final Lkotlin/internal/UProgressionUtilKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u001a\'\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\'\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0001\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\tH\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/UInt;",
        "start",
        "end",
        "",
        "step",
        "getProgressionLastElement-Nkh28Cs",
        "(III)I",
        "getProgressionLastElement",
        "Lkotlin/ULong;",
        "",
        "getProgressionLastElement-7ftBX0g",
        "(JJJ)J",
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


# direct methods
.method public static final getProgressionLastElement-7ftBX0g(JJJ)J
    .locals 7
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long v4, p4, v0

    .line 6
    .line 7
    if-lez v4, :cond_1

    .line 8
    .line 9
    xor-long v0, p0, v2

    .line 10
    .line 11
    xor-long/2addr v2, p2

    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p4, p5}, Lkotlin/ULong;->constructor-impl(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    move-wide v1, p2

    .line 24
    move-wide v3, p0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlin/internal/UProgressionUtilKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(JJJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    sub-long/2addr p2, p0

    .line 30
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-gez v4, :cond_3

    .line 36
    .line 37
    xor-long v0, p0, v2

    .line 38
    .line 39
    xor-long/2addr v2, p2

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gtz v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    neg-long p4, p4

    .line 48
    invoke-static {p4, p5}, Lkotlin/ULong;->constructor-impl(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    move-wide v0, p0

    .line 53
    move-wide v2, p2

    .line 54
    invoke-static/range {v0 .. v5}, Lkotlin/internal/UProgressionUtilKt;->뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(JJJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p0

    .line 58
    add-long/2addr p2, p0

    .line 59
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide p2

    .line 63
    :goto_0
    return-wide p2

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Step is zero."

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public static final getProgressionLastElement-Nkh28Cs(III)I
    .locals 2
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-lez p2, :cond_1

    .line 4
    .line 5
    xor-int v1, p0, v0

    .line 6
    .line 7
    xor-int/2addr v0, p1

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p1, p0, p2}, Lkotlin/internal/UProgressionUtilKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(III)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sub-int/2addr p1, p0

    .line 24
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-gez p2, :cond_3

    .line 30
    .line 31
    xor-int v1, p0, v0

    .line 32
    .line 33
    xor-int/2addr v0, p1

    .line 34
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-gtz v0, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    neg-int p2, p2

    .line 42
    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p0, p1, p2}, Lkotlin/internal/UProgressionUtilKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(III)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/2addr p0, p1

    .line 51
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :goto_0
    return p1

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p1, "Step is zero."

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(III)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    int-to-long v4, p2

    .line 9
    and-long/2addr v4, v2

    .line 10
    rem-long/2addr v0, v4

    .line 11
    long-to-int p0, v0

    .line 12
    int-to-long v0, p1

    .line 13
    and-long/2addr v0, v2

    .line 14
    rem-long/2addr v0, v4

    .line 15
    long-to-int p1, v0

    .line 16
    const/high16 v0, -0x80000000

    .line 17
    .line 18
    xor-int v1, p0, v0

    .line 19
    .line 20
    xor-int/2addr v0, p1

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr p0, p1

    .line 26
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/2addr p0, p2

    .line 34
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    return p0
.end method

.method public static final 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(JJJ)J
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-wide/high16 v3, -0x8000000000000000L

    .line 5
    .line 6
    cmp-long v5, p4, v1

    .line 7
    .line 8
    if-gez v5, :cond_1

    .line 9
    .line 10
    xor-long v6, p0, v3

    .line 11
    .line 12
    xor-long v8, p4, v3

    .line 13
    .line 14
    cmp-long v10, v6, v8

    .line 15
    .line 16
    if-gez v10, :cond_0

    .line 17
    .line 18
    move-wide v6, p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    sub-long v6, p0, p4

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    cmp-long v6, p0, v1

    .line 24
    .line 25
    if-ltz v6, :cond_2

    .line 26
    .line 27
    rem-long v6, p0, p4

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    ushr-long v6, p0, v0

    .line 31
    .line 32
    div-long v6, v6, p4

    .line 33
    .line 34
    shl-long/2addr v6, v0

    .line 35
    mul-long v6, v6, p4

    .line 36
    .line 37
    sub-long v6, p0, v6

    .line 38
    .line 39
    xor-long v8, v6, v3

    .line 40
    .line 41
    xor-long v10, p4, v3

    .line 42
    .line 43
    cmp-long v12, v8, v10

    .line 44
    .line 45
    if-ltz v12, :cond_3

    .line 46
    .line 47
    move-wide/from16 v8, p4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move-wide v8, v1

    .line 51
    :goto_0
    sub-long/2addr v6, v8

    .line 52
    :goto_1
    if-gez v5, :cond_5

    .line 53
    .line 54
    xor-long v0, p2, v3

    .line 55
    .line 56
    xor-long v8, p4, v3

    .line 57
    .line 58
    cmp-long v2, v0, v8

    .line 59
    .line 60
    if-gez v2, :cond_4

    .line 61
    .line 62
    move-wide/from16 v0, p2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sub-long v0, p2, p4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    cmp-long v5, p2, v1

    .line 69
    .line 70
    if-ltz v5, :cond_6

    .line 71
    .line 72
    rem-long v0, p2, p4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    ushr-long v8, p2, v0

    .line 76
    .line 77
    div-long v8, v8, p4

    .line 78
    .line 79
    shl-long/2addr v8, v0

    .line 80
    mul-long v8, v8, p4

    .line 81
    .line 82
    sub-long v8, p2, v8

    .line 83
    .line 84
    xor-long v10, v8, v3

    .line 85
    .line 86
    xor-long v12, p4, v3

    .line 87
    .line 88
    cmp-long v0, v10, v12

    .line 89
    .line 90
    if-ltz v0, :cond_7

    .line 91
    .line 92
    move-wide/from16 v1, p4

    .line 93
    .line 94
    :cond_7
    sub-long v0, v8, v1

    .line 95
    .line 96
    :goto_2
    xor-long v8, v6, v3

    .line 97
    .line 98
    xor-long v2, v0, v3

    .line 99
    .line 100
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sub-long/2addr v6, v0

    .line 105
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    if-ltz v2, :cond_8

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    add-long v0, v0, p4

    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    :goto_3
    return-wide v0
.end method
