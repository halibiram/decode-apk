.class public abstract Lcom/google/android/gms/internal/ads/zzcle;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclf;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzclf;
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
    const/16 v1, 0x9

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzclf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzclf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcld;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcld;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x7893715113c84906L    # -6.598602181128985E-273
        0x54f6819cf5500a84L    # 1.9690769482258903E101
        -0x59d64866c9ead8a3L    # -7.59827800095525E-125
        -0x603db8ac126ffdceL
        -0x15ab57d1e14bf45bL    # -1.619136094372145E204
        0x5612bf4e3ca59cc8L    # 4.2996878050376376E106
        -0x987c82abd1bbaeeL    # -4.766243939654581E262
        0x309408e53d915781L    # 1.1073501446604644E-74
        -0x29a6f0a8bc179b28L    # -9.195984643280218E107
    .end array-data
.end method
