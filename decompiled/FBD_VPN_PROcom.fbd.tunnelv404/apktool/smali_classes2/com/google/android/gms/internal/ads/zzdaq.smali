.class public final Lcom/google/android/gms/internal/ads/zzdaq;
.super Lcom/google/android/gms/ads/internal/client/zzdm;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:J

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzeis;

.field private final zzi:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeis;Lcom/google/android/gms/internal/ads/zzfgp;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdm;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzac:Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzc:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    move-object p5, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzd:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p5

    .line 39
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    if-nez p5, :cond_2

    .line 44
    .line 45
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    new-array v1, v1, [J

    .line 50
    .line 51
    fill-array-data v1, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p5

    .line 61
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    if-eqz p5, :cond_3

    .line 66
    .line 67
    :cond_2
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzw:Lorg/json/JSONObject;

    .line 68
    .line 69
    new-instance p5, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    new-array v1, v1, [J

    .line 73
    .line 74
    fill-array-data v1, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {p5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p5

    .line 84
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    nop

    .line 90
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 91
    .line 92
    move-object p2, v0

    .line 93
    :cond_4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zza:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeis;->zzc()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zze:Ljava/util/List;

    .line 100
    .line 101
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzh:Lcom/google/android/gms/internal/ads/zzeis;

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    const-wide/16 v0, 0x3e8

    .line 112
    .line 113
    div-long/2addr p1, v0

    .line 114
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzf:J

    .line 115
    .line 116
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgQ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 117
    .line 118
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    if-eqz p4, :cond_5

    .line 135
    .line 136
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfgp;->zzj:Landroid/os/Bundle;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzi:Landroid/os/Bundle;

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzi:Landroid/os/Bundle;

    .line 147
    .line 148
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzje:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    if-eqz p4, :cond_7

    .line 167
    .line 168
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfgp;->zzh:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfgp;->zzh:Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_7
    :goto_4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    const/4 p2, 0x1

    .line 183
    new-array p2, p2, [J

    .line 184
    .line 185
    const-wide p3, 0x34230c33256e5aaeL    # 1.5172332895234267E-57

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    const/4 p5, 0x0

    .line 191
    aput-wide p3, p2, p5

    .line 192
    .line 193
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    :goto_5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzg:Ljava/lang/String;

    .line 201
    .line 202
    return-void

    .line 203
    :array_0
    .array-data 8
        -0x350f4ec85c9ca81fL    # -9.99250261517253E52
        -0x3be9345aea842512L    # -1.0512563205104124E20
        0x3b3c0e2000c7d02eL    # 2.3206697526499865E-23
        0x513db75380376783L    # 2.2550225698137798E83
        0x1f694416d8d23c6L
        0x5ba18ffa3b6678a6L    # 2.493172094680676E133
        -0x464ec310138159cfL    # -8.499007900750786E-31
        -0x3f13eae56fcaefaL    # -3.746482706178018E289
        0x62a4e90b2bf72326L    # 1.5413044398736782E167
        0x681017c8de156f01L    # 1.8355735128507684E193
    .end array-data

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
    :array_1
    .array-data 8
        -0x356a2afca409a21cL    # -2.0420879572110284E51
        0x7b200e4ef54fb1bbL    # 1.1937691670782204E285
        0xe2a134695ba45c3L    # 1.955251900859692E-240
        -0x38c30c793510da56L    # -1.5032361695152256E35
        0x2428b7c641695a7aL
        0x2a45ed81ea50eac0L    # 4.780417883672885E-105
        -0x644847dc3c1d2ad4L
        -0x5cb8f81c553a43e5L    # -9.669886236845776E-139
    .end array-data

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
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_2
    .array-data 8
        0x470c9b0534b2ae88L    # 1.8566062247198408E34
        0x71e117cd5c65d1f1L    # 3.561756856184784E240
        0x53622b88f8e9e1dL
    .end array-data
.end method


# virtual methods
.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzf:J

    return-wide v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzh:Lcom/google/android/gms/internal/ads/zzeis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeis;->zza()Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaq;->zzd:Ljava/lang/String;

    return-object v0
.end method
