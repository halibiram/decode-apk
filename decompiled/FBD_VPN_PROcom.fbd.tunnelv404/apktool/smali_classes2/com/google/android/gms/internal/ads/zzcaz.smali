.class public final Lcom/google/android/gms/internal/ads/zzcaz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;)Lcom/google/android/gms/internal/ads/zzcan;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v4, v0, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcay;->zza:Lcom/google/android/gms/internal/ads/zzcay;

    .line 23
    .line 24
    invoke-static {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzceg;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcee;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcar;

    .line 29
    .line 30
    const v3, 0xe52bf80

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcar;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsv;I)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array p2, v0, [J

    .line 43
    .line 44
    fill-array-data p2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzcan;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcan;

    .line 63
    .line 64
    :goto_0
    move-object v2, p1

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcal;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcal;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_1
    return-object v2

    .line 77
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 p2, 0x6

    .line 80
    new-array p2, p2, [J

    .line 81
    .line 82
    fill-array-data p2, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    nop

    .line 97
    :array_0
    .array-data 8
        0x6fb519c11f305d3eL    # 1.2796510938202783E230
        -0x11101554e2f1c2bcL    # -2.3627859607303074E226
        0xa1799699e416159L
        -0xa67b4ef70cfa56fL
        0x703f8946cd388902L    # 4.896057788046112E232
        -0x5f70eb3f1944bec8L    # -7.418022358928589E-152
        -0x7807bc5f3e4d92e5L
        -0x1d72b366389be30bL    # -5.3991289521303655E166
        0x27e20ff279c9327eL
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x227d62f04a37c473L
        -0x2aec290493278439L    # -6.943129590083339E101
        -0x2a5c4f161f05edb1L    # -3.528237408441723E104
        -0x1ae89735488cc1ceL    # -9.486077549477086E178
        0x642a8f3fdb0d6c04L    # 3.284494321830592E174
        0x68b49430cc022313L    # 2.4035806833763747E196
        -0x1f3c89771deb8192L    # -1.3360973651591434E158
        0x1d97981164cf2a85L    # 4.001144728383579E-166
        0x2b4995e13c3efbe0L
    .end array-data

    :array_2
    .array-data 8
        -0x3392f105a27e925fL    # -1.4592256764382744E60
        -0x5c83959327c06fcfL    # -9.544665444788092E-138
        0x5aad45aec329cb97L    # 6.340791877400431E128
        -0x75664c861badfdceL
        0x110bc320d9744d7dL
        -0x3d0cda18e95a9648L    # -3.368561878196755E14
    .end array-data
.end method
