.class public abstract Lcom/google/android/gms/common/api/internal/BasePendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final zaa:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic zad:I


# instance fields
.field private mResultGuardian:Lcom/google/android/gms/common/api/internal/zas;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zas;"
        }
    .end annotation
.end field

.field protected final zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler<",
            "TR;>;"
        }
    .end annotation
.end field

.field protected final zac:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final zae:Ljava/lang/Object;

.field private final zaf:Ljava/util/concurrent/CountDownLatch;

.field private final zag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/PendingResult$StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private zah:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final zai:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/zadb;",
            ">;"
        }
    .end annotation
.end field

.field private zaj:Lcom/google/android/gms/common/api/Result;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private zak:Lcom/google/android/gms/common/api/Status;

.field private volatile zal:Z

.field private zam:Z

.field private zan:Z

.field private zao:Lcom/google/android/gms/common/internal/ICancelToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile zap:Lcom/google/android/gms/common/api/internal/zada;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zada<",
            "TR;>;"
        }
    .end annotation
.end field

.field private zaq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zaq;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler<",
            "TR;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    return-void

    nop

    :array_0
    .array-data 8
        -0x44bfa5db2a9c7957L    # -2.7052320779418676E-23
        -0x66c377363f039bf9L
        0x33ba7074f2e4baaL
        0x4df8852cf62b9e8cL    # 4.1316484433389113E67
        -0x228e65e5fa871a5cL    # -1.3415256768204606E142
    .end array-data
.end method

