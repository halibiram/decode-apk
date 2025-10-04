.class public abstract Lcom/google/android/gms/ads/internal/client/zzdc;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzdd;


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayh;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x156ccea46ef5bac3L    # -2.406996594708422E205
        -0x32fb9343bcd4ab5L
        -0x541a43196ef100e4L    # -3.1803056388690573E-97
        -0x6205a37e2896c481L    # -2.861080820000418E-164
        -0x74af6bc4211697d0L
        -0x76a7ddb8b453cfdaL
        -0x600f81e69d64f8a9L    # -7.687952671520233E-155
        -0x2c2fd1fa8f44117aL    # -5.399965634506931E95
        0x3d07bbfbb8940154L    # 1.0540150844460014E-14
        0x26266778bdc29fdeL    # 6.619435883240686E-125
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdd;
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
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzdd;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzdd;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdb;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzdb;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x68a8cf3faafe2f94L    # -3.102356671269642E-196
        0x6634361758a65f96L    # 2.146997197443813E184
        0x2d42dd09ae20e1d7L    # 1.1575291978832186E-90
        0x4f1326c685cd82ccL    # 8.45942818812113E72
        -0x763988e63de48346L
        -0x1193e4f91c657c32L    # -8.127542571362382E223
        -0x4ac6ab819b719df4L    # -2.6445809909998714E-52
        -0x1d4802c41ef059f3L    # -3.536496885928879E167
        0x13c9341bc1a3e45fL
        0x33de0aba314a352fL    # 7.478048996350528E-59
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdd;->zze()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    .line 9
    .line 10
    return p2

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
