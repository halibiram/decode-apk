.class public abstract Lcom/google/android/gms/internal/ads/zzbkm;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkn;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkn;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkn;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkn;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkl;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbkl;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x7c5cf2b34f07c83cL    # 1.128431291917334E291
        -0x25f3cdf269257f50L    # -5.9644213420286395E125
        0x3a9d4f5ba9e36212L    # 2.3676423328912638E-26
        0x3cb1f051451e0211L    # 2.489500283922773E-16
        -0x4a9c30d9c9bfaaffL    # -1.6545396479404447E-51
        -0xd63442a07b61e48L    # -1.22622048531359E244
        0x1523700e331321L
        0x498e5e4cfeb2e708L    # 2.1671587547078905E46
        -0x4666cc5c91491a5aL    # -3.1063509001384636E-31
        0x2a587a8ca73f57bbL
        -0x6f329e5297640a56L    # -9.689648597026589E-228
    .end array-data
.end method
