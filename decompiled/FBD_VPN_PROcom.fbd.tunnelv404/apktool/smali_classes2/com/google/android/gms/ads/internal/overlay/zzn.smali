.class public final Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v1, v2, :cond_4

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 9
    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb:Lcom/google/android/gms/ads/internal/client/zza;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzu:Lcom/google/android/gms/internal/ads/zzdiu;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdiu;->zzs()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcjk;->zzi()Landroid/app/Activity;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzj:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    move-object p0, p2

    .line 43
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/ads/internal/overlay/zza;

    .line 44
    .line 45
    .line 46
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzy;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {p0, p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zza;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzaa;Lcom/google/android/gms/ads/internal/overlay/zzy;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    const/4 v3, 0x6

    .line 68
    new-array v3, v3, [J

    .line 69
    .line 70
    fill-array-data v3, :array_0

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lcom/google/android/gms/internal/ads/zzcei;

    .line 84
    .line 85
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Z

    .line 86
    .line 87
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v4, v0, [J

    .line 90
    .line 91
    fill-array-data v4, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    new-array v3, v3, [J

    .line 108
    .line 109
    fill-array-data v3, :array_2

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    new-instance p2, Landroid/os/Bundle;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-direct {p2, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v3, v0, [J

    .line 131
    .line 132
    fill-array-data v3, :array_3

    .line 133
    .line 134
    .line 135
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v0, v0, [J

    .line 148
    .line 149
    fill-array-data v0, :array_4

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    const/high16 p1, 0x80000

    .line 169
    .line 170
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    :cond_5
    instance-of p1, p0, Landroid/app/Activity;

    .line 174
    .line 175
    if-nez p1, :cond_6

    .line 176
    .line 177
    const/high16 p1, 0x10000000

    .line 178
    .line 179
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzS(Landroid/content/Context;Landroid/content/Intent;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :array_0
    .array-data 8
        -0x361b460c5d567a20L    # -9.466134153181157E47
        0x28c9239095b5d404L
        0x5d722a78e9797ee1L    # 1.384506721492292E142
        0x2ceca96ed0e72762L    # 2.748118879641984E-92
        0x72ef0dec4d1d2ba6L    # 4.240816131903161E245
        0x2f0e276d440634b9L    # 4.9670242637007993E-82
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
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
    :array_1
    .array-data 8
        0x73da63755298b25eL
        0x113245564377452dL    # 7.712620351909842E-226
        0x72b3c06c62ea45edL    # 3.371630410543094E244
        -0x1c56efb724407291L    # -1.2107408499515521E172
        0x4ee1ff7ad6c20b20L    # 9.937392859316495E71
        -0xac6562831a45c39L    # -4.816719416891486E256
        -0x2a2636d214ec1d2cL    # -3.696239195553043E105
        -0x6e0a4ee9de7be681L    # -3.750573474881215E-222
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_2
    .array-data 8
        0x757085d03a2660a6L    # 4.961780498099606E257
        0x346cc814e06bf4d0L    # 3.6681347240371554E-56
        0x7a663fee246b394dL    # 4.038784304218026E281
        -0x560371f5c866bba6L
        -0x8e88ce2de83e35fL
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :array_3
    .array-data 8
        -0x6928c57078d503c8L
        0x2dc05e3bee83a835L    # 2.571281359822387E-88
        0x4ba925b7d3279222L    # 3.083054446580343E56
        -0x73ec5fdfe0da5815L
        -0x4c6530adade7f654L    # -4.1709526325023306E-60
        0x2702141e1481979cL    # 8.751372271983391E-121
        -0x402b8cb67af18e55L    # -0.31953657144347386
        -0x7d7003ead1194562L
    .end array-data

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_4
    .array-data 8
        0x57c8e63cd8bef966L    # 7.664726338334424E114
        -0x7f5c30667f7051b0L
        -0x74f49a1e192f5133L    # -1.824703084918509E-255
        -0x2ac83daa2b9afb3eL    # -3.325898058087343E102
        0x1099da342b111b6bL
        0x630d12e9cbd7377L
        -0x5328dfbb2f802da6L    # -1.1086712993825685E-92
        0x3de99e05ad758b40L
    .end array-data
.end method
