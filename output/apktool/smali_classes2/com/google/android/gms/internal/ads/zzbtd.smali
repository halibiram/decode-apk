.class public abstract Lcom/google/android/gms/internal/ads/zzbtd;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbte;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xb

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
        -0x583ad6de8cd12ea4L    # -4.195667282063848E-117
        0x40f9b71599b5fa3dL    # 105329.35002706289
        -0x2c80ae5878f6c903L    # -1.63322504672449E94
        -0x75700292461df2e0L    # -8.32237653726645E-258
        -0x541d6d6ac50389cL
        0x68dd3b5cd9359b58L    # 1.3656959156120018E197
        -0x42388ec7fbfbe802L    # -4.2641224320612714E-11
        -0x42ce695b0fa5c7adL    # -6.248674206520015E-14
        0x41a8d0167de53f97L    # 2.0814521494775078E8
        -0x60ed470eaed71c12L    # -5.326777599587043E-159
        -0x7aee850f24d3771fL
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbte;
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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbte;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbte;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtc;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtc;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x7de7a1ca06eedcfaL
        0x4fc5a069e9874679L    # 1.9563992659786544E76
        0x50f6ff6023f39629L    # 1.090738423830983E82
        -0x4294bd53622b01fL
        -0x39293a5dcaf88bffL    # -1.847484639902011E33
        0x526f746c4bbd5b72L    # 1.2514553383019727E89
        0x4bd9baa290028d25L    # 2.523497195502505E57
        -0x313b622620ce7fd1L    # -2.845811662925393E71
        -0x4797423441379fedL    # -5.816672871906793E-37
        -0x31425589bf378b4dL    # -2.047462884909519E71
        0x3e1d6d8b52fc8b9aL    # 1.7129296418314828E-9
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbte;->zzf()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    .line 15
    .line 16
    sget p4, Lcom/google/android/gms/internal/ads/zzayi;->zza:I

    .line 17
    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbte;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return p2
.end method
