.class public final Lcom/google/android/gms/internal/ads/zzcbx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzb:Lcom/google/android/gms/internal/ads/zzcbv;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcbx;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcci;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcci;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcci;->zzb()Lcom/google/android/gms/internal/ads/zzcbx;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final zzb(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzb:Lcom/google/android/gms/internal/ads/zzcbv;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcbv;->zza(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/client/zzff;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzb:Lcom/google/android/gms/internal/ads/zzcbv;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcbv;->zza(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zza:Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzb:Lcom/google/android/gms/internal/ads/zzcbv;

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcbv;->zza(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
