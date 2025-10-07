.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static clamp(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, -0xff

    shr-int/lit8 v0, p0, 0x1f

    and-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "unable to interpolate strings "

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "set"

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :try_start_0
    sget-object v5, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    aget v5, v5, v6

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x2

    .line 41
    const-wide v8, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/high16 v10, 0x437f0000    # 255.0f

    .line 47
    .line 48
    packed-switch v5, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :pswitch_0
    new-array p0, v1, [Ljava/lang/Class;

    .line 54
    .line 55
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v2, p0, v0

    .line 58
    .line 59
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    aget p2, p2, v0

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object p2, v1, v0

    .line 72
    .line 73
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :pswitch_1
    new-array p0, v1, [Ljava/lang/Class;

    .line 79
    .line 80
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    aput-object v2, p0, v0

    .line 83
    .line 84
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    aget p2, p2, v0

    .line 89
    .line 90
    const/high16 v2, 0x3f000000    # 0.5f

    .line 91
    .line 92
    cmpl-float p2, p2, v2

    .line 93
    .line 94
    if-lez p2, :cond_0

    .line 95
    .line 96
    const/4 p2, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const/4 p2, 0x0

    .line 99
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object p2, v1, v0

    .line 106
    .line 107
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :pswitch_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p2

    .line 134
    :pswitch_3
    new-array p0, v1, [Ljava/lang/Class;

    .line 135
    .line 136
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 137
    .line 138
    aput-object v2, p0, v0

    .line 139
    .line 140
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    aget v2, p2, v0

    .line 145
    .line 146
    float-to-double v2, v2

    .line 147
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    double-to-float v2, v2

    .line 152
    mul-float v2, v2, v10

    .line 153
    .line 154
    float-to-int v2, v2

    .line 155
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    aget v3, p2, v1

    .line 160
    .line 161
    float-to-double v3, v3

    .line 162
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    double-to-float v3, v3

    .line 167
    mul-float v3, v3, v10

    .line 168
    .line 169
    float-to-int v3, v3

    .line 170
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    aget v4, p2, v7

    .line 175
    .line 176
    float-to-double v4, v4

    .line 177
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    double-to-float v4, v4

    .line 182
    mul-float v4, v4, v10

    .line 183
    .line 184
    float-to-int v4, v4

    .line 185
    invoke-static {v4}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    aget p2, p2, v6

    .line 190
    .line 191
    mul-float p2, p2, v10

    .line 192
    .line 193
    float-to-int p2, p2

    .line 194
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    shl-int/lit8 p2, p2, 0x18

    .line 199
    .line 200
    shl-int/lit8 v2, v2, 0x10

    .line 201
    .line 202
    or-int/2addr p2, v2

    .line 203
    shl-int/lit8 v2, v3, 0x8

    .line 204
    .line 205
    or-int/2addr p2, v2

    .line 206
    or-int/2addr p2, v4

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    .line 213
    aput-object p2, v1, v0

    .line 214
    .line 215
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :pswitch_4
    new-array p0, v1, [Ljava/lang/Class;

    .line 221
    .line 222
    const-class v2, Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    aput-object v2, p0, v0

    .line 225
    .line 226
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    aget v2, p2, v0

    .line 231
    .line 232
    float-to-double v2, v2

    .line 233
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    double-to-float v2, v2

    .line 238
    mul-float v2, v2, v10

    .line 239
    .line 240
    float-to-int v2, v2

    .line 241
    invoke-static {v2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    aget v3, p2, v1

    .line 246
    .line 247
    float-to-double v3, v3

    .line 248
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    double-to-float v3, v3

    .line 253
    mul-float v3, v3, v10

    .line 254
    .line 255
    float-to-int v3, v3

    .line 256
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    aget v4, p2, v7

    .line 261
    .line 262
    float-to-double v4, v4

    .line 263
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 264
    .line 265
    .line 266
    move-result-wide v4

    .line 267
    double-to-float v4, v4

    .line 268
    mul-float v4, v4, v10

    .line 269
    .line 270
    float-to-int v4, v4

    .line 271
    invoke-static {v4}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    aget p2, p2, v6

    .line 276
    .line 277
    mul-float p2, p2, v10

    .line 278
    .line 279
    float-to-int p2, p2

    .line 280
    invoke-static {p2}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    shl-int/lit8 p2, p2, 0x18

    .line 285
    .line 286
    shl-int/lit8 v2, v2, 0x10

    .line 287
    .line 288
    or-int/2addr p2, v2

    .line 289
    shl-int/lit8 v2, v3, 0x8

    .line 290
    .line 291
    or-int/2addr p2, v2

    .line 292
    or-int/2addr p2, v4

    .line 293
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 294
    .line 295
    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 299
    .line 300
    .line 301
    new-array p2, v1, [Ljava/lang/Object;

    .line 302
    .line 303
    aput-object v2, p2, v0

    .line 304
    .line 305
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :pswitch_5
    new-array p0, v1, [Ljava/lang/Class;

    .line 310
    .line 311
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 312
    .line 313
    aput-object v2, p0, v0

    .line 314
    .line 315
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    aget p2, p2, v0

    .line 320
    .line 321
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    new-array v1, v1, [Ljava/lang/Object;

    .line 326
    .line 327
    aput-object p2, v1, v0

    .line 328
    .line 329
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_6
    new-array p0, v1, [Ljava/lang/Class;

    .line 334
    .line 335
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 336
    .line 337
    aput-object v2, p0, v0

    .line 338
    .line 339
    invoke-virtual {v3, v4, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    aget p2, p2, v0

    .line 344
    .line 345
    float-to-int p2, p2

    .line 346
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    new-array v1, v1, [Ljava/lang/Object;

    .line 351
    .line 352
    aput-object p2, v1, v0

    .line 353
    .line 354
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    goto :goto_1

    .line 358
    :catch_0
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    goto :goto_1

    .line 362
    :catch_1
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    goto :goto_1

    .line 366
    :catch_2
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    :goto_1
    return-void

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
