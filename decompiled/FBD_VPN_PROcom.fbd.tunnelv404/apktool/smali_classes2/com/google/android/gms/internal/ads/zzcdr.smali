.class public final Lcom/google/android/gms/internal/ads/zzcdr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final zzb:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcdq;

    .line 11
    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v9, 0x3

    .line 15
    new-array v1, v9, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzcdq;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    const v2, 0x7fffffff

    .line 32
    .line 33
    .line 34
    const-wide/16 v3, 0xa

    .line 35
    .line 36
    move-object v0, v8

    .line 37
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 38
    .line 39
    .line 40
    sput-object v8, Lcom/google/android/gms/internal/ads/zzcdr;->zza:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdq;

    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v2, v9, [J

    .line 47
    .line 48
    fill-array-data v2, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdq;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdr;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x7b44b640e2f555beL    # 6.159797306780158E285
        0x617f1b6acb1a6a9dL    # 4.3733797998124404E161
        -0x4054b2ee1b5b66e1L    # -0.05332237163593078
    .end array-data

    .line 70
    .line 71
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
        -0x4a4c9582466cc859L    # -5.1894348587453855E-50
        -0x4a59f18f4cc82a31L    # -2.94757933531653E-50
        -0x3e284dcfb0192e43L    # -1.5902149756065514E9
    .end array-data
.end method
