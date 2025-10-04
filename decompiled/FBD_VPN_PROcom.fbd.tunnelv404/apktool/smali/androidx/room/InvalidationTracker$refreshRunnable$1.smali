.class public final Landroidx/room/InvalidationTracker$refreshRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/room/InvalidationTracker$refreshRunnable$1",
        "Ljava/lang/Runnable;",
        "checkUpdatedTable",
        "",
        "",
        "run",
        "",
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
        "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$refreshRunnable$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CursorUtil.kt\nandroidx/room/util/CursorUtil\n*L\n1#1,840:1\n1855#2,2:841\n145#3,7:843\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/InvalidationTracker$refreshRunnable$1\n*L\n399#1:841,2\n408#1:843,7\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/InvalidationTracker;


# direct methods
.method public constructor <init>(Landroidx/room/InvalidationTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final checkUpdatedTable()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    invoke-static {}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->createSetBuilder()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->getDatabase$room_runtime_release()Landroidx/room/RoomDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 12
    .line 13
    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v0, v2, v4, v3, v4}, Landroidx/room/RoomDatabase;->query$default(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, L땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳;->build(Ljava/util/Set;)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v1, v0

    .line 53
    check-cast v1, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getCleanupStatement$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "Required value was null."

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getCleanupStatement$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    :goto_1
    return-object v0

    .line 96
    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :catchall_1
    move-exception v2

    .line 98
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->getDatabase$room_runtime_release()Landroidx/room/RoomDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock$room_runtime_release()Ljava/util/concurrent/locks/Lock;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->ensureInitialization$room_runtime_release()Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getPendingRefresh()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 55
    .line 56
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getDatabase$room_runtime_release()Landroidx/room/RoomDatabase;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 73
    .line 74
    .line 75
    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    .line 90
    .line 91
    .line 92
    :cond_4
    return-void

    .line 93
    :cond_5
    :try_start_3
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getDatabase$room_runtime_release()Landroidx/room/RoomDatabase;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-direct {p0}, Landroidx/room/InvalidationTracker$refreshRunnable$1;->checkUpdatedTable()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    .line 116
    .line 117
    :try_start_5
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 124
    .line 125
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    :goto_0
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception v1

    .line 136
    goto :goto_5

    .line 137
    :catchall_1
    move-exception v2

    .line 138
    :try_start_6
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 139
    .line 140
    .line 141
    throw v2
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    :catch_0
    :try_start_7
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 143
    .line 144
    .line 145
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 146
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 150
    .line 151
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_1
    :try_start_8
    invoke-static {}, L땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠;->emptySet()Ljava/util/Set;

    .line 159
    .line 160
    .line 161
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 162
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 166
    .line 167
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    :goto_1
    move-object v0, v2

    .line 175
    check-cast v0, Ljava/util/Collection;

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_8

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->getObserverMap$room_runtime_release()Landroidx/arch/core/internal/SafeIterableMap;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v1, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 190
    .line 191
    monitor-enter v0

    .line 192
    :try_start_9
    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->getObserverMap$room_runtime_release()Landroidx/arch/core/internal/SafeIterableMap;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_7

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Ljava/util/Map$Entry;

    .line 211
    .line 212
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Landroidx/room/InvalidationTracker$ObserverWrapper;

    .line 217
    .line 218
    invoke-virtual {v3, v2}, Landroidx/room/InvalidationTracker$ObserverWrapper;->notifyByTableInvalidStatus$room_runtime_release(Ljava/util/Set;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :catchall_2
    move-exception v1

    .line 223
    goto :goto_3

    .line 224
    :cond_7
    monitor-exit v0

    .line 225
    goto :goto_4

    .line 226
    :goto_3
    monitor-exit v0

    .line 227
    throw v1

    .line 228
    :cond_8
    :goto_4
    return-void

    .line 229
    :goto_5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Landroidx/room/InvalidationTracker$refreshRunnable$1;->this$0:Landroidx/room/InvalidationTracker;

    .line 233
    .line 234
    invoke-static {v0}, Landroidx/room/InvalidationTracker;->access$getAutoCloser$p(Landroidx/room/InvalidationTracker;)Landroidx/room/AutoCloser;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    .line 241
    .line 242
    .line 243
    :cond_9
    throw v1
.end method
