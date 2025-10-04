.class final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0002\u0018\u0000 /2\u00020\u0001:\u0003-./B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0016J \u0010\'\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010+\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020!H\u0016J \u0010,\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "context",
        "Landroid/content/Context;",
        "name",
        "",
        "dbRef",
        "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;",
        "callback",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;",
        "allowDataLossOnRecovery",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V",
        "getAllowDataLossOnRecovery",
        "()Z",
        "getCallback",
        "()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;",
        "getContext",
        "()Landroid/content/Context;",
        "getDbRef",
        "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;",
        "lock",
        "Landroidx/sqlite/util/ProcessLock;",
        "migrated",
        "opened",
        "close",
        "",
        "getSupportDatabase",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "writable",
        "getWrappedDb",
        "Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;",
        "sqLiteDatabase",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "getWritableOrReadableDatabase",
        "innerGetDatabase",
        "onConfigure",
        "db",
        "onCreate",
        "onDowngrade",
        "oldVersion",
        "",
        "newVersion",
        "onOpen",
        "onUpgrade",
        "CallbackException",
        "CallbackName",
        "Companion",
        "sqlite-framework_release"
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
.field public static final Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allowDataLossOnRecovery:Z

.field private final callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dbRef:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Landroidx/sqlite/util/ProcessLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private migrated:Z

.field private opened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dbRef"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v5, p4, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    .line 17
    .line 18
    new-instance v6, Landroidx/sqlite/db/framework/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 19
    .line 20
    invoke-direct {v6, p4, p3}, Landroidx/sqlite/db/framework/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;)V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->context:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->dbRef:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 33
    .line 34
    iput-object p4, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 35
    .line 36
    iput-boolean p5, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->allowDataLossOnRecovery:Z

    .line 37
    .line 38
    new-instance p3, Landroidx/sqlite/util/ProcessLock;

    .line 39
    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p4, "randomUUID().toString()"

    .line 51
    .line 52
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p4, 0x0

    .line 60
    invoke-direct {p3, p2, p1, p4}, Landroidx/sqlite/util/ProcessLock;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 61
    .line 62
    .line 63
    iput-object p3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 64
    .line 65
    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    const-string v0, "$callback"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$dbRef"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;

    .line 12
    .line 13
    const-string v1, "dbObj"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;->getWrappedDb(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final getWritableOrReadableDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    const-string v0, "{\n                super.\u2026eDatabase()\n            }"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p1
.end method

.method private final innerGetDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->opened:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableOrReadableDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x1f4

    .line 44
    .line 45
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :try_start_2
    invoke-direct {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableOrReadableDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    return-object p1

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 55
    .line 56
    .line 57
    instance-of v2, v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    check-cast v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->getCause()Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->getCallbackName()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    aget v1, v3, v1

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    if-eq v1, v3, :cond_2

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    if-eq v1, v3, :cond_2

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    if-eq v1, v3, :cond_2

    .line 87
    .line 88
    const/4 v3, 0x4

    .line 89
    if-eq v1, v3, :cond_2

    .line 90
    .line 91
    instance-of v1, v2, Landroid/database/sqlite/SQLiteException;

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    throw v2

    .line 97
    :cond_2
    throw v2

    .line 98
    :cond_3
    instance-of v2, v1, Landroid/database/sqlite/SQLiteException;

    .line 99
    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    iget-boolean v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->allowDataLossOnRecovery:Z

    .line 105
    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    :goto_0
    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->context:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    :try_start_3
    invoke-direct {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWritableOrReadableDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    .line 115
    .line 116
    move-result-object p1
    :try_end_3
    .catch Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException; {:try_start_3 .. :try_end_3} :catch_1

    .line 117
    return-object p1

    .line 118
    :catch_1
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;->getCause()Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    throw p1

    .line 124
    :cond_4
    throw v1

    .line 125
    :cond_5
    throw v1
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->_init_$lambda$0(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2}, Landroidx/sqlite/util/ProcessLock;->lock$default(Landroidx/sqlite/util/ProcessLock;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->dbRef:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;->setDb(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 15
    .line 16
    .line 17
    iput-boolean v3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final getAllowDataLossOnRecovery()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->allowDataLossOnRecovery:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCallback()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDbRef()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->dbRef:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->opened:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/sqlite/util/ProcessLock;->lock(Z)V

    .line 20
    .line 21
    .line 22
    iput-boolean v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->innerGetDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-boolean v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :goto_1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->lock:Landroidx/sqlite/util/ProcessLock;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/sqlite/util/ProcessLock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sqLiteDatabase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->dbRef:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;->getWrappedDb(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 11
    .line 12
    iget v0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 36
    .line 37
    sget-object v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;->ON_CONFIGURE:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sqLiteDatabase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 18
    .line 19
    sget-object v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;->ON_CREATE:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    new-instance p2, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 21
    .line 22
    sget-object p3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;->ON_DOWNGRADE:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 23
    .line 24
    invoke-direct {p2, p3, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 22
    .line 23
    sget-object v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;->ON_OPEN:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 24
    .line 25
    invoke-direct {v0, v1, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->opened:Z

    .line 31
    .line 32
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sqLiteDatabase"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->migrated:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    new-instance p2, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;

    .line 21
    .line 22
    sget-object p3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;->ON_UPGRADE:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;

    .line 23
    .line 24
    invoke-direct {p2, p3, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p2
.end method
