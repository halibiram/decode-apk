.class public abstract L둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀;
.super L둘딜됐땤땝돴땦돝땬돵뎽뒬뒀드땃돴따딐땄땬땣뎽뒨듨듰듟뒵땵땵딝딄됫둣딠딐뒋땬딅뎽듟뒵땬뒤됨땯든딽뒻딸돨딜땸돸둘뒐뒼됩돰땵뎬둬돠듨딸돶뎽돵됩뒼돶듸뎰됐뒼돛뒘뎨딸듸땟땧도들듐딝땹듼딝듌뒉뒘뎸뒹듟뎻땳딃듼듽돸딄땅둔둔듼듼듐뎻될딎돷둠딎둥땡돨딸뒈뒹뎡땹딃땋땍뒾듔돵땡땃땝;
.source "SourceFile"


# direct methods
.method public static final maxOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    const-string v0, "comparator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, L둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀;->maxOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, L둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀;->maxOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final maxOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final maxOf(Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p2, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    move-object p0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static final minOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    const-string v0, "comparator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, L둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀;->minOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, L둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀;->minOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final minOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static final minOf(Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p2, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    move-object p0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
