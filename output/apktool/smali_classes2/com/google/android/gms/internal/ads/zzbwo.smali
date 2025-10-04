.class public abstract Lcom/google/android/gms/internal/ads/zzbwo;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwp;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbwp;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbwp;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbwp;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwn;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwn;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x220ff7a4593206a3L
        0x1b2796a1305847c3L    # 7.276306768457601E-178
        -0x286d7c9c80970ef6L    # -7.123619898283896E113
        -0xb1f0752de2cc104L    # -9.95414136300625E254
        -0x25402829ba672921L    # -1.3795380493062249E129
        -0x794cd83d8c82f223L
        0x6fdbc6ab20f0b12aL
        0x600adce172d52dcbL    # 4.5021433118040754E154
        0x360beb01020fefc2L    # 2.387782488452652E-48
    .end array-data
.end method
