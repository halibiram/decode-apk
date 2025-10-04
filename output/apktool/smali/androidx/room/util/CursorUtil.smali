.class public final Landroidx/room/util/CursorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a#\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a2\u0006\u0002\u0010\n\u001a\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0016\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007\u001a)\u0010\r\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\t2\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010\u001a/\u0010\u0011\u001a\u0002H\u0012\"\u0004\u0008\u0000\u0010\u0012*\u00020\u00012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u00120\u0014H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "copyAndClose",
        "Landroid/database/Cursor;",
        "c",
        "findColumnIndexBySuffix",
        "",
        "cursor",
        "name",
        "",
        "columnNames",
        "",
        "([Ljava/lang/String;Ljava/lang/String;)I",
        "getColumnIndex",
        "getColumnIndexOrThrow",
        "wrapMappedColumns",
        "mapping",
        "",
        "(Landroid/database/Cursor;[Ljava/lang/String;[I)Landroid/database/Cursor;",
        "useCursor",
        "R",
        "block",
        "Lkotlin/Function1;",
        "(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "room-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "CursorUtil"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCursorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CursorUtil.kt\nandroidx/room/util/CursorUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n145#1,7:185\n13644#2,3:192\n1#3:195\n*S KotlinDebug\n*F\n+ 1 CursorUtil.kt\nandroidx/room/util/CursorUtil\n*L\n39#1:185,7\n127#1:192,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final copyAndClose(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/database/MatrixCursor;

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_6

    .line 25
    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_1
    if-ge v4, v3, :cond_5

    .line 38
    .line 39
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getType(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    if-eq v5, v6, :cond_3

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eq v5, v6, :cond_2

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    if-eq v5, v6, :cond_1

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    if-ne v5, v6, :cond_0

    .line 56
    .line 57
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    aput-object v5, v1, v4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_3

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    aput-object v5, v1, v4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getDouble(I)D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    aput-object v5, v1, v4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    aput-object v5, v1, v4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    aput-object v2, v1, v4

    .line 102
    .line 103
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    invoke-static {p0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :goto_3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :catchall_1
    move-exception v1

    .line 116
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw v1
.end method

.method private static final findColumnIndexBySuffix(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    .line 4
    const-string v0, "columnNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->findColumnIndexBySuffix([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final findColumnIndexBySuffix([Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "columnNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x60

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, p0, v5

    add-int/lit8 v8, v6, 0x1

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    add-int/2addr v10, v11

    if-lt v9, v10, :cond_1

    const/4 v9, 0x0

    .line 9
    invoke-static {v7, v0, v4, v11, v9}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return v6

    .line 10
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v1, :cond_1

    invoke-static {v7, v2, v4, v11, v9}, L땦될땹돴뒻돛뒛땯딠땅땮딌딌든땨돰딎딨딄돨땥듌땮뒐됐딸뒈뎡딅뒵뒘땣땩따땳디땥듌땨땧땹땱뒀땬땥땻딹뒨딄땹땅둘뎽뎬땅땁딄딨됩땜됴둥둘돶땜땥땳딟딞됐땁땲됫땻듰딃뒈듌땔땐뎰딸될둔땍둠뒾딹땄땭딅뒹됴땔땍뒘땔땪땝돤딤도뒝땫땰들뒼뒝됴뒨딠뒘둥득뒤뒼됫땀듌딞돶땪듻땵둬딌듽뒀땰땍;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "`"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x60

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ltz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->findColumnIndexBySuffix(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :goto_0
    return v0
.end method

.method public static final getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 10
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string p0, "c.columnNames"

    .line 23
    .line 24
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/16 v8, 0x3f

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    const-string p0, "unknown"

    .line 42
    .line 43
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "column \'"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, "\' does not exist. Available columns: "

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public static final useCursor(Landroid/database/Cursor;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/database/Cursor;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method public static final wrapMappedColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)Landroid/database/Cursor;
    .locals 2
    .param p0    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cursor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "columnNames"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mapping"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    array-length v1, p2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1, p2}, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;-><init>(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string p1, "Expected columnNames.length == mapping.length"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method
