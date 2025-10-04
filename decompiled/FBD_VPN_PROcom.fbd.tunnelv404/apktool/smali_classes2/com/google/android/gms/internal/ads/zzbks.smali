.class public abstract Lcom/google/android/gms/internal/ads/zzbks;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

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
        -0x2aecd4698aaebd67L    # -6.708828008860626E101
        0x5dbf4585104db78bL    # 3.813357508516318E143
        -0x321312a401d59b11L    # -2.4371105108210045E67
        0x7304288ab452cd65L    # 1.1011381535151436E246
        -0x4f93c2e3c03b1860L    # -1.9509942334078814E-75
        0x6654cb31db3fff1bL    # 8.835471799411117E184
        -0x237390415c527f0cL    # -6.6140004250759335E137
        0x544a0ffbedb1d988L    # 1.1133805884570963E98
        -0xcc312f8b1b2c8fL
        -0x4dbb90afe5454e8L
        0x2a6708bdd98bdc33L    # 2.00864711382971E-104
        0x690dbf3302ce3e09L    # 1.111804621511377E198
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkt;
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
    const/16 v1, 0xc

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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkt;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkt;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkr;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbkr;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x26c6edc7ff829642L    # -6.47400179844744E121
        -0xac78b2c00fa483dL    # -4.590163320184989E256
        -0x87913021eac9782L    # -5.913841683703307E267
        -0x12fbd3e6008ca26dL    # -1.3907904503836355E217
        -0x6cdd00352f77b8abL
        -0x480d97a85b0ceb11L    # -3.3809398340577075E-39
        0x18d2b94f702c72a3L    # 4.202408936015301E-189
        -0x1c02d08795a438e9L    # -4.5115277512799366E173
        -0x4a042df0fdd0c83fL    # -1.189724185104524E-48
        -0x3020de91038d64a2L    # -5.632308102917267E76
        -0x14d3cb65bbd883aaL    # -1.811091946600299E208
        -0x5cba23a7bebfecc3L    # -9.178601234484058E-139
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p1, p4, :cond_2

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkg;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object p1, v0

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkg;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbke;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbke;-><init>(Landroid/os/IBinder;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkt;->zze(Lcom/google/android/gms/internal/ads/zzbkg;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    .line 54
    .line 55
    return p4

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    return p1

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x68b4b970e15f7f03L
        0x5d689e0a1f1d4ae6L    # 9.380999941588307E141
        0x59437e1751e446cbL    # 1.006692352919034E122
        0x3acb40b00da4e5c6L
        0x7fea44bcc064b793L    # 1.475709728659809E308
        0x236929bac58e1b25L
        0x44dd414046f12f36L    # 5.526091920898508E23
        -0x4bcc2252a7992c6aL
        0x361241f1a8b05202L    # 3.123088131830708E-48
        0x19ffdf6eed3d0ef0L
        0x285006df5d2e84d5L    # 1.627008095388856E-114
    .end array-data
.end method