.method private final zaa()Lcom/google/android/gms/common/api/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    xor-int/2addr v1, v2

    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v4, 0x6

    .line 11
    new-array v4, v4, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    new-array v4, v4, [J

    .line 34
    .line 35
    fill-array-data v4, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 52
    .line 53
    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    .line 56
    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/google/android/gms/common/api/internal/zadb;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zadb;->zaa:Lcom/google/android/gms/common/api/internal/zadc;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zadc;->zab:Ljava/util/Set;

    .line 71
    .line 72
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/google/android/gms/common/api/Result;

    .line 80
    .line 81
    return-object v0

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v1

    .line 85
    :array_0
    .array-data 8
        -0x7a016a4f162cb201L    # -8.424588609050988E-280
        0x6500f4b5650cddecL    # 3.4354854210434535E178
        -0xc762cf1e6a5965dL
        0x38a873e2ae717880L    # 9.198075014781923E-36
        -0x5651be9455abf9e6L
        0x37c6facbc171a9e2L    # 5.2758738491472296E-40
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 8
        -0x66c03c188bbdf877L
        0x1e4bb5f486bf1569L    # 9.624115568342365E-163
        -0x511ed2464169a1eaL    # -7.074233001667136E-83
        0x2cd28e86cb6a9480L    # 8.896171112459405E-93
    .end array-data
.end method

.method private final zab(Lcom/google/android/gms/common/api/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 29
    .line 30
    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/common/api/internal/zas;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zas;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/api/internal/zar;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->mResultGuardian:Lcom/google/android/gms/common/api/internal/zas;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_1
    if-ge v1, v0, :cond_3

    .line 65
    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/google/android/gms/common/api/PendingResult$StatusListener;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    .line 73
    .line 74
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static bridge synthetic zaj(Lcom/google/android/gms/common/api/internal/BasePendingResult;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    return-object p0
.end method

.method public static zal(Lcom/google/android/gms/common/api/Result;)V
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    move-object v1, p0

    .line 7
    check-cast v1, Lcom/google/android/gms/common/api/Releasable;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v2, v0, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    fill-array-data v0, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        -0x7c67e8b10a432ecdL
        0x62d674ddddfa343cL    # 1.3242191645314597E168
        -0x2243628e2481df5bL    # -3.4894098733097527E143
        -0x39bd8f41cb891dd2L    # -2.921998380037093E30
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        0x3cda9ddf30eb1eadL    # 1.4775229304335162E-15
        0x68c2368ce05da37fL    # 4.254521772762247E196
        0x56c75488382518f4L    # 1.0958395296544355E110
        0xba537e2b291794bL
    .end array-data
.end method


# virtual methods
.method public final addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/PendingResult$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak:Lcom/google/android/gms/common/api/Status;

    .line 34
    .line 35
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/PendingResult$StatusListener;->onComplete(Lcom/google/android/gms/common/api/Status;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zag:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x139680b05376d2a4L    # -1.716727206138344E214
        -0x5de6678d5bffbe83L
        -0x3e7dd253c5151a86L    # -3.8122887364695504E7
        0x208b678ebe60f092L
    .end array-data
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x391f2924431d2ca5L    # 1.5003335910720218E-33
        -0x7f4d03094be8f1dcL    # -2.70400080591537E-305
        -0xc9e38c3b3a5f700L    # -6.215209834165384E247
        -0x6f033a7ba704487dL
        0x39d301633c233b80L
        -0x50d147c2760d24d8L    # -2.024081514263951E-81
        0x5aa840d08fb355c9L    # 5.253598735000718E128
    .end array-data

    :array_1
    .array-data 8
        -0x5837ad8d696e8b77L
        -0x485c5a0c546d0642L    # -1.1277542055174853E-40
        0x5f5db8197e146bafL    # 2.4320587606791732E151
        -0x4f4ccc1c08553bfaL    # -4.245445893781394E-74
        0x360d8e9d43cc1e99L    # 2.5279724647536594E-48
    .end array-data

    :array_2
    .array-data 8
        0x1cb70f0897aab994L    # 2.3866995440489997E-170
        -0x52ab5f2b181eed97L    # -2.5316500204229364E-90
        -0x3000f9bae053253L
        0x1c426cb54e8c1403L
        0xbf7a534a7e28124L
        -0xcd29a0ab5aa18ecL
    .end array-data

    :array_3
    .array-data 8
        0xdea87eae0c7662fL
        0x347672f44bfe229aL    # 5.722141490234658E-56
        -0x36718c5e144dad15L    # -2.173105176299632E46
        -0x29764493248190abL    # -7.554125317332906E108
    .end array-data
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0xb

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result p1

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x4

    new-array p3, p3, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 8
        -0x6edccb6433244dffL    # -4.053581747192596E-226
        -0x5d6c2d7d79f94636L
        0x1daee29ab7e9c26L
        0x6ff0ba551bc2a872L
        -0x32b0c23953a8d219L    # -2.5703861263721198E64
        0x35fc64b6a0bfa314L    # 1.2142225398403229E-48
        -0x75591fa6fdc8cd2bL
        -0x5ae64c901b062fd2L
        0x7b871b85efbc44d4L
        0x260bb6d239290baL
        -0x21b79023664bfc0L    # -2.684959635864462E298
    .end array-data

    :array_1
    .array-data 8
        -0x5ee50bad8f27ca0bL
        0x3221f6dbede8344eL    # 3.331663370287446E-67
        0x5feb1ff43d88d68dL    # 1.1365137007285515E154
        0x3ae047a9c45c2e4eL    # 4.208264354702623E-25
        0x61f2a57b1a66eaaeL    # 6.7110871691522E163
        -0x1628d536a0412e82L    # -7.093318256375299E201
    .end array-data

    :array_2
    .array-data 8
        0x7dc427d1b6e5129L
        -0x4c7ef86e1870a5d0L    # -1.3246909345155155E-60
        -0x595fc6f2a0bb1aeL    # -4.722064445116351E281
        -0x5f150bbebce926f7L    # -4.117156191977308E-150
        -0x194e01bef6102f86L    # -4.893113069405668E186
        -0x51dd35a29ab15a39L    # -1.8891624430635318E-86
    .end array-data

    :array_3
    .array-data 8
        -0x158c056fa7f61cf9L    # -6.263912863385298E204
        0x70e1687422b90f41L    # 5.53497994129761E235
        0x6ffba4f7f00aba47L    # 2.682402745356861E231
        0x6a3a17680936398dL    # 5.1127550768465666E203
    .end array-data
.end method

.method public cancel()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/common/internal/ICancelToken;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaj:Lcom/google/android/gms/common/api/Result;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :cond_2
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    throw v1
.end method

.method public abstract createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public final isCanceled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final isReady()Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaf:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final setCancelToken(Lcom/google/android/gms/common/internal/ICancelToken;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/ICancelToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zao:Lcom/google/android/gms/common/internal/ICancelToken;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public final setResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zan:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    xor-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v4, v0, [J

    .line 25
    .line 26
    fill-array-data v4, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    .line 40
    .line 41
    xor-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab(Lcom/google/android/gms/common/api/Result;)V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal(Lcom/google/android/gms/common/api/Result;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 72
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x5794fc88466e8804L    # -5.4847046055435E-114
        0x44f0a4876dbb1decL    # 1.2574862146513194E24
        0x2153011293e53964L
        -0x153e2712609d3344L    # -1.7906116937328112E206
        0x46d98ef040649246L    # 2.0735399736674472E33
    .end array-data

    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x62d2620463504ccbL
        -0x4e4839e46aeede8dL    # -3.4446149101727817E-69
        0x22697add5c981968L    # 6.52965856813659E-143
        0x60711a37007b76ceL    # 3.6688914874807585E156
        -0x41206134e8b40f9fL    # -7.538863759700641E-6
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x6

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    .line 8
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x6c68a8a5fdb9780dL    # 1.6602694248653444E214
        -0x1ccb3ae404bd4d7L    # -8.077384469394927E299
        -0x61a9614450b2e628L
        -0x53bd5aa0709ef5c5L    # -1.745889751899171E-95
        0x3df0050b1060ec82L
        0x6deeb04a514bde6eL
    .end array-data

    :array_1
    .array-data 8
        -0x482ada1e60288098L    # -9.71067342735944E-40
        0x70a7cc1af492ee3aL    # 4.729051844880235E234
        0x402cd3aba2acf23bL    # 14.41341884957466
        -0x6a6045e9190e602L
        -0x2d2106ce76237d88L    # -1.5773488713747338E91
        0x6888ab2e15abcf2L
        0x3aab0c9f96362d4L
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x6

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    .line 16
    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 17
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    const/4 p4, 0x2

    invoke-virtual {p1, p4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :array_0
    .array-data 8
        0x4d9ca0a91dd5102L
        0x159dcb20516db30eL    # 1.484786214367868E-204
        0x2306f25071753a59L    # 6.021562991687722E-140
        -0x77dff09444618989L    # -1.5200079384570612E-269
        -0x15587f543ca95e61L    # -5.894993779924458E205
        0x45e7c6a385cc3b14L    # 5.886635801635745E28
    .end array-data

    :array_1
    .array-data 8
        -0x17df3bdf38d9e72dL    # -3.824722519554362E193
        -0x2e667ce47ee6ab20L    # -1.2390409426598741E85
        -0x4e0a6d62b2612ebL
        0x5adcacc841110954L    # 4.969131947229896E129
        0x189abe3374e31707L    # 3.75139184051078E-190
        -0x66564eaf576faec5L
        0x716cd48a36abd324L    # 2.3466847683786854E238
    .end array-data
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zal:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [J

    .line 9
    .line 10
    fill-array-data v4, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v6, 0x5

    .line 37
    new-array v6, v6, [J

    .line 38
    .line 39
    fill-array-data v6, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v2, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v3, v3, [J

    .line 60
    .line 61
    fill-array-data v3, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v4, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zam:Z

    .line 75
    .line 76
    xor-int/2addr v2, v1

    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v4, 0x7

    .line 80
    new-array v4, v4, [J

    .line 81
    .line 82
    fill-array-data v4, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    .line 96
    .line 97
    new-instance v1, Lcom/google/android/gms/common/api/internal/zada;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    .line 100
    .line 101
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/zada;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zada;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isReady()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zab:Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa()Lcom/google/android/gms/common/api/Result;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler;->zaa(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zap:Lcom/google/android/gms/common/api/internal/zada;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zah:Lcom/google/android/gms/common/api/ResultCallback;

    .line 135
    .line 136
    :goto_1
    monitor-exit v0

    .line 137
    return-object p1

    .line 138
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p1

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        -0x2fc93b8b4f3d5f47L    # -2.6362854557573036E78
        -0x345d2b561830a9c1L    # -2.308639254416246E56
        -0x43b57c1baeff250fL    # -2.874784024338613E-18
        0x2fd27863472bf277L    # 2.4923800094981483E-78
        -0x5125863931878fb0L    # -5.4514055180035635E-83
        0x7dea9830e0b86fc8L    # 3.478543844103949E298
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_1
    .array-data 8
        -0x2a3ec91b020fa88cL    # -1.2337898481571674E105
        0x3bcbdf306531767eL    # 1.1804180088337273E-20
        -0xef4e8a3eef4ee2fL    # -3.4455268192132707E236
        0xbed3bd2885e07d0L
        0x672db27385babcc7L    # 1.0337153798020011E189
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_2
    .array-data 8
        0x59a75b7e22b4b68aL    # 7.720272169837996E123
        0x47b7c5539fb92b73L    # 3.1596822478766623E37
        0x64be78c23183283aL    # 1.9293647484177643E177
        -0x5432da8d8ef6e424L
        -0x2891bdf26ef6430dL    # -1.4553548244532097E113
        0xdb2176a21ffa73aL
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0x4a76b0e4c66511a6L    # -8.455628319903326E-51
        0x3a3ea93ac88f81caL    # 3.869968990961661E-28
        0x2e682e45f4aef67aL    # 3.8897446441920556E-85
        0x3c424113222b9269L    # 1.9791241349427097E-18
        -0x1e4bd13c9c8a4854L    # -4.540004374476257E162
        -0x2e7e554030caf45fL    # -4.290138811503999E84
        0x239d4204e9ebbc4bL
    .end array-data
.end method

.method public final zak()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    .line 23
    .line 24
    return-void
.end method

.method public final zam()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zae:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zac:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->isCanceled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    monitor-exit v0

    .line 29
    return v1

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method public final zan(Lcom/google/android/gms/common/api/internal/zadb;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zadb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zai:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
