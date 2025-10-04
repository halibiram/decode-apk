.class final Lcom/google/android/gms/ads/internal/zzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzn;->zza:Lcom/google/android/gms/ads/internal/zzs;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzf(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzavi;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzf(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/internal/ads/zzavi;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzd(Landroid/view/MotionEvent;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
