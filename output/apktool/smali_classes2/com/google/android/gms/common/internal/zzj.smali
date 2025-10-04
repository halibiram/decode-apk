.class final Lcom/google/android/gms/common/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zzh;->zza()Lcom/google/android/gms/internal/common/zze;

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 5
    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {v7, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    .line 26
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v2, 0x1

    .line 35
    const-wide/16 v3, 0x3c

    .line 36
    .line 37
    move-object v0, v8

    .line 38
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/google/android/gms/common/internal/zzj;->zza:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0xe64b1734718aabeL
        0xea6b7efc4860ec2L
        0x78827462d9fbe681L    # 3.119834200041726E272
    .end array-data
.end method
