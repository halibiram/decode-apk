.class public final Lcom/google/android/gms/internal/ads/zzaxw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final zza:Ljava/lang/String; = "zzaxw"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzawj;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private volatile zze:Ljava/lang/reflect/Method;

.field private final zzf:[Ljava/lang/Class;

.field private final zzg:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzc:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzd:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzf:[Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawj;->zzk()Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaxv;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>(Lcom/google/android/gms/internal/ads/zzaxw;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaxw;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzi()Ldalvik/system/DexClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzu()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxw;->zzc([BLjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawj;->zzu()[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzd:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxw;->zzc([BLjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzf:[Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Ljava/util/concurrent/CountDownLatch;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_0
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Ljava/util/concurrent/CountDownLatch;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final zzc([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawj;->zze()Lcom/google/android/gms/internal/ads/zzavo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavo;->zzb([BLjava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [J

    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x336e4dbc036760cbL    # -7.109234472607218E60
        0xe237d840d1af7e4L
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v3, 0x2

    .line 14
    .line 15
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    :catch_0
    return-object v0
.end method
