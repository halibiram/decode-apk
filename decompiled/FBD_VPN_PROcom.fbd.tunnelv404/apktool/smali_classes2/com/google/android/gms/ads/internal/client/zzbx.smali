.class public abstract Lcom/google/android/gms/ads/internal/client/zzbx;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzby;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzby;
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
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzby;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzby;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbw;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzbw;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x109e1c1049130939L    # -3.390519189480816E228
        -0x7e838f2e23e19408L
        0x1f3075d1d51f2040L
        -0x20797818b4467148L    # -1.4750469641871597E152
        -0x21dcbf4d7e643914L    # -3.0051081290099387E145
        0x3d64829e530b3b20L    # 5.829357501872978E-13
        0x3baeee4a274020ceL    # 3.274927846250828E-21
        -0x30ebd60954c3bdd6L    # -8.906640768964246E72
        -0x775a0e3878e98ca3L    # -5.31690096521371E-267
    .end array-data
.end method
