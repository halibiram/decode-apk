.class public final synthetic Lcom/google/android/gms/internal/ads/zzim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzin;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzin;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzim;->zza:Lcom/google/android/gms/internal/ads/zzin;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzin;->zza:Lcom/google/android/gms/internal/ads/zzip;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzip;->zzc(Lcom/google/android/gms/internal/ads/zzip;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
