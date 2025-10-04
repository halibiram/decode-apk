.class public final Lcom/google/android/gms/internal/ads/zzbvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private zza:Landroid/app/Activity;

.field private zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private zzc:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzbvk;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zza:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbvk;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x53df4ad74a16d52eL    # -3.910991069542786E-96
        -0x3599b9f2e29e5d96L    # -2.6042366275523745E50
        0x7fef3fc42954c898L    # 1.7555084079968397E308
        0x18c9fb0b501fcb50L
        0x468e45ed9b87907dL    # 7.675157091175611E31
        0x26345d1ae108fe6eL
        -0xa43e37e7d179fb0L
    .end array-data
.end method

.method public final onPause()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x349ba6793f0d9912L    # 2.8191647661451213E-55
        0x7c6e1eca52144516L    # 2.34825227797012E291
        -0x7b6d0cd9f438f5dL
        -0x4cdb1613031f74acL    # -2.5419282254576706E-62
        0x333f39ef69edde53L    # 7.590695334272784E-62
        -0x7055b41523e18a0fL    # -3.30820324820776E-233
    .end array-data
.end method

.method public final onResume()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x7ad73eb03d99c33cL    # 5.400863236871684E283
        0x79d2d47e267b005dL    # 6.675863883572159E278
        0x4be37ab23bef5971L    # 3.82104486579186E57
        0x6790c80f9c4f50b9L    # 7.477006189606045E190
        0x69fed992c03768d6L    # 3.7782509538111045E202
        0x2292b663227c19cfL
    .end array-data
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/16 p4, 0xa

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 p2, 0x7

    .line 10
    new-array p2, p2, [J

    .line 11
    .line 12
    fill-array-data p2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzg(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 p2, 0x9

    .line 40
    .line 41
    new-array p2, p2, [J

    .line 42
    .line 43
    fill-array-data p2, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 57
    .line 58
    invoke-interface {p1, p0, p5}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [J

    .line 66
    .line 67
    fill-array-data v0, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array p2, p4, [J

    .line 90
    .line 91
    fill-array-data p2, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 105
    .line 106
    invoke-interface {p1, p0, p5}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_2
    check-cast p1, Landroid/app/Activity;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zza:Landroid/app/Activity;

    .line 113
    .line 114
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzc:Landroid/net/Uri;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 121
    .line 122
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 127
    .line 128
    new-array p2, p4, [J

    .line 129
    .line 130
    fill-array-data p2, :array_4

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzb:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 144
    .line 145
    invoke-interface {p1, p0, p5}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :array_0
    .array-data 8
        0x7d716441ac7acf78L    # 1.777198613418628E296
        -0x5a1459a958130b8dL    # -5.105792813944146E-126
        0x117189eff17f5b8L
        -0x798fb26ed06d8de1L    # -1.149612413671406E-277
        0x491fdd5d8fac29eaL    # 1.7765168839475514E44
        0x1a64099a7df05011L
        0x4c773eaba2a520feL    # 2.3345602382281224E60
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
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
    :array_1
    .array-data 8
        -0x3506e4084f2d56aL
        0x5a274cc46010aca8L    # 1.971522443920929E126
        -0x6542543d4f3da766L    # -7.150458649501283E-180
        -0x307686bac7e7c9L
        -0x147f599147d1e693L    # -6.842338320906306E209
        0x5c6628549e2cc806L    # 1.2883967163838747E137
        -0x4030c10cf61de106L    # -0.24410856230337413
        0x69d7423f44eb7420L    # 7.121377433603504E201
        0x28578e9c8f181bd8L
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
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
    .line 218
    .line 219
    .line 220
    .line 221
    :array_2
    .array-data 8
        0x147fdb170eebd014L    # 6.056083186394639E-210
        0x464541f8815bd1d7L    # 3.368416725840507E30
    .end array-data

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
    :array_3
    .array-data 8
        -0x55585905b2784733L    # -3.300077065286653E-103
        -0x35f3a9b12a38af43L    # -5.176847141552754E48
        -0xdcc0f67a7a5340aL
        -0x26f81c4268fca1a8L    # -7.711118350288404E120
        -0x7b284b20e95990c8L    # -2.490990616521665E-285
        0x2a4b569db37002b3L    # 5.959965189120494E-105
        -0x3362a56f2af2ad0L
        0x4031ccae41697fa4L    # 17.79953392816209
        -0x20f4f5e3cbe7e93dL    # -6.9149079641569815E149
        0x894898f164a8f72L
    .end array-data

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
    :array_4
    .array-data 8
        0x24c59f264d04e66eL
        0x318f45ec1d4c0f37L    # 5.663989318624587E-70
        0x7894dc149b77acc5L    # 7.052838306297532E272
        0x705a98ecd482a8eL
        -0x76676047c1fc22dL    # -8.63495097345544E272
        -0x6f811ca4328ee467L
        0x4cb3b740ba19759cL    # 3.1682119558716584E61
        -0x2cf95b0b7e446274L    # -9.225473516560846E91
        -0x3106b26c920b47d7L    # -2.7941616112521285E72
        0x4c981acaca971a26L    # 9.683672534303531E60
    .end array-data
.end method

.method public final showInterstitial()V
    .locals 13

    .line 1
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvk;->zzc:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzy;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 26
    .line 27
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbvi;

    .line 28
    .line 29
    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzbvi;-><init>(Lcom/google/android/gms/internal/ads/zzbvk;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcei;

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    move-object v7, v1

    .line 40
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzcei;-><init>(IIZZZ)V

    .line 41
    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v3, v0

    .line 48
    move-object v8, v1

    .line 49
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzaa;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzdiu;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 53
    .line 54
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvj;

    .line 55
    .line 56
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbvj;-><init>(Lcom/google/android/gms/internal/ads/zzbvk;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzq()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
