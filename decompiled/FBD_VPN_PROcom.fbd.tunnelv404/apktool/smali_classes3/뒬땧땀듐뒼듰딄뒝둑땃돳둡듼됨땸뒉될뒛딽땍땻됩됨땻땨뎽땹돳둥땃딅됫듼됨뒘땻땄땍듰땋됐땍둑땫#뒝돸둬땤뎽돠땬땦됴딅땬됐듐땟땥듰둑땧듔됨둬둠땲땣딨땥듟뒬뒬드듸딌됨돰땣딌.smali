.class public abstract L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;
.super L뒬따뎻딁뒬뎻뒾듌됴됩땅돼땩땭듻돸됐됩듌돼뒘땸딌뎠됨뒐듨뒘돳돰돝딁돤뎻땡뒾두딸돝딤땻되땜뒐딠됫도딎뒤듟딟든뎽딸돶땮땁되딄득듸땯땸될뎹땄딤돳땱땲돰든땍땱땰땠딃듐땝둥딁뒙땟땪뎰듨돸드뒼땔됫뒨뎡도돨돤둬땨뒙뎻됫땪땟땮뒐뒈뒹땠뎸돠됩딽듌딻됐땮둔둘뒨땥따땝땋땋딝든듽딠뒙뒝;
.source "SourceFile"


# direct methods
.method public static final walk(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lkotlin/io/FileTreeWalk;
    .locals 1
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/io/FileWalkDirection;
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
    const-string v0, "direction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/io/FileTreeWalk;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlin/io/FileTreeWalk;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic walk$default(Ljava/io/File;Lkotlin/io/FileWalkDirection;ILjava/lang/Object;)Lkotlin/io/FileTreeWalk;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;->walk(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lkotlin/io/FileTreeWalk;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final walkBottomUp(Ljava/io/File;)Lkotlin/io/FileTreeWalk;
    .locals 1
    .param p0    # Ljava/io/File;
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
    sget-object v0, Lkotlin/io/FileWalkDirection;->BOTTOM_UP:Lkotlin/io/FileWalkDirection;

    .line 7
    .line 8
    invoke-static {p0, v0}, L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;->walk(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lkotlin/io/FileTreeWalk;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;
    .locals 1
    .param p0    # Ljava/io/File;
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
    sget-object v0, Lkotlin/io/FileWalkDirection;->TOP_DOWN:Lkotlin/io/FileWalkDirection;

    .line 7
    .line 8
    invoke-static {p0, v0}, L뒬땧땀듐뒼듰딄뒝둑땃돳둡듼됨땸뒉될뒛딽땍땻됩됨땻땨뎽땹돳둥땃딅됫듼됨뒘땻땄땍듰땋됐땍둑땫땐땐디돸땯땬됐된딜땵둣뒵뒤디들돨됨땫딠듟디딃돰돵땄땝듽돛땡됩돨딀둬뎨땧둘뒹땐돠딽뎽땸딅땁땮듽딞듼뎽딐뒝돸둬땤뎽돠땬땦됴딅땬됐듐땟땥듰둑땧듔됨둬둠땲땣딨땥듟뒬뒬드듸딌됨돰땣딌;->walk(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lkotlin/io/FileTreeWalk;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
