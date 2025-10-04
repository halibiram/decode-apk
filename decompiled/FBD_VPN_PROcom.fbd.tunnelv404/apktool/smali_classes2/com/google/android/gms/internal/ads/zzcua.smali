.class public final Lcom/google/android/gms/internal/ads/zzcua;
.super Lcom/google/android/gms/internal/ads/zzbai;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctz;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfck;

.field private zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzdwf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctz;Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/internal/ads/zzfck;Lcom/google/android/gms/internal/ads/zzdwf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbai;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzaG:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Z

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzctz;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzb:Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzfck;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/ads/internal/client/zzbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzb:Lcom/google/android/gms/ads/internal/client/zzbu;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzdn;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzgN:Lcom/google/android/gms/internal/ads/zzbfu;

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
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzctz;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwh;->zzl()Lcom/google/android/gms/internal/ads/zzdaq;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final zzg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzfck;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdg;->zzf()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zze:Lcom/google/android/gms/internal/ads/zzdwf;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwf;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v1, v1, [J

    .line 40
    .line 41
    fill-array-data v1, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzfck;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfck;->zzn(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x5c0fa98c98af13aeL
        -0x6e7db5c9f447a4d9L    # -2.470610400950372E-224
        0x52f3e16187d986L
        -0x44365aea075bb379L    # -1.086102342874177E-20
        0x7e70572a8ed2ef25L    # 1.094311189795389E301
        -0x26da4e0311c54dfL    # -7.50296127913662E296
        -0x72f074499ba26f25L    # -9.023487761341281E-246
        0x26061a2e1f52a52eL
        0x75766c3c1c025605L    # 6.733579590655984E257
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x273ad6263fcb569fL    # -4.2694836496385386E119
        0x4bc9e05c7d9db039L    # 1.268975517585973E57
        -0x2f4e23adf2a67d59L    # -5.294385452333831E80
        -0x1cb14ca395ee0776L    # -2.3172603962959076E170
        0x795777fb6c911e71L    # 3.2501597183822817E276
        0x5a06378c3b704ee3L    # 4.69973426130768E125
        -0x3ca54d1dc7768abeL    # -3.0060136301450504E16
        -0x60b28dff531d1338L    # -6.702064526935778E-158
        -0x52c3cff07f1abc68L    # -8.648514585678846E-91
    .end array-data
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbaq;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzc:Lcom/google/android/gms/internal/ads/zzfck;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfck;->zzq(Lcom/google/android/gms/internal/ads/zzbaq;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zza:Lcom/google/android/gms/internal/ads/zzctz;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/app/Activity;

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzd:Z

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzctz;->zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbaq;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v0, 0x6

    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x3b7de2d95c1065acL    # 3.955396258036541E-22
        0x760d34eeff757766L    # 4.4906563776753534E260
        -0x424b63d00a96ac0aL    # -1.874478292915909E-11
        -0x25ffd4ec00250f9fL    # -3.420202872950153E125
        0x23b0d14ad53d8395L    # 9.038256371152278E-137
        -0x5a693e89e7dd8a2bL
    .end array-data
.end method
