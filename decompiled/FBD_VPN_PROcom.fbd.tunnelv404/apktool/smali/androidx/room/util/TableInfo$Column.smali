.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/util/TableInfo$Column$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0012\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0003J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016R\u0016\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/room/util/TableInfo$Column;",
        "",
        "name",
        "",
        "type",
        "notNull",
        "",
        "primaryKeyPosition",
        "",
        "(Ljava/lang/String;Ljava/lang/String;ZI)V",
        "defaultValue",
        "createdFrom",
        "(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V",
        "affinity",
        "getAffinity$annotations",
        "()V",
        "isPrimaryKey",
        "()Z",
        "equals",
        "other",
        "findAffinity",
        "hashCode",
        "toString",
        "Companion",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/room/util/TableInfo$Column$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final affinity:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final createdFrom:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final defaultValue:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final notNull:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final primaryKeyPosition:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/util/TableInfo$Column$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/util/TableInfo$Column$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link Column#Column(String, String, boolean, int, String, int)} instead."
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 9
    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 5
    iput p4, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 6
    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 7
    iput p6, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 8
    invoke-direct {p0, p2}, Landroidx/room/util/TableInfo$Column;->findAffinity(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    return-void
.end method

.method public static final defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final findAffinity(Ljava/lang/String;)I
    .locals 5
    .annotation build Landroidx/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    const-string v2, "US"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "this as java.lang.String).toUpperCase(locale)"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "INT"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x3

    .line 33
    return p1

    .line 34
    :cond_1
    const-string v1, "CHAR"

    .line 35
    .line 36
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_6

    .line 41
    .line 42
    const-string v1, "CLOB"

    .line 43
    .line 44
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_6

    .line 49
    .line 50
    const-string v1, "TEXT"

    .line 51
    .line 52
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string v1, "BLOB"

    .line 60
    .line 61
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    return v0

    .line 68
    :cond_3
    const-string v0, "REAL"

    .line 69
    .line 70
    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    const-string v0, "FLOA"

    .line 77
    .line 78
    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    const-string v0, "DOUB"

    .line 85
    .line 86
    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 p1, 0x1

    .line 94
    return p1

    .line 95
    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 96
    return p1

    .line 97
    :cond_6
    :goto_1
    return v3
.end method

.method public static synthetic getAffinity$annotations()V
    .locals 0
    .annotation build Landroidx/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo$Column;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    check-cast v3, Landroidx/room/util/TableInfo$Column;

    .line 15
    .line 16
    iget v3, v3, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    .line 20
    return v2

    .line 21
    :cond_2
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 22
    .line 23
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 24
    .line 25
    iget-object v3, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    return v2

    .line 34
    :cond_3
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_4

    .line 39
    .line 40
    return v2

    .line 41
    :cond_4
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-ne v1, v0, :cond_5

    .line 45
    .line 46
    iget v1, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 47
    .line 48
    if-ne v1, v3, :cond_5

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    sget-object v4, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    .line 55
    .line 56
    iget-object v5, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v1, v5}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    return v2

    .line 65
    :cond_5
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 66
    .line 67
    if-ne v1, v3, :cond_6

    .line 68
    .line 69
    iget v1, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 70
    .line 71
    if-ne v1, v0, :cond_6

    .line 72
    .line 73
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    sget-object v3, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    .line 78
    .line 79
    iget-object v4, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v3, v1, v4}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_6

    .line 86
    .line 87
    return v2

    .line 88
    :cond_6
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 89
    .line 90
    if-eqz v1, :cond_8

    .line 91
    .line 92
    iget v3, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    .line 93
    .line 94
    if-ne v1, v3, :cond_8

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    sget-object v3, Landroidx/room/util/TableInfo$Column;->Companion:Landroidx/room/util/TableInfo$Column$Companion;

    .line 101
    .line 102
    iget-object v4, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v3, v1, v4}, Landroidx/room/util/TableInfo$Column$Companion;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    :goto_0
    return v2

    .line 116
    :cond_8
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 117
    .line 118
    iget p1, p1, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 119
    .line 120
    if-ne v1, p1, :cond_9

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    const/4 v0, 0x0

    .line 124
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x4cf

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x4d5

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final isPrimaryKey()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Column{name=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\', type=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', affinity=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', notNull="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", primaryKeyPosition="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", defaultValue=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, "undefined"

    .line 63
    .line 64
    :cond_0
    const-string v2, "\'}"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method
