.class public Lcom/google/android/gms/ads/AdLoader$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/client/zzbq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;)Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x24f77a7095277fc3L
        -0x2aed45b338eb076dL    # -6.553959974367102E101
        0x697837d9fe25375aL    # 1.1586131747989287E200
        0x6c727bdd7f71102aL    # 2.4890254155809763E214
    .end array-data
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/AdLoader;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/client/zzbq;->zze()Lcom/google/android/gms/ads/internal/client/zzbn;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbn;Lcom/google/android/gms/ads/internal/client/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v2, 0x5

    .line 21
    new-array v2, v2, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzeu;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzeu;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    .line 42
    .line 43
    new-instance v2, Lcom/google/android/gms/ads/AdLoader;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzeu;->zzc()Lcom/google/android/gms/ads/internal/client/zzbn;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    .line 50
    .line 51
    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzbn;Lcom/google/android/gms/ads/internal/client/zzp;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :array_0
    .array-data 8
        0x75f458aa9ba47da4L    # 1.5641660373814498E260
        0x6ff4c34ee1d5f52dL    # 2.014675791841175E231
        0x12b50ead7298149dL    # 1.491305242023558E-218
        0x5c6c88306145a9b9L    # 1.659052313540552E137
        0x60dda0c59122a6ebL    # 4.067806510427036E158
    .end array-data
.end method

