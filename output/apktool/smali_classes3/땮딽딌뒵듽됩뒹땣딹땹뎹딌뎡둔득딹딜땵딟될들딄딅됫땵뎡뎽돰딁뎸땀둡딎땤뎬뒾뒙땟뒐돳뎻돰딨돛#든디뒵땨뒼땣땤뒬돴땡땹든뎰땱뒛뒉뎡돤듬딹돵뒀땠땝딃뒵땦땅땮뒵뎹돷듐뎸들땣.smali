.class public abstract L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final maxOf-5PvTz6A(SS)S
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
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, p1

    .line 15
    :goto_0
    return p0
.end method

.method public static final maxOf-J1ME1BU(II)I
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
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p0, p1

    .line 14
    :goto_0
    return p0
.end method

.method public static final maxOf-Kr8caGY(BB)B
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
    if-ltz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, p1

    .line 13
    :goto_0
    return p0
.end method

.method public static final varargs maxOf-Md2H83M(I[I)I
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->maxOf-J1ME1BU(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method

.method public static final varargs maxOf-R03FKyM(J[J)J
    .locals 4
    .param p2    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {p0, p1, v2, v3}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->maxOf-eb3DHEI(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide p0
.end method

.method public static final varargs maxOf-Wr6uiD8(B[B)B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UByteArray;->getSize-impl([B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->maxOf-Kr8caGY(BB)B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method

.method public static final maxOf-eb3DHEI(JJ)J
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
    if-ltz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide p0, p2

    .line 14
    :goto_0
    return-wide p0
.end method

.method public static final varargs maxOf-t1qELG4(S[S)S
    .locals 3
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->maxOf-5PvTz6A(SS)S

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method

.method public static final minOf-5PvTz6A(SS)S
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
    if-gtz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, p1

    .line 15
    :goto_0
    return p0
.end method

.method public static final minOf-J1ME1BU(II)I
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
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p0, p1

    .line 14
    :goto_0
    return p0
.end method

.method public static final minOf-Kr8caGY(BB)B
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
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, p1

    .line 13
    :goto_0
    return p0
.end method

.method public static final varargs minOf-Md2H83M(I[I)I
    .locals 3
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->minOf-J1ME1BU(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method

.method public static final varargs minOf-R03FKyM(J[J)J
    .locals 4
    .param p2    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {p0, p1, v2, v3}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->minOf-eb3DHEI(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-wide p0
.end method

.method public static final varargs minOf-Wr6uiD8(B[B)B
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UByteArray;->getSize-impl([B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UByteArray;->get-w2LRezQ([BI)B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->minOf-Kr8caGY(BB)B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method

.method public static final minOf-eb3DHEI(JJ)J
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
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide p0, p2

    .line 14
    :goto_0
    return-wide p0
.end method

.method public static final varargs minOf-t1qELG4(S[S)S
    .locals 3
    .param p1    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/ExperimentalUnsignedTypes;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {p0, v2}, L땮딽딌뒵듽됩뒹땣딹땹뎹딌뎡둔득딹딜땵딟될들딄딅됫땵뎡뎽돰딁뎸땀둡딎땤뎬뒾뒙땟뒐돳뎻돰딨돛땫땯뒹딟땋듬돵땫땁딄돠돷뒈듻드뎡땻돼두땻딠땳딽뒘뒝딨뒼뒾딝됩땻땻뒋된땲땮듬딝땥둡됩돼돸돨둘듻딨뒋둬뒋든디뒵땨뒼땣땤뒬돴땡땹든뎰땱뒛뒉뎡돤듬딹돵뒀땠땝딃뒵땦땅땮뒵뎹돷듐뎸들땣;->minOf-5PvTz6A(SS)S

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p0
.end method
