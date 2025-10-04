.class public final Lcom/google/android/gms/internal/ads/zzcyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcyo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfhh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcyo;Lcom/google/android/gms/internal/ads/zzfhh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zza:Lcom/google/android/gms/internal/ads/zzcyo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zzb:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyk;->zza:Lcom/google/android/gms/internal/ads/zzcyo;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfhh;->zzf:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcyo;->zzc(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
