.class public abstract Lcom/google/android/gms/internal/ads/zzccs;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcct;


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
        0x6d66079a2801c38cL    # 9.72065140258234E218
        -0x6542acf41ea017d2L    # -7.066945416465277E-180
        0x1cd076aa114c9152L    # 6.816249521062646E-170
        0x12b7ea02cae91199L
        -0x6899711df1a10a4L
        0x69803b9be7238d68L    # 1.5531802028201423E200
        -0x20319105e4df6edcL    # -3.1878638576219947E153
        -0x13b63201154019e5L    # -4.3435544390744704E213
        0x772ccdbbfdd51c16L    # 1.1609505197068241E266
    .end array-data
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzcct;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcct;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcct;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccr;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzccr;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x1ced676faf037795L    # -1.7545106112996492E169
        -0x296c71f8b2fb67ecL    # -1.1481319479819994E109
        0x9eb700a6976cbd4L
        -0x4f1f266387339b4aL    # -2.9802458849476157E-73
        0x3236e2451e8d1a88L    # 8.488098088606668E-67
        -0x5f79764d1b1e5d35L    # -5.379047450467129E-152
        0x59d1a087f45d19ddL    # 4.66099312467254E124
        -0x1845099b77a19e5dL    # -4.8052607482629944E191
        -0x6651cb99e0c81460L
    .end array-data
.end method


# virtual methods
.method public final zzbO(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const/4 p4, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, p1, p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcct;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :pswitch_1
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbxi;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzcct;->zzh(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxi;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :pswitch_2
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbxi;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzcct;->zzi(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxi;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcct;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbxr;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 136
    .line 137
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxr;

    .line 142
    .line 143
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcct;->zzg(Lcom/google/android/gms/internal/ads/zzbxr;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :pswitch_5
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 155
    .line 156
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbxi;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzcct;->zzl(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxi;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :pswitch_6
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 194
    .line 195
    .line 196
    move-result-object p4

    .line 197
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 198
    .line 199
    .line 200
    move-result-object p4

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbxi;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzcct;->zzm(Ljava/util/List;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbxi;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 225
    .line 226
    .line 227
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    .line 232
    .line 233
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 249
    .line 250
    .line 251
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    .line 256
    .line 257
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzayi;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcct;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    sget-object v0, Lcom/google/android/gms/internal/ads/zzccx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 288
    .line 289
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzayi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lcom/google/android/gms/internal/ads/zzccx;

    .line 294
    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    if-nez v1, :cond_0

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_0
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 303
    .line 304
    const/16 v2, 0x9

    .line 305
    .line 306
    new-array v2, v2, [J

    .line 307
    .line 308
    fill-array-data v2, :array_0

    .line 309
    .line 310
    .line 311
    invoke-direct {p4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p4

    .line 318
    invoke-interface {v1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 319
    .line 320
    .line 321
    move-result-object p4

    .line 322
    instance-of v2, p4, Lcom/google/android/gms/internal/ads/zzccq;

    .line 323
    .line 324
    if-eqz v2, :cond_1

    .line 325
    .line 326
    check-cast p4, Lcom/google/android/gms/internal/ads/zzccq;

    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcco;

    .line 330
    .line 331
    invoke-direct {p4, v1}, Lcom/google/android/gms/internal/ads/zzcco;-><init>(Landroid/os/IBinder;)V

    .line 332
    .line 333
    .line 334
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayi;->zzc(Landroid/os/Parcel;)V

    .line 335
    .line 336
    .line 337
    invoke-interface {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzcct;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzccx;Lcom/google/android/gms/internal/ads/zzccq;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    .line 342
    .line 343
    :goto_1
    const/4 p1, 0x1

    .line 344
    return p1

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    :array_0
    .array-data 8
        0x5fc8a81162f38a39L    # 2.5827329791317665E153
        -0x64f59abc9b1c3651L
        0x401fc0d3b3682012L    # 7.938307574491789
        -0x6643898e86dd4002L
        -0x7b17a9c0e615190L    # -3.224821422573315E271
        0x2bbfa6f430b5452eL    # 5.788483814702961E-98
        0x87352c339104a2bL    # 5.85227829592277E-268
        0x4cd2dfe2c5bc49bcL    # 1.2132095570730835E62
        -0x3e7bfdf939d7767bL    # -4.195964076979355E7
    .end array-data
.end method
