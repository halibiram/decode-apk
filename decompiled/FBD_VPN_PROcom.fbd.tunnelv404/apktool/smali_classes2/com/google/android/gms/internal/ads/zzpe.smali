.class public final Lcom/google/android/gms/internal/ads/zzpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzpe;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Z

    return p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzpe;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzb:Z

    return p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzpe;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:Z

    return p0
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzpe;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Z

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzpe;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzb:Z

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzpe;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzpg;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzb:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zzc:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpg;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzpg;-><init>(Lcom/google/android/gms/internal/ads/zzpe;Lcom/google/android/gms/internal/ads/zzpf;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        0x2a959a1ee6f3785dL
        0x2327a5bb0dd38200L
        0x6d0bb9c3168d49abL    # 1.9115618840331777E217
        -0x4bf44802d856cb92L    # -5.519805906471918E-58
        0x1946fe634f0ca4abL    # 6.605742123925018E-187
        0x59e1958b28964a2bL    # 9.299288305175697E124
        0x2daedb2b98016785L    # 1.2118051638414863E-88
        -0x7fcf47b5c4cd5d64L
        -0xcb34efc6edbf393L    # -2.507604936589757E247
        0x3529a1890150b0c4L    # 1.3380004625924813E-52
        -0x609b9cb6cdd3dbbdL
        -0x55d6ad9c04f97111L
    .end array-data
.end method
