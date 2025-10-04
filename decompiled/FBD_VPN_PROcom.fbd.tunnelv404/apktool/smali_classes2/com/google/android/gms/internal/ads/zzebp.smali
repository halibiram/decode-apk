.class public final Lcom/google/android/gms/internal/ads/zzebp;
.super Lcom/google/android/gms/internal/ads/zzbyz;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzebq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebp;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/internal/util/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebp;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzebq;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/zzba;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzf(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebp;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzebq;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
