.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheHeader"
.end annotation


# instance fields
.field final allResponseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field final etag:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field final lastModified:J

.field final serverDate:J

.field size:J

.field final softTtl:J

.field final ttl:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 12

    .line 9
    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v3, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iget-wide v5, p2, Lcom/android/volley/Cache$Entry;->lastModified:J

    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v9, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 10
    invoke-static {p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->getAllResponseHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v11}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide v1, 0x21136114ca15c3a9L    # 2.368091779116115E-149

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 5
    iput-wide p5, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    .line 6
    iput-wide p7, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 7
    iput-wide p9, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 8
    iput-object p11, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    return-void
.end method

.method private static getAllResponseHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Cache$Entry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->toAllHeaderList(Ljava/util/Map;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x20150306

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readHeaderList(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    new-instance p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    invoke-direct/range {v2 .. v13}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/volley/Cache$Entry;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 13
    .line 14
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    .line 17
    .line 18
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 25
    .line 26
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->toHeaderMap(Ljava/util/List;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    .line 43
    .line 44
    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const v2, 0x20150306

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v3, v1, [J

    .line 21
    .line 22
    const-wide v4, 0x454059f8e2c20e2L    # 8.21808957543016E-288

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    aput-wide v4, v3, v0

    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    .line 43
    .line 44
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 45
    .line 46
    .line 47
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->lastModified:J

    .line 48
    .line 49
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 50
    .line 51
    .line 52
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    .line 53
    .line 54
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    .line 58
    .line 59
    invoke-static {p1, v2, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->allResponseHeaders:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {v2, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    new-array v3, v3, [J

    .line 75
    .line 76
    fill-array-data v3, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object p1, v1, v0

    .line 93
    .line 94
    invoke-static {v2, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return v0

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        0x1ed4e54301a69fcbL
        0x1a2e15085f411b9fL
    .end array-data
.end method
