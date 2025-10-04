.class public abstract Lcom/google/android/gms/internal/ads/zzcae;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xd

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
        -0x5f9161b479f9dd8aL
        0x492e946f8a45d122L    # 3.4097646470626053E44
        -0x1c9113ece9672157L    # -9.335927485919549E170
        0x693b549e9579a808L    # 8.171945177156519E198
        -0x60e5aee20b12b0bL
        0x27e33a70fd5146c8L
        -0x766965632913879eL
        -0x576a96e18caf54dfL    # -3.477690272767452E-113
        0x1ee951c648ed904L
        0x401ffbeadb345d2eL    # 7.996013093062443
        0x47daef34b02395cfL    # 1.4320782192026685E38
        0x161a95db393cc7dcL
        0x3cc8d122a1a04725L    # 6.888083071280732E-16
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcaf;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcad;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcad;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x53ac21fddff01f6L
        -0x3b808ee92228e420L    # -9.279968172427599E21
        -0x72b9a250ffa57c3fL
        0x311f668f2b62a064L    # 4.443030571060988E-72
        -0x186435ede59e49f8L    # -1.2381563257977418E191
        -0xe2066efce6ba44bL    # -3.2921136806016136E240
        0x2ebc307d07ecbabaL    # 1.451066001715114E-83
        -0x473631968dbd8b22L    # -3.882899933658925E-35
        -0x4d0f1da23672c581L    # -2.5652076601181503E-63
        -0x213152e1422e90dbL    # -4.9030932474709377E148
        -0x7ff738557fdd81c7L    # -1.221001684227749E-308
        0x2079179164562611L
        -0x52a19c30aa70da5dL    # -3.729669329864313E-90
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

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
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcaf;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object p4, Lcom/google/android/gms/internal/ads/zzcag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    .line 97
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcag;

    .line 102
    .line 103
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcaf;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcag;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result p4

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcaf;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 201
    .line 202
    .line 203
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    .line 205
    .line 206
    const/4 p1, 0x1

    .line 207
    return p1

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
.end method
