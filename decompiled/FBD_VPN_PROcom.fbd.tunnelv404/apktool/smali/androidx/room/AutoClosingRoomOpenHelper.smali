.class public final Landroidx/room/AutoClosingRoomOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;,
        Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;,
        Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u001a\u001b\u001cB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0097\u0001R\u0010\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0001X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/room/AutoClosingRoomOpenHelper;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "Landroidx/room/DelegatingOpenHelper;",
        "delegate",
        "autoCloser",
        "Landroidx/room/AutoCloser;",
        "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/AutoCloser;)V",
        "autoClosingDb",
        "Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;",
        "databaseName",
        "",
        "getDatabaseName",
        "()Ljava/lang/String;",
        "getDelegate",
        "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "readableDatabase",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "getReadableDatabase",
        "()Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "writableDatabase",
        "getWritableDatabase",
        "close",
        "",
        "setWriteAheadLoggingEnabled",
        "enabled",
        "",
        "AutoClosingSupportSQLiteDatabase",
        "AutoClosingSupportSqliteStatement",
        "KeepAliveCursor",
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


# instance fields
.field public final autoCloser:Landroidx/room/AutoCloser;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/AutoCloser;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/AutoCloser;
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
    const-string v0, "autoCloser"

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
    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoCloser:Landroidx/room/AutoCloser;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/room/AutoClosingRoomOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Landroidx/room/AutoCloser;->init(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;-><init>(Landroidx/room/AutoCloser;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->pokeOpen()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 7
    .line 8
    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->pokeOpen()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->autoClosingDb:Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;

    .line 7
    .line 8
    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
