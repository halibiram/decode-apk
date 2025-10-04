.class public final Lcom/google/android/gms/internal/ads/zzclj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzclh;Lcom/google/android/gms/internal/ads/zzcli;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzclh;->zzb(Lcom/google/android/gms/internal/ads/zzclh;)Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zza:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzclh;->zza(Lcom/google/android/gms/internal/ads/zzclh;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzclh;->zze(Lcom/google/android/gms/internal/ads/zzclh;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzc:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzavi;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavi;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/ads/internal/zzi;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclj;->zza:Lcom/google/android/gms/internal/ads/zzcei;

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzavi;-><init>(Lcom/google/android/gms/internal/ads/zzave;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbiu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbiu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzcei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zza:Lcom/google/android/gms/internal/ads/zzcei;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zza:Lcom/google/android/gms/internal/ads/zzcei;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzb:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final zzf()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzc:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
