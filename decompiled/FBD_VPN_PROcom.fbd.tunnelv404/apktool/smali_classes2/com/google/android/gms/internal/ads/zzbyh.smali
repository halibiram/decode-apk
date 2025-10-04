.class public final Lcom/google/android/gms/internal/ads/zzbyh;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, p1

    .line 10
    :goto_0
    const/16 v4, 0x8

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v3, p2

    .line 15
    move-object v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
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
    const/16 v1, 0x8

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbyu;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyu;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbys;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbys;-><init>(Landroid/os/IBinder;)V

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
        0x1fb15805cd42fafaL    # 5.052978802047486E-156
        0x5e987363e83f3736L    # 4.885060619499846E147
        -0x37d5bea3848ae378L    # -4.4671107774981555E39
        -0x504dc7ebee3759e2L    # -6.146204709645247E-79
        0x68916e028377afc5L    # 5.08941370807856E195
        -0x39ad7f65e02fad21L    # -5.863629325305465E30
        -0x3b5e2bd09da782e3L    # -4.209717717058614E22
        0x1e17349f3c0c39f1L
    .end array-data
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x675a88cb9bce017fL    # 7.389003132445735E189
        0x72b6036a8530f426L    # 3.75770358556553E244
        0x2b615bf6eaac7681L    # 9.920694163601797E-100
        0x6191c2a1b0fd5350L    # 9.987745925279116E161
        -0x4cb114d78830e3a4L    # -1.5031783949876519E-61
        -0x560dd2cb8ae1527aL
        -0x64ed65993e1611a6L    # -2.869251432688293E-178
        0x208ebf5fcb2f9a62L
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
        0x4f89f11651997300L    # 1.466723174441081E75
        0x3c3d90ab44c4df7dL    # 1.6027280062946196E-18
        -0x4d79838ba9aa6c51L    # -2.668984527967647E-65
        -0x7dc185af9fb2dc4L    # -5.257814818338592E270
        0x6d6883dd22e16536L    # 1.0817338264299936E219
        -0x5fa76b2c567fc63aL    # -7.333444761730641E-153
    .end array-data
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzbyu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyu;

    .line 6
    .line 7
    return-object v0
.end method
