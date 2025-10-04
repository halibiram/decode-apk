.class public final Lcoil3/UriKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0007\u001aS\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u001d\u0010\n\u001a\u00020\u0007*\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\"\u001b\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000c*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0000*\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "",
        "scheme",
        "authority",
        "path",
        "query",
        "fragment",
        "separator",
        "Lcoil3/Uri;",
        "Uri",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;",
        "toUri",
        "(Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;",
        "",
        "getPathSegments",
        "(Lcoil3/Uri;)Ljava/util/List;",
        "pathSegments",
        "getFilePath",
        "(Lcoil3/Uri;)Ljava/lang/String;",
        "filePath",
        "coil-core_release"
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
.method public static final Uri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;
    .locals 9
    .param p0    # Ljava/lang/String;
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
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "At least one of scheme, authority, path, query, or fragment must be non-null."

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    new-instance v8, Lcoil3/Uri;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x3a

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_2
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const-string v1, "//"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_3
    if-eqz p2, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_4
    if-eqz p3, :cond_5

    .line 53
    .line 54
    const/16 v1, 0x3f

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_5
    if-eqz p4, :cond_6

    .line 63
    .line 64
    const/16 v1, 0x23

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v0, v8

    .line 77
    move-object v2, p5

    .line 78
    move-object v3, p0

    .line 79
    move-object v4, p1

    .line 80
    move-object v5, p2

    .line 81
    move-object v6, p3

    .line 82
    move-object v7, p4

    .line 83
    invoke-direct/range {v0 .. v7}, Lcoil3/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v8
.end method

.method public static synthetic Uri$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcoil3/Uri;
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object p0, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move-object p1, v0

    .line 12
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    move-object p2, v0

    .line 17
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move-object p3, v0

    .line 22
    :cond_3
    and-int/lit8 p7, p6, 0x10

    .line 23
    .line 24
    if-eqz p7, :cond_4

    .line 25
    .line 26
    move-object p4, v0

    .line 27
    :cond_4
    and-int/lit8 p6, p6, 0x20

    .line 28
    .line 29
    if-eqz p6, :cond_5

    .line 30
    .line 31
    sget-object p5, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 32
    .line 33
    :cond_5
    invoke-static/range {p0 .. p5}, Lcoil3/UriKt;->Uri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static final getFilePath(Lcoil3/Uri;)Ljava/lang/String;
    .locals 11
    .param p0    # Lcoil3/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcoil3/Uri;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcoil3/Uri;->getSeparator()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x2

    .line 26
    invoke-static {v1, v3, v4, v5, v2}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcoil3/Uri;->getSeparator()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    move-object v4, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string v1, ""

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lcoil3/Uri;->getSeparator()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v2, v0

    .line 46
    check-cast v2, Ljava/lang/Iterable;

    .line 47
    .line 48
    const/16 v9, 0x3c

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static final getPathSegments(Lcoil3/Uri;)Ljava/util/List;
    .locals 9
    .param p0    # Lcoil3/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcoil3/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v7, -0x1

    .line 18
    const/4 v0, -0x1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ge v0, v1, :cond_3

    .line 24
    .line 25
    add-int/lit8 v8, v0, 0x1

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v1, 0x2f

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move v2, v8

    .line 34
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v7, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :cond_2
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "substring(...)"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-object v6
.end method

