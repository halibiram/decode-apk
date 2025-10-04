.class final Lcom/google/android/gms/internal/ads/zzbtp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbph;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbph;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbph;->zze(Ljava/lang/String;)V
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
    const-wide v2, 0x4a95838029b5e2d8L    # 2.012305299443754E51

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

.method public final onInitializationSucceeded()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zza:Lcom/google/android/gms/internal/ads/zzbph;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [J

    .line 12
    .line 13
    const-wide v3, -0x7945caf98dd95c86L    # -2.95681018584397E-276

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-wide v3, v2, v5

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
