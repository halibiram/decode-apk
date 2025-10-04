.class public final Lcom/google/android/gms/internal/ads/zzbop;
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
    const/16 v3, 0xa6

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
    const/16 v1, 0xa

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbow;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbow;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbow;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbow;-><init>(Landroid/os/IBinder;)V

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
        0x70c321a1c48282ddL    # 1.5207324283112484E235
        -0x4bb3712d325badf9L    # -9.099073205049755E-57
        -0x199cf3c06695d026L    # -1.6187255037928936E185
        0x14eeaac37907d4cfL    # 7.462510201703445E-208
        0x252c8b238a6469abL
        -0x3d784f41f041f684L    # -3.2559837982091855E12
        -0x46a43a6383824fd0L    # -2.139470819792111E-32
        -0x3a4f97701c5b6714L    # -5.078167940059887E27
        -0x48ddc9c0e194381fL    # -4.083249338713783E-43
        -0xf5d46ab59cd8b1bL    # -3.7208662867650516E234
    .end array-data
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xa

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x221636d839841bd0L
        0x6887c481a2dbcc64L    # 3.4700248872167683E195
        0x1b2da241f47c5a0eL    # 9.141136490364192E-178
        -0x1c7bc141558a6265L    # -2.4449355111569936E171
        -0x4c803fb3512dd298L    # -1.2349251034268303E-60
        -0x5b7105fc7468b5c6L
        -0x7524587cdc6e62e1L
        0x235a64d6e400242L
        0x4c36dab4d77cfc3aL    # 1.4345890382359822E59
        0x4455ef38ad9ac853L    # 1.6184773760078344E21
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
        0x252526dd90befaffL    # 9.535853822025845E-130
        -0x4f5a81a064bbd726L    # -2.3759712339449213E-74
        -0x3a06e261f8c17c7aL    # -1.243668857894167E29
        -0x94ddf3fd5d9281eL    # -5.70826974035853E263
        -0x20031c1f673fa093L    # -2.4209595391800064E154
        0x60652e6632be173aL    # 2.2719527234650267E156
    .end array-data
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzbow;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbow;

    .line 6
    .line 7
    return-object v0
.end method
