.class public final Landroidx/room/QueryInterceptorDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\t\u0010.\u001a\u00020(H\u0096\u0001J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u000bH\u0016J4\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\u000b2\u0008\u00104\u001a\u0004\u0018\u00010\u000b2\u0012\u00105\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001\u00a2\u0006\u0002\u00108J\t\u00109\u001a\u00020(H\u0097\u0001J\t\u0010:\u001a\u00020\u000fH\u0096\u0001J\u0008\u0010;\u001a\u00020(H\u0016J,\u0010<\u001a\u00020(2\u0006\u00101\u001a\u00020\u000b2\u0014\u0008\u0001\u0010=\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001\u00a2\u0006\u0002\u0010>J\u0010\u0010?\u001a\u00020(2\u0006\u00101\u001a\u00020\u000bH\u0016J\'\u0010?\u001a\u00020(2\u0006\u00101\u001a\u00020\u000b2\u0010\u0010=\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010706H\u0016\u00a2\u0006\u0002\u0010>J\t\u0010@\u001a\u00020\u000fH\u0096\u0001J!\u0010A\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0096\u0001J\u0011\u0010E\u001a\u00020\u000f2\u0006\u0010F\u001a\u00020\"H\u0096\u0001J\u0010\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020IH\u0016J\u001a\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0010\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020\u000bH\u0016J\'\u0010G\u001a\u00020H2\u0006\u0010G\u001a\u00020\u000b2\u0010\u0010=\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010706H\u0016\u00a2\u0006\u0002\u0010LJ\u0011\u0010M\u001a\u00020(2\u0006\u0010N\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010O\u001a\u00020(2\u0006\u0010P\u001a\u00020QH\u0096\u0001J\u0011\u0010R\u001a\u00020(2\u0006\u0010S\u001a\u00020\"H\u0096\u0001J\u0011\u0010T\u001a\u00020\u00172\u0006\u0010U\u001a\u00020\u0017H\u0096\u0001J\u0008\u0010V\u001a\u00020(H\u0016JD\u0010W\u001a\u00020\"2\u0006\u00103\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020D2\u0008\u00104\u001a\u0004\u0018\u00010\u000b2\u0012\u00105\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u000107\u0018\u000106H\u0096\u0001\u00a2\u0006\u0002\u0010XJ\t\u0010Y\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010Y\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u0017H\u0096\u0001R(\u0010\u0008\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n\u0018\u00010\t8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0012\u0010\u0013\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0010R\u0012\u0010\u0014\u001a\u00020\u000fX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u000f8WX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0010R\u0012\u0010\u0016\u001a\u00020\u0017X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001a\u001a\u00020\u0017X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u0019\"\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u000bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010!\u001a\u00020\"X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006["
    }
    d2 = {
        "Landroidx/room/QueryInterceptorDatabase;",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "delegate",
        "queryCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "queryCallback",
        "Landroidx/room/RoomDatabase$QueryCallback;",
        "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V",
        "attachedDbs",
        "",
        "Landroid/util/Pair;",
        "",
        "getAttachedDbs",
        "()Ljava/util/List;",
        "isDatabaseIntegrityOk",
        "",
        "()Z",
        "isDbLockedByCurrentThread",
        "isExecPerConnectionSQLSupported",
        "isOpen",
        "isReadOnly",
        "isWriteAheadLoggingEnabled",
        "maximumSize",
        "",
        "getMaximumSize",
        "()J",
        "pageSize",
        "getPageSize",
        "setPageSize",
        "(J)V",
        "path",
        "getPath",
        "()Ljava/lang/String;",
        "version",
        "",
        "getVersion",
        "()I",
        "setVersion",
        "(I)V",
        "beginTransaction",
        "",
        "beginTransactionNonExclusive",
        "beginTransactionWithListener",
        "transactionListener",
        "Landroid/database/sqlite/SQLiteTransactionListener;",
        "beginTransactionWithListenerNonExclusive",
        "close",
        "compileStatement",
        "Landroidx/sqlite/db/SupportSQLiteStatement;",
        "sql",
        "delete",
        "table",
        "whereClause",
        "whereArgs",
        "",
        "",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I",
        "disableWriteAheadLogging",
        "enableWriteAheadLogging",
        "endTransaction",
        "execPerConnectionSQL",
        "bindArgs",
        "(Ljava/lang/String;[Ljava/lang/Object;)V",
        "execSQL",
        "inTransaction",
        "insert",
        "conflictAlgorithm",
        "values",
        "Landroid/content/ContentValues;",
        "needUpgrade",
        "newVersion",
        "query",
        "Landroid/database/Cursor;",
        "Landroidx/sqlite/db/SupportSQLiteQuery;",
        "cancellationSignal",
        "Landroid/os/CancellationSignal;",
        "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
        "setForeignKeyConstraintsEnabled",
        "enabled",
        "setLocale",
        "locale",
        "Ljava/util/Locale;",
        "setMaxSqlCacheSize",
        "cacheSize",
        "setMaximumSize",
        "numBytes",
        "setTransactionSuccessful",
        "update",
        "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I",
        "yieldIfContendedSafely",
        "sleepAfterYieldDelayMillis",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueryInterceptorDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryInterceptorDatabase.kt\nandroidx/room/QueryInterceptorDatabase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,146:1\n1#2:147\n37#3,2:148\n*S KotlinDebug\n*F\n+ 1 QueryInterceptorDatabase.kt\nandroidx/room/QueryInterceptorDatabase\n*L\n143#1:148,2\n*E\n"
    }
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallback:Landroidx/room/RoomDatabase$QueryCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallbackExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "queryCallbackExecutor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "queryCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 24
    .line 25
    return-void
.end method

.method private static final beginTransaction$lambda$0(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final beginTransactionNonExclusive$lambda$1(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "BEGIN DEFERRED TRANSACTION"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final beginTransactionWithListener$lambda$2(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final beginTransactionWithListenerNonExclusive$lambda$3(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "BEGIN DEFERRED TRANSACTION"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final endTransaction$lambda$4(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "END TRANSACTION"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final execSQL$lambda$10(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$sql"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, p1, v0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final execSQL$lambda$12(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$sql"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$inputArguments"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final query$lambda$6(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$query"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, p1, v0}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final query$lambda$7(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$query"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$bindArgs"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 17
    .line 18
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final query$lambda$8(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$query"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$queryInterceptorProgram"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroidx/room/QueryInterceptorProgram;->getBindArgsCache$room_runtime_release()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final query$lambda$9(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$query"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$queryInterceptorProgram"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroidx/room/QueryInterceptorProgram;->getBindArgsCache$room_runtime_release()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p0, p1, p2}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final setTransactionSuccessful$lambda$5(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 7
    .line 8
    const-string v0, "TRANSACTION SUCCESSFUL"

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p0, v0, v1}, Landroidx/room/RoomDatabase$QueryCallback;->onQuery(Ljava/lang/String;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/QueryInterceptorDatabase;->execSQL$lambda$10(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->endTransaction$lambda$4(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->setTransactionSuccessful$lambda$5(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/QueryInterceptorDatabase;->execSQL$lambda$12(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->beginTransaction$lambda$0(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->beginTransactionNonExclusive$lambda$1(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/QueryInterceptorDatabase;->query$lambda$7(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->beginTransactionWithListener$lambda$2(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/QueryInterceptorDatabase;->query$lambda$6(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Landroidx/room/QueryInterceptorDatabase;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->beginTransactionWithListenerNonExclusive$lambda$3(Landroidx/room/QueryInterceptorDatabase;)V

    return-void
.end method

.method public static synthetic 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/QueryInterceptorDatabase;->query$lambda$8(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    return-void
.end method

.method public static synthetic 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/QueryInterceptorDatabase;->query$lambda$9(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteTransactionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "transactionListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteTransactionListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "transactionListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sql"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/room/QueryInterceptorStatement;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 17
    .line 18
    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/room/QueryInterceptorStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public disableWriteAheadLogging()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->disableWriteAheadLogging()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->enableWriteAheadLogging()Z

    move-result v0

    return v0
.end method

.method public endTransaction()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "ArrayReturn"
            }
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execPerConnectionSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L딻땧뒬딞뒼땬돠뎹딻돴뒨든땀땜두돝됫딤땜딀뎰딎돰둡뒙뒛땹뎬돼돰땻됫딠됴뒬된딠돸돳땵딌딸득땧딃돠돝땪됩듨딠땜뎽딀딠뒻됨뒷듸땭딨딤딽뒵돠땡돛땍뎽땦땟듼뒙돝뒹뒬땱돶땍땻됐땡뒛땻뎸딻땻딤됴뒼땡딤듌듔딄뒨뒬됴땰딄땐돴땫땋땸땁땹듟땁든뒉뒾딁두땜듟듬돶뎡땅듐뎨돨둬땰땐뎠땯땀딟;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, L딻땧뒬딞뒼땬돠뎹딻돴뒨든땀땜두돝됫딤땜딀뎰딎돰둡뒙뒛땹뎬돼돰땻됫딠됴뒬된딠돸돳땵딌딸득땧딃돠돝땪됩듨딠땜뎽딀딠뒻됨뒷듸땭딨딤딽뒵돠땡돛땍뎽땦땟듼뒙돝뒹뒬땱돶땍땻됐땡뒛땻뎸딻땻딤됴뒼땡딤듌듔딄뒨뒬됴땰딄땐돴땫땋땸땁땹듟땁든뒉뒾딁두땜듟듬돶뎡땅듐뎨돨둬땰땐뎠땯땀딟;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, p2}, L됴뒛땣딽땣딽뎨되땍됫딞듔땍딃땔뎬땍뒐도둑돰돛됫됫땡딐둑딹돷듨뒷득뒼됐둔땜뒋땔딠디돛돠땹땩됴딌뒋땳돵딎돶뒨땬뎽듽돶땅뎹돠땔땐두뒻드땱딄돸땮뒛땤뒈땠딽땤된딀딹뒵뒾뎠돛뎬됐뎨돛딁뎸땨둥딃되뒘뒨땰됴듼땬땝땻땭뒷둡돠딠뒈땠됫뎡땋땹땠땳땮돰뒤땠땥뎰돷돶뒈뒐뒻땱딄둔뒤땦땰땠;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v0}, L됴뎹뎨땪든땻드땔딀둬돠딎뒻뒻딄둬따뎠듨둠딐뒈딟땵뒉둔돰됫뎸뒾땱됩돶두돝됴따둥땫뒝딄뒷듽딃땍됨딸뒵듨듸돛땁뎽듼딎듐딽될뒷둡돤듌땮됩들땧땔뒘됩딄뎡됴뎠딐듔딽땯땲딞뎻뎠딌땄땥돷둠딐돳땜땤둔돳두듻둥두딨되뎬될됫돝뒋땤땮땯땧뎽땁되땯딃딝땠땸됨둑뎠땪뎡뒬땔뎨땁돳뎡둠땫땣뒈;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2, p1, p2}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    check-cast p2, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSize()J
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isExecPerConnectionSQLSupported()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isExecPerConnectionSQLSupported()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public needUpgrade(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z

    move-result p1

    return p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 4
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/room/QueryInterceptorProgram;

    invoke-direct {v0}, Landroidx/room/QueryInterceptorProgram;-><init>()V

    .line 6
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 7
    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, L딽뎨땦딃땠돴뎨들도땡뒷듟돸뒙딟땨도딹딻듔뎽듻돛땀돝땃뒻돛디땄딞듸땥듽땩듔둑땃땮땳땬뒛딸땅땬뒤땤땰됨두땣딐뎡땜딻뒘땫뒐뒀땍딎땵뒤땧듐땍땃딄땐땧돷뒻돵뒝뒈둥땄딸득딄디딌돰듐돤딟딄땲뒘듰뒹딄딨딽땪땱땡땃듟뒵딁뒹땦딅땠땝땮둑땋땄땫듸뒼둣뒉땫든득듔딸딽됨땀두돼뒹듬돳땮딞;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, L딽뎨땦딃땠돴뎨들도땡뒷듟돸뒙딟땨도딹딻듔뎽듻돛땀돝땃뒻돛디땄딞듸땥듽땩듔둑땃땮땳땬뒛딸땅땬뒤땤땰됨두땣딐뎡땜딻뒘땫뒐뒀땍딎땵뒤땧듐땍땃딄땐땧돷뒻돵뒝뒈둥땄딸득딄디딌돰듐돤딟딄땲뒘듰뒹딄딨딽땪땱땡땃듟뒵딁뒹땦딅땠땝땮둑땋땄땫듸뒼둣뒉땫든득듔딸딽됨땀두돼뒹듬돳땮딞;-><init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Landroidx/sqlite/db/SupportSQLiteQuery;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "query"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p2, Landroidx/room/QueryInterceptorProgram;

    invoke-direct {p2}, Landroidx/room/QueryInterceptorProgram;-><init>()V

    .line 10
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 11
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L딽뎨땦딃땠돴뎨들도땡뒷듟돸뒙딟땨도딹딻듔뎽듻돛땀돝땃뒻돛디땄딞듸땥듽땩듔둑땃땮땳땬뒛딸땅땬뒤땤땰됨두땣딐뎡땜딻뒘땫뒐뒀땍딎땵뒤땧듐땍땃딄땐땧돷뒻돵뒝뒈둥땄딸득딄디딌돰듐돤딟딄땲뒘듰뒹딄딨딽땪땱땡땃듟뒵딁뒹땦딅땠땝땮둑땋땄땫듸뒼둣뒉땫든득듔딸딽됨땀두돼뒹듬돳땮딞;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, L딽뎨땦딃땠돴뎨들도땡뒷듟돸뒙딟땨도딹딻듔뎽듻돛땀돝땃뒻돛디땄딞듸땥듽땩듔둑땃땮땳땬뒛딸땅땬뒤땤땰됨두땣딐뎡땜딻뒘땫뒐뒀땍딎땵뒤땧듐땍땃딄땐땧돷뒻돵뒝뒈둥땄딸득딄디딌돰듐돤딟딄땲뒘듰뒹딄딨딽땪땱땡땃듟뒵딁뒹땦딅땠땝땮둑땋땄땫듸뒼둣뒉땫든득듔딸딽됨땀두돼뒹듬돳땮딞;-><init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    iget-object p2, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p2, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L딻땧뒬딞뒼땬돠뎹딻돴뒨든땀땜두돝됫딤땜딀뎰딎돰둡뒙뒛땹뎬돼돰땻됫딠됴뒬된딠돸돳땵딌딸득땧딃돠돝땪됩듨딠땜뎽딀딠뒻됨뒷듸땭딨딤딽뒵돠땡돛땍뎽땦땟듼뒙돝뒹뒬땱돶땍땻됐땡뒛땻뎸딻땻딤됴뒼땡딤듌듔딄뒨뒬됴땰딄땐돴땫땋땸땁땹듟땁든뒉뒾딁두땜듟듬돶뎡땅듐뎨돨둬땰땐뎠땯땀딟;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, L딻땧뒬딞뒼땬돠뎹딻돴뒨든땀땜두돝됫딤땜딀뎰딎돰둡뒙뒛땹뎬돼돰땻됫딠됴뒬된딠돸돳땵딌딸득땧딃돠돝땪됩듨딠땜뎽딀딠뒻됨뒷듸땭딨딤딽뒵돠땡돛땍뎽땦땟듼뒙돝뒹뒬땱돶땍땻됐땡뒛땻뎸딻땻딤됴뒼땡딤듌듔딄뒨뒬됴땰딄땐돴땫땋땸땁땹듟땁든뒉뒾딁두땜듟듬돶뎡땅듐뎨돨둬땰땐뎠땯땀딟;-><init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2, p1, p2}, L뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1    # Ljava/util/Locale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaxSqlCacheSize(I)V

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaximumSize(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPageSize(J)V
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setPageSize(J)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p0, v2}, L딻땧뒉땋듻땵돠돷돶둬둑딽땮땲땋딻딁땱땸뒙땀들듰듼뎽땬땧뒝뎨땳땃땦땳뒉땱뎻땭땜둥뒀돴듽땩딁땭딝디땮딻뒵됫땀뒹뒋듬땅돨듔딠땥땠땋듽땄딌디딻돰뎽듟딨딞딃땧돤됨뒙듌땪딻땬뎬든돠돳둬뎽됐뒨땝득둔딀뎡딀딎땝땻뎠듰땟뎰뒨뒈딨땮둑땝땯듟듐뎨땬뒙딽뎸둔땥땬땨들딜두딞듬땹땋뒛딨딟;-><init>(Landroidx/room/QueryInterceptorDatabase;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setVersion(I)V
    .locals 1

    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result p1

    return p1
.end method
