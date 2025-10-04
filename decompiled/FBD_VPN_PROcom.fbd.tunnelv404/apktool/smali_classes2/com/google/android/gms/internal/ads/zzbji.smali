.class public abstract Lcom/google/android/gms/internal/ads/zzbji;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


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
        -0x1b6ea8929bde465eL    # -2.7450133467000824E176
        0x1b8f8d3fbaafdeabL    # 6.228967258109604E-176
        0x2e11519cad77a7e5L    # 8.706006321754903E-87
        -0x15a69d5c8cc87c28L
        0x643b3218818622e4L    # 6.726320043357372E174
        0x58dc2a2f81f973a3L    # 1.1363831071287901E120
        0x356e756624db1233L    # 2.5440201266322718E-51
        0x29f49a1b647b131dL    # 1.403558487891975E-106
        0x42f270a9188427d3L    # 3.244013214931172E14
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzk()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    .line 12
    .line 13
    sget p2, Lcom/google/android/gms/internal/ads/zzayi;->zza:I

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/16 v0, 0xc

    .line 31
    .line 32
    new-array v0, v0, [J

    .line 33
    .line 34
    fill-array-data v0, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p4

    .line 44
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzbku;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    move-object p1, p4

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbku;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbku;

    .line 57
    .line 58
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzbku;-><init>(Landroid/os/IBinder;)V

    .line 59
    .line 60
    .line 61
    move-object p1, p4

    .line 62
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzm(Lcom/google/android/gms/internal/ads/zzbku;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzl()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    .line 78
    .line 79
    sget p2, Lcom/google/android/gms/internal/ads/zzayi;->zza:I

    .line 80
    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzh()Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    .line 91
    .line 92
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzf()F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzg()F

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    .line 124
    .line 125
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjj;->zze()F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 155
    .line 156
    .line 157
    :goto_1
    const/4 p1, 0x1

    .line 158
    return p1

    .line 159
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_0
    .array-data 8
        0x3e67ee959a95ad38L    # 4.457676834153927E-8
        -0x6050d93625bffa24L    # -4.537863906206949E-156
        -0x1265d59ee8cbe2f1L    # -9.2364826815588E219
        -0x71e2415299567256L
        0x65cca69753a6f34L
        -0x4f5acdae3b6b6e82L    # -2.3431304511255353E-74
        -0x8b76a08bc52cf7aL    # -3.963789643839397E266
        0x6c7f7bd74a918e34L    # 4.239585890795971E214
        -0x65970d6836533f74L
        0x5ab05bff82a2135fL    # 7.087362899785103E128
        -0x192f0debe94851cL    # -9.730336575469362E300
        0x504a0912d3b3f106L    # 6.029396800348658E78
    .end array-data
.end method
