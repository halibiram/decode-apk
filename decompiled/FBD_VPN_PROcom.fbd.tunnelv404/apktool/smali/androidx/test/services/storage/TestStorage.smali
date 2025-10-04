.class public final Landroidx/test/services/storage/TestStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/platform/io/PlatformTestStorage;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PROPERTIES_FILE_NAME:Ljava/lang/String; = "properties.dat"

.field private static final TAG:Ljava/lang/String; = "TestStorage"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/services/storage/TestStorage;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private static doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p0, Landroidx/test/services/storage/TestStorageException;

    .line 21
    .line 22
    const-string v0, "Failed to resolve query for URI: %s"

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object p1, v1, v2

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method private static getProperties(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method

.method private static getPropertyFileUri()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 2
    .line 3
    const-string v1, "properties.dat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static silentlyClose(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static silentlyClose(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public addOutputProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/test/services/storage/TestStorage;->getOutputProperties()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/test/services/storage/TestStorage;->getPropertyFileUri()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 25
    .line 26
    invoke-static {p1, v3}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Ljava/io/ObjectOutputStream;

    .line 34
    .line 35
    invoke-direct {p1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/OutputStream;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object v1, p1

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object v1, p1

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    move-object v1, p1

    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :catch_2
    move-exception v0

    .line 57
    goto :goto_0

    .line 58
    :catch_3
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :goto_0
    :try_start_2
    new-instance p1, Landroidx/test/services/storage/TestStorageException;

    .line 61
    .line 62
    const-string v2, "I/O error occurred during reading test properties."

    .line 63
    .line 64
    invoke-direct {p1, v2, v0}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :goto_1
    new-instance p1, Landroidx/test/services/storage/TestStorageException;

    .line 69
    .line 70
    const-string v2, "Unable to create file"

    .line 71
    .line 72
    invoke-direct {p1, v2, v0}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :goto_2
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/OutputStream;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_1
    :goto_3
    return-void
.end method

.method public getInputArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v2, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    .line 7
    .line 8
    invoke-static {v2, p1}, Landroidx/test/services/storage/file/PropertyFile;->buildUri(Landroidx/test/services/storage/file/PropertyFile$Authority;Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    invoke-static {v3, p1}, Landroidx/test/services/storage/TestStorage;->doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-gt v3, v1, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 32
    .line 33
    .line 34
    sget-object p1, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :try_start_1
    new-instance v3, Landroidx/test/services/storage/TestStorageException;

    .line 51
    .line 52
    const-string v4, "Query for URI \'%s\' returned more than one result. Weird."

    .line 53
    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v1, v0

    .line 57
    .line 58
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v3, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v3

    .line 66
    :cond_1
    new-instance v3, Landroidx/test/services/storage/TestStorageException;

    .line 67
    .line 68
    const-string v4, "Query for URI \'%s\' did not return any results. Make sure the argName is actually being passed in as a test argument."

    .line 69
    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    aput-object p1, v1, v0

    .line 73
    .line 74
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v3, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_2
    throw p1
.end method

.method public getInputArgs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/test/services/storage/file/PropertyFile;->buildUri(Landroidx/test/services/storage/file/PropertyFile$Authority;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 9
    .line 10
    invoke-static {v2, v0}, Landroidx/test/services/storage/TestStorage;->doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->getProperties(Landroid/database/Cursor;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 28
    .line 29
    .line 30
    :cond_1
    throw v0
.end method

.method public getInputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getOutputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getOutputProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/test/services/storage/TestStorage;->getPropertyFileUri()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    .line 8
    invoke-static {v0, v2}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {v3}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object v1, v3

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-object v1, v3

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-object v1, v3

    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    goto :goto_3

    .line 46
    :catchall_2
    move-exception v0

    .line 47
    move-object v2, v1

    .line 48
    goto :goto_3

    .line 49
    :catch_2
    move-object v2, v1

    .line 50
    goto :goto_0

    .line 51
    :catch_3
    move-object v2, v1

    .line 52
    goto :goto_1

    .line 53
    :catch_4
    :goto_0
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_5
    :goto_1
    :try_start_3
    const-string v3, "%s: does not exist, we must be the first call."

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    new-array v4, v4, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    aput-object v0, v4, v5

    .line 67
    .line 68
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :goto_3
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public isTestStorageFilePath(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroidx/test/services/storage/file/HostedFile;->getOutputRootDirectory(Landroid/content/Context;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "googletest/"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "/"

    .line 21
    .line 22
    invoke-static {p1, v1}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public openInputFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/test/services/storage/TestStorage;->getInputFileUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public openInternalInputFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public openInternalOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public openOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/test/services/storage/TestStorage;->openOutputFile(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public openOutputFile(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/test/services/storage/TestStorage;->getOutputFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, p2}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
