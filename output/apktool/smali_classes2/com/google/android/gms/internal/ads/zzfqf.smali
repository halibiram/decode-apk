.class public abstract Lcom/google/android/gms/internal/ads/zzfqf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfqg;

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzfpx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zzd:Lcom/google/android/gms/internal/ads/zzfpx;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqf;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zza:Lcom/google/android/gms/internal/ads/zzfqg;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfqg;->zza(Lcom/google/android/gms/internal/ads/zzfqf;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfqg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqf;->zza:Lcom/google/android/gms/internal/ads/zzfqg;

    return-void
.end method
