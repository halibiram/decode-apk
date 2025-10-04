.class public abstract Lcom/google/android/gms/internal/ads/zzbkw;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x6b290998b5600ca4L
        -0x115531ad3e38cc0aL    # -1.2402749889105328E225
        -0x34b2fd5eb9a6f522L    # -5.5572643200728284E54
        -0x222796348371e1b6L    # -1.1908134810207017E144
        0x53f0c98baa1813cbL    # 2.241089260587479E96
        0x50bb01194eaa816fL    # 8.004821597096389E80
        0x22793fa74085bbb8L    # 1.294077106168063E-142
        -0x4cc338167a82c1b6L    # -6.996250937471382E-62
        -0x479663c635fb7006L    # -6.020942436462454E-37
        -0x2ca8a27ae3c75b0eL    # -3.0461428388742193E93
        0x39c56189ac8b073dL    # 2.108330065932703E-30
        0x74dd60a241e576dfL    # 8.615308372787621E254
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkx;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkx;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkx;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkv;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbkv;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x7e10593b988e9a8eL
        0x36ab21157575bbe4L    # 2.3760095938822932E-45
        0x3b684f2acf5c485bL    # 1.6086510245293568E-22
        0x2cd28fdf8e2dac95L    # 8.898693078765273E-93
        -0x31291bdd9739b650L    # -6.31955644756697E71
        -0x4970dc097bafdac8L    # -6.818298003240825E-46
        0x34b62c930dc8f63bL    # 9.043304805928607E-55
        0x34b06b8afe32657L
        0x45a51a56d7c6d473L    # 3.265513690726466E27
        0x37ad1ae4b8b36d1bL    # 1.6705480863937127E-40
        -0x736f8fa764e2501L    # -6.769588978429388E273
        -0x504e5a48c44d86dbL    # -5.953331717104838E-79
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p1, p4, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzbt;->zzac(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbkx;->zze(Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    return p4

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method
