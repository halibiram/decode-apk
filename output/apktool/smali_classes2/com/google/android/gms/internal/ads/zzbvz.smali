.class public final Lcom/google/android/gms/internal/ads/zzbvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbkg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkg;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvz;->zza:Lcom/google/android/gms/internal/ads/zzbkg;

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbkg;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    const-wide v2, 0x667b1d6a1bba2bb1L    # 4.608561196477858E185

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    aput-wide v2, v1, v4

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final setView(Landroid/view/View;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvz;->zza:Lcom/google/android/gms/internal/ads/zzbkg;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkg;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    const-wide v2, 0x64c9d53f1a4966d3L    # 3.271313821225482E177

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-wide v2, v1, v4

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final start()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvz;->zza:Lcom/google/android/gms/internal/ads/zzbkg;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbkg;->zzt()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return v0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [J

    .line 14
    .line 15
    const-wide v4, 0x79e719309f209d31L    # 1.6378263768018131E279

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    aput-wide v4, v3, v0

    .line 21
    .line 22
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return v0
.end method
