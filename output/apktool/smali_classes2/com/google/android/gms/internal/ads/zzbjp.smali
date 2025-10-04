.class public abstract Lcom/google/android/gms/internal/ads/zzbjp;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjq;


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
        0x1d4443ae7c550e71L
        -0x5fed01e77bfedf64L    # -3.541324890364538E-154
        -0x7755ef1dd75fb29dL    # -6.315495466195482E-267
        -0x184796db2b0ea938L    # -4.350486425359336E191
        0x1faf72c7b6fdd6a3L
        0x7891990db9cd8113L    # 5.949987970009635E272
        -0x28bcedcd7ced29b1L    # -2.293209657193386E112
        -0x2861c8e3109175c7L    # -1.162639509110932E114
        -0x5fc2f2414ce2593dL
        0x7d5170c24deac5edL    # 4.455472993696337E295
    .end array-data
.end method

.method public static zzbJ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbjq;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbjq;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbjq;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjo;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbjo;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x3a38a4c14f28fe01L    # -1.4456927048635415E28
        0x3254b742e515cfe8L    # 3.073576478526431E-66
        -0x6b9d6c39b2d83156L
        -0x7b53533245dbfc9L
        -0x651d1371b1b759dbL    # -3.64843483052213E-179
        -0x342231273965b281L    # -2.9235596660127824E57
        0x4e83de8205099311L    # 1.714149767741392E70
        -0x7745bb91617b03d9L
        0x53db44dadad71058L    # 9.100961651459054E95
        -0x3d1f23fe11e4edf7L    # -1.4829688985000028E14
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbH(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/16 v0, 0x9

    .line 36
    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzbjj;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    move-object p1, p4

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjj;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbjh;

    .line 62
    .line 63
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzbjh;-><init>(Landroid/os/IBinder;)V

    .line 64
    .line 65
    .line 66
    move-object p1, p4

    .line 67
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbG(Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbF(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbjq;->zzc()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbI(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    .line 169
    .line 170
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 183
    .line 184
    .line 185
    move-result-object p4

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbjq;->zzbE(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    .line 194
    .line 195
    :goto_1
    const/4 p1, 0x1

    .line 196
    return p1

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_0
    .array-data 8
        0x36694bbe6bdc56b2L    # 1.384651167144366E-46
        -0x2c5c4ae45427b34L
        0x6c8e26b5ef19f99bL    # 8.120293431937119E214
        0x4c42a3b99c7cadd5L    # 2.340047152719555E59
        0x48b51958843f9d93L    # 1.8379827224770792E42
        -0x2ef470eb2a8a30acL    # -2.6141523615288195E82
        -0x701253ac7ebccb30L
        0x7c1a0c257f6c0da7L    # 6.346013796709975E289
        0x37fbf05579173aaaL    # 5.131547894225026E-39
    .end array-data
.end method
