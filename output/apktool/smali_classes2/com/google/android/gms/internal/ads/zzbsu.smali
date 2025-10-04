.class public abstract Lcom/google/android/gms/internal/ads/zzbsu;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsv;


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
        -0x123672b8ec77fc1dL    # -7.215882565685981E220
        0x1abbb27dc1c7dfa4L    # 6.67481081564784E-180
        0x18adfd9f63689a63L
        0x5c464c6d079f65a0L    # 3.2414882790001593E136
        0x9283380692ebbd1L
        -0x2ec339f14152d160L    # -2.183503868411271E83
        0x7bc8df6389256fa7L    # 1.8936829650913595E288
        0x1ddf53a3b0fb1e19L    # 8.499967425768816E-165
        -0x1909c52c5976095dL    # -9.672365768762748E187
        -0x368304f7fb4a03deL    # -1.034062044557594E46
    .end array-data
.end method

.method public static zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbsv;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbsv;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbsv;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbst;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbst;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x1d40a73c4a073701L    # -4.621148631859658E167
        0x57e82b61d40c0765L    # 2.9760164732892626E115
        0x33bb7c80a06b8910L
        0x74484e0652b40c65L    # 1.3921247464530941E252
        -0x697a14e7966688a1L    # -3.579320406750543E-200
        0x5e123027a385b75fL    # 1.419467247889784E145
        -0x71bf240813ca0519L    # -5.056753226876705E-240
        -0x2766542de192129dL    # -6.473573074242302E118
        0x4ffafe1eca0ef4c7L    # 1.9534601147989334E77
        -0x65b26233de1b9451L    # -5.576026656658784E-182
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-eq p1, p4, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzd(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbus;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zze(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbsy;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return p4
.end method
