.class public abstract L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;
.super L딸딻듰돳뒘땫듽땪딸딌된될땁땱땠돶득땧뒨돤뒬딎땦듔땹딄딞듟됐뎰뒼땤둬땄된디돶딃뒻듰뒵돷땁돼땔땜드됩된땥돵둘딠돷땔뒻딁땃듸땤뎹뎨땅딽딤듰땃뒝뎬뎡듐땸듔땰둘돤딁둔딄딄딜되땔딹둬듐뒷땧땍돠됫땡두딝따뎸뒙뎻딨땸둡듻듔뒀땀딜듌땹딹딸땤땤둠둥돠돝뒾들되딨뒛땣뎠땜뎹땍땳땻들돤;
.source "SourceFile"


# direct methods
.method public static final varargs createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 3
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/nio/file/attribute/FileAttribute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.9"
    .end annotation

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
    const-string v0, "attributes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 19
    .line 20
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, [Ljava/nio/file/LinkOption;

    .line 25
    .line 26
    invoke-static {v0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    :try_start_0
    array-length v2, p1

    .line 33
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Ljava/nio/file/attribute/FileAttribute;

    .line 38
    .line 39
    array-length v2, p1

    .line 40
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Ljava/nio/file/attribute/FileAttribute;

    .line 45
    .line 46
    invoke-static {v0, p1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "createDirectories(...)"

    .line 51
    .line 52
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 58
    .line 59
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, [Ljava/nio/file/LinkOption;

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    throw p1

    .line 73
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final varargs createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 2
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/nio/file/attribute/FileAttribute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "attributes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createTempDirectory(...)"

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    array-length v1, p2

    .line 11
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length p0, p2

    .line 26
    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/nio/file/attribute/FileAttribute;

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p0
.end method

.method public static synthetic createTempDirectory$default(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;ILjava/lang/Object;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final varargs createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 2
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/nio/file/attribute/FileAttribute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "attributes"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createTempFile(...)"

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    array-length v1, p3

    .line 11
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, [Ljava/nio/file/attribute/FileAttribute;

    .line 16
    .line 17
    invoke-static {p0, p1, p2, p3}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length p0, p3

    .line 26
    invoke-static {p3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/nio/file/attribute/FileAttribute;

    .line 31
    .line 32
    invoke-static {p1, p2, p0}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p0
.end method

.method public static synthetic createTempFile$default(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;ILjava/lang/Object;)Ljava/nio/file/Path;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final fileAttributeViewNotAvailable(Ljava/nio/file/Path;Ljava/lang/Class;)Ljava/lang/Void;
    .locals 3
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "attributeViewClass"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "The desired attribute view type "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " is not available for the file "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 p0, 0x2e

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public static final fileVisitor(Lkotlin/jvm/functions/Function1;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/io/path/FileVisitorBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "builderAction"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/io/path/FileVisitorBuilderImpl;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/io/path/FileVisitorBuilderImpl;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlin/io/path/FileVisitorBuilderImpl;->build()Ljava/nio/file/FileVisitor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final getExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/nio/file/Path;
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
    invoke-static {p0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, ""

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, p0

    .line 30
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic getExtension$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getInvariantSeparatorsPath$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use invariantSeparatorsPathString property instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "invariantSeparatorsPathString"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/io/path/ExperimentalPathApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getInvariantSeparatorsPathString(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/nio/file/Path;
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
    invoke-static {p0}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Ljava/nio/file/FileSystem;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "/"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :goto_0
    return-object p0
.end method

.method public static synthetic getInvariantSeparatorsPathString$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static final getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/nio/file/Path;
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
    invoke-static {p0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    if-nez p0, :cond_1

    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    :cond_1
    return-object p0
.end method

.method public static synthetic getName$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static final getNameWithoutExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/nio/file/Path;
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
    invoke-static {p0}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "."

    .line 21
    .line 22
    invoke-static {p0, v2, v1, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    :cond_0
    const-string p0, ""

    .line 29
    .line 30
    :cond_1
    return-object p0
.end method

.method public static synthetic getNameWithoutExtension$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getPathString$annotations(Ljava/nio/file/Path;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    return-void
.end method

.method public static final listDirectoryEntries(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

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
    const-string v0, "glob"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    invoke-static {p0}, L딤뎸땨땹땨땤뒈득땥땻딤뒀듼뒼뒷듬돛딟든뒬뎬된딝두뒤듟땵땯딐뒤뒉땟도뎬돰땝따땨땐뎬뎬듬딸득땋듔뎡딌둡뎽땟둘땹딟땋드땐뎹둬땤뒘된땁딀딟됩땥듻땡딅뎽디돵둘딽딁될돝딤됴땯딤뒈딃땬땣돶듰뒀돵둣됨땻땐딹딀땍땹딹땍됴돶땵땝땳듸돴땠땮딎돛뎸땡돵돝둔뒨땦돷땟땁뎹딀되딄둘딽돰땔뒬;->뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Ljava/lang/Object;)Ljava/nio/file/DirectoryStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public static synthetic listDirectoryEntries$default(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "*"

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->listDirectoryEntries(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final relativeTo(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 4
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

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
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, p1}, L따둔됴뒝딜딹듐따딞뎽땧딅듌돼딌뒈땵뎰땵되돤땜땐됫됐듐땩딃딹듽땯딸둔듸되듻둡뎹딀듟뒨땀딻뒹뒬될드둘땄뎠땲딸뒷듟듌땄됴딜딀돳땔돰뎸듻딎뒋돵돝땠돷딀딤땥되듽돵뒙돤뒉뒹든뒷딁땣땹딜땭땹땮디뒼듼딁둠뒐뒋뎡땔땡뎨뒾돸뒈딅뒘땅뒘뒀뒐듔드땟땜됨뒼딌따뎹땭돰땍돨땜딤땭땟땳뎰듰땜;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "\nthis path: "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, "\nbase path: "

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1
.end method

.method public static final relativeToOrNull(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, p1}, L따둔됴뒝딜딹듐따딞뎽땧딅듌돼딌뒈땵뎰땵되돤땜땐됫됐듐땩딃딹듽땯딸둔듸되듻둡뎹딀듟뒨땀딻뒹뒬될드둘땄뎠땲딸뒷듟듌땄됴딜딀돳땔돰뎸듻딎뒋돵돝땠돷딀딤땥되듽돵뒙돤뒉뒹든뒷딁땣땹딜땭땹땮디뒼듼딁둠뒐뒋뎡땔땡뎨뒾돸뒈딅뒘땅뒘뒀뒐듔드땟땜됨뒼딌따뎹땭돰땍돨땜딤땭땟땳뎰듰땜;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static final relativeToOrSelf(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.5"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

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
    const-string v0, "base"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->relativeToOrNull(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, p1

    .line 19
    :goto_0
    return-object p0
.end method

.method public static final visitFileTree(Ljava/nio/file/Path;IZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "IZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/io/path/FileVisitorBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->fileVisitor(Lkotlin/jvm/functions/Function1;)Ljava/nio/file/FileVisitor;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->visitFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;IZ)V

    return-void
.end method

.method public static final visitFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;IZ)V
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/file/FileVisitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/FileVisitor<",
            "Ljava/nio/file/Path;",
            ">;IZ)V"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌()Ljava/nio/file/FileVisitOption;

    move-result-object p3

    invoke-static {p3}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 2
    :goto_0
    invoke-static {p0, p3, p2, p1}, L따딻딄땀둘딽됨딟듻뎠드딎딄듌돼뎻땝땲뒐듻땸뎻둑둣뒤땲딄돳뎻뎽듻뒋들돛땹들딌딄들뒝땣돠딅딸돴뒛땮땯돵땪딝딎땮둘뒵땟땔될돶땍뒬뒝딞땝땡땰뒨듽됨딽듸둑돨듟땡둘듌땪땯땻들둥뎻딠땦듐뒋듌딄뎬뎹땰득땠딄될뎡뒝땤듐딝딝돛둥듟딹땮뎨뒋듌땱땳땳돰둔뎹땡돠딻뒐딜딁들됫들돰딄뒋뒙뒝;->뎬듟들뒀뒹딞딐딌드뒋든뒝됴뒼돳뒀뒾됐뎨땁땟뎬뎽딜땰땲따땪뎠뒼뎨뒉딄땐뒵땨딠뒀돼돛딸돳딎돼땰딐딞뎨됐딝땭뎬땩듨뒐뎽땻땐둥딄됐딄둣뒹돨딤땠둣땧듼뎨뒨둥땟딁땦딽땟딅땹땃땨됩딌땔땠땦돤땲땣듸땰땭딤듰딞딐뒤딃듸듽뒨땄딞땯뒾듽뎸돛딎딄땮땳뒋뒛땻뒹땀될땋둠들뎹돝뒀딝딌뒾뒵딨(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)V

    return-void
.end method

.method public static synthetic visitFileTree$default(Ljava/nio/file/Path;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-static {p0, p1, p2, p3}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->visitFileTree(Ljava/nio/file/Path;IZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic visitFileTree$default(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const p2, 0x7fffffff

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3}, L딸땃땦듔뒵땠됩땔뒾딃뒘돛딃딐듌딌뎻땔땤딨듌딸딃땬듻뒋땔뒻땝딜듻땝땹땐듰듌땟둥땹땅듰땁둠뒻돶뒉땅뒤디돷땟딎땣딜듻땯땫땰듬딞뒛딄듔땲땠듌땔뎻땸딄돸땠딁땪땋딞듻땭따뒼됴둡듟뒵땪듨됫됩뎻딄돶듼뎡땧딅뒨딝두딻돤드땀됴딌땰둣드됩디뎠땹뒼땔뒷딹둠도돷딝땍뒈땳땣돼듌땄따딜뎠드;->visitFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;IZ)V

    return-void
.end method

.method public static final varargs walk(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)Lkotlin/sequences/Sequence;
    .locals 1
    .param p0    # Ljava/nio/file/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Lkotlin/io/path/PathWalkOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Lkotlin/io/path/PathWalkOption;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/io/path/ExperimentalPathApi;
        }
    .end annotation

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
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlin/io/path/PathTreeWalk;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lkotlin/io/path/PathTreeWalk;-><init>(Ljava/nio/file/Path;[Lkotlin/io/path/PathWalkOption;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
