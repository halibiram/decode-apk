.class public final Landroidx/test/services/storage/internal/TestStorageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 4

    .line 1
    const-string v0, "Unable to access content provider: "

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p1, p0}, Landroidx/test/services/storage/internal/TestStorageUtil;->makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string p1, "r"

    .line 12
    .line 13
    invoke-virtual {v1, p0, p1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 18
    .line 19
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    new-instance v2, Landroidx/test/services/storage/TestStorageException;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v2, p0, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 55
    .line 56
    .line 57
    :cond_0
    throw p0
.end method

.method public static getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;
    .locals 3

    .line 2
    const-string v0, "Unable to access content provider: "

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, p0}, Landroidx/test/services/storage/internal/TestStorageUtil;->makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 4
    const-string p1, "wa"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "wt"

    .line 5
    :goto_0
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object p2

    .line 7
    :goto_1
    :try_start_1
    new-instance p2, Landroidx/test/services/storage/TestStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 9
    :cond_1
    throw p0
.end method

.method private static makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Landroidx/test/services/storage/TestStorageException;

    .line 12
    .line 13
    const-string v0, "No content provider registered for: %s. Are all test services apks installed?"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p1, v1, v2

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method
