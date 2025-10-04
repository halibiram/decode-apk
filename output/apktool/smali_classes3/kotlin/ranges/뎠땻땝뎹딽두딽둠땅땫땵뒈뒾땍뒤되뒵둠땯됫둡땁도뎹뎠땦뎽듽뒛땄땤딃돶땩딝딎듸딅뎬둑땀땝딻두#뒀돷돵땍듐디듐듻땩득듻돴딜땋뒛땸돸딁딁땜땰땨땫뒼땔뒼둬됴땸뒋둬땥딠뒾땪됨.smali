.class public abstract Lkotlin/ranges/뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final coerceAtLeast-5PvTz6A(SS)S
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    and-int/2addr v0, p1

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    move p0, p1

    .line 14
    :cond_0
    return p0
.end method

.method public static final coerceAtLeast-J1ME1BU(II)I
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    xor-int v1, p0, v0

    .line 4
    .line 5
    xor-int/2addr v0, p1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    move p0, p1

    .line 13
    :cond_0
    return p0
.end method

.method public static final coerceAtLeast-Kr8caGY(BB)B
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    and-int/lit16 v1, p1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    move p0, p1

    .line 12
    :cond_0
    return p0
.end method

.method public static final coerceAtLeast-eb3DHEI(JJ)J
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long v2, p0, v0

    .line 4
    .line 5
    xor-long/2addr v0, p2

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    move-wide p0, p2

    .line 13
    :cond_0
    return-wide p0
.end method

.method public static final coerceAtMost-5PvTz6A(SS)S
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    and-int/2addr v0, p1

    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    move p0, p1

    .line 14
    :cond_0
    return p0
.end method

.method public static final coerceAtMost-J1ME1BU(II)I
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    xor-int v1, p0, v0

    .line 4
    .line 5
    xor-int/2addr v0, p1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    move p0, p1

    .line 13
    :cond_0
    return p0
.end method

.method public static final coerceAtMost-Kr8caGY(BB)B
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    and-int/lit16 v1, p1, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    move p0, p1

    .line 12
    :cond_0
    return p0
.end method

.method public static final coerceAtMost-eb3DHEI(JJ)J
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long v2, p0, v0

    .line 4
    .line 5
    xor-long/2addr v0, p2

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    move-wide p0, p2

    .line 13
    :cond_0
    return-wide p0
.end method

