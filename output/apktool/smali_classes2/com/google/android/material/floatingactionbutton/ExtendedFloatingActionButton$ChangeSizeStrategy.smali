.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;
.super Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeSizeStrategy"
.end annotation


# instance fields
.field private final extending:Z

.field private final size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->getCurrentMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    new-array v5, v4, [J

    .line 11
    .line 12
    fill-array-data v5, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v6, v4, [J

    .line 32
    .line 33
    fill-array-data v6, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    aget-object v6, v3, v5

    .line 48
    .line 49
    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    int-to-float v7, v7

    .line 56
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 57
    .line 58
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    int-to-float v8, v8

    .line 63
    new-array v9, v4, [F

    .line 64
    .line 65
    aput v7, v9, v5

    .line 66
    .line 67
    aput v8, v9, v0

    .line 68
    .line 69
    invoke-virtual {v6, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v7, v4, [J

    .line 75
    .line 76
    fill-array-data v7, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v2, v6, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v6, v4, [J

    .line 92
    .line 93
    fill-array-data v6, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v6, v4, [J

    .line 112
    .line 113
    fill-array-data v6, :array_4

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    aget-object v6, v3, v5

    .line 128
    .line 129
    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    int-to-float v7, v7

    .line 136
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 137
    .line 138
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    int-to-float v8, v8

    .line 143
    new-array v9, v4, [F

    .line 144
    .line 145
    aput v7, v9, v5

    .line 146
    .line 147
    aput v8, v9, v0

    .line 148
    .line 149
    invoke-virtual {v6, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 150
    .line 151
    .line 152
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v7, v4, [J

    .line 155
    .line 156
    fill-array-data v7, :array_5

    .line 157
    .line 158
    .line 159
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v2, v6, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 170
    .line 171
    new-array v6, v1, [J

    .line 172
    .line 173
    fill-array-data v6, :array_6

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    .line 189
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v6, v1, [J

    .line 192
    .line 193
    fill-array-data v6, :array_7

    .line 194
    .line 195
    .line 196
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    aget-object v6, v3, v5

    .line 208
    .line 209
    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 210
    .line 211
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    int-to-float v7, v7

    .line 216
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 217
    .line 218
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingStart()I

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    int-to-float v8, v8

    .line 223
    new-array v9, v4, [F

    .line 224
    .line 225
    aput v7, v9, v5

    .line 226
    .line 227
    aput v8, v9, v0

    .line 228
    .line 229
    invoke-virtual {v6, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 230
    .line 231
    .line 232
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 233
    .line 234
    new-array v7, v1, [J

    .line 235
    .line 236
    fill-array-data v7, :array_8

    .line 237
    .line 238
    .line 239
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v2, v6, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 247
    .line 248
    .line 249
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v6, v1, [J

    .line 252
    .line 253
    fill-array-data v6, :array_9

    .line 254
    .line 255
    .line 256
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_3

    .line 268
    .line 269
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v6, v1, [J

    .line 272
    .line 273
    fill-array-data v6, :array_a

    .line 274
    .line 275
    .line 276
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    aget-object v6, v3, v5

    .line 288
    .line 289
    iget-object v7, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 290
    .line 291
    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    int-to-float v7, v7

    .line 296
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 297
    .line 298
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingEnd()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    int-to-float v8, v8

    .line 303
    new-array v9, v4, [F

    .line 304
    .line 305
    aput v7, v9, v5

    .line 306
    .line 307
    aput v8, v9, v0

    .line 308
    .line 309
    invoke-virtual {v6, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 310
    .line 311
    .line 312
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v7, v1, [J

    .line 315
    .line 316
    fill-array-data v7, :array_b

    .line 317
    .line 318
    .line 319
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v2, v6, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 327
    .line 328
    .line 329
    :cond_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 330
    .line 331
    new-array v6, v1, [J

    .line 332
    .line 333
    fill-array-data v6, :array_c

    .line 334
    .line 335
    .line 336
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_6

    .line 348
    .line 349
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 350
    .line 351
    new-array v6, v1, [J

    .line 352
    .line 353
    fill-array-data v6, :array_d

    .line 354
    .line 355
    .line 356
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v2, v3}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    iget-boolean v6, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 368
    .line 369
    const/high16 v7, 0x3f800000    # 1.0f

    .line 370
    .line 371
    const/4 v8, 0x0

    .line 372
    if-eqz v6, :cond_4

    .line 373
    .line 374
    const/4 v9, 0x0

    .line 375
    goto :goto_0

    .line 376
    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    .line 377
    .line 378
    :goto_0
    if-eqz v6, :cond_5

    .line 379
    .line 380
    goto :goto_1

    .line 381
    :cond_5
    const/4 v7, 0x0

    .line 382
    :goto_1
    aget-object v6, v3, v5

    .line 383
    .line 384
    new-array v4, v4, [F

    .line 385
    .line 386
    aput v9, v4, v5

    .line 387
    .line 388
    aput v7, v4, v0

    .line 389
    .line 390
    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 394
    .line 395
    new-array v1, v1, [J

    .line 396
    .line 397
    fill-array-data v1, :array_e

    .line 398
    .line 399
    .line 400
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 408
    .line 409
    .line 410
    :cond_6
    invoke-super {p0, v2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    return-object v0

    .line 415
    :array_0
    .array-data 8
        0x2c31ed1261fe32ddL    # 8.392401942322774E-96
        -0x15fc07cdbc8ba7bfL    # -4.891416667874606E202
    .end array-data

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
    .line 426
    .line 427
    :array_1
    .array-data 8
        0x42d3b366e7793a42L    # 8.664498607844103E13
        -0x21011a63cd8d3c58L    # -3.9506902404850296E149
    .end array-data

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
    :array_2
    .array-data 8
        0x739ce467da20e938L    # 8.080480628438088E248
        -0x3e1c69442099ed2L
    .end array-data

    .line 440
    .line 441
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
    :array_3
    .array-data 8
        -0x2183079750655422L    # -1.4470102390149834E147
        -0x3086ffa6c567214cL    # -7.067773156114071E74
    .end array-data

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
    .line 462
    .line 463
    :array_4
    .array-data 8
        -0x34fb93b11dca8ba5L    # -2.4451778898787342E53
        0x551f8bae87c8b008L    # 1.1039712988350739E102
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_5
    .array-data 8
        -0x69e63a9d736a9b82L    # -3.28787110200931E-202
        -0x2db9278b19d6d0b0L    # -2.2723229552369887E88
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_6
    .array-data 8
        0x26f1e7f453f27cd7L    # 4.333931828724021E-121
        0x3dcfeaeb533f14f6L    # 5.8057873097464104E-11
        -0x5a619538403a2bcL
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_7
    .array-data 8
        0xeaab84583af9cc6L    # 5.129166717823398E-238
        0x7879dbfaa45dd2b5L    # 2.185811711997198E272
        0x7f4cf89cc6c0235dL    # 1.5893928062014087E305
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_8
    .array-data 8
        -0x2267a8f8c6fe45d9L    # -7.420235936277807E142
        0x49802f5b26c3fc93L    # 1.1549990970846626E46
        0x29a046ad1369530bL    # 3.465144414859905E-108
    .end array-data

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
    :array_9
    .array-data 8
        -0xfe5a0d44f863bcdL    # -1.0235658785423287E232
        0x6a592b614010dc80L    # 1.972835386066179E204
        -0x70d6904508c32606L    # -1.2499995182616202E-235
    .end array-data

    .line 536
    .line 537
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
    .line 550
    .line 551
    :array_a
    .array-data 8
        0x1f7acf9bb7f7368eL
        -0x6882b851a4992951L
        -0x3ac84f3c2afeb6b5L    # -2.8640042815845493E25
    .end array-data

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
    :array_b
    .array-data 8
        -0x7aa4fe0d42ec9c8cL    # -7.264910033710953E-283
        0x3dc3e802ec4c71feL    # 3.6209338945033044E-11
        0x1f3851d8237e0d02L
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
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
    :array_c
    .array-data 8
        0x110e11c696a6e8f8L
        0x499bb891a4b03b93L    # 3.956469381269876E46
        -0x56cc4959afc7162aL
    .end array-data

    .line 584
    .line 585
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
    .line 598
    .line 599
    :array_d
    .array-data 8
        -0x1f90aa03c28246f4L    # -3.3611636967898726E156
        -0x4bf63c91c1cb0e75L    # -5.1304332020326604E-58
        0x5341dde6b7d4971eL    # 1.164650172904268E93
    .end array-data

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
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :array_e
    .array-data 8
        -0x2a10d5be6c17e2fdL    # -8.934628646555708E105
        -0x681c2f8b13060d9L
        0x490ca1a0557faa2cL    # 7.981256280247888E43
    .end array-data
.end method

.method public getDefaultMotionSpecResource()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_expand_motion_spec:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_collapse_motion_spec:I

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationEnd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$602(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$502(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$602(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onExtended(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onShrunken(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public performNow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$502(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 22
    .line 23
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$302(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 29
    .line 30
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    .line 43
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    .line 53
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingStart()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 70
    .line 71
    invoke-interface {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingEnd()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public shouldCancel()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$500(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method
