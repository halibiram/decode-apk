.class final Lcom/google/android/gms/internal/ads/zzbvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbuv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbve;Lcom/google/android/gms/internal/ads/zzbuv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zza:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zza:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuv;->zzg(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x4c40fce3eb9e7500L    # 2.132689604459358E59

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 5

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zza:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuv;->zzf(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x122c2c00e16db60eL    # 3.896809322279867E-221

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvc;->zza:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuv;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    const-wide v2, 0xcdeb95e9c298e02L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aput-wide v2, v1, v4

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
