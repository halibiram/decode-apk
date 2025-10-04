.class final Lcom/google/android/gms/internal/ads/zzhbn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhbn;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbz;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhbn;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhbn;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbn;->zza:Lcom/google/android/gms/internal/ads/zzhbn;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbn;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaw;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhaw;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbn;->zzb:Lcom/google/android/gms/internal/ads/zzhbz;

    .line 17
    .line 18
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhbn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbn;->zza:Lcom/google/android/gms/internal/ads/zzhbn;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhby;
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhae;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbn;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhby;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbn;->zzb:Lcom/google/android/gms/internal/ads/zzhbz;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhbz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhby;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzhae;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhbn;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 53
    .line 54
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhby;

    .line 59
    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-object p1

    .line 64
    :cond_1
    :goto_0
    return-object v0

    .line 65
    :array_0
    .array-data 8
        0x484912c4a37935afL    # 1.70640125655357E40
        -0x2581f7c53545b36L
        0x59fd54f0bb9487ddL    # 3.102393653595735E125
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x6f00dfdb16eb62c2L    # 4.996846850447737E226
        -0x57606722b1e12281L    # -5.132266890775372E-113
        -0xa861af56e412214L    # -7.776193596327565E257
    .end array-data
.end method
