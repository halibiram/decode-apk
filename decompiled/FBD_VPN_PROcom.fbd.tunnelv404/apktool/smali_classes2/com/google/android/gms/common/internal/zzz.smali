.class public abstract Lcom/google/android/gms/common/internal/zzz;
.super Lcom/google/android/gms/internal/common/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x3337629efa95ddfL
        -0xc0d95f2e13f9d41L    # -3.296026875714968E250
        -0x3f11d6d5c1c30037L    # -61769.32009744604
        -0x24b8e9a319e404f9L    # -5.121088767435432E131
        0x64f405ad2d3f18aL
        0x5d32c6f7d7bd61e9L    # 8.944359903912007E140
        -0x1725f88ead980511L    # -1.2160624584766948E197
    .end array-data
.end method

.method public static zzg(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaa;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzaa;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/gms/common/internal/zzaa;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzy;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzy;-><init>(Landroid/os/IBinder;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :array_0
    .array-data 8
        -0x4d932e588c1cc76cL    # -8.551637503148648E-66
        0x75f502c609fbb0a5L    # 1.6152493297594588E260
        -0x71ccfa6779e07dcfL    # -2.852702070724327E-240
        0x27fcc18d27205024L    # 4.561325495717046E-116
        -0x23c680177d6dc2b1L    # -1.8534126949980813E136
        0x4694d085f12449caL    # 1.0554227572619888E32
        -0x468ddd192d075733L    # -5.588689580887499E-32
    .end array-data
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eq p1, p2, :cond_1

    .line 3
    .line 4
    const/4 p4, 0x2

    .line 5
    if-eq p1, p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzc()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    .line 26
    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/common/zzc;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return p2
.end method
