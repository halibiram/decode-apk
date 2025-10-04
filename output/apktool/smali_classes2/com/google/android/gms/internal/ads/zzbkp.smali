.class public abstract Lcom/google/android/gms/internal/ads/zzbkp;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkq;


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
        -0x5695b3b642bc7c09L
        0x7e8a5389039dddb5L    # 3.5261083923283714E301
        -0x27c4588f04d6af06L
        -0x13ac6e78c327aa6L
        -0x7089df2c8490ef09L    # -3.479765670602271E-234
        -0x6ca53097d239a7fL    # -7.504606135434836E275
        0x7e963f108eae7ed3L    # 5.959287910202541E301
        -0x47f8f76cec28b00L    # -7.82270506815982E286
        0x115f9025ea18be6eL    # 5.329452647794092E-225
        -0x14d7fc7c0bb6f570L    # -1.5419371940676192E208
        -0xa7bcadf84a0e14dL
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbkq;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbkq;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbkq;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbko;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbko;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x11ca806b0604e32L
        0x54d5dc7cb0ab586aL    # 4.7816095319368155E100
        0x15e6593fc406db9bL    # 3.564050312050101E-203
        -0x51c1e2fca15bb0a9L    # -6.055082582678132E-86
        0x9ec2fd4e9bffc12L    # 7.161107569799936E-261
        -0x358ab017e10a1aacL    # -4.9836353799636305E50
        -0x42abbb29083604eL
        -0xfe238e095e99c07L    # -1.1557652276376843E232
        -0x641db3b2c47d775aL    # -2.311944539172167E-174
        0x1e49840f6f3ab522L    # 8.861812844194544E-163
        -0x776383bedbcf05efL
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbkq;->zze(Lcom/google/android/gms/internal/ads/zzbkg;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    .line 58
    .line 59
    return p4

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x4b444ad5d16818edL    # -1.130006342492623E-54
        -0x30e1b46c4aebb6dL    # -7.142494320783367E293
        0x2611f9381c0a8049L    # 2.65518489281487E-125
        -0x1ea103548cb8e66L    # -2.29544422607297E299
        -0x25b2913d51b8af03L    # -9.961796766550107E126
        -0x78d33ad8f5646b44L
        0x248c39e21e171255L
        -0x72d49200bf8fe7beL
        0x3494b6d389b2121L
        -0x5771a5e53eb94ca8L
        -0x1674bb959a5b43f8L    # -2.608966182725117E200
    .end array-data
.end method
