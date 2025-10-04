.class public Landroidx/constraintlayout/core/state/ConstraintSetParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$OverrideValue;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;
    }
.end annotation


# static fields
.field private static final PARSER_DEBUG:Z = false


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

.method public static applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v5, "parent"

    .line 11
    .line 12
    const/4 v6, -0x1

    .line 13
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    sparse-switch v7, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 v7, -0x1

    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :sswitch_0
    const-string v7, "visibility"

    .line 24
    .line 25
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v7, 0x17

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :sswitch_1
    const-string v7, "centerHorizontally"

    .line 37
    .line 38
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v7, 0x16

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_2
    const-string v7, "hWeight"

    .line 50
    .line 51
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/16 v7, 0x15

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_3
    const-string v7, "width"

    .line 63
    .line 64
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/16 v7, 0x14

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_4
    const-string v7, "vBias"

    .line 76
    .line 77
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-nez v7, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const/16 v7, 0x13

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :sswitch_5
    const-string v7, "hBias"

    .line 89
    .line 90
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/16 v7, 0x12

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :sswitch_6
    const-string v7, "alpha"

    .line 102
    .line 103
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-nez v7, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/16 v7, 0x11

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_7
    const-string v7, "vWeight"

    .line 115
    .line 116
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_7

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    const/16 v7, 0x10

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_8
    const-string v7, "hRtlBias"

    .line 128
    .line 129
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_8

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    const/16 v7, 0xf

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :sswitch_9
    const-string v7, "scaleY"

    .line 141
    .line 142
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-nez v7, :cond_9

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_9
    const/16 v7, 0xe

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :sswitch_a
    const-string v7, "scaleX"

    .line 155
    .line 156
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-nez v7, :cond_a

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_a
    const/16 v7, 0xd

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :sswitch_b
    const-string v7, "pivotY"

    .line 169
    .line 170
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-nez v7, :cond_b

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_b
    const/16 v7, 0xc

    .line 179
    .line 180
    goto/16 :goto_1

    .line 181
    .line 182
    :sswitch_c
    const-string v7, "pivotX"

    .line 183
    .line 184
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-nez v7, :cond_c

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_c
    const/16 v7, 0xb

    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :sswitch_d
    const-string v7, "motion"

    .line 197
    .line 198
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-nez v7, :cond_d

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_d
    const/16 v7, 0xa

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :sswitch_e
    const-string v7, "height"

    .line 211
    .line 212
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_e

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_e
    const/16 v7, 0x9

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :sswitch_f
    const-string v7, "translationZ"

    .line 225
    .line 226
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-nez v7, :cond_f

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_f
    const/16 v7, 0x8

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :sswitch_10
    const-string v7, "translationY"

    .line 239
    .line 240
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-nez v7, :cond_10

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_10
    const/4 v7, 0x7

    .line 249
    goto :goto_1

    .line 250
    :sswitch_11
    const-string v7, "translationX"

    .line 251
    .line 252
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-nez v7, :cond_11

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_11
    const/4 v7, 0x6

    .line 261
    goto :goto_1

    .line 262
    :sswitch_12
    const-string v7, "rotationZ"

    .line 263
    .line 264
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_12

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_12
    const/4 v7, 0x5

    .line 273
    goto :goto_1

    .line 274
    :sswitch_13
    const-string v7, "rotationY"

    .line 275
    .line 276
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-nez v7, :cond_13

    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_13
    const/4 v7, 0x4

    .line 285
    goto :goto_1

    .line 286
    :sswitch_14
    const-string v7, "rotationX"

    .line 287
    .line 288
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-nez v7, :cond_14

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_14
    const/4 v7, 0x3

    .line 297
    goto :goto_1

    .line 298
    :sswitch_15
    const-string v7, "custom"

    .line 299
    .line 300
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-nez v7, :cond_15

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_15
    const/4 v7, 0x2

    .line 309
    goto :goto_1

    .line 310
    :sswitch_16
    const-string v7, "center"

    .line 311
    .line 312
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_16

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_16
    const/4 v7, 0x1

    .line 321
    goto :goto_1

    .line 322
    :sswitch_17
    const-string v7, "centerVertically"

    .line 323
    .line 324
    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    if-nez v7, :cond_17

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_17
    const/4 v7, 0x0

    .line 333
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 334
    .line 335
    .line 336
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_5

    .line 340
    .line 341
    :pswitch_0
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    sparse-switch p1, :sswitch_data_1

    .line 353
    .line 354
    .line 355
    :goto_2
    const/4 v2, -0x1

    .line 356
    goto :goto_3

    .line 357
    :sswitch_18
    const-string p1, "visible"

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-nez p0, :cond_1a

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :sswitch_19
    const-string p1, "gone"

    .line 367
    .line 368
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p0

    .line 372
    if-nez p0, :cond_18

    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_18
    const/4 v2, 0x1

    .line 376
    goto :goto_3

    .line 377
    :sswitch_1a
    const-string p1, "invisible"

    .line 378
    .line 379
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result p0

    .line 383
    if-nez p0, :cond_19

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_19
    const/4 v2, 0x0

    .line 387
    :cond_1a
    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 388
    .line 389
    .line 390
    goto/16 :goto_5

    .line 391
    .line 392
    :pswitch_1
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 393
    .line 394
    .line 395
    goto/16 :goto_5

    .line 396
    .line 397
    :pswitch_2
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 398
    .line 399
    .line 400
    goto/16 :goto_5

    .line 401
    .line 402
    :pswitch_3
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 403
    .line 404
    .line 405
    const/4 p0, 0x0

    .line 406
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 407
    .line 408
    .line 409
    goto/16 :goto_5

    .line 410
    .line 411
    :pswitch_4
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p3

    .line 419
    if-eqz p3, :cond_1b

    .line 420
    .line 421
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 422
    .line 423
    :cond_1b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 431
    .line 432
    .line 433
    goto/16 :goto_5

    .line 434
    .line 435
    :pswitch_5
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 440
    .line 441
    .line 442
    move-result p0

    .line 443
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainWeight(F)V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_5

    .line 447
    .line 448
    :pswitch_6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-static {p3, p4, p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 457
    .line 458
    .line 459
    goto/16 :goto_5

    .line 460
    .line 461
    :pswitch_7
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 466
    .line 467
    .line 468
    move-result p0

    .line 469
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 470
    .line 471
    .line 472
    goto/16 :goto_5

    .line 473
    .line 474
    :pswitch_8
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 483
    .line 484
    .line 485
    goto/16 :goto_5

    .line 486
    .line 487
    :pswitch_9
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 492
    .line 493
    .line 494
    move-result p0

    .line 495
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 496
    .line 497
    .line 498
    goto/16 :goto_5

    .line 499
    .line 500
    :pswitch_a
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 505
    .line 506
    .line 507
    move-result p0

    .line 508
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainWeight(F)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_5

    .line 512
    .line 513
    :pswitch_b
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 514
    .line 515
    .line 516
    move-result-object p3

    .line 517
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 522
    .line 523
    .line 524
    move-result p0

    .line 525
    if-eqz p0, :cond_1c

    .line 526
    .line 527
    const/high16 p0, 0x3f800000    # 1.0f

    .line 528
    .line 529
    sub-float p1, p0, p1

    .line 530
    .line 531
    :cond_1c
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 532
    .line 533
    .line 534
    goto/16 :goto_5

    .line 535
    .line 536
    :pswitch_c
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 541
    .line 542
    .line 543
    move-result p0

    .line 544
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->scaleY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 545
    .line 546
    .line 547
    goto/16 :goto_5

    .line 548
    .line 549
    :pswitch_d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->scaleX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 558
    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :pswitch_e
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 567
    .line 568
    .line 569
    move-result p0

    .line 570
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->pivotY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 571
    .line 572
    .line 573
    goto/16 :goto_5

    .line 574
    .line 575
    :pswitch_f
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 576
    .line 577
    .line 578
    move-result-object p0

    .line 579
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 580
    .line 581
    .line 582
    move-result p0

    .line 583
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->pivotX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 584
    .line 585
    .line 586
    goto/16 :goto_5

    .line 587
    .line 588
    :pswitch_10
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    invoke-static {p0, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseMotionProperties(Landroidx/constraintlayout/core/parser/CLElement;Landroidx/constraintlayout/core/state/ConstraintReference;)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_5

    .line 596
    .line 597
    :pswitch_11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    invoke-static {p3, p4, p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;

    .line 602
    .line 603
    .line 604
    move-result-object p0

    .line 605
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 606
    .line 607
    .line 608
    goto/16 :goto_5

    .line 609
    .line 610
    :pswitch_12
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 611
    .line 612
    .line 613
    move-result-object p3

    .line 614
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 615
    .line 616
    .line 617
    move-result p1

    .line 618
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 619
    .line 620
    .line 621
    move-result p0

    .line 622
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 623
    .line 624
    .line 625
    goto/16 :goto_5

    .line 626
    .line 627
    :pswitch_13
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 628
    .line 629
    .line 630
    move-result-object p3

    .line 631
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 632
    .line 633
    .line 634
    move-result p1

    .line 635
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 640
    .line 641
    .line 642
    goto/16 :goto_5

    .line 643
    .line 644
    :pswitch_14
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 645
    .line 646
    .line 647
    move-result-object p3

    .line 648
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 653
    .line 654
    .line 655
    move-result p0

    .line 656
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 657
    .line 658
    .line 659
    goto :goto_5

    .line 660
    :pswitch_15
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 665
    .line 666
    .line 667
    move-result p0

    .line 668
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 669
    .line 670
    .line 671
    goto :goto_5

    .line 672
    :pswitch_16
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 673
    .line 674
    .line 675
    move-result-object p0

    .line 676
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 677
    .line 678
    .line 679
    move-result p0

    .line 680
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 681
    .line 682
    .line 683
    goto :goto_5

    .line 684
    :pswitch_17
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 685
    .line 686
    .line 687
    move-result-object p0

    .line 688
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 693
    .line 694
    .line 695
    goto :goto_5

    .line 696
    :pswitch_18
    invoke-static {p3, p2, p4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseCustomProperties(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    goto :goto_5

    .line 700
    :pswitch_19
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result p3

    .line 708
    if-eqz p3, :cond_1d

    .line 709
    .line 710
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 711
    .line 712
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    goto :goto_4

    .line 717
    :cond_1d
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 718
    .line 719
    .line 720
    move-result-object p0

    .line 721
    :goto_4
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 722
    .line 723
    .line 724
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 725
    .line 726
    .line 727
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 728
    .line 729
    .line 730
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 731
    .line 732
    .line 733
    goto :goto_5

    .line 734
    :pswitch_1a
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result p3

    .line 742
    if-eqz p3, :cond_1e

    .line 743
    .line 744
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 745
    .line 746
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 747
    .line 748
    .line 749
    move-result-object p0

    .line 750
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 751
    .line 752
    .line 753
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 754
    .line 755
    .line 756
    :goto_5
    return-void

    .line 757
    :sswitch_data_0
    .sparse-switch
        -0x565a8e48 -> :sswitch_17
        -0x514d33ab -> :sswitch_16
        -0x5069748f -> :sswitch_15
        -0x4a771f66 -> :sswitch_14
        -0x4a771f65 -> :sswitch_13
        -0x4a771f64 -> :sswitch_12
        -0x490b9c39 -> :sswitch_11
        -0x490b9c38 -> :sswitch_10
        -0x490b9c37 -> :sswitch_f
        -0x48c76ed9 -> :sswitch_e
        -0x3fad404a -> :sswitch_d
        -0x3ae243aa -> :sswitch_c
        -0x3ae243a9 -> :sswitch_b
        -0x3621dfb2 -> :sswitch_a
        -0x3621dfb1 -> :sswitch_9
        -0xec32145 -> :sswitch_8
        -0x3aa8172 -> :sswitch_7
        0x589b15e -> :sswitch_6
        0x5d92341 -> :sswitch_5
        0x69e6c4f -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x17be4100 -> :sswitch_2
        0x53b069a6 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :sswitch_data_1
    .sparse-switch
        -0x715b4053 -> :sswitch_1a
        0x30809f -> :sswitch_19
        0x1bd1f072 -> :sswitch_18
    .end sparse-switch

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs indexOf(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public static lookForType(Landroidx/constraintlayout/core/parser/CLObject;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "type"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static override(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_7

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "clear"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    const/4 v5, -0x1

    .line 74
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    sparse-switch v6, :sswitch_data_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :sswitch_0
    const-string v6, "dimensions"

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    const/4 v5, 0x2

    .line 92
    goto :goto_2

    .line 93
    :sswitch_1
    const-string v6, "constraints"

    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/4 v5, 0x1

    .line 103
    goto :goto_2

    .line 104
    :sswitch_2
    const-string v6, "transforms"

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    const/4 v5, 0x0

    .line 114
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :pswitch_0
    const-string v4, "width"

    .line 122
    .line 123
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v4, "height"

    .line 127
    .line 128
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :pswitch_1
    const-string v4, "start"

    .line 133
    .line 134
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v4, "end"

    .line 138
    .line 139
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "top"

    .line 143
    .line 144
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v4, "bottom"

    .line 148
    .line 149
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v4, "baseline"

    .line 153
    .line 154
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v4, "center"

    .line 158
    .line 159
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v4, "centerHorizontally"

    .line 163
    .line 164
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v4, "centerVertically"

    .line 168
    .line 169
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :pswitch_2
    const-string v4, "visibility"

    .line 174
    .line 175
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v4, "alpha"

    .line 179
    .line 180
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v4, "pivotX"

    .line 184
    .line 185
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v4, "pivotY"

    .line 189
    .line 190
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v4, "rotationX"

    .line 194
    .line 195
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v4, "rotationY"

    .line 199
    .line 200
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v4, "rotationZ"

    .line 204
    .line 205
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v4, "scaleX"

    .line 209
    .line 210
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v4, "scaleY"

    .line 214
    .line 215
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v4, "translationX"

    .line 219
    .line 220
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v4, "translationY"

    .line 224
    .line 225
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_3
    add-int/2addr v3, v0

    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_7
    :goto_4
    return-void

    .line 232
    nop

    .line 233
    :sswitch_data_0
    .sparse-switch
        -0x66f0fd79 -> :sswitch_2
        -0x5fc459ca -> :sswitch_1
        0x18b23fcd -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseBarrier(Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v5}, Landroidx/constraintlayout/core/state/State;->barrier(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Direction;)Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_d

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    sparse-switch v7, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    :goto_1
    const/4 v7, -0x1

    .line 49
    goto :goto_2

    .line 50
    :sswitch_0
    const-string v7, "contains"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v7, 0x2

    .line 60
    goto :goto_2

    .line 61
    :sswitch_1
    const-string v7, "direction"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v7, 0x1

    .line 71
    goto :goto_2

    .line 72
    :sswitch_2
    const-string v7, "margin"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/4 v7, 0x0

    .line 82
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p2, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    :goto_3
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-ge v7, v8, :cond_1

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    new-array v9, v2, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v8, v9, v3

    .line 114
    .line 115
    invoke-virtual {p1, v9}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 116
    .line 117
    .line 118
    add-int/2addr v7, v2

    .line 119
    goto :goto_3

    .line 120
    :pswitch_1
    invoke-virtual {p2, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    sparse-switch v7, :sswitch_data_1

    .line 132
    .line 133
    .line 134
    :goto_4
    const/4 v6, -0x1

    .line 135
    goto :goto_5

    .line 136
    :sswitch_3
    const-string v7, "start"

    .line 137
    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    const/4 v6, 0x5

    .line 146
    goto :goto_5

    .line 147
    :sswitch_4
    const-string v7, "right"

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-nez v6, :cond_6

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    const/4 v6, 0x4

    .line 157
    goto :goto_5

    .line 158
    :sswitch_5
    const-string v7, "left"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_7

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_7
    const/4 v6, 0x3

    .line 168
    goto :goto_5

    .line 169
    :sswitch_6
    const-string v7, "top"

    .line 170
    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_8

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    const/4 v6, 0x2

    .line 179
    goto :goto_5

    .line 180
    :sswitch_7
    const-string v7, "end"

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-nez v6, :cond_9

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_9
    const/4 v6, 0x1

    .line 190
    goto :goto_5

    .line 191
    :sswitch_8
    const-string v7, "bottom"

    .line 192
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-nez v6, :cond_a

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_a
    const/4 v6, 0x0

    .line 201
    :goto_5
    packed-switch v6, :pswitch_data_1

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_2
    if-nez v4, :cond_b

    .line 207
    .line 208
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 209
    .line 210
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_b
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 216
    .line 217
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_3
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 223
    .line 224
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_4
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 230
    .line 231
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :pswitch_5
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    .line 237
    .line 238
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_6
    if-nez v4, :cond_c

    .line 244
    .line 245
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 246
    .line 247
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_c
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 253
    .line 254
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :pswitch_7
    sget-object v6, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    .line 260
    .line 261
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :pswitch_8
    invoke-virtual {p2, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-nez v7, :cond_1

    .line 275
    .line 276
    invoke-static {p0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_d
    return-void

    .line 290
    nop

    .line 291
    :sswitch_data_0
    .sparse-switch
        -0x40737a52 -> :sswitch_2
        -0x395ff881 -> :sswitch_1
        -0x21d289e1 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    :sswitch_data_1
    .sparse-switch
        -0x527265d5 -> :sswitch_8
        0x188db -> :sswitch_7
        0x1c155 -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x68ac462 -> :sswitch_3
    .end sparse-switch

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/State;->horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/State;->verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-virtual {p3, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLArray;

    .line 19
    .line 20
    if-eqz v3, :cond_8

    .line 21
    .line 22
    check-cast v2, Landroidx/constraintlayout/core/parser/CLArray;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v3, v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-array v5, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 48
    .line 49
    .line 50
    add-int/2addr v3, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v3, 0x2

    .line 57
    if-le v2, v3, :cond_8

    .line 58
    .line 59
    invoke-virtual {p3, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    instance-of v2, p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 64
    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    check-cast p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 69
    .line 70
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_8

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v4, "style"

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    invoke-static {p1, p2, p3, p0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p3, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 110
    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    move-object v4, v3

    .line 114
    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 115
    .line 116
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-le v5, v1, :cond_5

    .line 121
    .line 122
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v4, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->bias(F)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v4, "packed"

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_7

    .line 148
    .line 149
    const-string v4, "spread_inside"

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_6

    .line 156
    .line 157
    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    .line 158
    .line 159
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    .line 164
    .line 165
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    .line 170
    .line 171
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_8
    :goto_4
    return-void
.end method

.method private static parseChainType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v4, 0x5

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x2

    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object/from16 v10, p0

    .line 15
    .line 16
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v10

    .line 20
    const/16 v11, 0x68

    .line 21
    .line 22
    if-ne v10, v11, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/State;->horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/State;->verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    :goto_0
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setKey(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v18

    .line 44
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-eqz v11, :cond_15

    .line 49
    .line 50
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/4 v12, -0x1

    .line 60
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    sparse-switch v13, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :sswitch_0
    const-string v13, "style"

    .line 70
    .line 71
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-nez v13, :cond_1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    const/4 v12, 0x7

    .line 79
    goto :goto_2

    .line 80
    :sswitch_1
    const-string v13, "start"

    .line 81
    .line 82
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    if-nez v13, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    const/4 v12, 0x6

    .line 90
    goto :goto_2

    .line 91
    :sswitch_2
    const-string v13, "right"

    .line 92
    .line 93
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-nez v13, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/4 v12, 0x5

    .line 101
    goto :goto_2

    .line 102
    :sswitch_3
    const-string v13, "left"

    .line 103
    .line 104
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-nez v13, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    const/4 v12, 0x4

    .line 112
    goto :goto_2

    .line 113
    :sswitch_4
    const-string v13, "top"

    .line 114
    .line 115
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-nez v13, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v12, 0x3

    .line 123
    goto :goto_2

    .line 124
    :sswitch_5
    const-string v13, "end"

    .line 125
    .line 126
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    if-nez v13, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    const/4 v12, 0x2

    .line 134
    goto :goto_2

    .line 135
    :sswitch_6
    const-string v13, "contains"

    .line 136
    .line 137
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    if-nez v13, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    const/4 v12, 0x1

    .line 145
    goto :goto_2

    .line 146
    :sswitch_7
    const-string v13, "bottom"

    .line 147
    .line 148
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    if-nez v13, :cond_8

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_8
    const/4 v12, 0x0

    .line 156
    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 157
    .line 158
    .line 159
    :goto_3
    move-object/from16 v3, p3

    .line 160
    .line 161
    const/4 v9, 0x3

    .line 162
    const/4 v12, 0x0

    .line 163
    goto/16 :goto_c

    .line 164
    .line 165
    :pswitch_0
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 170
    .line 171
    if-eqz v12, :cond_9

    .line 172
    .line 173
    move-object v12, v11

    .line 174
    check-cast v12, Landroidx/constraintlayout/core/parser/CLArray;

    .line 175
    .line 176
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-le v13, v8, :cond_9

    .line 181
    .line 182
    invoke-virtual {v12, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v12, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->bias(F)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    :goto_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const-string v12, "packed"

    .line 202
    .line 203
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-nez v12, :cond_b

    .line 208
    .line 209
    const-string v12, "spread_inside"

    .line 210
    .line 211
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-nez v11, :cond_a

    .line 216
    .line 217
    sget-object v11, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    .line 218
    .line 219
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_a
    sget-object v11, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    .line 224
    .line 225
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_b
    sget-object v11, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    .line 230
    .line 231
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :pswitch_1
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 240
    .line 241
    if-eqz v12, :cond_14

    .line 242
    .line 243
    move-object v15, v11

    .line 244
    check-cast v15, Landroidx/constraintlayout/core/parser/CLArray;

    .line 245
    .line 246
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    if-ge v12, v8, :cond_c

    .line 251
    .line 252
    goto/16 :goto_b

    .line 253
    .line 254
    :cond_c
    const/4 v14, 0x0

    .line 255
    :goto_5
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-ge v14, v11, :cond_13

    .line 260
    .line 261
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 266
    .line 267
    if-eqz v12, :cond_12

    .line 268
    .line 269
    check-cast v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 270
    .line 271
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    if-lez v12, :cond_11

    .line 276
    .line 277
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 286
    .line 287
    .line 288
    move-result v13

    .line 289
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 290
    .line 291
    if-eq v13, v7, :cond_10

    .line 292
    .line 293
    if-eq v13, v6, :cond_f

    .line 294
    .line 295
    if-eq v13, v5, :cond_e

    .line 296
    .line 297
    if-eq v13, v3, :cond_d

    .line 298
    .line 299
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 300
    .line 301
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 302
    .line 303
    const/4 v9, 0x3

    .line 304
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 305
    .line 306
    :goto_6
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_d
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    invoke-static {v0, v9}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    invoke-static {v0, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    move/from16 v16, v3

    .line 346
    .line 347
    move v3, v6

    .line 348
    move v6, v9

    .line 349
    move/from16 v17, v11

    .line 350
    .line 351
    const/4 v9, 0x3

    .line 352
    goto :goto_8

    .line 353
    :cond_e
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    const/4 v9, 0x3

    .line 366
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    invoke-static {v0, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    move v13, v3

    .line 375
    move/from16 v16, v6

    .line 376
    .line 377
    move v6, v11

    .line 378
    :goto_7
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_f
    const/4 v9, 0x3

    .line 382
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    move v13, v3

    .line 395
    move/from16 v16, v6

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_10
    const/4 v9, 0x3

    .line 399
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    move v13, v3

    .line 404
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 405
    .line 406
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :goto_8
    move-object v11, v10

    .line 410
    move/from16 v19, v14

    .line 411
    .line 412
    move/from16 v14, v16

    .line 413
    .line 414
    move-object/from16 v20, v15

    .line 415
    .line 416
    move v15, v6

    .line 417
    move/from16 v16, v3

    .line 418
    .line 419
    invoke-virtual/range {v11 .. v17}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->addChainElement(Ljava/lang/Object;FFFFF)V

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_11
    move/from16 v19, v14

    .line 424
    .line 425
    move-object/from16 v20, v15

    .line 426
    .line 427
    const/4 v9, 0x3

    .line 428
    :goto_9
    const/4 v12, 0x0

    .line 429
    goto :goto_a

    .line 430
    :cond_12
    move/from16 v19, v14

    .line 431
    .line 432
    move-object/from16 v20, v15

    .line 433
    .line 434
    const/4 v9, 0x3

    .line 435
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    new-array v6, v8, [Ljava/lang/Object;

    .line 440
    .line 441
    const/4 v12, 0x0

    .line 442
    aput-object v3, v6, v12

    .line 443
    .line 444
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 445
    .line 446
    .line 447
    :goto_a
    add-int/lit8 v14, v19, 0x1

    .line 448
    .line 449
    move-object/from16 v15, v20

    .line 450
    .line 451
    const/4 v3, 0x6

    .line 452
    const/4 v6, 0x3

    .line 453
    const/4 v9, 0x0

    .line 454
    goto/16 :goto_5

    .line 455
    .line 456
    :cond_13
    const/4 v9, 0x3

    .line 457
    const/4 v12, 0x0

    .line 458
    move-object/from16 v3, p3

    .line 459
    .line 460
    goto :goto_c

    .line 461
    :cond_14
    :goto_b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 462
    .line 463
    const-string v2, " contains should be an array \""

    .line 464
    .line 465
    invoke-static {v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v2, "\""

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    return-void

    .line 489
    :pswitch_2
    move-object/from16 v3, p3

    .line 490
    .line 491
    const/4 v9, 0x3

    .line 492
    const/4 v12, 0x0

    .line 493
    invoke-static {v0, v3, v2, v10, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :goto_c
    const/4 v3, 0x6

    .line 497
    const/4 v6, 0x3

    .line 498
    const/4 v9, 0x0

    .line 499
    goto/16 :goto_1

    .line 500
    .line 501
    :cond_15
    return-void

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_7
        -0x21d289e1 -> :sswitch_6
        0x188db -> :sswitch_5
        0x1c155 -> :sswitch_4
        0x32a007 -> :sswitch_3
        0x677c21c -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static parseColorString(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "FF"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    const/16 v0, 0x10

    .line 28
    .line 29
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_1
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    return-wide v0
.end method

.method public static parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "right"

    .line 12
    .line 13
    const-string v6, "left"

    .line 14
    .line 15
    const-string v8, "start"

    .line 16
    .line 17
    const-string v9, "end"

    .line 18
    .line 19
    const-string v11, "top"

    .line 20
    .line 21
    const-string v12, "bottom"

    .line 22
    .line 23
    const-string v13, "baseline"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v14, 0x1

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    xor-int/lit8 v17, v16, 0x1

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    const-string v15, "parent"

    .line 38
    .line 39
    if-eqz v10, :cond_1d

    .line 40
    .line 41
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-le v2, v14, :cond_1d

    .line 46
    .line 47
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    if-le v14, v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    move/from16 p2, v3

    .line 83
    .line 84
    const/4 v3, 0x3

    .line 85
    if-le v14, v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    invoke-static {v0, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const/4 v14, 0x0

    .line 101
    :goto_1
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    if-eqz v15, :cond_2

    .line 106
    .line 107
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    sparse-switch v15, :sswitch_data_0

    .line 126
    .line 127
    .line 128
    :goto_3
    const/4 v4, -0x1

    .line 129
    goto :goto_4

    .line 130
    :sswitch_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_3

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    const/4 v4, 0x7

    .line 138
    goto :goto_4

    .line 139
    :sswitch_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    const/4 v4, 0x6

    .line 147
    goto :goto_4

    .line 148
    :sswitch_2
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_5

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    const/4 v4, 0x5

    .line 156
    goto :goto_4

    .line 157
    :sswitch_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_6

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    const/4 v4, 0x4

    .line 165
    goto :goto_4

    .line 166
    :sswitch_4
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    const/4 v4, 0x3

    .line 174
    goto :goto_4

    .line 175
    :sswitch_5
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_8

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_8
    const/4 v4, 0x2

    .line 183
    goto :goto_4

    .line 184
    :sswitch_6
    const-string v15, "circular"

    .line 185
    .line 186
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_9

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_9
    const/4 v4, 0x1

    .line 194
    goto :goto_4

    .line 195
    :sswitch_7
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-nez v4, :cond_a

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_a
    const/4 v4, 0x0

    .line 203
    :goto_4
    packed-switch v4, :pswitch_data_0

    .line 204
    .line 205
    .line 206
    :goto_5
    move-object/from16 v4, p3

    .line 207
    .line 208
    :goto_6
    const/4 v1, 0x2

    .line 209
    const/4 v15, 0x1

    .line 210
    goto/16 :goto_f

    .line 211
    .line 212
    :pswitch_0
    move-object/from16 v4, p3

    .line 213
    .line 214
    move/from16 v0, v17

    .line 215
    .line 216
    :goto_7
    const/4 v1, 0x2

    .line 217
    const/4 v15, 0x1

    .line 218
    const/16 v18, 0x1

    .line 219
    .line 220
    goto/16 :goto_10

    .line 221
    .line 222
    :pswitch_1
    move-object/from16 v4, p3

    .line 223
    .line 224
    const/4 v0, 0x0

    .line 225
    goto :goto_7

    .line 226
    :pswitch_2
    move-object/from16 v4, p3

    .line 227
    .line 228
    const/4 v0, 0x1

    .line 229
    goto :goto_7

    .line 230
    :pswitch_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    sparse-switch v1, :sswitch_data_1

    .line 238
    .line 239
    .line 240
    :goto_8
    const/4 v1, -0x1

    .line 241
    goto :goto_9

    .line 242
    :sswitch_8
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_b

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_b
    const/4 v1, 0x2

    .line 250
    goto :goto_9

    .line 251
    :sswitch_9
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_c

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_c
    const/4 v1, 0x1

    .line 259
    goto :goto_9

    .line 260
    :sswitch_a
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-nez v1, :cond_d

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_d
    const/4 v1, 0x0

    .line 268
    :goto_9
    packed-switch v1, :pswitch_data_1

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :pswitch_4
    move-object/from16 v4, p3

    .line 273
    .line 274
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :pswitch_5
    move-object/from16 v4, p3

    .line 279
    .line 280
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :pswitch_6
    move-object/from16 v4, p3

    .line 285
    .line 286
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :pswitch_7
    move-object/from16 v4, p3

    .line 298
    .line 299
    move/from16 v0, v16

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :pswitch_8
    move-object/from16 v4, p3

    .line 303
    .line 304
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    sparse-switch v1, :sswitch_data_2

    .line 312
    .line 313
    .line 314
    :goto_a
    const/4 v1, -0x1

    .line 315
    goto :goto_b

    .line 316
    :sswitch_b
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_e

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_e
    const/4 v1, 0x2

    .line 324
    goto :goto_b

    .line 325
    :sswitch_c
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_f

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_f
    const/4 v1, 0x1

    .line 333
    goto :goto_b

    .line 334
    :sswitch_d
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_10

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_10
    const/4 v1, 0x0

    .line 342
    :goto_b
    packed-switch v1, :pswitch_data_2

    .line 343
    .line 344
    .line 345
    goto/16 :goto_6

    .line 346
    .line 347
    :pswitch_9
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 348
    .line 349
    .line 350
    goto/16 :goto_6

    .line 351
    .line 352
    :pswitch_a
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 353
    .line 354
    .line 355
    goto/16 :goto_6

    .line 356
    .line 357
    :pswitch_b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 365
    .line 366
    .line 367
    goto/16 :goto_6

    .line 368
    .line 369
    :pswitch_c
    move-object/from16 v4, p3

    .line 370
    .line 371
    const/4 v15, 0x1

    .line 372
    invoke-virtual {v10, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    invoke-virtual {v10}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    const/4 v13, 0x2

    .line 385
    if-le v12, v13, :cond_11

    .line 386
    .line 387
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 388
    .line 389
    .line 390
    move-result-object v10

    .line 391
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 396
    .line 397
    .line 398
    move-result v19

    .line 399
    move/from16 v0, v19

    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_11
    const/4 v0, 0x0

    .line 403
    :goto_c
    invoke-virtual {v4, v2, v11, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->circularConstraint(Ljava/lang/Object;FF)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 404
    .line 405
    .line 406
    const/4 v1, 0x2

    .line 407
    goto :goto_f

    .line 408
    :pswitch_d
    move-object/from16 v4, p3

    .line 409
    .line 410
    const/4 v1, 0x2

    .line 411
    const/4 v15, 0x1

    .line 412
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    sparse-switch v10, :sswitch_data_3

    .line 420
    .line 421
    .line 422
    :goto_d
    const/4 v10, -0x1

    .line 423
    goto :goto_e

    .line 424
    :sswitch_e
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v10

    .line 428
    if-nez v10, :cond_12

    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_12
    const/4 v10, 0x2

    .line 432
    goto :goto_e

    .line 433
    :sswitch_f
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    if-nez v10, :cond_13

    .line 438
    .line 439
    goto :goto_d

    .line 440
    :cond_13
    const/4 v10, 0x1

    .line 441
    goto :goto_e

    .line 442
    :sswitch_10
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v10

    .line 446
    if-nez v10, :cond_14

    .line 447
    .line 448
    goto :goto_d

    .line 449
    :cond_14
    const/4 v10, 0x0

    .line 450
    :goto_e
    packed-switch v10, :pswitch_data_3

    .line 451
    .line 452
    .line 453
    goto :goto_f

    .line 454
    :pswitch_e
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 462
    .line 463
    .line 464
    goto :goto_f

    .line 465
    :pswitch_f
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :pswitch_10
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 491
    .line 492
    .line 493
    :goto_f
    const/4 v0, 0x1

    .line 494
    const/16 v18, 0x0

    .line 495
    .line 496
    :goto_10
    if-eqz v18, :cond_1c

    .line 497
    .line 498
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 502
    .line 503
    .line 504
    move-result v10

    .line 505
    sparse-switch v10, :sswitch_data_4

    .line 506
    .line 507
    .line 508
    :goto_11
    const/4 v10, -0x1

    .line 509
    goto :goto_12

    .line 510
    :sswitch_11
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-nez v1, :cond_15

    .line 515
    .line 516
    goto :goto_11

    .line 517
    :cond_15
    const/4 v10, 0x3

    .line 518
    goto :goto_12

    .line 519
    :sswitch_12
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_16

    .line 524
    .line 525
    goto :goto_11

    .line 526
    :cond_16
    const/4 v10, 0x2

    .line 527
    goto :goto_12

    .line 528
    :sswitch_13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_17

    .line 533
    .line 534
    goto :goto_11

    .line 535
    :cond_17
    const/4 v10, 0x1

    .line 536
    goto :goto_12

    .line 537
    :sswitch_14
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    if-nez v1, :cond_18

    .line 542
    .line 543
    goto :goto_11

    .line 544
    :cond_18
    const/4 v10, 0x0

    .line 545
    :goto_12
    packed-switch v10, :pswitch_data_4

    .line 546
    .line 547
    .line 548
    :pswitch_11
    const/4 v7, 0x1

    .line 549
    goto :goto_13

    .line 550
    :pswitch_12
    move/from16 v7, v17

    .line 551
    .line 552
    goto :goto_13

    .line 553
    :pswitch_13
    const/4 v7, 0x0

    .line 554
    goto :goto_13

    .line 555
    :pswitch_14
    move/from16 v7, v16

    .line 556
    .line 557
    :goto_13
    if-eqz v0, :cond_1a

    .line 558
    .line 559
    if-eqz v7, :cond_19

    .line 560
    .line 561
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 562
    .line 563
    .line 564
    goto :goto_14

    .line 565
    :cond_19
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 566
    .line 567
    .line 568
    goto :goto_14

    .line 569
    :cond_1a
    if-eqz v7, :cond_1b

    .line 570
    .line 571
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 572
    .line 573
    .line 574
    goto :goto_14

    .line 575
    :cond_1b
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 576
    .line 577
    .line 578
    :cond_1c
    :goto_14
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 591
    .line 592
    .line 593
    goto/16 :goto_18

    .line 594
    .line 595
    :cond_1d
    move-object v2, v3

    .line 596
    const/4 v1, 0x2

    .line 597
    const/4 v3, 0x3

    .line 598
    const/4 v5, 0x1

    .line 599
    move-object/from16 v6, p2

    .line 600
    .line 601
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    if-eqz v6, :cond_26

    .line 606
    .line 607
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v7

    .line 611
    if-eqz v7, :cond_1e

    .line 612
    .line 613
    sget-object v6, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 614
    .line 615
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    goto :goto_15

    .line 620
    :cond_1e
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    :goto_15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    sparse-switch v7, :sswitch_data_5

    .line 632
    .line 633
    .line 634
    :goto_16
    const/4 v7, -0x1

    .line 635
    goto :goto_17

    .line 636
    :sswitch_15
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-nez v1, :cond_1f

    .line 641
    .line 642
    goto :goto_16

    .line 643
    :cond_1f
    const/4 v7, 0x4

    .line 644
    goto :goto_17

    .line 645
    :sswitch_16
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-nez v1, :cond_20

    .line 650
    .line 651
    goto :goto_16

    .line 652
    :cond_20
    const/4 v7, 0x3

    .line 653
    goto :goto_17

    .line 654
    :sswitch_17
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-nez v3, :cond_21

    .line 659
    .line 660
    goto :goto_16

    .line 661
    :cond_21
    const/4 v7, 0x2

    .line 662
    goto :goto_17

    .line 663
    :sswitch_18
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-nez v1, :cond_22

    .line 668
    .line 669
    goto :goto_16

    .line 670
    :cond_22
    const/4 v7, 0x1

    .line 671
    goto :goto_17

    .line 672
    :sswitch_19
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-nez v1, :cond_23

    .line 677
    .line 678
    goto :goto_16

    .line 679
    :cond_23
    const/4 v7, 0x0

    .line 680
    :goto_17
    packed-switch v7, :pswitch_data_5

    .line 681
    .line 682
    .line 683
    goto :goto_18

    .line 684
    :pswitch_15
    if-nez v16, :cond_24

    .line 685
    .line 686
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 687
    .line 688
    .line 689
    goto :goto_18

    .line 690
    :cond_24
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 691
    .line 692
    .line 693
    goto :goto_18

    .line 694
    :pswitch_16
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 695
    .line 696
    .line 697
    goto :goto_18

    .line 698
    :pswitch_17
    if-nez v16, :cond_25

    .line 699
    .line 700
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 701
    .line 702
    .line 703
    goto :goto_18

    .line 704
    :cond_25
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 705
    .line 706
    .line 707
    goto :goto_18

    .line 708
    :pswitch_18
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 709
    .line 710
    .line 711
    goto :goto_18

    .line 712
    :pswitch_19
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 727
    .line 728
    .line 729
    :cond_26
    :goto_18
    return-void

    .line 730
    nop

    .line 731
    :sswitch_data_0
    .sparse-switch
        -0x669119bb -> :sswitch_7
        -0x594af961 -> :sswitch_6
        -0x527265d5 -> :sswitch_5
        0x188db -> :sswitch_4
        0x1c155 -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :sswitch_data_1
    .sparse-switch
        -0x669119bb -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
    .end sparse-switch

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :sswitch_data_2
    .sparse-switch
        -0x669119bb -> :sswitch_d
        -0x527265d5 -> :sswitch_c
        0x1c155 -> :sswitch_b
    .end sparse-switch

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :sswitch_data_3
    .sparse-switch
        -0x669119bb -> :sswitch_10
        -0x527265d5 -> :sswitch_f
        0x1c155 -> :sswitch_e
    .end sparse-switch

    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :sswitch_data_4
    .sparse-switch
        0x188db -> :sswitch_14
        0x32a007 -> :sswitch_13
        0x677c21c -> :sswitch_12
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    :sswitch_data_5
    .sparse-switch
        -0x669119bb -> :sswitch_19
        -0x527265d5 -> :sswitch_18
        0x188db -> :sswitch_17
        0x1c155 -> :sswitch_16
        0x68ac462 -> :sswitch_15
    .end sparse-switch

    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public static parseConstraintSets(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "Extends"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_5

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_5

    .line 41
    .line 42
    invoke-interface {p0, v3}, Landroidx/constraintlayout/core/state/CoreMotionScene;->getConstraintSet(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v3}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 85
    .line 86
    invoke-static {v3, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->override(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {p0, v1, v2}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setConstraintSetContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {p0, v1, v2}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setConstraintSetContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    return-void
.end method

.method public static parseCustomProperties(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->addCustomFloat(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLString;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-wide/16 v3, -0x1

    .line 60
    .line 61
    cmp-long v5, v1, v3

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    long-to-int v2, v1

    .line 66
    invoke-virtual {p1, v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->addCustomColor(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return-void
.end method

.method public static parseDesignElementsJSON(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_6

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v2, "Design"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    instance-of v2, p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ge v3, v4, :cond_6

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 70
    .line 71
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 72
    .line 73
    const-string v7, "element found "

    .line 74
    .line 75
    const-string v8, ""

    .line 76
    .line 77
    invoke-static {v7, v4, v8}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    new-array v7, v1, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v6, v4, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 84
    .line 85
    .line 86
    const-string v4, "type"

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    new-instance v6, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    const/4 v8, 0x0

    .line 104
    :goto_1
    if-ge v8, v7, :cond_4

    .line 105
    .line 106
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Landroidx/constraintlayout/core/parser/CLKey;

    .line 111
    .line 112
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    if-eqz v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    new-instance v5, Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;

    .line 133
    .line 134
    invoke-direct {v5, v0, v4, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    :goto_2
    return-void
.end method

.method public static parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLString;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of p0, v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 50
    .line 51
    if-eqz p0, :cond_6

    .line 52
    .line 53
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 54
    .line 55
    const-string p0, "value"

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_2
    const-string p0, "min"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->min(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    .line 102
    .line 103
    if-eqz p0, :cond_4

    .line 104
    .line 105
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_0
    const-string p0, "max"

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->max(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    .line 145
    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    sparse-switch v3, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v3, "wrap"

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x3

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v3, "spread"

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v3, "parent"

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v3, "preferWrap"

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x0

    .line 61
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    const-string v2, "%"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const/16 v1, 0x25

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const/high16 v1, 0x42c80000    # 100.0f

    .line 87
    .line 88
    div-float/2addr p0, v1

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->createPercent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-string v0, ":"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createRatio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_1

    .line 121
    :pswitch_0
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_1

    .line 126
    :pswitch_1
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createSuggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createParent()Landroidx/constraintlayout/core/state/Dimension;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    goto :goto_1

    .line 138
    :pswitch_3
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createSuggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_5
    :goto_1
    return-object v1

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x57099186 -> :sswitch_3
        -0x3b54f756 -> :sswitch_2
        -0x35630e8d -> :sswitch_1
        0x37d04a -> :sswitch_0
    .end sparse-switch

    .line 146
    .line 147
    .line 148
    .line 149
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFlowType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object/from16 v8, p0

    .line 12
    .line 13
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    const/16 v9, 0x76

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    if-ne v8, v9, :cond_0

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v8, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1, v8}, Landroidx/constraintlayout/core/state/State;->getFlow(Ljava/lang/Object;Z)Landroidx/constraintlayout/core/state/helpers/FlowReference;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_2c

    .line 42
    .line 43
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/high16 v12, 0x3f000000    # 0.5f

    .line 53
    .line 54
    const-string v13, ""

    .line 55
    .line 56
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    sparse-switch v14, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    :goto_2
    const/4 v14, -0x1

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :sswitch_0
    const-string v14, "wrap"

    .line 67
    .line 68
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    if-nez v14, :cond_1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/16 v14, 0xc

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :sswitch_1
    const-string v14, "vGap"

    .line 80
    .line 81
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-nez v14, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/16 v14, 0xb

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :sswitch_2
    const-string v14, "type"

    .line 93
    .line 94
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    if-nez v14, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v14, 0xa

    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :sswitch_3
    const-string v14, "hGap"

    .line 106
    .line 107
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    if-nez v14, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/16 v14, 0x9

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :sswitch_4
    const-string v14, "maxElement"

    .line 119
    .line 120
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-nez v14, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const/16 v14, 0x8

    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :sswitch_5
    const-string v14, "contains"

    .line 132
    .line 133
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-nez v14, :cond_6

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    const/4 v14, 0x7

    .line 141
    goto :goto_3

    .line 142
    :sswitch_6
    const-string v14, "vFlowBias"

    .line 143
    .line 144
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-nez v14, :cond_7

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    const/4 v14, 0x6

    .line 152
    goto :goto_3

    .line 153
    :sswitch_7
    const-string v14, "padding"

    .line 154
    .line 155
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-nez v14, :cond_8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    const/4 v14, 0x5

    .line 163
    goto :goto_3

    .line 164
    :sswitch_8
    const-string v14, "vStyle"

    .line 165
    .line 166
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-nez v14, :cond_9

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    const/4 v14, 0x4

    .line 174
    goto :goto_3

    .line 175
    :sswitch_9
    const-string v14, "vAlign"

    .line 176
    .line 177
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v14

    .line 181
    if-nez v14, :cond_a

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    const/4 v14, 0x3

    .line 185
    goto :goto_3

    .line 186
    :sswitch_a
    const-string v14, "hFlowBias"

    .line 187
    .line 188
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-nez v14, :cond_b

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_b
    const/4 v14, 0x2

    .line 197
    goto :goto_3

    .line 198
    :sswitch_b
    const-string v14, "hStyle"

    .line 199
    .line 200
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-nez v14, :cond_c

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_c
    const/4 v14, 0x1

    .line 209
    goto :goto_3

    .line 210
    :sswitch_c
    const-string v14, "hAlign"

    .line 211
    .line 212
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    if-nez v14, :cond_d

    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_d
    const/4 v14, 0x0

    .line 221
    :goto_3
    packed-switch v14, :pswitch_data_0

    .line 222
    .line 223
    .line 224
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    move-object/from16 v14, p3

    .line 229
    .line 230
    invoke-static {v0, v14, v12, v2, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_12

    .line 234
    .line 235
    :pswitch_0
    move-object/from16 v14, p3

    .line 236
    .line 237
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-static {v11}, Landroidx/constraintlayout/core/state/State$Wrap;->getValueByString(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setWrapMode(I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_12

    .line 253
    .line 254
    :pswitch_1
    move-object/from16 v14, p3

    .line 255
    .line 256
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalGap(I)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_12

    .line 268
    .line 269
    :pswitch_2
    move-object/from16 v14, p3

    .line 270
    .line 271
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    const-string v12, "hFlow"

    .line 280
    .line 281
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-eqz v11, :cond_e

    .line 286
    .line 287
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setOrientation(I)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_12

    .line 291
    .line 292
    :cond_e
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setOrientation(I)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_12

    .line 296
    .line 297
    :pswitch_3
    move-object/from16 v14, p3

    .line 298
    .line 299
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalGap(I)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_12

    .line 311
    .line 312
    :pswitch_4
    move-object/from16 v14, p3

    .line 313
    .line 314
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 315
    .line 316
    .line 317
    move-result-object v11

    .line 318
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setMaxElementsWrap(I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_12

    .line 326
    .line 327
    :pswitch_5
    move-object/from16 v14, p3

    .line 328
    .line 329
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 334
    .line 335
    if-eqz v12, :cond_15

    .line 336
    .line 337
    move-object v12, v11

    .line 338
    check-cast v12, Landroidx/constraintlayout/core/parser/CLArray;

    .line 339
    .line 340
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-ge v13, v10, :cond_f

    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :cond_f
    const/4 v11, 0x0

    .line 349
    :goto_4
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    if-ge v11, v13, :cond_2b

    .line 354
    .line 355
    invoke-virtual {v12, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    instance-of v15, v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 360
    .line 361
    if-eqz v15, :cond_13

    .line 362
    .line 363
    check-cast v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 364
    .line 365
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    if-lez v15, :cond_14

    .line 370
    .line 371
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 372
    .line 373
    .line 374
    move-result-object v15

    .line 375
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v15

    .line 379
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 384
    .line 385
    if-eq v4, v6, :cond_12

    .line 386
    .line 387
    if-eq v4, v5, :cond_11

    .line 388
    .line 389
    if-eq v4, v3, :cond_10

    .line 390
    .line 391
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 392
    .line 393
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 394
    .line 395
    :goto_5
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_10
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 399
    .line 400
    .line 401
    move-result v16

    .line 402
    invoke-virtual {v13, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    invoke-static {v0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 411
    .line 412
    .line 413
    move-result v13

    .line 414
    invoke-static {v0, v13}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 415
    .line 416
    .line 417
    move-result v13

    .line 418
    move v3, v13

    .line 419
    move v13, v4

    .line 420
    :goto_6
    move/from16 v4, v16

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_11
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 424
    .line 425
    .line 426
    move-result v16

    .line 427
    invoke-virtual {v13, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    invoke-static {v0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    move v3, v4

    .line 436
    move v13, v3

    .line 437
    goto :goto_6

    .line 438
    :cond_12
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :goto_7
    invoke-virtual {v8, v15, v4, v13, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->addFlowElement(Ljava/lang/String;FFF)V

    .line 446
    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_13
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    new-array v4, v10, [Ljava/lang/Object;

    .line 454
    .line 455
    aput-object v3, v4, v7

    .line 456
    .line 457
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 458
    .line 459
    .line 460
    :cond_14
    :goto_8
    add-int/2addr v11, v10

    .line 461
    const/4 v3, 0x4

    .line 462
    goto :goto_4

    .line 463
    :cond_15
    :goto_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 464
    .line 465
    const-string v2, " contains should be an array \""

    .line 466
    .line 467
    invoke-static {v1, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v2, "\""

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :pswitch_6
    move-object/from16 v14, p3

    .line 492
    .line 493
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 502
    .line 503
    .line 504
    move-result-object v11

    .line 505
    instance-of v13, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 506
    .line 507
    if-eqz v13, :cond_16

    .line 508
    .line 509
    move-object v13, v3

    .line 510
    check-cast v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 511
    .line 512
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 513
    .line 514
    .line 515
    move-result v15

    .line 516
    if-le v15, v10, :cond_16

    .line 517
    .line 518
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 535
    .line 536
    .line 537
    move-result v15

    .line 538
    if-le v15, v6, :cond_17

    .line 539
    .line 540
    invoke-virtual {v13, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 541
    .line 542
    .line 543
    move-result v11

    .line 544
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 545
    .line 546
    .line 547
    move-result-object v11

    .line 548
    goto :goto_a

    .line 549
    :cond_16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    :cond_17
    :goto_a
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    cmpl-float v3, v3, v12

    .line 569
    .line 570
    if-eqz v3, :cond_18

    .line 571
    .line 572
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstVerticalBias(F)V

    .line 577
    .line 578
    .line 579
    goto :goto_b

    .line 580
    :catch_0
    nop

    .line 581
    goto/16 :goto_12

    .line 582
    .line 583
    :cond_18
    :goto_b
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    cmpl-float v3, v3, v12

    .line 588
    .line 589
    if-eqz v3, :cond_2b

    .line 590
    .line 591
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastVerticalBias(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .line 597
    .line 598
    goto/16 :goto_12

    .line 599
    .line 600
    :pswitch_7
    move-object/from16 v14, p3

    .line 601
    .line 602
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 607
    .line 608
    if-eqz v4, :cond_1a

    .line 609
    .line 610
    move-object v4, v3

    .line 611
    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 612
    .line 613
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-le v11, v10, :cond_1a

    .line 618
    .line 619
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 620
    .line 621
    .line 622
    move-result v11

    .line 623
    int-to-float v11, v11

    .line 624
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    int-to-float v12, v12

    .line 629
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 630
    .line 631
    .line 632
    move-result v13

    .line 633
    if-le v13, v6, :cond_19

    .line 634
    .line 635
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    int-to-float v4, v4

    .line 640
    :try_start_1
    check-cast v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 641
    .line 642
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 643
    .line 644
    .line 645
    move-result v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    int-to-float v3, v3

    .line 647
    goto :goto_c

    .line 648
    :catch_1
    const/4 v3, 0x0

    .line 649
    goto :goto_c

    .line 650
    :cond_19
    move v4, v11

    .line 651
    move v3, v12

    .line 652
    goto :goto_c

    .line 653
    :cond_1a
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    int-to-float v11, v3

    .line 658
    move v3, v11

    .line 659
    move v4, v3

    .line 660
    move v12, v4

    .line 661
    :goto_c
    invoke-static {v0, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 662
    .line 663
    .line 664
    move-result v11

    .line 665
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingLeft(I)V

    .line 670
    .line 671
    .line 672
    invoke-static {v0, v12}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 673
    .line 674
    .line 675
    move-result v11

    .line 676
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 677
    .line 678
    .line 679
    move-result v11

    .line 680
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingTop(I)V

    .line 681
    .line 682
    .line 683
    invoke-static {v0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingRight(I)V

    .line 692
    .line 693
    .line 694
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingBottom(I)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_12

    .line 706
    .line 707
    :pswitch_8
    move-object/from16 v14, p3

    .line 708
    .line 709
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 710
    .line 711
    .line 712
    move-result-object v3

    .line 713
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 714
    .line 715
    if-eqz v4, :cond_1c

    .line 716
    .line 717
    move-object v4, v3

    .line 718
    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 719
    .line 720
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 721
    .line 722
    .line 723
    move-result v11

    .line 724
    if-le v11, v10, :cond_1c

    .line 725
    .line 726
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v11

    .line 734
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 735
    .line 736
    .line 737
    move-result v12

    .line 738
    if-le v12, v6, :cond_1b

    .line 739
    .line 740
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v4

    .line 744
    goto :goto_d

    .line 745
    :cond_1b
    move-object v4, v13

    .line 746
    goto :goto_d

    .line 747
    :cond_1c
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v11

    .line 751
    move-object v3, v13

    .line 752
    move-object v4, v3

    .line 753
    :goto_d
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v12

    .line 757
    if-nez v12, :cond_1d

    .line 758
    .line 759
    invoke-static {v11}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    move-result v11

    .line 763
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalStyle(I)V

    .line 764
    .line 765
    .line 766
    :cond_1d
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v11

    .line 770
    if-nez v11, :cond_1e

    .line 771
    .line 772
    invoke-static {v3}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 773
    .line 774
    .line 775
    move-result v3

    .line 776
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstVerticalStyle(I)V

    .line 777
    .line 778
    .line 779
    :cond_1e
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    if-nez v3, :cond_2b

    .line 784
    .line 785
    invoke-static {v4}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastVerticalStyle(I)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_12

    .line 793
    .line 794
    :pswitch_9
    move-object/from16 v14, p3

    .line 795
    .line 796
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v3

    .line 804
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 808
    .line 809
    .line 810
    move-result v4

    .line 811
    sparse-switch v4, :sswitch_data_1

    .line 812
    .line 813
    .line 814
    :goto_e
    const/4 v3, -0x1

    .line 815
    goto :goto_f

    .line 816
    :sswitch_d
    const-string v4, "top"

    .line 817
    .line 818
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    if-nez v3, :cond_1f

    .line 823
    .line 824
    goto :goto_e

    .line 825
    :cond_1f
    const/4 v3, 0x2

    .line 826
    goto :goto_f

    .line 827
    :sswitch_e
    const-string v4, "bottom"

    .line 828
    .line 829
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-nez v3, :cond_20

    .line 834
    .line 835
    goto :goto_e

    .line 836
    :cond_20
    const/4 v3, 0x1

    .line 837
    goto :goto_f

    .line 838
    :sswitch_f
    const-string v4, "baseline"

    .line 839
    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    if-nez v3, :cond_21

    .line 845
    .line 846
    goto :goto_e

    .line 847
    :cond_21
    const/4 v3, 0x0

    .line 848
    :goto_f
    packed-switch v3, :pswitch_data_1

    .line 849
    .line 850
    .line 851
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_12

    .line 855
    .line 856
    :pswitch_a
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_12

    .line 860
    .line 861
    :pswitch_b
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_12

    .line 865
    .line 866
    :pswitch_c
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 867
    .line 868
    .line 869
    goto/16 :goto_12

    .line 870
    .line 871
    :pswitch_d
    move-object/from16 v14, p3

    .line 872
    .line 873
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 878
    .line 879
    .line 880
    move-result-object v4

    .line 881
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 882
    .line 883
    .line 884
    move-result-object v11

    .line 885
    instance-of v13, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 886
    .line 887
    if-eqz v13, :cond_22

    .line 888
    .line 889
    move-object v13, v3

    .line 890
    check-cast v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 891
    .line 892
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 893
    .line 894
    .line 895
    move-result v15

    .line 896
    if-le v15, v10, :cond_22

    .line 897
    .line 898
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    invoke-virtual {v13, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 915
    .line 916
    .line 917
    move-result v15

    .line 918
    if-le v15, v6, :cond_23

    .line 919
    .line 920
    invoke-virtual {v13, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 921
    .line 922
    .line 923
    move-result v11

    .line 924
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 925
    .line 926
    .line 927
    move-result-object v11

    .line 928
    goto :goto_10

    .line 929
    :cond_22
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    :cond_23
    :goto_10
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 942
    .line 943
    .line 944
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    cmpl-float v3, v3, v12

    .line 949
    .line 950
    if-eqz v3, :cond_24

    .line 951
    .line 952
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 953
    .line 954
    .line 955
    move-result v3

    .line 956
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstHorizontalBias(F)V

    .line 957
    .line 958
    .line 959
    :cond_24
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 960
    .line 961
    .line 962
    move-result v3

    .line 963
    cmpl-float v3, v3, v12

    .line 964
    .line 965
    if-eqz v3, :cond_2b

    .line 966
    .line 967
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 968
    .line 969
    .line 970
    move-result v3

    .line 971
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastHorizontalBias(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 972
    .line 973
    .line 974
    goto/16 :goto_12

    .line 975
    .line 976
    :pswitch_e
    move-object/from16 v14, p3

    .line 977
    .line 978
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 979
    .line 980
    .line 981
    move-result-object v3

    .line 982
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 983
    .line 984
    if-eqz v4, :cond_26

    .line 985
    .line 986
    move-object v4, v3

    .line 987
    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 988
    .line 989
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 990
    .line 991
    .line 992
    move-result v11

    .line 993
    if-le v11, v10, :cond_26

    .line 994
    .line 995
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v3

    .line 999
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v11

    .line 1003
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v12

    .line 1007
    if-le v12, v6, :cond_25

    .line 1008
    .line 1009
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    goto :goto_11

    .line 1014
    :cond_25
    move-object v4, v13

    .line 1015
    goto :goto_11

    .line 1016
    :cond_26
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v11

    .line 1020
    move-object v3, v13

    .line 1021
    move-object v4, v3

    .line 1022
    :goto_11
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v12

    .line 1026
    if-nez v12, :cond_27

    .line 1027
    .line 1028
    invoke-static {v11}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v11

    .line 1032
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalStyle(I)V

    .line 1033
    .line 1034
    .line 1035
    :cond_27
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v11

    .line 1039
    if-nez v11, :cond_28

    .line 1040
    .line 1041
    invoke-static {v3}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1042
    .line 1043
    .line 1044
    move-result v3

    .line 1045
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstHorizontalStyle(I)V

    .line 1046
    .line 1047
    .line 1048
    :cond_28
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    move-result v3

    .line 1052
    if-nez v3, :cond_2b

    .line 1053
    .line 1054
    invoke-static {v4}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1055
    .line 1056
    .line 1057
    move-result v3

    .line 1058
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastHorizontalStyle(I)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_12

    .line 1062
    :pswitch_f
    move-object/from16 v14, p3

    .line 1063
    .line 1064
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1073
    .line 1074
    .line 1075
    const-string v4, "end"

    .line 1076
    .line 1077
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v4

    .line 1081
    if-nez v4, :cond_2a

    .line 1082
    .line 1083
    const-string v4, "start"

    .line 1084
    .line 1085
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v3

    .line 1089
    if-nez v3, :cond_29

    .line 1090
    .line 1091
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1092
    .line 1093
    .line 1094
    goto :goto_12

    .line 1095
    :cond_29
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1096
    .line 1097
    .line 1098
    goto :goto_12

    .line 1099
    :cond_2a
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1100
    .line 1101
    .line 1102
    :cond_2b
    :goto_12
    const/4 v3, 0x4

    .line 1103
    goto/16 :goto_1

    .line 1104
    .line 1105
    :cond_2c
    return-void

    .line 1106
    nop

    .line 1107
    :sswitch_data_0
    .sparse-switch
        -0x4ac15883 -> :sswitch_c
        -0x49bfd1d7 -> :sswitch_b
        -0x47693271 -> :sswitch_a
        -0x32dd7fd1 -> :sswitch_9
        -0x31dbf925 -> :sswitch_8
        -0x300fc3ef -> :sswitch_7
        -0x2bab2063 -> :sswitch_6
        -0x21d289e1 -> :sswitch_5
        -0x1d240708 -> :sswitch_4
        0x305d4e -> :sswitch_3
        0x368f3a -> :sswitch_2
        0x36ba80 -> :sswitch_1
        0x37d04a -> :sswitch_0
    .end sparse-switch

    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    :sswitch_data_1
    .sparse-switch
        -0x669119bb -> :sswitch_f
        -0x527265d5 -> :sswitch_e
        0x1c155 -> :sswitch_d
    .end sparse-switch

    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static parseGenerate(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    move-object v4, v2

    .line 55
    check-cast v4, Landroidx/constraintlayout/core/parser/CLObject;

    .line 56
    .line 57
    invoke-static {p0, p1, v3, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method private static parseGridType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/core/state/State;->getGrid(Ljava/lang/Object;Ljava/lang/String;)Landroidx/constraintlayout/core/state/helpers/GridReference;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p4}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_11

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v6, ":"

    .line 33
    .line 34
    const-string v7, ","

    .line 35
    .line 36
    const/4 v8, -0x1

    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    sparse-switch v9, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :sswitch_0
    const-string v9, "columnWeights"

    .line 47
    .line 48
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-nez v9, :cond_1

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    const/16 v8, 0xb

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :sswitch_1
    const-string v9, "columns"

    .line 61
    .line 62
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_2

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    const/16 v8, 0xa

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_2
    const-string v9, "rowWeights"

    .line 75
    .line 76
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_3

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    const/16 v8, 0x9

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :sswitch_3
    const-string v9, "spans"

    .line 89
    .line 90
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-nez v9, :cond_4

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :cond_4
    const/16 v8, 0x8

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_4
    const-string v9, "skips"

    .line 103
    .line 104
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-nez v9, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    const/4 v8, 0x7

    .line 112
    goto :goto_1

    .line 113
    :sswitch_5
    const-string v9, "flags"

    .line 114
    .line 115
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-nez v9, :cond_6

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    const/4 v8, 0x6

    .line 123
    goto :goto_1

    .line 124
    :sswitch_6
    const-string v9, "vGap"

    .line 125
    .line 126
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_7

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    const/4 v8, 0x5

    .line 134
    goto :goto_1

    .line 135
    :sswitch_7
    const-string v9, "rows"

    .line 136
    .line 137
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-nez v9, :cond_8

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    const/4 v8, 0x4

    .line 145
    goto :goto_1

    .line 146
    :sswitch_8
    const-string v9, "hGap"

    .line 147
    .line 148
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_9

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_9
    const/4 v8, 0x3

    .line 156
    goto :goto_1

    .line 157
    :sswitch_9
    const-string v9, "contains"

    .line 158
    .line 159
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-nez v9, :cond_a

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_a
    const/4 v8, 0x2

    .line 167
    goto :goto_1

    .line 168
    :sswitch_a
    const-string v9, "padding"

    .line 169
    .line 170
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_b

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_b
    const/4 v8, 0x1

    .line 178
    goto :goto_1

    .line 179
    :sswitch_b
    const-string v9, "orientation"

    .line 180
    .line 181
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_c

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_c
    const/4 v8, 0x0

    .line 189
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {p1, p3, v6, p4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_0
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-eqz v5, :cond_0

    .line 210
    .line 211
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_0

    .line 216
    .line 217
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setColumnWeights(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_1
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-lez v5, :cond_0

    .line 231
    .line 232
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setColumnsSet(I)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_2
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    if-eqz v5, :cond_0

    .line 246
    .line 247
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_0

    .line 252
    .line 253
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setRowWeights(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_3
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    if-eqz v5, :cond_0

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_0

    .line 273
    .line 274
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setSpans(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :pswitch_4
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    if-eqz v5, :cond_0

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_0

    .line 294
    .line 295
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setSkips(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :pswitch_5
    const-string v6, ""

    .line 301
    .line 302
    :try_start_0
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    instance-of v7, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 307
    .line 308
    if-eqz v7, :cond_d

    .line 309
    .line 310
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    goto :goto_4

    .line 315
    :catch_0
    move-exception v5

    .line 316
    goto :goto_2

    .line 317
    :cond_d
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_3

    .line 322
    :goto_2
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 323
    .line 324
    new-instance v8, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v9, "Error parsing grid flags "

    .line 327
    .line 328
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-virtual {v7, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :goto_3
    const/4 v5, 0x0

    .line 342
    :goto_4
    if-eqz v6, :cond_e

    .line 343
    .line 344
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-nez v7, :cond_e

    .line 349
    .line 350
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setFlags(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_e
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setFlags(I)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :pswitch_6
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    invoke-static {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setVerticalGaps(F)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :pswitch_7
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-lez v5, :cond_0

    .line 386
    .line 387
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setRowsSet(I)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :pswitch_8
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    invoke-static {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setHorizontalGaps(F)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :pswitch_9
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    if-eqz v5, :cond_0

    .line 414
    .line 415
    const/4 v6, 0x0

    .line 416
    :goto_5
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-ge v6, v7, :cond_0

    .line 421
    .line 422
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    new-array v8, v3, [Ljava/lang/Object;

    .line 435
    .line 436
    aput-object v7, v8, v2

    .line 437
    .line 438
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 439
    .line 440
    .line 441
    add-int/2addr v6, v3

    .line 442
    goto :goto_5

    .line 443
    :pswitch_a
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 448
    .line 449
    if-eqz v6, :cond_10

    .line 450
    .line 451
    move-object v6, v5

    .line 452
    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 453
    .line 454
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-le v7, v3, :cond_10

    .line 459
    .line 460
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    int-to-float v7, v7

    .line 465
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    int-to-float v8, v8

    .line 470
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    if-le v9, v1, :cond_f

    .line 475
    .line 476
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 477
    .line 478
    .line 479
    move-result v6

    .line 480
    int-to-float v6, v6

    .line 481
    :try_start_1
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 482
    .line 483
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 484
    .line 485
    .line 486
    move-result v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    int-to-float v5, v5

    .line 488
    goto :goto_6

    .line 489
    :catch_1
    const/4 v5, 0x0

    .line 490
    goto :goto_6

    .line 491
    :cond_f
    move v6, v7

    .line 492
    move v5, v8

    .line 493
    goto :goto_6

    .line 494
    :cond_10
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    int-to-float v7, v5

    .line 499
    move v5, v7

    .line 500
    move v6, v5

    .line 501
    move v8, v6

    .line 502
    :goto_6
    invoke-static {p1, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 503
    .line 504
    .line 505
    move-result v7

    .line 506
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingStart(I)V

    .line 511
    .line 512
    .line 513
    invoke-static {p1, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 514
    .line 515
    .line 516
    move-result v7

    .line 517
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingTop(I)V

    .line 522
    .line 523
    .line 524
    invoke-static {p1, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 525
    .line 526
    .line 527
    move-result v6

    .line 528
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingEnd(I)V

    .line 533
    .line 534
    .line 535
    invoke-static {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingBottom(I)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :pswitch_b
    invoke-virtual {p4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setOrientation(I)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_11
    return-void

    .line 562
    nop

    .line 563
    :sswitch_data_0
    .sparse-switch
        -0x55cd0a30 -> :sswitch_b
        -0x300fc3ef -> :sswitch_a
        -0x21d289e1 -> :sswitch_9
        0x305d4e -> :sswitch_8
        0x3581d9 -> :sswitch_7
        0x36ba80 -> :sswitch_6
        0x5cfee87 -> :sswitch_5
        0x686cad4 -> :sswitch_4
        0x688f269 -> :sswitch_3
        0x89c01c1 -> :sswitch_2
        0x389b97dd -> :sswitch_1
        0x793284c5 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
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

.method public static parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    instance-of v0, p2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 12
    .line 13
    const-string v0, "id"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {p0, p1, v0, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const-string v2, "start"

    .line 6
    .line 7
    const-string v4, "right"

    .line 8
    .line 9
    const-string v6, "left"

    .line 10
    .line 11
    const-string v7, "end"

    .line 12
    .line 13
    const/4 v8, -0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v11

    .line 20
    if-nez v11, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 37
    .line 38
    .line 39
    move-result v13

    .line 40
    if-eqz v13, :cond_3

    .line 41
    .line 42
    if-nez p0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v13, 0x0

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    const/4 v13, 0x1

    .line 48
    :goto_2
    invoke-virtual {v12}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 53
    .line 54
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const/4 v14, 0x0

    .line 59
    const/4 v15, 0x0

    .line 60
    :goto_3
    const/16 v16, 0x1

    .line 61
    .line 62
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v17

    .line 66
    if-eqz v17, :cond_f

    .line 67
    .line 68
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v17

    .line 72
    move-object/from16 v3, v17

    .line 73
    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v17

    .line 83
    sparse-switch v17, :sswitch_data_0

    .line 84
    .line 85
    .line 86
    :goto_5
    const/4 v5, -0x1

    .line 87
    goto :goto_6

    .line 88
    :sswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v17

    .line 92
    if-nez v17, :cond_4

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_4
    const/16 v17, 0x4

    .line 96
    .line 97
    const/4 v5, 0x4

    .line 98
    goto :goto_6

    .line 99
    :sswitch_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    if-nez v17, :cond_5

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    const/4 v5, 0x3

    .line 107
    goto :goto_6

    .line 108
    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v17

    .line 112
    if-nez v17, :cond_6

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_6
    const/4 v5, 0x2

    .line 116
    goto :goto_6

    .line 117
    :sswitch_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v17

    .line 121
    if-nez v17, :cond_7

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_7
    const/4 v5, 0x1

    .line 125
    goto :goto_6

    .line 126
    :sswitch_4
    const-string v5, "percent"

    .line 127
    .line 128
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_8

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    const/4 v5, 0x0

    .line 136
    :goto_6
    packed-switch v5, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :pswitch_0
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    move v14, v3

    .line 149
    move/from16 v16, v13

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :pswitch_1
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    move v14, v3

    .line 161
    :goto_7
    const/16 v16, 0x0

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :pswitch_2
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    move v14, v3

    .line 173
    goto :goto_3

    .line 174
    :pswitch_3
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    xor-int/lit8 v16, v13, 0x1

    .line 183
    .line 184
    move v14, v3

    .line 185
    goto :goto_4

    .line 186
    :pswitch_4
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-nez v5, :cond_9

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    move v14, v3

    .line 197
    :goto_8
    const/4 v15, 0x1

    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_9
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-le v3, v10, :cond_e

    .line 205
    .line 206
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 218
    .line 219
    .line 220
    move-result v14

    .line 221
    sparse-switch v14, :sswitch_data_1

    .line 222
    .line 223
    .line 224
    :goto_9
    const/4 v3, -0x1

    .line 225
    goto :goto_a

    .line 226
    :sswitch_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_a

    .line 231
    .line 232
    goto :goto_9

    .line 233
    :cond_a
    const/4 v3, 0x3

    .line 234
    goto :goto_a

    .line 235
    :sswitch_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-nez v3, :cond_b

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_b
    const/4 v3, 0x2

    .line 243
    goto :goto_a

    .line 244
    :sswitch_7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_c

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_c
    const/4 v3, 0x1

    .line 252
    goto :goto_a

    .line 253
    :sswitch_8
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-nez v3, :cond_d

    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_d
    const/4 v3, 0x0

    .line 261
    :goto_a
    packed-switch v3, :pswitch_data_1

    .line 262
    .line 263
    .line 264
    :goto_b
    move v14, v5

    .line 265
    :cond_e
    :goto_c
    const/4 v15, 0x1

    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :pswitch_5
    move v14, v5

    .line 269
    move/from16 v16, v13

    .line 270
    .line 271
    goto :goto_c

    .line 272
    :pswitch_6
    move v14, v5

    .line 273
    const/4 v15, 0x1

    .line 274
    goto :goto_7

    .line 275
    :pswitch_7
    move v14, v5

    .line 276
    goto :goto_8

    .line 277
    :pswitch_8
    xor-int/lit8 v16, v13, 0x1

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_f
    if-eqz v15, :cond_11

    .line 281
    .line 282
    if-eqz v16, :cond_10

    .line 283
    .line 284
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->percent(F)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 285
    .line 286
    .line 287
    goto :goto_d

    .line 288
    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 289
    .line 290
    sub-float/2addr v0, v14

    .line 291
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->percent(F)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 292
    .line 293
    .line 294
    goto :goto_d

    .line 295
    :cond_11
    if-eqz v16, :cond_12

    .line 296
    .line 297
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->start(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 302
    .line 303
    .line 304
    goto :goto_d

    .line 305
    :cond_12
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->end(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 310
    .line 311
    .line 312
    :goto_d
    return-void

    .line 313
    :sswitch_data_0
    .sparse-switch
        -0x28779bbb -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 346
    .line 347
    .line 348
    .line 349
    :sswitch_data_1
    .sparse-switch
        0x188db -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
        0x68ac462 -> :sswitch_5
    .end sparse-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static parseHeader(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 1

    .line 1
    const-string v0, "export"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setDebugName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static parseHelpers(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_5

    .line 9
    .line 10
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 15
    .line 16
    if-eqz v4, :cond_4

    .line 17
    .line 18
    check-cast v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-le v4, v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sparse-switch v6, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :sswitch_0
    const-string v6, "hGuideline"

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 v5, 0x3

    .line 52
    goto :goto_1

    .line 53
    :sswitch_1
    const-string v6, "vChain"

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v5, 0x2

    .line 63
    goto :goto_1

    .line 64
    :sswitch_2
    const-string v6, "hChain"

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v5, 0x1

    .line 74
    goto :goto_1

    .line 75
    :sswitch_3
    const-string v6, "vGuideline"

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v5, 0x0

    .line 85
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :pswitch_0
    invoke-static {v1, p0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :pswitch_1
    invoke-static {v0, p0, p1, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_2
    invoke-static {v1, p0, p1, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :pswitch_3
    invoke-static {v0, p0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_2
    add-int/2addr v2, v0

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    return-void

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x6a6caee6 -> :sswitch_3
        -0x4aa718c7 -> :sswitch_2
        -0x32c34015 -> :sswitch_1
        0x398f2168 -> :sswitch_0
    .end sparse-switch

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseJSON(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    .locals 1

    .line 18
    :try_start_0
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    .line 19
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->populateState(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    :try_end_0
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error parsing JSON "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static parseJSON(Ljava/lang/String;Landroidx/constraintlayout/core/state/Transition;I)V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 7
    const-string v3, "custom"

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    .line 11
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    move-result v5

    .line 13
    invoke-virtual {p1, p2, v1, v4, v5}, Landroidx/constraintlayout/core/state/Transition;->addCustomFloat(ILjava/lang/String;Ljava/lang/String;F)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_3
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    long-to-int v6, v5

    .line 16
    invoke-virtual {p1, p2, v1, v4, v6}, Landroidx/constraintlayout/core/state/Transition;->addCustomColor(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error parsing JSON "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static parseMotionProperties(Landroidx/constraintlayout/core/parser/CLElement;Landroidx/constraintlayout/core/state/ConstraintReference;)V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, -0x1

    .line 5
    instance-of v4, p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 11
    .line 12
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 13
    .line 14
    invoke-direct {v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_a

    .line 33
    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    sparse-switch v7, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    :goto_1
    const/4 v7, -0x1

    .line 51
    goto :goto_2

    .line 52
    :sswitch_0
    const-string v7, "relativeTo"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v7, 0x4

    .line 62
    goto :goto_2

    .line 63
    :sswitch_1
    const-string v7, "pathArc"

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const/4 v7, 0x3

    .line 73
    goto :goto_2

    .line 74
    :sswitch_2
    const-string v7, "quantize"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-nez v7, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const/4 v7, 0x2

    .line 84
    goto :goto_2

    .line 85
    :sswitch_3
    const-string v7, "easing"

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const/4 v7, 0x1

    .line 95
    goto :goto_2

    .line 96
    :sswitch_4
    const-string v7, "stagger"

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_7

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    const/4 v7, 0x0

    .line 106
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_0
    const/16 v7, 0x25d

    .line 111
    .line 112
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v4, v7, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const-string v11, "below"

    .line 125
    .line 126
    const-string v12, "above"

    .line 127
    .line 128
    const-string v7, "none"

    .line 129
    .line 130
    const-string v8, "startVertical"

    .line 131
    .line 132
    const-string v9, "startHorizontal"

    .line 133
    .line 134
    const-string v10, "flip"

    .line 135
    .line 136
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v6, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-ne v7, v3, :cond_8

    .line 145
    .line 146
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 147
    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getLine()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v9, " pathArc = \'"

    .line 161
    .line 162
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v6, "\'"

    .line 169
    .line 170
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_8
    const/16 v6, 0x25f

    .line 183
    .line 184
    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :pswitch_2
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    instance-of v8, v7, Landroidx/constraintlayout/core/parser/CLArray;

    .line 194
    .line 195
    const/16 v9, 0x262

    .line 196
    .line 197
    if-eqz v8, :cond_9

    .line 198
    .line 199
    check-cast v7, Landroidx/constraintlayout/core/parser/CLArray;

    .line 200
    .line 201
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-lez v6, :cond_2

    .line 206
    .line 207
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    invoke-virtual {v4, v9, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 212
    .line 213
    .line 214
    if-le v6, v1, :cond_2

    .line 215
    .line 216
    const/16 v8, 0x263

    .line 217
    .line 218
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-virtual {v4, v8, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    if-le v6, v0, :cond_2

    .line 226
    .line 227
    const/16 v6, 0x25a

    .line 228
    .line 229
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_9
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-virtual {v4, v9, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :pswitch_3
    const/16 v7, 0x25b

    .line 248
    .line 249
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v4, v7, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_4
    const/16 v7, 0x258

    .line 259
    .line 260
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-virtual {v4, v7, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_a
    iput-object v4, p1, Landroidx/constraintlayout/core/state/ConstraintReference;->mMotionProperties:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 270
    .line 271
    return-void

    .line 272
    nop

    .line 273
    :sswitch_data_0
    .sparse-switch
        -0x7119f053 -> :sswitch_4
        -0x4e19c2d5 -> :sswitch_3
        -0x4c979acf -> :sswitch_2
        -0x2f2d1013 -> :sswitch_1
        -0xe1f7d99 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseMotionSceneJSON(Landroidx/constraintlayout/core/state/CoreMotionScene;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_9

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const v4, -0x7f663153

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    const/4 v6, 0x1

    .line 47
    if-eq v3, v4, :cond_4

    .line 48
    .line 49
    const v4, -0xe641a62

    .line 50
    .line 51
    .line 52
    if-eq v3, v4, :cond_3

    .line 53
    .line 54
    const v4, 0x41acefee

    .line 55
    .line 56
    .line 57
    if-eq v3, v4, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v3, "ConstraintSets"

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const-string v3, "Transitions"

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const-string v3, "Header"

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :goto_1
    const/4 v1, -0x1

    .line 93
    :goto_2
    if-eqz v1, :cond_8

    .line 94
    .line 95
    if-eq v1, v6, :cond_7

    .line 96
    .line 97
    if-eq v1, v5, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    invoke-static {p0, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseHeader(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    invoke-static {p0, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseTransitions(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_8
    invoke-static {p0, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraintSets(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    :try_end_0
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v1, "Error parsing JSON "

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    return-void
.end method

.method public static parseTransitions(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {p0, v1, v2}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setTransitionContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method private static parseVariables(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v3, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLObject;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast v1, Landroidx/constraintlayout/core/parser/CLObject;

    .line 46
    .line 47
    const-string v2, "from"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    const-string v4, "to"

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const-string v2, "prefix"

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v2, "postfix"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    move v4, v5

    .line 95
    move v5, v6

    .line 96
    move v6, v1

    .line 97
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;FFFLjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    const-string v4, "step"

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p1, v3, v2, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;FF)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const-string v2, "ids"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-ge v4, v5, :cond_5

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    invoke-virtual {p1, v3, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_6
    const-string v2, "tag"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->getIdsForTag(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v3, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_7
    return-void
.end method

.method public static parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 2

    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 7
    :cond_1
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;)V

    return-void
.end method

.method public static populateState(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    .locals 9
    .param p0    # Landroidx/constraintlayout/core/parser/CLObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/constraintlayout/core/state/State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_11

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    sparse-switch v7, :sswitch_data_0

    .line 40
    .line 41
    .line 42
    :goto_1
    const/4 v7, -0x1

    .line 43
    goto :goto_2

    .line 44
    :sswitch_0
    const-string v7, "Variables"

    .line 45
    .line 46
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v7, 0x2

    .line 54
    goto :goto_2

    .line 55
    :sswitch_1
    const-string v7, "Generate"

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-nez v7, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v7, 0x1

    .line 65
    goto :goto_2

    .line 66
    :sswitch_2
    const-string v7, "Helpers"

    .line 67
    .line 68
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_4

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    const/4 v7, 0x0

    .line 76
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 80
    .line 81
    if-eqz v7, :cond_10

    .line 82
    .line 83
    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 84
    .line 85
    invoke-static {v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->lookForType(Landroidx/constraintlayout/core/parser/CLObject;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-eqz v7, :cond_f

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    sparse-switch v8, :sswitch_data_1

    .line 96
    .line 97
    .line 98
    :goto_3
    const/4 v8, -0x1

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :sswitch_3
    const-string v8, "hGuideline"

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_5

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    const/16 v8, 0x9

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    .line 114
    :sswitch_4
    const-string v8, "vFlow"

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    const/16 v8, 0x8

    .line 124
    .line 125
    goto/16 :goto_4

    .line 126
    .line 127
    :sswitch_5
    const-string v8, "hFlow"

    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const/4 v8, 0x7

    .line 137
    goto :goto_4

    .line 138
    :sswitch_6
    const-string v8, "grid"

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_8

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_8
    const/4 v8, 0x6

    .line 148
    goto :goto_4

    .line 149
    :sswitch_7
    const-string v8, "row"

    .line 150
    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_9

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    const/4 v8, 0x5

    .line 159
    goto :goto_4

    .line 160
    :sswitch_8
    const-string v8, "barrier"

    .line 161
    .line 162
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_a

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_a
    const/4 v8, 0x4

    .line 170
    goto :goto_4

    .line 171
    :sswitch_9
    const-string v8, "vChain"

    .line 172
    .line 173
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_b

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_b
    const/4 v8, 0x3

    .line 181
    goto :goto_4

    .line 182
    :sswitch_a
    const-string v8, "hChain"

    .line 183
    .line 184
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-nez v8, :cond_c

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_c
    const/4 v8, 0x2

    .line 192
    goto :goto_4

    .line 193
    :sswitch_b
    const-string v8, "column"

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_d

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_d
    const/4 v8, 0x1

    .line 203
    goto :goto_4

    .line 204
    :sswitch_c
    const-string v8, "vGuideline"

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_e

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_e
    const/4 v8, 0x0

    .line 214
    :goto_4
    packed-switch v8, :pswitch_data_1

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_0
    invoke-static {v3, p1, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_1
    invoke-static {v7, p1, v5, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseFlowType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_2
    invoke-static {p1, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseBarrier(Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :pswitch_3
    invoke-static {v7, p1, v5, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChainType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_4
    invoke-static {v7, p1, v5, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGridType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :pswitch_5
    invoke-static {v2, p1, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_f
    invoke-static {p1, p2, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_10
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 255
    .line 256
    if-eqz v7, :cond_1

    .line 257
    .line 258
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    invoke-virtual {p2, v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_6
    instance-of v5, v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 268
    .line 269
    if-eqz v5, :cond_1

    .line 270
    .line 271
    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 272
    .line 273
    invoke-static {p1, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseVariables(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :pswitch_7
    instance-of v5, v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 279
    .line 280
    if-eqz v5, :cond_1

    .line 281
    .line 282
    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    .line 283
    .line 284
    invoke-static {p1, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGenerate(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :pswitch_8
    instance-of v5, v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 290
    .line 291
    if-eqz v5, :cond_1

    .line 292
    .line 293
    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 294
    .line 295
    invoke-static {p1, p2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseHelpers(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_11
    return-void

    .line 301
    :sswitch_data_0
    .sparse-switch
        -0x6cbf819b -> :sswitch_2
        0x6fc27995 -> :sswitch_1
        0x72879d57 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :sswitch_data_1
    .sparse-switch
        -0x6a6caee6 -> :sswitch_c
        -0x50c12caa -> :sswitch_b
        -0x4aa718c7 -> :sswitch_a
        -0x32c34015 -> :sswitch_9
        -0x13db5c49 -> :sswitch_8
        0x1b9da -> :sswitch_7
        0x308b46 -> :sswitch_6
        0x5db01b6 -> :sswitch_5
        0x6a04ac4 -> :sswitch_4
        0x398f2168 -> :sswitch_3
    .end sparse-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toPix(Landroidx/constraintlayout/core/state/State;F)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
