.class public final Lcom/google/android/gms/internal/ads/zzbye;
.super Lcom/google/android/gms/ads/internal/zzc;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbyq;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyq;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyo;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyo;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x6c371bd752c037c5L    # 1.944883011986026E213
        0x569185368a23fea3L    # 1.0286829911949968E109
        0x79529d7d3bb7e000L    # 2.578003843658173E276
        -0x134d6f92ee567d3bL    # -3.999745102243176E215
        0x3605fafdc6f1a285L    # 1.8799529769732836E-48
        0x52710b6ac65f712aL    # 1.3562679429503834E89
        -0x5c51ac0c0d80e916L    # -8.149574033516238E-137
        0x425fa20e9befb089L    # 5.4345141036675836E11
        0x575782d91da63557L    # 5.654208432975875E112
    .end array-data
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x3674754a05ac2666L    # 2.239686658262829E-46
        -0x20fe8ba7d7d359c2L    # -4.463695212015383E149
        -0x305e101a4cb3b3abL    # -4.056590104088283E75
        -0x7002734661da8b5cL
        -0x65f4728fb03cd94bL
        0x71998a4c20e3f477L    # 1.6631111631553321E239
        -0x222ad454b4960b23L    # -1.032644300348659E144
        0x5890d54b5e64e7ebL    # 4.244871125226931E118
        0x16b72b582dd8d59cL    # 3.026885962289825E-199
    .end array-data
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x1d71098b78d53ac0L    # -5.705670173569367E166
        0x6e9adf15ef8597d1L    # 6.216522880189696E224
        0x6e847d7b56e882daL    # 2.370130209415596E224
        -0x52d7989b0cda2d72L    # -3.743779627169737E-91
        -0x27e4b0ecabed63e5L    # -2.690062502279363E116
        -0x34a9b21cdf24cfbeL    # -8.545289749652439E54
    .end array-data
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzbyq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyq;

    .line 6
    .line 7
    return-object v0
.end method
