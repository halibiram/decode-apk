.class public final Lcom/google/android/gms/internal/ads/zzeym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfub;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfub;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzc:Lcom/google/android/gms/internal/ads/zzfub;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    new-array v3, v1, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v3, v1, [J

    .line 40
    .line 41
    fill-array-data v3, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v3, v1, [J

    .line 63
    .line 64
    fill-array-data v3, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeym;->zza:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v3, v1, [J

    .line 86
    .line 87
    fill-array-data v3, :array_3

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    new-array v1, v1, [J

    .line 100
    .line 101
    fill-array-data v1, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzc:Lcom/google/android/gms/internal/ads/zzfub;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfub;->zzc()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_1

    .line 121
    .line 122
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v3, v0, [J

    .line 125
    .line 126
    fill-array-data v3, :array_5

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfub;->zzb()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/4 v2, 0x5

    .line 146
    new-array v2, v2, [J

    .line 147
    .line 148
    fill-array-data v2, :array_6

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzc:Lcom/google/android/gms/internal/ads/zzfub;

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfub;->zza()J

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catch_0
    move-exception p1

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Ljava/lang/String;

    .line 171
    .line 172
    if-eqz v2, :cond_1

    .line 173
    .line 174
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v4, v1, [J

    .line 177
    .line 178
    fill-array-data v4, :array_7

    .line 179
    .line 180
    .line 181
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v3, v1, [J

    .line 194
    .line 195
    fill-array-data v3, :array_8

    .line 196
    .line 197
    .line 198
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 206
    .line 207
    new-array v1, v1, [J

    .line 208
    .line 209
    fill-array-data v1, :array_9

    .line 210
    .line 211
    .line 212
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    :cond_1
    return-void

    .line 223
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v0, v0, [J

    .line 226
    .line 227
    fill-array-data v0, :array_a

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :array_0
    .array-data 8
        0xdd45abb479bbf01L
        -0x66495647cc1b3e91L    # -8.333730206262638E-185
    .end array-data

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
    :array_1
    .array-data 8
        0x1d39debfc4019114L    # 6.854894325772045E-168
        0x1f50e1fe66b9a3ecL    # 7.685399547248448E-158
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
    :array_2
    .array-data 8
        -0x3e186a2d6fef4576L    # -3.165557888522771E9
        -0x48a3d841dbdb9b68L    # -5.0500994156944324E-42
    .end array-data

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
        0x738ee4809c10891bL    # 4.319969937109083E248
        -0x2266fce92bc435c5L    # -7.625135174749092E142
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
    :array_4
    .array-data 8
        -0x52e79b27b5e3fc9cL    # -1.8711259275043922E-91
        -0x4bf9355cede2d0d1L    # -4.5386293951972635E-58
    .end array-data

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
    :array_5
    .array-data 8
        0x36c8eec6acec5819L    # 8.73454522809239E-45
        -0x2160aed4fa19c7e4L    # -6.25689569127317E147
        -0x353318b76d3b54f6L    # -2.1628129869975717E52
        0x4d9cba84c5545417L    # 7.563683707784124E65
    .end array-data

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
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_6
    .array-data 8
        -0xc0e3367d6c14bacL    # -3.18593429261732E250
        -0x1c977a7e481ec489L    # -7.403460766493329E170
        -0x2494ea6d0c00c87L    # -3.71025013228656E297
        0x4f3413b90a5908aaL    # 3.5473063156039446E73
        -0x11206ec20214b189L    # -1.168462881358666E226
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :array_7
    .array-data 8
        -0x6105ea9dff0116b3L
        0x1c2178c77786ee5dL    # 3.532075620168392E-173
    .end array-data

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
    :array_8
    .array-data 8
        0x2b7f8cbcafa9b939L    # 3.6060971160271697E-99
        -0x6d73c114e5d11555L    # -2.500498872267835E-219
    .end array-data

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
    :array_9
    .array-data 8
        0xbf7dcd82e8097caL
        0x574b645fb44104caL    # 3.293771715890127E112
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_a
    .array-data 8
        -0x763f65162a29547fL
        0x7a5c30075c1ffe5L
        0x3d334809df859a6bL    # 6.850129584295056E-14
        0x86b14a3cd94725aL
    .end array-data
.end method
