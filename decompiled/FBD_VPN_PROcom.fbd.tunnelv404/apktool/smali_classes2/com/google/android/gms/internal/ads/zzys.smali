.class public final synthetic Lcom/google/android/gms/internal/ads/zzys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyt;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyt;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzys;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzys;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzys;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzys;->zza:Lcom/google/android/gms/internal/ads/zzyt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyt;->zzb(Lcom/google/android/gms/internal/ads/zzyt;)Lcom/google/android/gms/internal/ads/zzyv;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzys;->zzb:I

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzys;->zzc:J

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzys;->zzd:J

    .line 12
    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzyv;->zzX(IJJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