.method public static final toUri(Ljava/lang/String;)Lcoil3/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcoil3/UriKt;->toUri$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcoil3/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final toUri(Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "/"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string v3, "/"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-eq v11, v12, :cond_6

    const/16 v12, 0x2f

    if-eq v11, v12, :cond_4

    const/16 v13, 0x3a

    if-eq v11, v13, :cond_2

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_1

    goto :goto_3

    :cond_1
    if-ne v8, v3, :cond_7

    if-ne v5, v3, :cond_7

    add-int/lit8 v8, v4, 0x1

    goto :goto_3

    :cond_2
    if-eqz v7, :cond_7

    if-ne v8, v3, :cond_7

    if-ne v5, v3, :cond_7

    add-int/lit8 v11, v4, 0x2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_3

    add-int/lit8 v13, v4, 0x1

    .line 7
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_3

    .line 8
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v12, :cond_3

    add-int/lit8 v9, v4, 0x3

    move v10, v4

    move v4, v11

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v6, v4, 0x1

    move v10, v4

    move v4, v6

    move v9, v4

    goto :goto_3

    :cond_4
    if-ne v6, v3, :cond_7

    if-ne v8, v3, :cond_7

    if-ne v5, v3, :cond_7

    if-ne v9, v3, :cond_5

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    move v6, v4

    goto :goto_2

    :cond_6
    if-ne v5, v3, :cond_7

    add-int/lit8 v5, v4, 0x1

    :cond_7
    :goto_3
    add-int/2addr v4, v1

    goto :goto_1

    :cond_8
    const p0, 0x7fffffff

    if-ne v5, v3, :cond_9

    const v1, 0x7fffffff

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v5, -0x1

    .line 10
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ne v8, v3, :cond_a

    const v4, 0x7fffffff

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v8, -0x1

    .line 11
    :goto_5
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 12
    const-string v7, "substring(...)"

    const/4 v11, 0x0

    if-eq v9, v3, :cond_c

    .line 13
    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v6, v3, :cond_b

    goto :goto_6

    :cond_b
    move p0, v6

    .line 14
    :goto_6
    invoke-static {p0, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 15
    invoke-virtual {v2, v9, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object p0, v11

    move-object v10, p0

    :goto_7
    if-eq v6, v3, :cond_d

    .line 16
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    move-object v4, v11

    :goto_8
    if-eq v8, v3, :cond_e

    .line 17
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    move-object v1, v11

    :goto_9
    if-eq v5, v3, :cond_f

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    move-object v3, v11

    :goto_a
    if-eqz v10, :cond_10

    .line 19
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    :goto_b
    if-eqz p0, :cond_11

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_c
    if-eqz v4, :cond_12

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    if-eqz v1, :cond_13

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    if-eqz v3, :cond_14

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    .line 24
    :goto_f
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 25
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 26
    new-array v0, v0, [B

    .line 27
    new-instance v9, Lcoil3/Uri;

    if-eqz v10, :cond_15

    .line 28
    invoke-static {v10, v0}, Lcoil3/UriKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_15
    move-object v5, v11

    :goto_10
    if-eqz p0, :cond_16

    .line 29
    invoke-static {p0, v0}, Lcoil3/UriKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_16
    move-object p0, v11

    :goto_11
    if-eqz v4, :cond_17

    .line 30
    invoke-static {v4, v0}, Lcoil3/UriKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    goto :goto_12

    :cond_17
    move-object v6, v11

    :goto_12
    if-eqz v1, :cond_18

    .line 31
    invoke-static {v1, v0}, Lcoil3/UriKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_13

    :cond_18
    move-object v7, v11

    :goto_13
    if-eqz v3, :cond_19

    .line 32
    invoke-static {v3, v0}, Lcoil3/UriKt;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_14

    :cond_19
    move-object v8, v11

    :goto_14
    move-object v1, v9

    move-object v3, p1

    move-object v4, v5

    move-object v5, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lcoil3/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static synthetic toUri$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcoil3/Uri;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcoil3/UriKt;->toUri(Ljava/lang/String;Ljava/lang/String;)Lcoil3/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-lt v2, v1, :cond_1

    .line 14
    .line 15
    if-ne v2, v5, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    if-lt v2, v0, :cond_2

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x5

    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v3, p1

    .line 25
    invoke-static/range {v3 .. v8}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->decodeToString$default([BIIZILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x25

    .line 35
    .line 36
    if-ne v3, v4, :cond_2

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    add-int/lit8 v4, v2, 0x3

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v6, "substring(...)"

    .line 47
    .line 48
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x10

    .line 52
    .line 53
    invoke-static {v6}, Lkotlin/text/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;->checkRadix(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    int-to-byte v3, v3

    .line 62
    aput-byte v3, p1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    move v2, v4

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    int-to-byte v3, v3

    .line 73
    aput-byte v3, p1, v5

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0
.end method
