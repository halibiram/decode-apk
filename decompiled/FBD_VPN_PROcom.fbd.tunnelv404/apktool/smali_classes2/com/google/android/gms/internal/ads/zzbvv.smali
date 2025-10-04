.class public final Lcom/google/android/gms/internal/ads/zzbvv;
.super Lcom/google/android/gms/internal/ads/zzbvw;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# instance fields
.field zza:Landroid/util/DisplayMetrics;

.field zzb:I

.field zzc:I

.field zzd:I

.field zze:I

.field zzf:I

.field zzg:I

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcjk;

.field private final zzi:Landroid/content/Context;

.field private final zzj:Landroid/view/WindowManager;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzbfm;

.field private zzl:F

.field private zzm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfm;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, 0x1434fcc050498e6dL    # 2.493674814896409E-211

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbvw;-><init>(Lcom/google/android/gms/internal/ads/zzcjk;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzb:I

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzc:I

    .line 28
    .line 29
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzd:I

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zze:I

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzf:I

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzg:I

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzk:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 p3, 0x2

    .line 46
    new-array p3, p3, [J

    .line 47
    .line 48
    fill-array-data p3, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/view/WindowManager;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzj:Landroid/view/WindowManager;

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        0x35f0d5becc9fb104L    # 7.199334483468161E-49
        -0x2f9696ff061bd4cfL    # -2.3538374437763237E79
    .end array-data
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 12

    .line 1
    const/4 p2, 0x4

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 6
    .line 7
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzj:Landroid/view/WindowManager;

    .line 15
    .line 16
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzl:F

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzm:I

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .line 44
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzv(Landroid/util/DisplayMetrics;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzb:I

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    iget v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .line 57
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzv(Landroid/util/DisplayMetrics;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzc:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzi()Landroid/app/Activity;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 v3, 0x1

    .line 70
    const/4 v4, 0x0

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-nez v5, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzP(Landroid/app/Activity;)[I

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 88
    .line 89
    .line 90
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 91
    .line 92
    aget v6, p1, v4

    .line 93
    .line 94
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzcdv;->zzv(Landroid/util/DisplayMetrics;I)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzd:I

    .line 99
    .line 100
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 101
    .line 102
    .line 103
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zza:Landroid/util/DisplayMetrics;

    .line 104
    .line 105
    aget p1, p1, v3

    .line 106
    .line 107
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzv(Landroid/util/DisplayMetrics;I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zze:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzb:I

    .line 115
    .line 116
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzd:I

    .line 117
    .line 118
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzc:I

    .line 119
    .line 120
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zze:I

    .line 121
    .line 122
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcla;->zzi()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzb:I

    .line 135
    .line 136
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzf:I

    .line 137
    .line 138
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzc:I

    .line 139
    .line 140
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzg:I

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 144
    .line 145
    invoke-interface {p1, v4, v4}, Lcom/google/android/gms/internal/ads/zzcjk;->measure(II)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzb:I

    .line 149
    .line 150
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzc:I

    .line 151
    .line 152
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzd:I

    .line 153
    .line 154
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zze:I

    .line 155
    .line 156
    iget v10, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzl:F

    .line 157
    .line 158
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzm:I

    .line 159
    .line 160
    move-object v5, p0

    .line 161
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzbvw;->zzj(IIIIFI)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvu;

    .line 165
    .line 166
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbvu;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzk:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 170
    .line 171
    new-instance v6, Landroid/content/Intent;

    .line 172
    .line 173
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v8, v1, [J

    .line 176
    .line 177
    fill-array-data v8, :array_0

    .line 178
    .line 179
    .line 180
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v8, v2, [J

    .line 193
    .line 194
    fill-array-data v8, :array_1

    .line 195
    .line 196
    .line 197
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Landroid/content/Intent;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzbvu;->zze(Z)Lcom/google/android/gms/internal/ads/zzbvu;

    .line 216
    .line 217
    .line 218
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzk:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 219
    .line 220
    new-instance v6, Landroid/content/Intent;

    .line 221
    .line 222
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v1, v1, [J

    .line 225
    .line 226
    fill-array-data v1, :array_2

    .line 227
    .line 228
    .line 229
    invoke-direct {v7, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    new-array v7, v2, [J

    .line 242
    .line 243
    fill-array-data v7, :array_3

    .line 244
    .line 245
    .line 246
    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Landroid/content/Intent;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbvu;

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzk:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb()Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbvu;->zza(Z)Lcom/google/android/gms/internal/ads/zzbvu;

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzk:Lcom/google/android/gms/internal/ads/zzbfm;

    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzc()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbvu;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbvu;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbvu;

    .line 286
    .line 287
    .line 288
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzh(Lcom/google/android/gms/internal/ads/zzbvu;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzj(Lcom/google/android/gms/internal/ads/zzbvu;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzf(Lcom/google/android/gms/internal/ads/zzbvu;)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzi(Lcom/google/android/gms/internal/ads/zzbvu;)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvu;->zzg(Lcom/google/android/gms/internal/ads/zzbvu;)Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 309
    .line 310
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 311
    .line 312
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .line 314
    .line 315
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v11, v2, [J

    .line 318
    .line 319
    fill-array-data v11, :array_4

    .line 320
    .line 321
    .line 322
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 334
    .line 335
    new-array v10, v2, [J

    .line 336
    .line 337
    fill-array-data v10, :array_5

    .line 338
    .line 339
    .line 340
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v9

    .line 347
    invoke-virtual {v1, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 352
    .line 353
    new-array v9, v2, [J

    .line 354
    .line 355
    fill-array-data v9, :array_6

    .line 356
    .line 357
    .line 358
    invoke-direct {v5, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 370
    .line 371
    new-array v6, v0, [J

    .line 372
    .line 373
    fill-array-data v6, :array_7

    .line 374
    .line 375
    .line 376
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 388
    .line 389
    new-array v0, v0, [J

    .line 390
    .line 391
    fill-array-data v0, :array_8

    .line 392
    .line 393
    .line 394
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 402
    .line 403
    .line 404
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_3

    .line 406
    :catch_0
    move-exception p1

    .line 407
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 408
    .line 409
    const/16 v1, 0x8

    .line 410
    .line 411
    new-array v1, v1, [J

    .line 412
    .line 413
    fill-array-data v1, :array_9

    .line 414
    .line 415
    .line 416
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    .line 425
    .line 426
    const/4 p1, 0x0

    .line 427
    :goto_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    new-array v1, p2, [J

    .line 430
    .line 431
    fill-array-data v1, :array_a

    .line 432
    .line 433
    .line 434
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-interface {v8, v0, p1}, Lcom/google/android/gms/internal/ads/zzbqa;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 442
    .line 443
    .line 444
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 445
    .line 446
    new-array v0, v2, [I

    .line 447
    .line 448
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjk;->getLocationOnScreen([I)V

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 452
    .line 453
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    aget v4, v0, v4

    .line 458
    .line 459
    invoke-virtual {v1, p1, v4}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 464
    .line 465
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    aget v0, v0, v3

    .line 470
    .line 471
    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbvv;->zzb(II)V

    .line 476
    .line 477
    .line 478
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzm(I)Z

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-eqz p1, :cond_3

    .line 483
    .line 484
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 485
    .line 486
    new-array p2, p2, [J

    .line 487
    .line 488
    fill-array-data p2, :array_b

    .line 489
    .line 490
    .line 491
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 502
    .line 503
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzn()Lcom/google/android/gms/internal/ads/zzcei;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbvw;->zzi(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :array_0
    .array-data 8
        0x4590bbc4e1e56caeL    # 1.2946897590723239E27
        -0x7941f9ee3ce5623eL
        0x4108e28672e3c200L    # 203856.80609847605
        -0x3e327a3e7552fa4dL    # -9.906101973517364E8
        -0x7fbdf24d19cdce8eL    # -2.008519772935622E-307
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_1
    .array-data 8
        -0x227909d48bfca6c1L    # -3.500016758182182E142
        -0x706566f8d2cee38L    # -5.553063786111429E274
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_2
    .array-data 8
        0x4773882bc15322f2L    # 1.6226482345657477E36
        -0x514657192e90ebeL
        -0x41732135e1eafc5eL    # -2.1510028517561194E-7
        0x286097158f03d2eaL
        0x5db22f0f59f2f429L    # 2.2173960420710413E143
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_3
    .array-data 8
        -0x38e67ccbbc4d72e0L    # -3.3117139484312675E34
        0x7c1b8695f5495d8bL    # 6.706171003530255E289
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_4
    .array-data 8
        0x11a64e10e3c3df8L
        0x71e73190c4ea1338L    # 4.832980039226063E240
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_5
    .array-data 8
        -0x54e3a021f460e3dfL
        -0x702b44aeb32f6f8eL
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_6
    .array-data 8
        -0x4568e4a96a6e672fL    # -1.8665516250843314E-26
        0x2feca5f54b654979L    # 7.731603885881799E-78
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :array_7
    .array-data 8
        0x35c59ce8958e86baL    # 1.1553252084878187E-49
        -0x29349b82b6f1587dL    # -1.286650777952449E110
        -0x34db8998a1b007bbL    # -9.799597703200084E53
    .end array-data

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    :array_8
    .array-data 8
        -0x7ef5c5c98b2d1e1bL
        0x7d047de2c8ca2883L    # 1.6359297642426785E294
        0x4a42e33cc8ba2f6aL    # 5.520865181491581E49
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :array_9
    .array-data 8
        -0x60c9552347cea39aL
        -0x5260d23fc548633aL    # -6.122368932025258E-89
        -0x1a74af6a6d092df1L    # -1.4167889311824542E181
        0x5f75469d200ce4faL    # 6.964411859584852E151
        0x7d3c93a3113a9f32L    # 1.825105397235888E295
        -0x6b200060cd2cda52L
        0x22a8bd3dee8618c4L    # 1.01437412699263E-141
        -0x5467244ce2bcb899L    # -1.1365044498914297E-98
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    :array_a
    .array-data 8
        -0x4aa6482cf4b2593fL    # -1.0740364679144642E-51
        0x31e3f5256663de37L    # 2.313339369523722E-68
        -0x30d2da0135f016b1L    # -2.5750399299743162E73
        -0x22db2870d39b4bd2L    # -4.963956600369109E140
    .end array-data

    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :array_b
    .array-data 8
        -0x75a897c47e530060L    # -7.611888608945817E-259
        0x3af9c01584289e1eL    # 1.33126077165186E-24
        -0x3b6a81cefd7fdb44L    # -2.5374379354875757E22
        -0x1e9ad2b8e96918dL    # -2.335925818940211E299
    .end array-data
.end method

.method public final zzb(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 9
    .line 10
    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzQ(Landroid/app/Activity;)[I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    aget v0, v0, v2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcla;->zzi()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzR:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 52
    .line 53
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_2

    .line 78
    .line 79
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 80
    .line 81
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcla;->zzb:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v3, 0x0

    .line 89
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 100
    .line 101
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzO()Lcom/google/android/gms/internal/ads/zzcla;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcla;->zza:I

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v2, v1

    .line 109
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzf:I

    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzi:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzg:I

    .line 132
    .line 133
    :cond_6
    sub-int v0, p2, v0

    .line 134
    .line 135
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzf:I

    .line 136
    .line 137
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzg:I

    .line 138
    .line 139
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbvw;->zzg(IIII)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvv;->zzh:Lcom/google/android/gms/internal/ads/zzcjk;

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->zzN()Lcom/google/android/gms/internal/ads/zzcky;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcky;->zzC(II)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
