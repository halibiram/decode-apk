.class final Lcom/google/android/gms/internal/ads/zzfgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqt;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgj;->zzx(Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzdso;)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    check-cast v2, Lcom/google/android/gms/internal/ads/zzdso;

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfgj;->zzx(Lcom/google/android/gms/internal/ads/zzfgj;Lcom/google/android/gms/internal/ads/zzdso;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzdq:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdso;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdso;->zzd()Lcom/google/android/gms/internal/ads/zzfha;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfgj;->zzw(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzfgz;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzfha;->zza:Lcom/google/android/gms/internal/ads/zzfgz;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgj;->zzv(Lcom/google/android/gms/internal/ads/zzfgj;)Lcom/google/android/gms/internal/ads/zzdso;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwh;->zzj()V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method
