.class public final Lcom/google/android/gms/internal/ads/zzbll;
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
        -0xd6715f331e766fcL
        -0x6897f5c6ef95204dL    # -6.432000781497952E-196
        0x557065bc7cee6139L    # 3.672600689487136E103
        0x565c36f328a7362fL    # 1.0353640912042825E108
        0x5671c5b92443830aL    # 2.608695971083388E108
        0xd269ce4ec536423L
        0x1dc5d74273cc2b49L
        -0x35bf01383d4e06e2L    # -4.967712932344559E49
        0x412de8f02c95c8d8L    # 980088.0870802654
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
    const/16 v1, 0xb

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbjt;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjt;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjr;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjr;-><init>(Landroid/os/IBinder;)V

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
        -0x24175a3dd94ad0fcL    # -5.598360288509455E134
        -0x6551b36223f0dea4L
        -0x72319689a8cb2a17L
        -0x7909d6d3c1220a88L    # -4.0004608178679004E-275
        -0x4030c971cc8ad3e9L    # -0.2438524008997269
        -0x2f8e1ae0aa380517L    # -3.315360837854151E79
        0xfe79363d0fd79ceL
        0x3056c373c93093b2L    # 7.863571908071254E-76
        0x38693a825bc3d282L
        0x56f04c978866be19L    # 6.124693635352106E110
        -0x56628c397922d108L
    .end array-data
.end method

.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzbjq;
    .locals 3
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjt;

    .line 19
    .line 20
    const v2, 0xe52bf80

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzbjt;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/16 p3, 0xa

    .line 33
    .line 34
    new-array p3, p3, [J

    .line 35
    .line 36
    fill-array-data p3, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzbjq;

    .line 51
    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    check-cast p2, Lcom/google/android/gms/internal/ads/zzbjq;

    .line 55
    .line 56
    :goto_0
    move-object v0, p2

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbjo;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjo;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :goto_1
    return-object v0

    .line 69
    :goto_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 p3, 0x7

    .line 72
    new-array p3, p3, [J

    .line 73
    .line 74
    fill-array-data p3, :array_1

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        -0x446b98434966e67eL
        0x3940dfe6ae186150L    # 6.499864745071882E-33
        0x6429e6b2bdf26c4L
        -0x943a6a7f6e9c1e0L
        -0x67002a780a6cf8cbL
        0x32109320c0d8ea12L
        0x773848b864efd8d3L    # 1.957571107685283E266
        -0x741d2f8fc6835c06L
        -0x3905620abac9c6cbL    # -8.637718059344541E33
        -0x1069f376bbe4945bL    # -3.3429125084427206E229
    .end array-data

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
        0x1823cbf48cd35d7bL
        0xb7ef3e443d602a3L
        -0x15674dec9c7d2dbfL    # -3.0971111317522436E205
        0x3c8ecfd79ff6596L
        -0x3e6ef2735b0fb684L    # -7.152516123465532E7
        -0x3f3cb71150aff9aeL    # -9873.864725115858
        -0x41c97f4f9d925280L    # -5.239316125788383E-9
    .end array-data
.end method