.method public static final coerceIn-JPwROB0(JLkotlin/ranges/ClosedRange;)J
    .locals 6
    .param p2    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/ranges/ClosedRange<",
            "Lkotlin/ULong;",
            ">;)J"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0, p1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p2, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 15
    .line 16
    invoke-static {p0, p2}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lkotlin/ULong;

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lkotlin/ULong;

    .line 38
    .line 39
    invoke-virtual {v0}, Lkotlin/ULong;->unbox-impl()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/high16 v2, -0x8000000000000000L

    .line 44
    .line 45
    xor-long v4, p0, v2

    .line 46
    .line 47
    xor-long/2addr v0, v2

    .line 48
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-gez v0, :cond_1

    .line 53
    .line 54
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lkotlin/ULong;

    .line 59
    .line 60
    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lkotlin/ULong;

    .line 70
    .line 71
    invoke-virtual {v0}, Lkotlin/ULong;->unbox-impl()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    xor-long/2addr v0, v2

    .line 76
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_2

    .line 81
    .line 82
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lkotlin/ULong;

    .line 87
    .line 88
    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    .line 89
    .line 90
    .line 91
    move-result-wide p0

    .line 92
    :cond_2
    :goto_0
    return-wide p0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v0, "Cannot coerce value to an empty range: "

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 p2, 0x2e

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public static final coerceIn-VKSA0NQ(SSS)S
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int v1, p1, v0

    .line 5
    .line 6
    and-int v2, p2, v0

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-gtz v3, :cond_2

    .line 13
    .line 14
    and-int/2addr v0, p0

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gez v1, :cond_0

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_1

    .line 27
    .line 28
    return p2

    .line 29
    :cond_1
    return p0

    .line 30
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " is less than minimum "

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x2e

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static final coerceIn-WZ9TVnA(III)I
    .locals 4
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    xor-int v1, p1, v0

    .line 4
    .line 5
    xor-int v2, p2, v0

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-gtz v3, :cond_2

    .line 12
    .line 13
    xor-int/2addr v0, p0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gez v1, :cond_0

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    return p2

    .line 28
    :cond_1
    return p0

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, " is less than minimum "

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 p1, 0x2e

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static final coerceIn-b33U2AM(BBB)B
    .locals 3
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    and-int/lit16 v1, p2, 0xff

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-gtz v2, :cond_2

    .line 10
    .line 11
    and-int/lit16 v2, p0, 0xff

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-lez p1, :cond_1

    .line 25
    .line 26
    return p2

    .line 27
    :cond_1
    return p0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Cannot coerce value to an empty range: maximum "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " is less than minimum "

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0x2e

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static final coerceIn-sambcqE(JJJ)J
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long v2, p2, v0

    .line 4
    .line 5
    xor-long v4, p4, v0

    .line 6
    .line 7
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    if-gtz v6, :cond_2

    .line 12
    .line 13
    xor-long/2addr v0, p0

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gez v2, :cond_0

    .line 19
    .line 20
    return-wide p2

    .line 21
    :cond_0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_1

    .line 26
    .line 27
    return-wide p4

    .line 28
    :cond_1
    return-wide p0

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p4, p5}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p4, " is less than minimum "

    .line 46
    .line 47
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p3}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 p2, 0x2e

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static final coerceIn-wuiCnnA(ILkotlin/ranges/ClosedRange;)I
    .locals 3
    .param p1    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ranges/ClosedRange<",
            "Lkotlin/UInt;",
            ">;)I"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p1, Lkotlin/ranges/ClosedFloatingPointRange;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lkotlin/ranges/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lkotlin/UInt;

    .line 21
    .line 22
    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lkotlin/UInt;

    .line 38
    .line 39
    invoke-virtual {v0}, Lkotlin/UInt;->unbox-impl()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/high16 v1, -0x80000000

    .line 44
    .line 45
    xor-int v2, p0, v1

    .line 46
    .line 47
    xor-int/2addr v0, v1

    .line 48
    invoke-static {v2, v0}, Ljava/lang/Integer;->compare(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-gez v0, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getStart()Ljava/lang/Comparable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lkotlin/UInt;

    .line 59
    .line 60
    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lkotlin/UInt;

    .line 70
    .line 71
    invoke-virtual {v0}, Lkotlin/UInt;->unbox-impl()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    xor-int/2addr v0, v1

    .line 76
    invoke-static {v2, v0}, Ljava/lang/Integer;->compare(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_2

    .line 81
    .line 82
    invoke-interface {p1}, Lkotlin/ranges/ClosedRange;->getEndInclusive()Ljava/lang/Comparable;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lkotlin/UInt;

    .line 87
    .line 88
    invoke-virtual {p0}, Lkotlin/UInt;->unbox-impl()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    :cond_2
    :goto_0
    return p0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Cannot coerce value to an empty range: "

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 p1, 0x2e

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public static final contains-68kG9v0(Lkotlin/ranges/UIntRange;B)Z
    .locals 1
    .param p0    # Lkotlin/ranges/UIntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    and-int/lit16 p1, p1, 0xff

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lkotlin/ranges/UIntRange;->contains-WZ4Q5Ns(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final contains-Gab390E(Lkotlin/ranges/ULongRange;I)Z
    .locals 4
    .param p0    # Lkotlin/ranges/ULongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p1

    .line 7
    const-wide v2, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lkotlin/ranges/ULongRange;->contains-VKZWuLQ(J)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static final contains-ULb-yJY(Lkotlin/ranges/ULongRange;B)Z
    .locals 4
    .param p0    # Lkotlin/ranges/ULongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p1

    .line 7
    const-wide/16 v2, 0xff

    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lkotlin/ranges/ULongRange;->contains-VKZWuLQ(J)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static final contains-ZsK3CEQ(Lkotlin/ranges/UIntRange;S)Z
    .locals 1
    .param p0    # Lkotlin/ranges/UIntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0xffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p1, v0

    .line 10
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lkotlin/ranges/UIntRange;->contains-WZ4Q5Ns(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static final contains-fz5IDCE(Lkotlin/ranges/UIntRange;J)Z
    .locals 5
    .param p0    # Lkotlin/ranges/UIntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    ushr-long v0, p1, v0

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    long-to-int p2, p1

    .line 21
    invoke-static {p2}, Lkotlin/UInt;->constructor-impl(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lkotlin/ranges/UIntRange;->contains-WZ4Q5Ns(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static final contains-uhHAxoY(Lkotlin/ranges/ULongRange;S)Z
    .locals 4
    .param p0    # Lkotlin/ranges/ULongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .line 1
    const-string v0, "$this$contains"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    int-to-long v0, p1

    .line 7
    const-wide/32 v2, 0xffff

    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v2

    .line 11
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, v0, v1}, Lkotlin/ranges/ULongRange;->contains-VKZWuLQ(J)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static final downTo-5PvTz6A(SS)Lkotlin/ranges/UIntProgression;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/ranges/UIntProgression;->Companion:Lkotlin/ranges/UIntProgression$Companion;

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p0, v1

    .line 7
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    and-int/2addr p1, v1

    .line 12
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/UIntProgression$Companion;->fromClosedRange-Nkh28Cs(III)Lkotlin/ranges/UIntProgression;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final downTo-J1ME1BU(II)Lkotlin/ranges/UIntProgression;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/ranges/UIntProgression;->Companion:Lkotlin/ranges/UIntProgression$Companion;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/UIntProgression$Companion;->fromClosedRange-Nkh28Cs(III)Lkotlin/ranges/UIntProgression;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static final downTo-Kr8caGY(BB)Lkotlin/ranges/UIntProgression;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/ranges/UIntProgression;->Companion:Lkotlin/ranges/UIntProgression$Companion;

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    and-int/lit16 p1, p1, 0xff

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/UIntProgression$Companion;->fromClosedRange-Nkh28Cs(III)Lkotlin/ranges/UIntProgression;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static final downTo-eb3DHEI(JJ)Lkotlin/ranges/ULongProgression;
    .locals 7
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/ranges/ULongProgression;->Companion:Lkotlin/ranges/ULongProgression$Companion;

    .line 2
    .line 3
    const-wide/16 v5, -0x1

    .line 4
    .line 5
    move-wide v1, p0

    .line 6
    move-wide v3, p2

    .line 7
    invoke-virtual/range {v0 .. v6}, Lkotlin/ranges/ULongProgression$Companion;->fromClosedRange-7ftBX0g(JJJ)Lkotlin/ranges/ULongProgression;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final first(Lkotlin/ranges/UIntProgression;)I
    .locals 3
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getFirst-pVg5ArA()I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progression "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final first(Lkotlin/ranges/ULongProgression;)J
    .locals 3
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getFirst-s-VKNKU()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progression "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final firstOrNull(Lkotlin/ranges/UIntProgression;)Lkotlin/UInt;
    .locals 1
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getFirst-pVg5ArA()I

    move-result p0

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final firstOrNull(Lkotlin/ranges/ULongProgression;)Lkotlin/ULong;
    .locals 2
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final last(Lkotlin/ranges/UIntProgression;)I
    .locals 3
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getLast-pVg5ArA()I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progression "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final last(Lkotlin/ranges/ULongProgression;)J
    .locals 3
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getLast-s-VKNKU()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Progression "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is empty."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final lastOrNull(Lkotlin/ranges/UIntProgression;)Lkotlin/UInt;
    .locals 1
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getLast-pVg5ArA()I

    move-result p0

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final lastOrNull(Lkotlin/ranges/ULongProgression;)Lkotlin/ULong;
    .locals 2
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.7"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getLast-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final random(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I
    .locals 1
    .param p0    # Lkotlin/ranges/UIntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Lkotlin/random/URandomKt;->nextUInt(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final random(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J
    .locals 1
    .param p0    # Lkotlin/ranges/ULongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {p1, p0}, Lkotlin/random/URandomKt;->nextULong(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final randomOrNull(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)Lkotlin/UInt;
    .locals 1
    .param p0    # Lkotlin/ranges/UIntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;,
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1, p0}, Lkotlin/random/URandomKt;->nextUInt(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I

    move-result p0

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    return-object p0
.end method

.method public static final randomOrNull(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)Lkotlin/ULong;
    .locals 1
    .param p0    # Lkotlin/ranges/ULongRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalStdlibApi;,
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lkotlin/random/URandomKt;->nextULong(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    return-object p0
.end method

.method public static final reversed(Lkotlin/ranges/UIntProgression;)Lkotlin/ranges/UIntProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/ranges/UIntProgression;->Companion:Lkotlin/ranges/UIntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getLast-pVg5ArA()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getFirst-pVg5ArA()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getStep()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v1, v2, p0}, Lkotlin/ranges/UIntProgression$Companion;->fromClosedRange-Nkh28Cs(III)Lkotlin/ranges/UIntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final reversed(Lkotlin/ranges/ULongProgression;)Lkotlin/ranges/ULongProgression;
    .locals 8
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lkotlin/ranges/ULongProgression;->Companion:Lkotlin/ranges/ULongProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getLast-s-VKNKU()J

    move-result-wide v2

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getFirst-s-VKNKU()J

    move-result-wide v4

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getStep()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual/range {v1 .. v7}, Lkotlin/ranges/ULongProgression$Companion;->fromClosedRange-7ftBX0g(JJJ)Lkotlin/ranges/ULongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final step(Lkotlin/ranges/UIntProgression;I)Lkotlin/ranges/UIntProgression;
    .locals 3
    .param p0    # Lkotlin/ranges/UIntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, L땀뒬디뎰땩뒨딠뎽돸됨땨땀땳도딟땳된뒾딐뒋되땪뎰땐딌돠도뒾딹듼땟딹뎨뒉딄딀듼도득땁딠돶땋딃듻딁땤뒤땩됫돰땥땠땰뒘뒀딽딀딄둠디듸땟돰딹뎨뎠땰딨됫뒾돴땡땃듽딁땔뎡땟둥땮뎡둑땦뒷드둣뎹뒼뎸뒐딨땸됴뎽들뎸땟딄둔땯돛뎠듬딹뒀도땟땵땭두뒙땧땋됩뎽됩둔딐딸됴뎰딨디듐듟돸땮딄땟;->checkStepIsPositive(ZLjava/lang/Number;)V

    .line 2
    sget-object v0, Lkotlin/ranges/UIntProgression;->Companion:Lkotlin/ranges/UIntProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getFirst-pVg5ArA()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getLast-pVg5ArA()I

    move-result v2

    invoke-virtual {p0}, Lkotlin/ranges/UIntProgression;->getStep()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    :goto_1
    invoke-virtual {v0, v1, v2, p1}, Lkotlin/ranges/UIntProgression$Companion;->fromClosedRange-Nkh28Cs(III)Lkotlin/ranges/UIntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final step(Lkotlin/ranges/ULongProgression;J)Lkotlin/ranges/ULongProgression;
    .locals 11
    .param p0    # Lkotlin/ranges/ULongProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, L땀뒬디뎰땩뒨딠뎽돸됨땨땀땳도딟땳된뒾딐뒋되땪뎰땐딌돠도뒾딹듼땟딹뎨뒉딄딀듼도득땁딠돶땋딃듻딁땤뒤땩됫돰땥땠땰뒘뒀딽딀딄둠디듸땟돰딹뎨뎠땰딨됫뒾돴땡땃듽딁땔뎡땟둥땮뎡둑땦뒷드둣뎹뒼뎸뒐딨땸됴뎽들뎸땟딄둔땯돛뎠듬딹뒀도땟땵땭두뒙땧땋됩뎽됩둔딐딸됴뎰딨디듐듟돸땮딄땟;->checkStepIsPositive(ZLjava/lang/Number;)V

    .line 4
    sget-object v4, Lkotlin/ranges/ULongProgression;->Companion:Lkotlin/ranges/ULongProgression$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getFirst-s-VKNKU()J

    move-result-wide v5

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getLast-s-VKNKU()J

    move-result-wide v7

    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->getStep()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    :goto_1
    move-wide v9, p1

    goto :goto_2

    :cond_1
    neg-long p1, p1

    goto :goto_1

    :goto_2
    invoke-virtual/range {v4 .. v10}, Lkotlin/ranges/ULongProgression$Companion;->fromClosedRange-7ftBX0g(JJJ)Lkotlin/ranges/ULongProgression;

    move-result-object p0

    return-object p0
.end method

.method public static final until-5PvTz6A(SS)Lkotlin/ranges/UIntRange;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, 0xffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gtz v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lkotlin/ranges/UIntRange;->Companion:Lkotlin/ranges/UIntRange$Companion;

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange$Companion;->getEMPTY()Lkotlin/ranges/UIntRange;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    and-int/2addr p0, v0

    .line 20
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    new-instance v0, Lkotlin/ranges/UIntRange;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/UIntRange;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public static final until-J1ME1BU(II)Lkotlin/ranges/UIntRange;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    xor-int v1, p1, v0

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/ranges/UIntRange;->Companion:Lkotlin/ranges/UIntRange$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange$Companion;->getEMPTY()Lkotlin/ranges/UIntRange;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/ranges/UIntRange;

    .line 19
    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/UIntRange;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final until-Kr8caGY(BB)Lkotlin/ranges/UIntRange;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lkotlin/ranges/UIntRange;->Companion:Lkotlin/ranges/UIntRange$Companion;

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlin/ranges/UIntRange$Companion;->getEMPTY()Lkotlin/ranges/UIntRange;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-instance v0, Lkotlin/ranges/UIntRange;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, p0, p1, v1}, Lkotlin/ranges/UIntRange;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static final until-eb3DHEI(JJ)Lkotlin/ranges/ULongRange;
    .locals 6
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/ExperimentalUnsignedTypes;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    xor-long v2, p2, v0

    .line 4
    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/ranges/ULongRange;->Companion:Lkotlin/ranges/ULongRange$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlin/ranges/ULongRange$Companion;->getEMPTY()Lkotlin/ranges/ULongRange;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    int-to-long v0, v0

    .line 20
    const-wide v2, 0xffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    and-long/2addr v0, v2

    .line 26
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    sub-long/2addr p2, v0

    .line 31
    invoke-static {p2, p3}, Lkotlin/ULong;->constructor-impl(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    new-instance p2, Lkotlin/ranges/ULongRange;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v0, p2

    .line 39
    move-wide v1, p0

    .line 40
    invoke-direct/range {v0 .. v5}, Lkotlin/ranges/ULongRange;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method
