.class public final Lcom/google/android/gms/internal/ads/zzdwe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwf;

.field private final zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwf;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdwe;)Lcom/google/android/gms/internal/ads/zzdwe;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzc(Lcom/google/android/gms/internal/ads/zzdwf;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwe;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfgm;)Lcom/google/android/gms/internal/ads/zzdwe;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzx:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzha:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzao:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v1, v2, [J

    .line 46
    .line 47
    fill-array-data v1, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdwe;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdwe;

    .line 58
    .line 59
    .line 60
    :cond_0
    return-object p0

    .line 61
    :array_0
    .array-data 8
        0x7edc4e0016c37d55L    # 1.213148709352395E303
        0x46e6a959140641a5L    # 3.6770411129534643E33
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
        -0x31368c2389dd853bL    # -3.5133453967688894E71
        -0x450f64691a245488L    # -8.586016507128912E-25
    .end array-data
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfgp;)Lcom/google/android/gms/internal/ads/zzdwe;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x4d80d65a281080abL    # 2.216470045532869E65
        0x126f60553e850e90L
    .end array-data
.end method

.method public final zzf()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzb(Lcom/google/android/gms/internal/ads/zzdwf;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzb(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzd(Lcom/google/android/gms/internal/ads/zzdwf;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwc;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>(Lcom/google/android/gms/internal/ads/zzdwe;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzd(Lcom/google/android/gms/internal/ads/zzdwf;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwd;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdwd;-><init>(Lcom/google/android/gms/internal/ads/zzdwe;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final synthetic zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzb(Lcom/google/android/gms/internal/ads/zzdwf;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzf(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final synthetic zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zza:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzb(Lcom/google/android/gms/internal/ads/zzdwf;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwe;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwn;->zze(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
