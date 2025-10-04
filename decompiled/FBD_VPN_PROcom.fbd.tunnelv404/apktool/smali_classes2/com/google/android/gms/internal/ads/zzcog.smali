.class final Lcom/google/android/gms/internal/ads/zzcog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxh;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcnc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcok;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;Lcom/google/android/gms/internal/ads/zzcok;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcof;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zze:Lcom/google/android/gms/internal/ads/zzcog;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzc:Lcom/google/android/gms/internal/ads/zzcnc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzd:Lcom/google/android/gms/internal/ads/zzcok;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcog;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdxr;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzd:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zza:Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcok;->zza(Lcom/google/android/gms/internal/ads/zzcok;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcok;->zzc(Lcom/google/android/gms/internal/ads/zzcok;)Lcom/google/android/gms/internal/ads/zzdxk;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzc:Lcom/google/android/gms/internal/ads/zzcnc;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdxs;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzclg;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxr;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdxv;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzd:Lcom/google/android/gms/internal/ads/zzcok;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcog;->zza:Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcok;->zza(Lcom/google/android/gms/internal/ads/zzcok;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcok;->zzc(Lcom/google/android/gms/internal/ads/zzcok;)Lcom/google/android/gms/internal/ads/zzdxk;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzc:Lcom/google/android/gms/internal/ads/zzcnc;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcog;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdxw;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzclg;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxv;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
