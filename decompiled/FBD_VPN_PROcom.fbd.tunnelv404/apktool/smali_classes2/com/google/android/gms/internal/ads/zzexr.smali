.class public final synthetic Lcom/google/android/gms/internal/ads/zzexr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzext;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzexq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzext;JLcom/google/android/gms/internal/ads/zzexq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexr;->zza:Lcom/google/android/gms/internal/ads/zzext;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzexr;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzexr;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexr;->zza:Lcom/google/android/gms/internal/ads/zzext;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzexr;->zzb:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzexr;->zzc:Lcom/google/android/gms/internal/ads/zzexq;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzext;->zzb(JLcom/google/android/gms/internal/ads/zzexq;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
