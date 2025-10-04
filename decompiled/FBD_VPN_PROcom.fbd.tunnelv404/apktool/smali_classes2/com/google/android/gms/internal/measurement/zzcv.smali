.class final Lcom/google/android/gms/internal/measurement/zzcv;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzee;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zza:Lcom/google/android/gms/internal/measurement/zzee;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/zzee;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcv;->zza:Lcom/google/android/gms/internal/measurement/zzee;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zze(Lcom/google/android/gms/internal/measurement/zzee;)Lcom/google/android/gms/internal/measurement/zzcc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzdt;->zzh:J

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcc;->resetAnalyticsData(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
