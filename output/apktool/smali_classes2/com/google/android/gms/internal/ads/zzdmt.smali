.class final Lcom/google/android/gms/internal/ads/zzdmt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdmv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmv;Ljava/lang/String;Z)V
    .locals 0

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p3, 0x2

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzb:Lcom/google/android/gms/internal/ads/zzdmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :array_0
    .array-data 8
        -0xb8509a07b3b4088L
        -0x16ac6201a2a9deaeL
    .end array-data
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
        -0x1f9b83b5e2f4a468L    # -2.1973258256623744E156
        -0x5581a3eea320e917L
        0x1cbdf84c875a88abL    # 3.102044429086115E-170
        -0x3f2579339dec6605L    # -27163.19348611867
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzb:Lcom/google/android/gms/internal/ads/zzdmv;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmv;->zzd(Lcom/google/android/gms/internal/ads/zzdmv;)Lcom/google/android/gms/internal/ads/zzdna;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdna;->zzT(Lcom/google/android/gms/internal/ads/zzcjk;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zzb:Lcom/google/android/gms/internal/ads/zzdmv;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmv;->zzd(Lcom/google/android/gms/internal/ads/zzdmv;)Lcom/google/android/gms/internal/ads/zzdna;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdna;->zzp()Lcom/google/android/gms/internal/ads/zzceu;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmt;->zza:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdmv;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfod;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->zzc(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->cancel(Z)Z

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method
