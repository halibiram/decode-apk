.class public final Lcom/google/android/gms/internal/ads/zzdzy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, -0x1

    .line 25
    invoke-static {v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzdzy;->zzf(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    const/16 p0, 0x11

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v1, v1, [J

    .line 39
    .line 40
    fill-array-data v1, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        0x5947e8a702e72605L    # 1.2347698345970167E122
        0x2cc1bbc8fb2ff0efL    # 4.2507608955185306E-93
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        0x673e85e679a59daaL    # 2.1249327708457842E189
        -0x19b97664823ffd5aL    # -4.7882151361883775E184
    .end array-data
.end method

.method public static final zzb(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    new-array v5, v4, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzdzy;->zzf(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v6, v4, [J

    .line 41
    .line 42
    fill-array-data v6, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzdzy;->zzf(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zze()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v3, :cond_0

    .line 77
    .line 78
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v6, v1, [J

    .line 81
    .line 82
    fill-array-data v6, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    sget v5, Lcom/google/android/gms/ads/impl/R$string;->native_headline:I

    .line 94
    .line 95
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    :goto_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v7, v0, [J

    .line 102
    .line 103
    fill-array-data v7, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdzy;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array v7, v4, [J

    .line 131
    .line 132
    fill-array-data v7, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdzy;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v2, v5}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    if-nez v3, :cond_1

    .line 153
    .line 154
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v6, v1, [J

    .line 157
    .line 158
    fill-array-data v6, :array_5

    .line 159
    .line 160
    .line 161
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    goto :goto_1

    .line 169
    :cond_1
    sget v5, Lcom/google/android/gms/ads/impl/R$string;->native_body:I

    .line 170
    .line 171
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :goto_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v7, v4, [J

    .line 178
    .line 179
    fill-array-data v7, :array_6

    .line 180
    .line 181
    .line 182
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdzy;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfxt;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 205
    .line 206
    new-array v1, v1, [J

    .line 207
    .line 208
    fill-array-data v1, :array_7

    .line 209
    .line 210
    .line 211
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {p0, v5, v1}, Lcom/google/android/gms/internal/ads/zzdzy;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    if-nez v3, :cond_2

    .line 229
    .line 230
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v3, v4, [J

    .line 233
    .line 234
    fill-array-data v3, :array_8

    .line 235
    .line 236
    .line 237
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    goto :goto_2

    .line 245
    :cond_2
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->native_media_view:I

    .line 246
    .line 247
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    :goto_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v0, v0, [J

    .line 254
    .line 255
    fill-array-data v0, :array_9

    .line 256
    .line 257
    .line 258
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdzy;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Lcom/google/android/gms/ads/nativead/MediaView;

    .line 273
    .line 274
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 278
    .line 279
    new-array v1, v4, [J

    .line 280
    .line 281
    fill-array-data v1, :array_a

    .line 282
    .line 283
    .line 284
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    nop

    .line 305
    :array_0
    .array-data 8
        0x7e067a701eaa2e8eL    # 1.1760577797188046E299
        0x21b0e48bd765424eL    # 2.113794177813497E-146
        -0x310517fa4cc91784L    # -2.971211406869678E72
    .end array-data

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
    :array_1
    .array-data 8
        0xc5e6fb9bf4a46f1L
        0xebfd47890466f27L
        -0x58ad9bd35a887ca2L
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
    :array_2
    .array-data 8
        -0x640b800f582888efL    # -5.180258305646153E-174
        0x2d81a00e4aac3a83L    # 1.730476857419682E-89
    .end array-data

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_3
    .array-data 8
        0x73785f12329fee6eL    # 1.704026769094958E248
        -0x443d946335ecb05cL    # -7.801326403847712E-21
        -0x5e468078f5570b46L
        0x7925ef02dd97042bL    # 3.7969660235441937E275
    .end array-data

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
    :array_4
    .array-data 8
        -0x5a8c81497fd0c88L
        -0x56bbf938a5970e11L    # -6.661870700806762E-110
        0x2dd346996d95225dL    # 6.056102329162826E-88
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
    .line 382
    .line 383
    .line 384
    .line 385
    :array_5
    .array-data 8
        0x2f0960296b936510L    # 4.179920870536992E-82
        -0x6ae18b572e08a3c1L    # -5.928865413181218E-207
    .end array-data

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_6
    .array-data 8
        -0x4eaf79349a9a4637L    # -3.741476307120356E-71
        0x652ec0c470c665a0L    # 2.4923836266796474E179
        -0x559748463a5140aL    # -6.547769616463678E282
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_7
    .array-data 8
        0x528a0c0c73b97b22L    # 4.145219413235783E89
        -0x7522b43b640f1e8eL    # -2.438886371777613E-256
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :array_8
    .array-data 8
        0x6ad39cd5bdc029ccL    # 3.935437508409519E206
        0x3c00a36bdee07746L
        0x68ebb3dd6df4612L
    .end array-data

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    :array_9
    .array-data 8
        0x5cb4cadbe8474eebL    # 3.8688600546429065E138
        -0x434b0999fbe85faL
        -0x1bd47575bbbd8127L    # -3.4058845987102643E174
        0x18252a291c942ef6L
    .end array-data

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :array_a
    .array-data 8
        -0x77a824e4555aa0bdL
        0x192054a2886958bL
        0x4c2157603600c92fL    # 5.442658923632564E58
    .end array-data
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    .line 1
    const v3, -0x8c8985

    .line 2
    .line 3
    .line 4
    const/4 v4, 0x0

    .line 5
    const v2, 0x1030046

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdzy;->zze(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    .line 1
    const/high16 v3, -0x1000000

    .line 2
    .line 3
    const/high16 v4, 0x41400000    # 12.0f

    .line 4
    .line 5
    const v2, 0x1030044

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdzy;->zze(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;IIFLjava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p5, -0x2

    .line 10
    invoke-static {v0, p5, p5}, Lcom/google/android/gms/internal/ads/zzdzy;->zzf(Landroid/view/View;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    if-nez p5, :cond_0

    .line 18
    .line 19
    new-instance p5, Landroid/widget/TableRow$LayoutParams;

    .line 20
    .line 21
    invoke-direct {p5}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    .line 26
    invoke-direct {v1, p5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {v2, p4, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    float-to-int p4, p4

    .line 43
    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private static zzf(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 18
    .line 19
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
