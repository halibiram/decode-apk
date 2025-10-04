.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0015\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\'\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00104\u001a\u00020\u0014H\u0016J\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00106\u001a\u00020\u0016H\u0016J\'\u00107\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u00108\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020:09\"\u00020:H\u0016\u00a2\u0006\u0002\u0010;J\u0016\u0010<\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010=\u001a\u00020\u0003H\u0016J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\r\u0010>\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010?J\u0016\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010A\u001a\u00020\tH\u0016J\u001e\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010A\u001a\u00020\t2\u0006\u00106\u001a\u00020*H\u0017J\u0016\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u00020\u0019H\u0016J\u001e\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u00106\u001a\u00020*H\u0017J\u001c\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0017J$\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u00106\u001a\u00020*H\u0017J\u000e\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u000e\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010I\u001a\u00020J\"\u00020%H\u0016J\u000e\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0018\u0010L\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J \u0010M\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0017J\u0016\u0010N\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0016\u0010O\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010P\u001a\u00020(H\u0017J\u001e\u0010Q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010+\u001a\u00020,2\u0006\u0010R\u001a\u00020.H\u0016J\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010R\u001a\u00020.H\u0016J\u0016\u0010T\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010R\u001a\u00020.H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006U"
    }
    d2 = {
        "Landroidx/room/RoomDatabase$Builder;",
        "T",
        "Landroidx/room/RoomDatabase;",
        "",
        "context",
        "Landroid/content/Context;",
        "klass",
        "Ljava/lang/Class;",
        "name",
        "",
        "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V",
        "allowDestructiveMigrationOnDowngrade",
        "",
        "allowMainThreadQueries",
        "autoCloseTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "autoCloseTimeout",
        "",
        "autoMigrationSpecs",
        "",
        "Landroidx/room/migration/AutoMigrationSpec;",
        "callbacks",
        "Landroidx/room/RoomDatabase$Callback;",
        "copyFromAssetPath",
        "copyFromFile",
        "Ljava/io/File;",
        "copyFromInputStream",
        "Ljava/util/concurrent/Callable;",
        "Ljava/io/InputStream;",
        "factory",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
        "journalMode",
        "Landroidx/room/RoomDatabase$JournalMode;",
        "migrationContainer",
        "Landroidx/room/RoomDatabase$MigrationContainer;",
        "migrationStartAndEndVersions",
        "",
        "",
        "migrationsNotRequiredFrom",
        "multiInstanceInvalidationIntent",
        "Landroid/content/Intent;",
        "prepackagedDatabaseCallback",
        "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
        "queryCallback",
        "Landroidx/room/RoomDatabase$QueryCallback;",
        "queryCallbackExecutor",
        "Ljava/util/concurrent/Executor;",
        "queryExecutor",
        "requireMigration",
        "transactionExecutor",
        "typeConverters",
        "addAutoMigrationSpec",
        "autoMigrationSpec",
        "addCallback",
        "callback",
        "addMigrations",
        "migrations",
        "",
        "Landroidx/room/migration/Migration;",
        "([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;",
        "addTypeConverter",
        "typeConverter",
        "build",
        "()Landroidx/room/RoomDatabase;",
        "createFromAsset",
        "databaseFilePath",
        "createFromFile",
        "databaseFile",
        "createFromInputStream",
        "inputStreamCallable",
        "enableMultiInstanceInvalidation",
        "fallbackToDestructiveMigration",
        "fallbackToDestructiveMigrationFrom",
        "startVersions",
        "",
        "fallbackToDestructiveMigrationOnDowngrade",
        "openHelperFactory",
        "setAutoCloseTimeout",
        "setJournalMode",
        "setMultiInstanceInvalidationServiceIntent",
        "invalidationServiceIntent",
        "setQueryCallback",
        "executor",
        "setQueryExecutor",
        "setTransactionExecutor",
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
        "SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabase$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1548:1\n1#2:1549\n*E\n"
    }
.end annotation


# instance fields
.field private allowDestructiveMigrationOnDowngrade:Z

.field private allowMainThreadQueries:Z

.field private autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private autoCloseTimeout:J

.field private autoMigrationSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private copyFromAssetPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private copyFromFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private copyFromInputStream:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private journalMode:Landroidx/room/RoomDatabase$JournalMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private migrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private migrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private multiInstanceInvalidationIntent:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private queryCallback:Landroidx/room/RoomDatabase$QueryCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private queryCallbackExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private queryExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private requireMigration:Z

