.class public final Lcom/google/android/gms/ads/internal/client/zzdk;
.super Lcom/google/android/gms/internal/ads/zzayg;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xa

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayg;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x2af544d87c7fdb1L    # -4.258820997327768E295
        -0x6347886be40757b5L    # -2.532474178064018E-170
        0x33582ebf0c02e904L    # 2.351386026813539E-61
        0x17f228fc9a339697L    # 2.487717913498409E-193
        0x4deb705fd32565c3L    # 2.3117279897245542E67
        0x3b91c5c29673d1b6L    # 9.408683383220431E-22
        -0x6c00c234e7654300L
        -0x6d4f09e15b5e8805L    # -1.201226716612059E-218
        -0x1a0725cf5436ed95L    # -1.6500004350160564E183
        0x3e7983f2da5a1383L    # 9.505236294768076E-8
    .end array-data
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbsv;I)Lcom/google/android/gms/ads/internal/client/zzdj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayg;->zza()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    .line 10
    .line 11
    const p1, 0xe52bf80

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzayg;->zzbl(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    instance-of v0, p3, Lcom/google/android/gms/ads/internal/client/zzdj;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    move-object p2, p3

    .line 55
    check-cast p2, Lcom/google/android/gms/ads/internal/client/zzdj;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p3, Lcom/google/android/gms/ads/internal/client/zzdh;

    .line 59
    .line 60
    invoke-direct {p3, p2}, Lcom/google/android/gms/ads/internal/client/zzdh;-><init>(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    move-object p2, p3

    .line 64
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    return-object p2

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x57d78ad5f87a62bdL    # 1.4493983302712448E115
        -0x57dae9b03964c787L
        0x25bffee6a6c607a0L    # 7.385391956018521E-127
        -0x3fd51ae74ff62256L    # -13.44745397682603
        -0x31b71e2fb2949015L    # -1.3416393525652899E69
        0x73f4f8ae0bd3ca93L    # 3.7537379616175744E250
        -0x67e67f95946a4d8bL
        -0x6d4f967dfd314cb5L
        -0x363532d08440e32aL    # -3.060190983866416E47
    .end array-data
.end method
