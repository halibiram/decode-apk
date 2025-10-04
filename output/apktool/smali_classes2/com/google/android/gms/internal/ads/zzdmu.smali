.class final Lcom/google/android/gms/internal/ads/zzdmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Landroid/view/View;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdmv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmv;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzb:Lcom/google/android/gms/internal/ads/zzdmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzfb:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [J

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 8
        0x42553d4082cf1447L    # 3.6488780473231683E11
        0x4b275fb6fa24734eL    # 1.1193867405865805E54
        0x5b2d1fa028377854L    # 1.6149989991953109E131
        0x92027d381f9f63eL
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zzb:Lcom/google/android/gms/internal/ads/zzdmv;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmu;->zza:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfod;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdmv;->zzs(Lcom/google/android/gms/internal/ads/zzdmv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfod;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
