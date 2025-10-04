.class public final Lcoil3/disk/DiskLruCache$fileSystem$1;
.super Lokio/ForwardingFileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil3/disk/DiskLruCache;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "coil3/disk/DiskLruCache$fileSystem$1",
        "Lokio/ForwardingFileSystem;",
        "sink",
        "Lokio/Sink;",
        "file",
        "Lokio/Path;",
        "mustCreate",
        "",
        "coil-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$fileSystem$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"
    }
.end annotation


# virtual methods
.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lokio/FileSystem;->createDirectories(Lokio/Path;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lokio/ForwardingFileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