.field private transactionExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final typeConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "klass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    .line 40
    .line 41
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 47
    .line 48
    const-wide/16 p1, -0x1

    .line 49
    .line 50
    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 51
    .line 52
    new-instance p1, Landroidx/room/RoomDatabase$MigrationContainer;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 58
    .line 59
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public addAutoMigrationSpec(Landroidx/room/migration/AutoMigrationSpec;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Landroidx/room/migration/AutoMigrationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "autoMigrationSpec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$Callback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public varargs addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;
    .locals 5
    .param p1    # [Landroidx/room/migration/Migration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/migration/Migration;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "migrations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 16
    .line 17
    :cond_0
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    aget-object v2, p1, v1

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget v4, v2, Landroidx/room/migration/Migration;->startVersion:I

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v2, v2, Landroidx/room/migration/Migration;->endVersion:I

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 55
    .line 56
    array-length v1, p1

    .line 57
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, [Landroidx/room/migration/Migration;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigrations([Landroidx/room/migration/Migration;)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public addTypeConverter(Ljava/lang/Object;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "typeConverter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public build()Landroidx/room/RoomDatabase;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    iput-object v1, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->migrationStartAndEndVersions:Ljava/util/Set;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v1, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    .line 76
    .line 77
    invoke-static {v2, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    .line 96
    .line 97
    invoke-direct {v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_5
    const-string v2, "Required value was null."

    .line 101
    .line 102
    if-eqz v1, :cond_10

    .line 103
    .line 104
    iget-wide v3, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 105
    .line 106
    const-wide/16 v5, 0x0

    .line 107
    .line 108
    cmp-long v7, v3, v5

    .line 109
    .line 110
    if-lez v7, :cond_9

    .line 111
    .line 112
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    new-instance v3, Landroidx/room/AutoCloser;

    .line 117
    .line 118
    iget-wide v4, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 119
    .line 120
    iget-object v6, v0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 121
    .line 122
    if-eqz v6, :cond_7

    .line 123
    .line 124
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 125
    .line 126
    if-eqz v7, :cond_6

    .line 127
    .line 128
    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V

    .line 129
    .line 130
    .line 131
    new-instance v4, Landroidx/room/AutoClosingRoomOpenHelperFactory;

    .line 132
    .line 133
    invoke-direct {v4, v1, v3}, Landroidx/room/AutoClosingRoomOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V

    .line 134
    .line 135
    .line 136
    move-object v1, v4

    .line 137
    goto :goto_2

    .line 138
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v1

    .line 150
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v2, "Cannot create auto-closing database for an in-memory database."

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_9
    :goto_2
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    .line 159
    .line 160
    if-nez v3, :cond_a

    .line 161
    .line 162
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    .line 163
    .line 164
    if-nez v4, :cond_a

    .line 165
    .line 166
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 167
    .line 168
    if-eqz v4, :cond_11

    .line 169
    .line 170
    :cond_a
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v4, :cond_f

    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    const/4 v5, 0x1

    .line 176
    if-nez v3, :cond_b

    .line 177
    .line 178
    const/4 v6, 0x0

    .line 179
    goto :goto_3

    .line 180
    :cond_b
    const/4 v6, 0x1

    .line 181
    :goto_3
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    .line 182
    .line 183
    if-nez v7, :cond_c

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    goto :goto_4

    .line 187
    :cond_c
    const/4 v8, 0x1

    .line 188
    :goto_4
    iget-object v9, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 189
    .line 190
    if-nez v9, :cond_d

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_d
    const/4 v4, 0x1

    .line 194
    :goto_5
    add-int/2addr v6, v8

    .line 195
    add-int/2addr v6, v4

    .line 196
    if-ne v6, v5, :cond_e

    .line 197
    .line 198
    new-instance v4, Landroidx/room/SQLiteCopyOpenHelperFactory;

    .line 199
    .line 200
    invoke-direct {v4, v3, v7, v9, v1}, Landroidx/room/SQLiteCopyOpenHelperFactory;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)V

    .line 201
    .line 202
    .line 203
    move-object v1, v4

    .line 204
    goto :goto_6

    .line 205
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v2, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1

    .line 213
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v2, "Cannot create from asset or file for an in-memory database."

    .line 216
    .line 217
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_10
    const/4 v1, 0x0

    .line 222
    :cond_11
    :goto_6
    if-eqz v1, :cond_17

    .line 223
    .line 224
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 225
    .line 226
    if-eqz v3, :cond_14

    .line 227
    .line 228
    new-instance v4, Landroidx/room/QueryInterceptorOpenHelperFactory;

    .line 229
    .line 230
    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 231
    .line 232
    if-eqz v5, :cond_13

    .line 233
    .line 234
    if-eqz v3, :cond_12

    .line 235
    .line 236
    invoke-direct {v4, v1, v5, v3}, Landroidx/room/QueryInterceptorOpenHelperFactory;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V

    .line 237
    .line 238
    .line 239
    move-object v6, v4

    .line 240
    goto :goto_7

    .line 241
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 242
    .line 243
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v1

    .line 247
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 248
    .line 249
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :cond_14
    move-object v6, v1

    .line 254
    :goto_7
    new-instance v1, Landroidx/room/DatabaseConfiguration;

    .line 255
    .line 256
    iget-object v4, v0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 257
    .line 258
    iget-object v5, v0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v7, v0, Landroidx/room/RoomDatabase$Builder;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 261
    .line 262
    iget-object v8, v0, Landroidx/room/RoomDatabase$Builder;->callbacks:Ljava/util/List;

    .line 263
    .line 264
    iget-boolean v9, v0, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries:Z

    .line 265
    .line 266
    iget-object v3, v0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Landroidx/room/RoomDatabase$JournalMode;->resolve$room_runtime_release(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    iget-object v11, v0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 273
    .line 274
    if-eqz v11, :cond_16

    .line 275
    .line 276
    iget-object v12, v0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 277
    .line 278
    if-eqz v12, :cond_15

    .line 279
    .line 280
    iget-object v13, v0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 281
    .line 282
    iget-boolean v14, v0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 283
    .line 284
    iget-boolean v15, v0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 285
    .line 286
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 287
    .line 288
    move-object/from16 v16, v2

    .line 289
    .line 290
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    .line 291
    .line 292
    move-object/from16 v17, v2

    .line 293
    .line 294
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    .line 295
    .line 296
    move-object/from16 v18, v2

    .line 297
    .line 298
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    .line 299
    .line 300
    move-object/from16 v19, v2

    .line 301
    .line 302
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 303
    .line 304
    move-object/from16 v20, v2

    .line 305
    .line 306
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->typeConverters:Ljava/util/List;

    .line 307
    .line 308
    move-object/from16 v21, v2

    .line 309
    .line 310
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->autoMigrationSpecs:Ljava/util/List;

    .line 311
    .line 312
    move-object/from16 v22, v2

    .line 313
    .line 314
    move-object v3, v1

    .line 315
    invoke-direct/range {v3 .. v22}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v0, Landroidx/room/RoomDatabase$Builder;->klass:Ljava/lang/Class;

    .line 319
    .line 320
    const-string v3, "_Impl"

    .line 321
    .line 322
    invoke-static {v2, v3}, Landroidx/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Landroidx/room/RoomDatabase;

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->init(Landroidx/room/DatabaseConfiguration;)V

    .line 329
    .line 330
    .line 331
    return-object v2

    .line 332
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 333
    .line 334
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v1

    .line 338
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 339
    .line 340
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v1

    .line 344
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 345
    .line 346
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v1
.end method

.method public createFromAsset(Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "databaseFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public createFromAsset(Ljava/lang/String;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "databaseFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 3
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromAssetPath:Ljava/lang/String;

    return-object p0
.end method

.method public createFromFile(Ljava/io/File;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "databaseFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    return-object p0
.end method

.method public createFromFile(Ljava/io/File;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle",
            "StreamFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "databaseFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 3
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromFile:Ljava/io/File;

    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inputStreamCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public createFromInputStream(Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle",
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inputStreamCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->prepackagedDatabaseCallback:Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;

    .line 3
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->copyFromInputStream:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public enableMultiInstanceInvalidation()Landroidx/room/RoomDatabase$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/room/RoomDatabase$Builder;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroidx/room/MultiInstanceInvalidationService;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 17
    .line 18
    return-object p0
.end method

.method public fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public varargs fallbackToDestructiveMigrationFrom([I)Landroidx/room/RoomDatabase$Builder;
    .locals 4
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "startVersions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->migrationsNotRequiredFrom:Ljava/util/Set;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object p0
.end method

.method public fallbackToDestructiveMigrationOnDowngrade()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->requireMigration:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->allowDestructiveMigrationOnDowngrade:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;
    .locals 0
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->factory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAutoCloseTimeout(JLjava/util/concurrent/TimeUnit;)Landroidx/room/RoomDatabase$Builder;
    .locals 3
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/ExperimentalRoomApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "autoCloseTimeUnit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    iput-wide p1, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeout:J

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->autoCloseTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "autoCloseTimeout must be >= 0"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public setJournalMode(Landroidx/room/RoomDatabase$JournalMode;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase$JournalMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$JournalMode;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "journalMode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 7
    .line 8
    return-object p0
.end method

.method public setMultiInstanceInvalidationServiceIntent(Landroid/content/Intent;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/ExperimentalRoomApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "invalidationServiceIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->name:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 13
    .line 14
    return-object p0
.end method

.method public setQueryCallback(Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$QueryCallback;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "queryCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->queryCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-object p0
.end method

.method public setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "executor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->queryExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-object p0
.end method

.method public setTransactionExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "executor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->transactionExecutor:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-object p0
.end method
