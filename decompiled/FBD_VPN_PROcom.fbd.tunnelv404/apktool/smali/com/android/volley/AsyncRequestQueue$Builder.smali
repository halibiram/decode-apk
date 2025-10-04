.class public Lcom/android/volley/AsyncRequestQueue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAsyncCache:Lcom/android/volley/AsyncCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCache:Lcom/android/volley/Cache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mNetwork:Lcom/android/volley/AsyncNetwork;

.field private mResponseDelivery:Lcom/android/volley/ResponseDelivery;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncNetwork;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    fill-array-data v1, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :array_0
    .array-data 8
        0xa1be1e8d26efc87L
        0x2d6f8124149a0f16L    # 7.732916148849518E-90
        -0xf66139abed66802L
        -0x3ac134e62112b1a7L    # -3.7226892216644846E25
    .end array-data
.end method

.method private getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/volley/AsyncRequestQueue$Builder$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/volley/AsyncRequestQueue$Builder$1;-><init>(Lcom/android/volley/AsyncRequestQueue$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/volley/AsyncRequestQueue;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 32
    .line 33
    new-instance v0, Lcom/android/volley/AsyncRequestQueue$ThrowingCache;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1}, Lcom/android/volley/AsyncRequestQueue$ThrowingCache;-><init>(Lcom/android/volley/AsyncRequestQueue$1;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    .line 42
    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    .line 46
    .line 47
    new-instance v1, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue$Builder;->getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 70
    .line 71
    :cond_4
    new-instance v0, Lcom/android/volley/AsyncRequestQueue;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mNetwork:Lcom/android/volley/AsyncNetwork;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    .line 80
    .line 81
    iget-object v6, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    move-object v1, v0

    .line 85
    invoke-direct/range {v1 .. v7}, Lcom/android/volley/AsyncRequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/AsyncNetwork;Lcom/android/volley/AsyncCache;Lcom/android/volley/ResponseDelivery;Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;Lcom/android/volley/AsyncRequestQueue$1;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :array_0
    .array-data 8
        -0x7b82b42eba079878L    # -4.809887003858514E-287
        -0x1e534319a0a2262dL    # -3.2322322668209478E162
        0xebe1337675191L
        0x707bc3c3db0c8943L    # 6.896833658307759E233
        0x1a1df6a4cfe36166L    # 7.05171084015395E-183
        -0x31fb9f01046c78a2L    # -6.86767258937608E67
    .end array-data
.end method

.method public setAsyncCache(Lcom/android/volley/AsyncCache;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCache(Lcom/android/volley/Cache;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExecutorFactory(Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResponseDelivery(Lcom/android/volley/ResponseDelivery;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    .line 2
    .line 3
    return-object p0
.end method
