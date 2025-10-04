.class public abstract Lcom/google/android/gms/internal/ads/zzayk;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayl;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzayl;
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
    const/4 v1, 0x7

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzayl;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/zzayl;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayj;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzayj;-><init>(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        -0x3667dca1a9cf6ce1L    # -3.4451130616362175E46
        -0x77aee8e28c36156dL
        0x3158c6e5f316e2f9L    # 5.609301845275549E-71
        -0x100477b96a59c064L    # -2.6715272403144067E231
        0x1732a518df48ee15L    # 6.235670430995706E-197
        0x1a2974b3d23e156cL
        0x4716d09ea0890e10L    # 2.9615459954573457E34
    .end array-data
.end method
