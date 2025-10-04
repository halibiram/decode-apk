.class public Lcom/google/android/gms/internal/ads/zzdnf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzfgm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzfhk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzW:Lcom/google/android/gms/internal/ads/zzfhk;

    return-object v0
.end method

.method public zzb()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, -0x71c31a610f64f619L    # -4.333667356416331E-240

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzc()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzU:Z

    return v0
.end method

.method public zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzL:Z

    return v0
.end method

.method public zzf()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzK:Z

    return v0
.end method

.method public zzg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
