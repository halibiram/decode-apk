.class public abstract Lcom/google/android/gms/internal/ads/zzbgz;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbha;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbha;
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
    const/16 v1, 0xd

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbha;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgy;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgy;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x6d0df6968995d9a0L    # -2.04381601446929E-217
        -0x122b37e5f0a8f50L
        -0x52ca5b8e0e8629acL    # -6.640274118769775E-91
        0x2193101b96b5b61fL    # 5.963367471791853E-147
        -0x3aa990b0a70008baL    # -1.0848805766807388E26
        0x73a933ffc21fe0f4L    # 1.4097456439417128E249
        0x2daae2ffea804fffL    # 1.0559152722262194E-88
        0x32427c560e53f667L    # 1.3713445607366384E-66
        -0x790beae693529e07L    # -3.625267018890096E-275
        0x4f834fd13643f8bdL    # 1.0918711211476752E75
        -0x6e917ab16e9d109dL    # -1.030690245909718E-224
        -0x794d1466dd92aadaL
        0xcf70cb85faede38L
    .end array-data
.end method
