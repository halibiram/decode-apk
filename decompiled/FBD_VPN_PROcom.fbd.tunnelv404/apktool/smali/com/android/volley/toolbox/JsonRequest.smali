.class public abstract Lcom/android/volley/toolbox/JsonRequest;
.super Lcom/android/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final PROTOCOL_CHARSET:Ljava/lang/String;

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mRequestBody:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CHARSET:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_2

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x1

    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    aput-object v1, v2, v3

    .line 52
    .line 53
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0xe0c72fcd2d0f2f0L    # -8.14782592153812E240
        -0x7cc3b2fed5d5e217L    # -4.431216090847321E-293
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x488f9c22d1e4210bL    # -1.175931551687563E-41
        0x79b1d153d5555aabL    # 1.5792369560529812E278
        0x4a571b37660efb26L    # 1.3507966336383953E50
        -0x72619e419a783ce6L
        -0x655242df5726b41dL    # -3.583403785546381E-180
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_2
    .array-data 8
        -0x95c304037bd6d0cL    # -3.11920575210836E263
        0x1b89902cd49b8bdcL    # 5.046700038500615E-176
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 5
    iput-object p3, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/volley/Request;->cancel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iput-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/JsonRequest;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/toolbox/JsonRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public getBody()[B
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v4, v0, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-object v1

    .line 27
    :catch_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    new-array v3, v3, [J

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/volley/toolbox/JsonRequest;->mRequestBody:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v5, v0, [J

    .line 48
    .line 49
    fill-array-data v5, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    aput-object v3, v0, v5

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    aput-object v4, v0, v3

    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/android/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :array_0
    .array-data 8
        0x4a9d89c9052a45a2L    # 2.7628903755475073E51
        -0x361a705498feff28L    # -9.84741952016018E47
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x59561100ab52db75L    # 2.2792400487201414E122
        -0x517fa08ccdef873eL    # -1.053502449666748E-84
        0x1b103bc1e503e346L
        -0x888d3f4f79633c0L
        -0x7d086283ee1fcc1aL    # -2.310975847619337E-294
        -0x180feae9b2a9be48L
        0x7f7603bd1d483610L    # 9.661988087949136E305
        -0x41479079c353e3f7L    # -1.4564777638963121E-6
        0x734aa458f6ed1789L    # 2.3284825951183845E247
        -0x3745dc93b717fb0aL    # -2.27697325224283E42
    .end array-data

    :array_2
    .array-data 8
        0x4dd631b7fac9a212L    # 9.34929396566802E66
        0x2f8f264443dba3b6L    # 1.3135358997868923E-79
    .end array-data
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/volley/toolbox/JsonRequest;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPostBody()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBody()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "TT;>;"
        }
    .end annotation
.end method