.method public varargs forAdManagerAdView(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;[Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzq;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzq;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblt;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblt;-><init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzj(Lcom/google/android/gms/internal/ads/zzbkx;Lcom/google/android/gms/ads/internal/client/zzq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object p0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/16 v0, 0x9

    .line 50
    .line 51
    new-array v0, v0, [J

    .line 52
    .line 53
    fill-array-data v0, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :array_0
    .array-data 8
        -0x1792267575c56feL
        0x4da179135c846829L    # 9.200582918936232E65
        -0x1c8f1f13bb992208L    # -1.0191875459895944E171
        0x3b88873ca0f2a66bL    # 6.492578710155022E-22
        -0x2529a9e3d617ad88L    # -3.870710533382803E129
        0x77c219280de3ed03L    # 7.469699770336585E268
        -0x1737fef23fe29879L    # -5.607288531249512E196
        0x3c9e40a32cb142e3L    # 1.0495940868692424E-16
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_1
    .array-data 8
        0x6bb1c7d340a4e525L    # 5.845512494906015E210
        0x2649f88f77a3428cL
        -0x90f771142bf35b5L    # -8.330625035549315E264
        -0x2ba9d1c9b8814bc1L    # -1.8950917624888258E98
        -0x154d325725ee1be0L    # -9.43262262692578E205
        0x35b6071099484719L    # 5.887458398180147E-50
        0x76964604a9a5b170L
        0x60080b85693e6633L    # 4.0298850154054485E154
        0x161c8cb03f59ae94L
    .end array-data
.end method

.method public forCustomFormatAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwg;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbwg;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzb()Lcom/google/android/gms/internal/ads/zzbkt;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zza()Lcom/google/android/gms/internal/ads/zzbkq;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkt;Lcom/google/android/gms/internal/ads/zzbkq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p3, 0x6

    .line 24
    new-array p3, p3, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x2d918628c1b972ddL    # 3.441089819134267E-89
        -0x277d76df4d09d6b0L    # -2.3370944031146905E118
        -0x6fb61f1d46a57771L    # -3.33374015576418E-230
        -0xba2811b384e7e59L    # -3.378895599582777E252
        -0x6282247f60b2ddffL    # -1.26582845335072E-166
        -0x19401275f5b9b8feL    # -8.682554430271556E186
    .end array-data
.end method

.method public forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwi;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbwi;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzk(Lcom/google/android/gms/internal/ads/zzbla;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
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
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x519a8d785bd42346L    # 1.2895736141169824E85
        -0x62955c694daa02f4L
        -0x692fb0884f7ee189L    # -8.523304745612923E-199
        0x5c1691c69365e3eeL    # 4.101085067700699E135
        0x66d90c046e0d91f0L    # 2.7245328007194713E187
        -0xc76f57715a59bdeL
    .end array-data
.end method

.method public withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzg;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzl(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
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
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x1afab2727b746f93L    # -4.316254094083283E178
        -0x6a23a18a15ef6d81L
        0x5f3131bf85060102L    # 3.5177346108098436E150
        -0x6cf1ea49045912b1L    # -6.818056576576428E-217
        -0x3aecc637514dc3ebL    # -5.810616849801559E24
    .end array-data
.end method

.method public withAdManagerAdViewOptions(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzm(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-object p0

    :array_0
    .array-data 8
        -0x4bbcd79232ca08d1L    # -6.104067210357127E-57
        -0x1e5d065f80168d1cL    # -2.134184072471841E162
        0x5cb197f4f71ad781L    # 3.273650284222737E138
        0xa4596a8b9d953e4L
        -0x46dc423286bab947L    # -1.9010292619921714E-33
        -0x5dc6ae616173802eL    # -8.110463152567316E-144
        0x5aa977a3853c9e94L    # 5.516603022363896E128
    .end array-data
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 14
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAdOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzbjb;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldRequestMultipleImages()Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzfk;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzfk;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    move-object v7, v1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzc()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zza()I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzb()Z

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zzd()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    add-int/lit8 v12, p1, -0x1

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    const/4 v4, -0x1

    .line 62
    move-object v1, v13

    .line 63
    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzbjb;-><init>(IZIZILcom/google/android/gms/ads/internal/client/zzfk;ZIIZI)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v13}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzo(Lcom/google/android/gms/internal/ads/zzbjb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    fill-array-data v1, :array_0

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_3
    return-object p0

    .line 89
    :array_0
    .array-data 8
        0x4b1b4843ecd45b69L    # 6.532809740144287E53
        0x7c6e77ccc5c67713L    # 2.3753593494226928E291
        0x2089fe2e22bd1032L    # 6.203642918679144E-152
        -0x3c73765c1d00cf90L
        0x106195ebc3d4a9c4L    # 9.061732072591518E-230
        0x16f2c5c675cc2b91L    # 3.923976082053657E-198
    .end array-data
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/formats/zzg;Lcom/google/android/gms/ads/formats/zzf;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 1
    .param p3    # Lcom/google/android/gms/ads/formats/zzf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblr;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzblr;-><init>(Lcom/google/android/gms/ads/formats/zzg;Lcom/google/android/gms/ads/formats/zzf;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblr;->zzd()Lcom/google/android/gms/internal/ads/zzbkt;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblr;->zzc()Lcom/google/android/gms/internal/ads/zzbkq;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkt;Lcom/google/android/gms/internal/ads/zzbkq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 p3, 0x7

    .line 24
    new-array p3, p3, [J

    .line 25
    .line 26
    fill-array-data p3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x666cb1b4cd400df2L    # 2.438489798184588E185
        0x5cab0803063efa8L
        0x346a194fa81d766bL    # 3.326232113479462E-56
        0x5d0ed11e9d85cfd6L    # 1.834917638212717E140
        -0x4aaa4737064a90b8L    # -9.071453899811804E-52
        -0x17021ceecf6a1ed4L    # -5.5852063235823426E197
        -0xca1511f0b0cdfb9L    # -5.363347946606364E247
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/ads/formats/zzi;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblu;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Lcom/google/android/gms/ads/formats/zzi;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzk(Lcom/google/android/gms/internal/ads/zzbla;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
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
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x6aceb1040dfe1f8bL    # 3.0792483010282267E206
        -0x66c4243bfa44cc41L    # -4.001656515453441E-187
        -0x20c176929ca4bfdcL    # -6.247434837139268E150
        -0x3319038c0f8f54e9L    # -2.9549847545918207E62
        0xfe7e75401d64de9L    # 4.811462769002105E-232
        -0x1bffa1b812597a6fL    # -5.060468137682161E173
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/NativeAdOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/ads/internal/client/zzbq;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbjb;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbjb;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbq;->zzo(Lcom/google/android/gms/internal/ads/zzbjb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
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
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x5d19bf737984293L    # -3.447843362225832E280
        -0x4fea2a8dcf28fa5eL    # -4.714003738694836E-77
        -0x15a181a5239925bL
        0x450a9054dc751a29L    # 4.0142071869559754E24
        -0x6fa489d334887fcaL
        0x3ad249e945668dadL    # 2.3637611004173767E-25
    .end array-data
.end method
