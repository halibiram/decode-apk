.class public final Lcom/google/android/gms/internal/ads/zzblm;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x15eca9179d900327L    # -9.474187249630766E202
        -0x28f5327720208e3L    # -1.703986951119279E296
        -0x74577ebb1f578c2L    # -3.588218357583722E273
        0x42028869f0ccf8c5L    # 9.94975695362147E9
        0x71f1429182b3d47fL    # 7.193134245103248E240
        0x420fa3d78e75ed57L    # 1.6986599886740889E10
        -0x28688b0cff2bcf9eL    # -9.025842545492423E113
        -0x7e02eec622a2e9d6L    # -4.340390959114117E-299
        -0x1c8deb49fd3c448fL    # -1.0917863320429248E171
    .end array-data
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

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
    const/16 v1, 0xc

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbjz;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjz;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjx;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(Landroid/os/IBinder;)V

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
        -0x249603ec3ccdc73L
        -0x637cdf152e78832dL
        -0x5de9b155df5c2b1dL
        0x2af61e2a257ac06dL    # 9.87515683666107E-102
        0x34521025426c4bddL    # 1.1510451348900342E-56
        -0x50809cab9b63d80aL    # -6.617971548187321E-80
        0x1904392944e2641cL    # 3.631152107383994E-188
        0x3c526aa9c1a26579L    # 3.993474990116314E-18
        -0x290e86caa89ecf58L    # -6.565950203614803E110
        0x5c3680ce9e29ea05L    # 1.6356162828600561E136
        -0x789f441157c93656L
        0x43eb6155dcf5eda0L    # 1.578362015417716E19
    .end array-data
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzbjw;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjz;

    .line 23
    .line 24
    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbjz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/16 p3, 0xb

    .line 34
    .line 35
    new-array p3, p3, [J

    .line 36
    .line 37
    fill-array-data p3, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzbjw;

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    .line 55
    check-cast p2, Lcom/google/android/gms/internal/ads/zzbjw;

    .line 56
    .line 57
    :goto_0
    move-object v0, p2

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :catch_1
    move-exception p1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbju;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbju;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_1
    return-object v0

    .line 70
    :goto_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/16 p3, 0x8

    .line 73
    .line 74
    new-array p3, p3, [J

    .line 75
    .line 76
    fill-array-data p3, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x643160f8763fd9b6L    # 4.298303411514249E174
        0x227b1a53530c6e12L
        -0x3722078dc46c4fb2L    # -1.0443192641399826E43
        -0x646b60788ecf2c6bL    # -8.142874871269374E-176
        -0x56937281a7c0f0beL
        -0x7191ad02639b14e6L
        0x19afe483c1592a7aL    # 5.86385312371656E-185
        -0x5229b0a0cf5dbe70L    # -7.009414539305701E-88
        0x576c73f1671c8016L    # 1.3685320206477255E113
        -0x4fb68a45f386e7bdL    # -4.3975145963617367E-76
        0x75e557fa50c7044eL    # 8.204181049733815E259
    .end array-data

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
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x4a40c76b17b7bc8fL    # 4.904500721305904E49
        0x7debb3803c82d7b0L    # 3.623296869856524E298
        0x29756b2b5ed64613L    # 5.69997928921905E-109
        -0x28864fc3245d622L    # -2.412178528901999E296
        -0x6f680d3924c3e9cdL    # -9.872311332731276E-229
        0x311dad75448c3b3aL    # 4.199227426880998E-72
        0x2ebd3c6de577edc3L    # 1.5049426076874382E-83
        -0x4c095a55e16cba7L
    .end array-data
.end method
