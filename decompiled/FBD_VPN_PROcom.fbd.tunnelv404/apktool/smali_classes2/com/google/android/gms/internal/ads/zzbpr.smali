.class public abstract Lcom/google/android/gms/internal/ads/zzbpr;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbps;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

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
        -0x45c885e65297888eL    # -2.9632082280623775E-28
        -0x4f1f64fe529dca45L    # -2.9369927288637647E-73
        0xe836a37f683ceacL    # 9.317276258357328E-239
        -0x675cbdd38cbcc94eL    # -5.403000331362608E-190
        0x34db9a668309ca2aL    # 4.5029701507933747E-54
        -0x630ef2783f8eae51L    # -2.824096191452834E-169
        0x6717dc5261de8781L    # 4.152783082811811E188
        0x273d4df3832c5c68L
        -0x55c7ff8c1c859c54L
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .line 1
    const/4 p4, 0x3

    .line 2
    if-eq p1, p4, :cond_6

    .line 3
    .line 4
    const/4 p4, 0x4

    .line 5
    if-eq p1, p4, :cond_5

    .line 6
    .line 7
    const/4 p4, 0x5

    .line 8
    if-eq p1, p4, :cond_2

    .line 9
    .line 10
    const/4 p4, 0x6

    .line 11
    if-eq p1, p4, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x7

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbps;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    .line 24
    .line 25
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbps;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    if-nez p4, :cond_3

    .line 60
    .line 61
    const/4 p4, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    fill-array-data v1, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbpv;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object p4, v0

    .line 88
    check-cast p4, Lcom/google/android/gms/internal/ads/zzbpv;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpt;

    .line 92
    .line 93
    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzbpt;-><init>(Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    move-object p4, v0

    .line 97
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbps;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbpv;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbps;->zzd()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbps;->zzb()Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    .line 120
    .line 121
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    const/4 p1, 0x1

    .line 125
    return p1

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        0x6af03b80bb2a43e5L    # 1.3028687096460756E207
        -0x1b01c734ae405884L    # -3.0616710713464972E178
        -0x5c10a45d64160251L
        -0xf4c3ce2f922eaf5L    # -7.854365062735054E234
        0x7b982446a6c65bc9L    # 2.297543721178146E287
        -0x4ee8e3be97c584edL    # -3.27000189978058E-72
        0x50d4d68017f20454L    # 2.47077176937714E81
        -0x798d9f4d4940033bL    # -1.29591286501231E-277
        -0x425de6d0b74935d8L    # -8.230189335872364E-12
        0x1573e728d069fb67L    # 2.479709343124017E-205
    .end array-data
.end method
