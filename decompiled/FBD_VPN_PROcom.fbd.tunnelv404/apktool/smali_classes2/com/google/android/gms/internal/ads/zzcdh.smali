.class final Lcom/google/android/gms/internal/ads/zzcdh;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgi;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzc(Lcom/google/android/gms/internal/ads/zzcdl;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzj(Lcom/google/android/gms/internal/ads/zzcdl;)Lcom/google/android/gms/internal/ads/zzcei;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzm(Lcom/google/android/gms/internal/ads/zzcdl;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/internal/ads/zzbgl;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdh;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzf(Lcom/google/android/gms/internal/ads/zzcdl;)Lcom/google/android/gms/internal/ads/zzbgk;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbgl;->zza(Lcom/google/android/gms/internal/ads/zzbgk;Lcom/google/android/gms/internal/ads/zzbgi;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v3, 0x5

    .line 44
    new-array v3, v3, [J

    .line 45
    .line 46
    fill-array-data v3, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0

    .line 63
    :array_0
    .array-data 8
        -0x3f38f33825617cf3L    # -11801.561359228124
        0x65f91427d840024cL    # 1.6650334873244791E183
        -0x41303b145333aeedL    # -3.787186278700802E-6
        0x6d84e7268876cd67L    # 3.689385684325568E219
        0x14adadeab6d15955L
    .end array-data
.end method
